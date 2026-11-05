"""Run the original TurtleBot Python Wasm and C Wasm observer on installed Gazebo."""
from pathlib import Path
import argparse, os, sys, json, hashlib, time, subprocess, signal, resource, socket, tempfile
resource.setrlimit(resource.RLIMIT_CORE,(0,0))
ap=argparse.ArgumentParser(description=__doc__)
ap.add_argument("--sdk-root",type=Path,required=True)
ap.add_argument("--deployment",type=Path,required=True)
ap.add_argument("--wasm",type=Path,required=True)
ap.add_argument("--output",type=Path,required=True)
args=ap.parse_args()
s=args.sdk_root.resolve(strict=True);d=args.output.resolve()
assert d.is_absolute() and not d.exists(), "Fresh scene output required"
d.mkdir(mode=0o700,parents=True)
config=json.loads(args.deployment.read_text())
assert config["format"]=="uwvm-sdk-turtlebot-native-test-v1"
sha=lambda p:hashlib.file_digest(Path(p).open("rb"),"sha256").hexdigest()
def pinned(key):
 row=config[key];p=Path(row["path"]).resolve(strict=True)
 assert p.is_file() and sha(p)==row["sha256"], "Changed deployment input: "+key
 return p
vm=pinned("runtime");gateway=pinned("gateway");driver=pinned("scenario_wasm")
loader=pinned("native_loader")
native_inputs=[pinned(k) for k in ["native_runtime_closure","native_environment","native_sources"]]
profile=pinned("native_profile_evidence");assert json.loads(profile.read_text())["passed"]
root=Path(config["native_rootfs"]).resolve(strict=True)
unitree=Path(config["native_prefix"]).resolve(strict=True)
assert loader==root/"usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2"
wasm=args.wasm.resolve(strict=True)
assert wasm.read_bytes()[:8]==b"\x00asm\x01\x00\x00\x00" and sha(wasm)==config["application_wasm_sha256"]
sys.path.insert(0,str(s/"tools/shared/python"))
from kernel_budget import cgroup_budget
budget=cgroup_budget()
parent=Path(config["aggregate_cgroup"]).resolve(strict=True)
current=Path("/sys/fs/cgroup"+Path("/proc/self/cgroup").read_text().strip()[3:]).resolve(strict=True)
native_group=Path(config["native_cgroup"]).resolve(strict=True)
assert current.is_relative_to(parent) and native_group.parent==parent and native_group!=current
assert (parent/"memory.max").read_text().strip()=="68719476736" and (parent/"memory.swap.max").read_text().strip()=="0"
assert 0<int((native_group/"memory.max").read_text())<=4*1024**3 and (native_group/"memory.swap.max").read_text().strip()=="0"
quota,period=(native_group/"cpu.max").read_text().split()
assert quota!="max" and int(quota)<=2*int(period)
assert {name for _,name in socket.if_nameindex()}=={"lo"}, "Scene requires its own loopback-only network namespace"
socket_root=Path(config["socket_directory"]).resolve(strict=True)
assert socket_root.is_dir()
socket_dir=Path(tempfile.mkdtemp(prefix="tb-",dir=socket_root))
assert len(os.fsencode(socket_dir/"c.sock"))<108
def grants(relative,example,module):
 template=json.loads((s/relative/'deployment.template.json').read_text())
 rows=template['examples'][example]['modules'][module]['grants']
 for row in rows:
  row['limits']={k:val for k,val in row['limits'].items() if not (k.startswith('max-') or k.startswith('audit-max-') or k in ['burst','audit-burst'])}
 return rows
