"""Run the original PHP/Wasm metadata and callback contracts through the real gateway.
Host Python only supplies explicit deployment, supervises processes and verifies logs.
"""
from pathlib import Path
import argparse,copy,hashlib,json,os,re,secrets,socket,subprocess,sys,tempfile,time
from pipe_capture import PipeLoggedProcess
from owned_processes import OwnedProcesses
from wasi_policy import test_arguments
from wasi_component import read_json
parser=argparse.ArgumentParser()
for name in ('sdk-root','manifest','wasm','deployment','output'):
 parser.add_argument('--'+name,required=True)
args=parser.parse_args();s=Path(args.sdk_root).resolve(strict=True);mp=Path(args.manifest).resolve(strict=True);wasm=Path(args.wasm).resolve(strict=True)
manifest=read_json(mp);cfg=read_json(args.deployment);scenario=manifest['scenario'];expected=manifest['cases'];count=len(expected)
assert manifest['format']=='uwvm-sdk-php-metadata-tests-v1' and (scenario,count) in [('composition',14),('dispatch',22)]
assert cfg['format']=='uwvm-sdk-php-metadata-native-v1' and cfg['scenario']==scenario
assert wasm.read_bytes()[:8]==b'\0asm\1\0\0\0'
d=Path(args.output).absolute();d.mkdir(mode=0o700,parents=True,exist_ok=False)
sha=lambda p:hashlib.file_digest(Path(p).open('rb'),'sha256').hexdigest()
inputs=[mp,Path(args.deployment),Path(__file__),wasm]
for pin in manifest['public_inputs']:
 relative=Path(pin['path']);p=(s if pin['scope']=='sdk' else mp.parent)/relative
 if relative.is_absolute() or '..' in relative.parts or sha(p)!=pin['sha256']:raise ValueError('Public input differs: '+str(p))
 inputs.append(p)
def pinned(name):
 p=Path(cfg[name]['path'])
 if p.resolve(strict=True)!=p or sha(p)!=cfg[name]['sha256']:raise ValueError('Executable identity differs: '+name)
 return p
vm=pinned('runtime');gateway=pinned('gateway')
for pin in cfg['native_inputs']:
 if sha(pin['path'])!=pin['sha256']:raise ValueError('Native dependency changed')
 inputs.append(Path(pin['path']))
net=os.stat('/proc/self/ns/net')
if {'device':net.st_dev,'inode':net.st_ino}==cfg['host_network_namespace'] or any(n!='lo' for _,n in socket.if_nameindex()):raise RuntimeError('Use a private loopback-only network namespace')
membership=Path('/proc/self/cgroup').read_text().strip();group=Path('/sys/fs/cgroup')/membership[3:].lstrip('/')
def guard():
 if not membership.startswith('0::/') or Path('/proc/self/cgroup').read_text().strip()!=membership or (group/'memory.max').read_text().strip()!='68719476736' or (group/'memory.swap.max').read_text().strip()!='0':raise RuntimeError('Keep the 64 GiB/zero-swap cgroup')
guard()
policy=copy.deepcopy(cfg['wasi_policy']);assert set(policy['modules'])=={'main'} and policy['modules']['main']['enabled'] is True and not policy['modules']['main'].get('preopens')
grants=copy.deepcopy(cfg['grants']);assert len(grants)==2 and {v['alias'] for v in grants}=={'source','observe'}
source=next(v for v in grants if v['alias']=='source');observe=next(v for v in grants if v['alias']=='observe')
assert source['operation']=='topic.publish' and source['type']=='std_msgs/msg/String'
assert observe['operation']=='event.observe' and observe['type']=='builtin/event-v1' and observe['identity']=='builtin:ros-event-envelope-le64-v1'
assert observe['fields']['event-source-alias']=='source' and observe['fields']['event-kinds']=='resource-error,resource-closed'
socket_root=Path(cfg['socket_directory']);socket_root.mkdir(mode=0o700,parents=True,exist_ok=True)
work=Path(tempfile.mkdtemp(prefix='metadata-',dir=socket_root));socket_path=work/'g.sock';nonce=secrets.token_hex(16)
resource='/php_metadata/t_'+nonce
for grant in grants:
 assert grant['resource']=='{resource}';grant['resource']=resource