grant_rows=grants('example/platform/robotis/py/ros2/humble/upstream_obstacle_detection','upstream_obstacle_detection','robotis_obstacle_app')
driver_rows=grants('example/platform/robotis/c/ros2/humble/obstacle_scenario','obstacle_scenario','robotis_obstacle_scenario')
native_script=s/'example/platform/robotis/simulation/turtlebot3_burger_humble/native_scene.py'
domain=config["domain_id"];assert isinstance(domain,int) and 0<=domain<=232
report=dict(scope='Actual original Humble Python Wasm and independent C Wasm driver with native Gazebo infrastructure; no host-language application substitute. Functional probe requires independent trace verification.',status='RUNNING',actors=[],steps=[],cgroup_parent=str(parent),memory_events_before=(parent/'memory.events').read_text(),limits='No finite guest quota for this scene; explicit permissions retained',native_or_language_application_substitute=False)
def save():(d/'result.json').write_text(json.dumps(report,indent=2)+'\n')
def birth(pid):return Path('/proc',str(pid),'stat').read_text().rsplit(') ',1)[1].split()[19]
sys.path.insert(0,str(s/'tools/shared/python'))
from owned_processes import OwnedProcesses
life=OwnedProcesses()
actors=[];gate_fds=[]
def spawn(role,argv,env=None,**kw):
 handles=[(d/(role+'.stdout')).open('wb'),(d/(role+'.stderr')).open('wb')]
 p=subprocess.Popen(argv,stdout=handles[0],stderr=handles[1],env=env or os.environ,start_new_session=True,**kw)
 for f in handles:f.close()
 actors.append((role,p));life.observe();report['actors'].append(dict(role=role,pid=p.pid,birth=birth(p.pid),argv=list(map(str,argv)),initial_cgroup=Path('/proc',str(p.pid),'cgroup').read_text()));save()
 return p
def waitfor(check,seconds,watched=()):
 until=time.monotonic()+seconds
 while not check():
  life.observe()
  for role,p in watched:
   if p.poll() is not None:raise RuntimeError(role+' exited '+str(p.returncode))
  if time.monotonic()>=until:raise TimeoutError('scene readiness/operation deadline')
  time.sleep(.01)
def child_group():
 (native_group/'cgroup.procs').write_text(str(os.getpid())+'\n')
def launch_guest(role,binary,rows,wasi):
 sock=socket_dir/('g.sock' if role=='app' else 'c.sock');assert len(os.fsencode(sock))<108
 values={'gateway-socket':str(sock),'gateway-uid':str(os.getuid()),'node-name':'tb3_'+role,'namespace':'/','domain-id':str(domain),'rmw-implementation':'rmw_cyclonedds_cpp','security-mode':'disabled-test','keystore':'not-applicable','enclave':'not-applicable'}
 cmd=[str(vm),'-Raot','--log-verbose','--runtime-compile-threads','1','--runtime-llvm-jit-policy','debug','--wasm-set-main-module-name','main','--wasip1-single-create','main','--wasip1-single-enable','main','--wasip1-single-noinherit-system-environment','main']
 for g in wasi:cmd+=['--wasip1-single-grant','main',g]
 cmd+=['--ros2-single-create','main','--ros2-single-enable','main']
 for k,val in values.items():cmd+=['--ros2-single-'+k,'main',val]
 for row in rows:
  alias=row['alias'];cmd+=['--ros2-single-grant','main',alias,row['operation'],row['resource'],row['type'],row['identity']]
  for k,val in row['limits'].items():cmd+=['--ros2-single-set','main',alias,k,val]
 cmd+=['--run',str(binary)]
 readfd,writefd=os.pipe2(os.O_CLOEXEC);gate_fds.append(writefd)
 image=os.open(vm,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW)
 with os.fdopen(os.dup(image),'rb') as f:assert hashlib.file_digest(f,'sha256').hexdigest()==report['pins'][str(vm)]
 helper='import os,sys,fcntl;g,f=map(int,sys.argv[1:3]);assert os.read(g,1)==b"R";os.close(g);fcntl.fcntl(f,fcntl.F_SETFD,fcntl.FD_CLOEXEC);os.execve(f,sys.argv[3:],{"PATH":os.defpath,"LANG":"C.UTF-8"})'
 guest=spawn(role,[sys.executable,'-c',helper,str(readfd),str(image),*cmd],pass_fds=(readfd,image))
 os.close(readfd)
 lines=['backend ros2','worker-uid '+str(os.getuid()),'worker-pid '+str(guest.pid),'socket '+str(sock)]+['connection '+k+' '+val for k,val in values.items() if k not in ('gateway-socket','gateway-uid')]
 for row in rows:
  alias=row['alias'];lines+=['grant '+alias+' '+row['operation']+' '+row['resource']+' '+row['type']+' '+row['identity']]+['set '+alias+' '+k+' '+val for k,val in row['limits'].items()]
 gateway_config=d/(role+'.conf');gateway_config.write_text('\n'.join(lines)+'\n');gateway_config.chmod(0o600)
 assert sha(loader)==config['native_loader']['sha256']
 libs=':'.join(map(str,[unitree/'lib',root/'opt/ros/humble/lib',root/'opt/ros/humble/lib/x86_64-linux-gnu',root/'usr/lib/x86_64-linux-gnu',root/'lib/x86_64-linux-gnu']))
 env={'PATH':os.defpath,'LANG':'C.UTF-8','AMENT_PREFIX_PATH':str(unitree)+':'+str(root/'opt/ros/humble'),'LD_LIBRARY_PATH':libs,'ROS_DOMAIN_ID':str(domain),'ROS_LOCALHOST_ONLY':'1','RMW_IMPLEMENTATION':'rmw_cyclonedds_cpp','ROS_LOG_DIR':str(d/'roslogs')}
 report['native_loader']={'path':str(loader),'sha256':sha(loader),'library_path':libs}
 gw=spawn(role+'-gateway',[str(loader),'--library-path',libs,str(gateway),str(gateway_config)],env=env)
 waitfor(lambda:sock.exists(),20,[(role+'-gateway',gw)])
 os.write(writefd,b'R');os.close(writefd);gate_fds.remove(writefd)
 until=time.monotonic()+10
 while True:
  if guest.poll() is not None:raise RuntimeError('Guest exited during real VM exec gate')
  try:
   st=os.stat('/proc/'+str(guest.pid)+'/exe');im=os.fstat(image)
   if (st.st_dev,st.st_ino)==(im.st_dev,im.st_ino):break
  except FileNotFoundError:pass
  if time.monotonic()>=until:raise TimeoutError('VM fd exec not observed')
  time.sleep(.005)
 if role=='app':
  # VM admission itself contacts the real gateway. Keep it responsive until
  # admission completes; only then hold application traffic during compilation.
  waitfor(lambda:b'Begin LLVM JIT IR translation for module' in (d/'app.stderr').read_bytes(),30,[(role,guest),(role+'-gateway',gw)])
  os.kill(gw.pid,signal.SIGSTOP)
  waitfor(lambda:next(line.split()[1] for line in Path('/proc',str(gw.pid),'status').read_text().splitlines() if line.startswith('State:'))=='T',2)
  assert b'Begin running the WASM program' not in (d/'app.stderr').read_bytes(), 'Startup hold arrived after application execution'
  report['application_start_gate']=dict(role='app-gateway',pid=gw.pid,vm_admission_completed=True,guest_execution_not_started_after_stop=True,held_ns=time.monotonic_ns(),reason='Hold real application IPC only after VM admission and before execution during LLVM warmup; release after independent Wasm native baseline')
  save()
 os.close(image)
 report['steps'].append(dict(role=role,actual_vm_fd_exec=True,wasm=str(binary),wasm_sha256=sha(binary),argv=cmd,configuration_sha256=sha(gateway_config)));save()
 return guest,gw