values=dict(cfg['connection']);values.update({'gateway-socket':str(socket_path),'gateway-uid':str(os.getuid())})
options=['--ros2-single-create','main','--ros2-single-enable','main']
for k,v in values.items():options+=['--ros2-single-'+k,'main',v]
for grant in grants:
 options+=['--ros2-single-grant','main',*[grant[k] for k in ['alias','operation','resource','type','identity']]]
 for k,v in grant['fields'].items():options+=['--ros2-single-set','main',grant['alias'],k,v]
argv=[str(vm),*test_arguments(cfg['runtime_arguments'],policy),*options,'--run',str(wasm),nonce]
from host_interfaces import authorize_test_imports
argv = authorize_test_imports(argv)
env=dict(cfg['native_environment']);env.update(ROS_LOG_DIR=str(d/'ros-logs'),ROS_HOME=str(d/'ros-home'))
row=dict(format='uwvm-sdk-php-metadata-native-result-v1',status='RUNNING',scenario=scenario,cgroup=membership,argv=argv,wasi_policy=policy,ros_grants=grants,
 scope='Original genuine PHP/Wasm metadata/owner/callback assertions; no message peer, official vendor simulator, full ROS API or component-isolation qualification',
 pins={str(p):sha(p) for p in [vm,gateway,*inputs]},wasm_sha256_before=sha(wasm),memory_events_before=(group/'memory.events').read_text())
def save():(d/'suite.json').write_text(json.dumps(row,indent=2)+'\n')
save();life=OwnedProcesses();actors=[];descriptors=[];gatew=None
def spawn(label,command,**kw):
 fd=None
 if label!='vm':
  p={'gateway':gateway}[label];fd=os.open(p,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW)
  with os.fdopen(os.dup(fd),'rb') as image:
   if hashlib.file_digest(image,'sha256').hexdigest()!=cfg[label]['sha256']:raise ValueError('Native executable changed')
  kw.update(executable='/proc/self/fd/'+str(fd),pass_fds=(fd,))
 try:
  with (d/(label+'.stdout')).open('xb') as out,(d/(label+'.stderr')).open('xb') as err:
   p=PipeLoggedProcess(command,stdout=out,stderr=err,env=env,start_new_session=True,output_limit=cfg['limits']['output_bytes'],**kw)
 finally:
  if fd is not None:os.close(fd)
 actors.append((label,p));life.observe();return p
def tick():
 guard();life.observe()
 for _,p in actors:
  p.poll()
  if p.returncode is None:
   try:member=Path('/proc/'+str(p.pid)+'/cgroup').read_text().strip()
   except FileNotFoundError:
    if p.poll() is not None:continue
    raise
   if member!=membership:raise RuntimeError('Actor left cgroup')
def until(check,seconds):
 end=time.monotonic()+seconds
 while not check():
  tick()
  if time.monotonic()>=end:raise TimeoutError('Native preload fixture deadline')
  time.sleep(.005)
try:
 gater,gatew=os.pipe2(os.O_CLOEXEC);fd=os.open(vm,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW);errr,errw=os.pipe2(os.O_CLOEXEC);descriptors+=[gater,fd,errr,errw]
 with os.fdopen(os.dup(fd),'rb') as image:
  if hashlib.file_digest(image,'sha256').hexdigest()!=cfg['runtime']['sha256']:raise ValueError('Held VM changed')
 helper='import os,sys,fcntl;g,f,e=map(int,sys.argv[1:4]);assert os.read(g,1)==b"R";os.close(g);fcntl.fcntl(e,fcntl.F_SETFD,fcntl.FD_CLOEXEC);fcntl.fcntl(f,fcntl.F_SETFD,fcntl.FD_CLOEXEC)\ntry:os.execve(f,sys.argv[4:],{"PATH":os.defpath,"LANG":"C.UTF-8"})\nexcept OSError as x:os.write(e,str(x.errno).encode());os._exit(125)'
 guest=spawn('vm',[sys.executable,'-c',helper,str(gater),str(fd),str(errw),*argv],pass_fds=(gater,fd,errw),stdin=subprocess.DEVNULL)
 os.close(gater);descriptors.remove(gater);os.close(errw);descriptors.remove(errw)
 lines=['backend ros2','worker-uid '+str(os.getuid()),'worker-pid '+str(guest.pid),'socket '+str(socket_path)]+['connection '+k+' '+v for k,v in values.items() if k not in ('gateway-socket','gateway-uid')]
 for grant in grants:lines+=['grant '+' '.join(grant[k] for k in ['alias','operation','resource','type','identity'])]+['set '+grant['alias']+' '+k+' '+v for k,v in grant['fields'].items()]
 conf=d/'gateway.conf';conf.write_text('\n'.join(lines)+'\n');conf.chmod(0o600);row['gateway_config_sha256']=sha(conf)
 bridge=spawn('gateway',[str(gateway),str(conf)],stdin=subprocess.DEVNULL)
 until(lambda:socket_path.exists() or bridge.poll() is not None,20);assert bridge.poll() is None,(d/'gateway.stderr').read_text()
 started=time.monotonic();os.write(gatew,b'R');os.close(gatew);gatew=None;assert os.read(errr,4096)==b''
 actual=os.stat('/proc/'+str(guest.pid)+'/exe');held=os.fstat(fd);assert (actual.st_dev,actual.st_ino)==(held.st_dev,held.st_ino);row['actual_vm_fd_exec']=True;save()

 until(lambda:guest.poll() is not None,cfg['limits']['timeout_seconds'])
 row['guest_exit']=guest.returncode;row['seconds']=time.monotonic()-started
 assert guest.returncode==0,(guest.returncode,(d/'vm.stderr').read_text()[-4000:])
 records=[json.loads(line) for line in (d/'vm.stdout').read_text().splitlines()];row['guest_records']=records
 assert len(records)==count+1 and [v['case'] for v in records[:-1]]==expected
 prefix='uwvm-sdk-api-composition' if scenario=='composition' else 'uwvm-sdk-event-dispatch'
 codes=[80413,0,0,0,22,22,22,22,22,22,0,9,9,9]
 for i,v in enumerate(records[:-1]):
  want=dict(format=prefix+'-case-v1',language='php',case=expected[i],passed=True)
  if scenario=='composition':want['observed_code']=codes[i]
  assert v==want,(i,v,want)
 summary=records[-1];assert summary['format']==prefix+'-summary-v1' and summary['language']=='php' and summary['nonce']==nonce
 assert all(summary[k]==count for k in ['required','selected','executed','passed']) and all(summary[k]==0 for k in ['failed','blocked','not_run'])
 assert summary['Stage_A_communication_pass'] is False and summary['component_isolation_pass'] is False
 plain=re.sub(r'\x1b\[[0-?]*[ -/]*[@-~]','',(d/'vm.stderr').read_text())
 assert '[unwind-check] status=ok' in plain and 'compiler=llvm_jit_only, uwvm-int-translation=disabled' in plain and 'body-fallback=yes' not in plain
 audit=[dict(re.findall(r'([a-z_]+)=([^ ]+)',line)) for line in ((d/'gateway.stdout').read_text()+(d/'gateway.stderr').read_text()).splitlines() if line.startswith('ros_audit ')]
 row['gateway_audit']=audit
 assert audit and all(v['operation'] in ('session.bind','event.watch','event.ready','event.poll','event.detach','event.retire','capability.close') for v in audit),audit
 assert all(v['error']=='0' or (v['operation']=='event.poll' and v['error'] in ('11','90')) for v in audit),audit
 assert sum(v['operation']=='event.watch' for v in audit)==(1 if scenario=='composition' else 2),audit
 assert not any(v['operation'].startswith(('topic.','service.','rmw.')) for v in audit)
 row['wasm_sha256_after']=sha(wasm);row['pins_unchanged']=all(sha(p)==h for p,h in row['pins'].items())
 assert row['wasm_sha256_before']==row['wasm_sha256_after'] and row['pins_unchanged']
 row.update(status='PASS',selected=count,executed=count,passed=count,failed=0,blocked=0,skipped=0,native_unwind_checked=True,interpreter_fallback=False)
except BaseException as failure:
 row.update(status='FAIL',failure=repr(failure),traceback=__import__('traceback').format_exc());raise
finally:
 if gatew is not None:os.close(gatew)
 for fd in descriptors:os.close(fd)
 for _,p in reversed(actors):
  if p.poll() is None:p.terminate()
  try:p.wait(timeout=5)
  except subprocess.TimeoutExpired:p.kill();p.wait()
 life.observe();row['retirement']=life.retire([]);row['memory_events_after']=(group/'memory.events').read_text()
 row['raw_files']={p.name:sha(p) for p in d.glob('*.std*')}
 if row['retirement']['status']!='RETIRED':row['status']='FAIL'
 save();print(row['status'],row.get('failure'),flush=True)
if row['status']!='PASS':raise SystemExit(1)