try:
 while int((parent/'memory.current').read_text())>28*1024**3:time.sleep(.5)
 report['pins']={str(p):sha(p) for p in [vm,gateway,wasm,driver,loader,profile,native_script,*native_inputs,args.deployment,Path(__file__),
 s/'tools/platform/robotis/turtlebot_scene_oracle.py',s/'tools/shared/python/owned_processes.py',s/'tools/shared/python/kernel_budget.py',
 s/'example/platform/robotis/py/ros2/humble/upstream_obstacle_detection/deployment.template.json',
 s/'example/platform/robotis/c/ros2/humble/obstacle_scenario/deployment.template.json',
 s/'src/platform/robotis/py/ros2/robotis-turtlebot3-humble-complete/upstream_obstacle_detection/ported/turtlebot3_obstacle_detection.py']}
 report['resource_budget']=budget;report['network_namespace']=os.readlink('/proc/self/ns/net');report['network_interfaces']=socket.if_nameindex();save()
 env=dict(os.environ,ROS_DOMAIN_ID=str(domain),ROS_LOCALHOST_ONLY='1',PYTHONDONTWRITEBYTECODE='1',UWVM_SDK_OUTPUT=str(d/'native'))
 (d/'native').mkdir()
 native=spawn('native',['/usr/bin/python3',str(native_script),'turtlebot3',*map(str,native_inputs),'--sdk-root',str(s),'--ready-file',str(d/'ready.json'),'--stop-file',str(d/'stop'),'--lifetime-seconds','300','--world','turtlebot3_dqn_stage1.world'],env=env,preexec_fn=child_group)
 waitfor(lambda:(d/'ready.json').exists(),240,[('native',native)])
 ready=json.loads((d/'ready.json').read_text());assert ready['pid']==native.pid and int(ready['birth_ticks'])==int(birth(native.pid)) and ready['matches_original_task_world']
 assert Path('/sys/fs/cgroup'+ready['cgroup'].strip()[3:]).resolve()==native_group
 report['native_ready']=ready;save()
 wasi=['args','stdout.write','stderr.write','stdio.metadata','proc-exit','monotonic-clock','monotonic-timer']
 app,bridge=launch_guest('app',wasm,grant_rows,wasi+['environ'])
 waitfor(lambda:b'Begin running the WASM program' in (d/'app.stderr').read_bytes(),240,[('native',native),('app',app)])
 scenario,scenario_gateway=launch_guest('scenario',driver,driver_rows,wasi)
 waitfor(lambda:b'baseline-ready' in (d/'scenario.stdout').read_bytes(),15,[('native',native),('scenario',scenario),('scenario-gateway',scenario_gateway)])
 report['baseline_ready_host_ns']=time.monotonic_ns();save()
 os.kill(bridge.pid,signal.SIGCONT)
 report['application_start_gate']['released_ns']=time.monotonic_ns();save()
 waitfor(lambda:scenario.poll() is not None,60,[('native',native),('app-gateway',bridge),('scenario-gateway',scenario_gateway)])
 assert scenario.returncode==0,(d/'scenario.stdout').read_text()[-600:]
 waitfor(lambda:app.poll() is not None,15,[('native',native)])
 assert app.returncode==0
 report.update(app_exit=app.returncode,scenario_exit=scenario.returncode,status='COMPLETED_REQUIRES_INDEPENDENT_TRACE_VERIFICATION')
 (d/'stop').write_text('stop\\n');waitfor(lambda:native.poll() is not None,20)
 assert native.returncode==0

except BaseException as e:
 import traceback
 report.update(status='FAILED',diagnostic=repr(e),traceback=traceback.format_exc());raise
finally:
 for fd in gate_fds:os.close(fd)
 (d/'stop').write_text('stop\n')
 retirement=[]
 for role,p in reversed(actors):
  if p.poll() is None:
   if role=='app-gateway':os.kill(p.pid,signal.SIGCONT)
   p.terminate()
  try:p.wait(timeout=10)
  except subprocess.TimeoutExpired:p.kill();p.wait()
  retirement.append(dict(role=role,pid=p.pid,exit=p.returncode,kernel_absent=not Path('/proc',str(p.pid)).exists()))
 report['retirement']=retirement
 report['owned_retirement']=life.retire([])
 report['memory_events_after']=(parent/'memory.events').read_text()
 report['native_memory_events_after']=(native_group/'memory.events').read_text()
 if 'pins' in report:report['pins_unchanged']=all(sha(p)==h for p,h in report['pins'].items())
 save()


from turtlebot_scene_oracle import verify
oracle=verify(d)
assert oracle["passed"]
(d/"suite.json").write_text(json.dumps(dict(format="uwvm-sdk-turtlebot-native-result-v1",
 passed=True,raw_result_sha256=sha(d/"result.json"),oracle_sha256=sha(d/"independent-trace-verification.json"),
 runtime_sha256=sha(vm),wasm_sha256=sha(wasm),scenario_wasm_sha256=sha(driver),
 owned_retirement="RETIRED",scope=oracle["scope"]),indent=2)+"\n")
for entry in socket_dir.iterdir():
 if entry.is_socket():entry.unlink()
socket_dir.rmdir()
print(json.dumps(dict(passed=True,output=str(d))))
