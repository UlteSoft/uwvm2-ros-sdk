"""Exercise the genuine four-module Java graph with explicit per-module grants.
Host code supervises and checks evidence. Arithmetic, exceptions, ROS ownership,
invalid inputs and cleanup assertions execute inside the original Wasm modules.
"""
from pathlib import Path
import argparse,copy,hashlib,json,os,re,socket,subprocess,sys,tempfile,time
from pipe_capture import PipeLoggedProcess
from owned_processes import OwnedProcesses
from wasi_policy import test_arguments
from wasi_component import read_json

parser=argparse.ArgumentParser()
for name in ('sdk-root','manifest','module-graph','case','deployment','output'):
 parser.add_argument('--'+name,required=True)
args=parser.parse_args()
cases={'guest-contract-normal':'normal','guest-contract-denied':'denied','guest-contract-invalid-input':'invalid','guest-contract-cleanup':'cleanup','guest-contract-boundary-denied':'denied'}
if args.case not in cases:raise ValueError('Select one exact guest contract')
mode=cases[args.case];s=Path(args.sdk_root).resolve(strict=True);manifest_path=Path(args.manifest).resolve(strict=True);project=manifest_path.parent
d=Path(args.output).absolute();d.mkdir(mode=0o700,parents=True,exist_ok=False)
sha=lambda p:hashlib.file_digest(Path(p).open('rb'),'sha256').hexdigest()
cfg=read_json(args.deployment);manifest=read_json(manifest_path);graph_path=Path(args.module_graph).resolve(strict=True);graph=read_json(graph_path)
if cfg.get('format')!='uwvm-sdk-pal-preload-native-v1' or manifest.get('format')!='uwvm-sdk-pal-preload-tests-v1':raise ValueError('Select explicit native preload deployment and public inputs')
if graph.get('format')!='uwvm-sdk-target-artifacts-v1' or graph.get('kind')!='binary' or graph.get('target')!='main':raise ValueError('Select actual Xmake main artifact graph')
inputs=[manifest_path,graph_path,Path(args.deployment),Path(__file__)]
for pin in manifest['public_inputs']:
 relative=Path(pin['path']);p=(s if pin['scope']=='sdk' else project)/relative
 if relative.is_absolute() or '..' in relative.parts or sha(p)!=pin['sha256']:raise ValueError('Public input identity differs: '+str(p))
 inputs.append(p)
modules={'main':dict(artifact=graph['artifact'],sha256=graph['sha256'])}
if len(graph['preload'])!=3 or {x['module'] for x in graph['preload']}!={'io','algorithm','ros_comm'}:raise ValueError('Require the exact independent Java producer set')
for x in graph['preload']:
 if x['artifact_model']!='core-preload':raise ValueError('A producer is not a Core preload')
 modules[x['module']]=x
# All cross-module edges must be function imports. Each module owns one memory.
def u32(raw,pos):
 value=shift=0
 while True:
  if pos>=len(raw) or shift>35:raise ValueError('malformed binary extent')
  b=raw[pos];pos+=1;value|=(b&127)<<shift
  if b<128:return value,pos
  shift+=7
def string(raw,pos):
 n,pos=u32(raw,pos);end=pos+n
 if end>len(raw):raise ValueError('truncated import name')
 return raw[pos:end].decode(),end
for name,entry in modules.items():
 p=Path(entry['artifact'])
 if not p.is_absolute() or p.resolve(strict=True)!=p or sha(p)!=entry['sha256']:raise ValueError('Actual module differs: '+name)
 inputs.append(p);raw=p.read_bytes()
 if raw[:8]!=b'\0asm\1\0\0\0':raise ValueError('Real Core Wasm required')
 pos=8;memories=0;imports=[]
 while pos<len(raw):
  section=raw[pos];n,pos=u32(raw,pos+1);end=pos+n
  if end>len(raw):raise ValueError('truncated section')
  if section==5:memories,_=u32(raw,pos)
  if section==2:
   count,at=u32(raw,pos)
   for _ in range(count):
    namespace,at=string(raw,at);field,at=string(raw,at)
    if at>=end or raw[at]!=0:raise ValueError('Memory/table/global sharing is not admitted')
    _,at=u32(raw,at+1);imports.append(dict(namespace=namespace,function=field))
   if at!=end:raise ValueError('unparsed import data')
  pos=end
 if memories!=1:raise ValueError('Each genuine Java module must own one private memory')
 entry['imports']=imports
def pinned(name):
 p=Path(cfg[name]['path'])
 if p.resolve(strict=True)!=p or sha(p)!=cfg[name]['sha256']:raise ValueError('Pinned executable differs: '+name)
 return p
vm=pinned('runtime');gateway=pinned('gateway');peer=pinned('observer')
for pin in cfg['native_inputs']:
 if sha(pin['path'])!=pin['sha256']:raise ValueError('Native dependency changed: '+pin['path'])
 inputs.append(Path(pin['path']))
net=os.stat('/proc/self/ns/net')
if {'device':net.st_dev,'inode':net.st_ino}==cfg['host_network_namespace'] or any(n!='lo' for _,n in socket.if_nameindex()):raise RuntimeError('Use a private loopback-only network namespace')
membership=Path('/proc/self/cgroup').read_text().strip();group=Path('/sys/fs/cgroup')/membership[3:].lstrip('/')
def guard():
 if not membership.startswith('0::/') or Path('/proc/self/cgroup').read_text().strip()!=membership or (group/'memory.max').read_text().strip()!='68719476736' or (group/'memory.swap.max').read_text().strip()!='0':raise RuntimeError('64 GiB/zero-swap cgroup changed')
guard()
policy=copy.deepcopy(cfg['wasi_policy'])
if set(policy['modules'])!=set(modules) or not all(v.get('enabled') is True and not v.get('preopens') for v in policy['modules'].values()):raise ValueError('Explicit base WASI for every module, with no filesystem roots, is required')
for name,v in policy['modules'].items():
 if name!='io' and any(x in v.get('grants',[]) for x in ('stdin.read','stdout.write')):raise ValueError('Only io may own stdin/stdout')
profile=cfg['cases'][args.case];grants=copy.deepcopy(profile['grants'])
if mode in ('normal','cleanup') or args.case=='guest-contract-boundary-denied':
 if len(grants)!=1 or grants[0]['alias']!='shared_pub' or grants[0]['operation']!='topic.publish' or grants[0]['type']!='std_msgs/msg/String':raise ValueError('Select the one publisher capability')
elif grants:raise ValueError('Negative contracts require no ROS resource grant')
socket_root=Path(cfg['socket_directory']);socket_root.mkdir(parents=True,mode=0o700,exist_ok=True)
work=Path(tempfile.mkdtemp(prefix='pal-',dir=socket_root));socket_path=work/'g.sock'
topic='/pal_preload/t_'+work.name.replace('-','_')
for grant in grants:
 if grant['resource']!='{topic}':raise ValueError('Use the fresh explicit test topic placeholder')
 grant['resource']=topic
values=dict(cfg['connection']);values.update({'gateway-socket':str(socket_path),'gateway-uid':str(os.getuid())})
runtime=list(cfg['runtime_arguments'])
for name in ['io','algorithm','ros_comm']:runtime+=['--wasm-preload-library',modules[name]['artifact'],name]
options=[]
for name in modules:options+=['--ros2-single-create',name,'--ros2-single-enable',name]
boundaries=profile['call_boundaries']
if set(boundaries)-{'io','algorithm','ros_comm'} or any(v!='module-exports' for v in boundaries.values()):raise ValueError('Select explicit module export admission')
for name,value in boundaries.items():options+=['--ros2-single-call-boundary',name,value]
for k,v in values.items():options+=['--ros2-single-'+k,'ros_comm',v]
for grant in grants:
 options+=['--ros2-single-grant','ros_comm',*[grant[k] for k in ['alias','operation','resource','type','identity']]]
 for k,v in grant['fields'].items():options+=['--ros2-single-set','ros_comm',grant['alias'],k,v]
argv=[str(vm),*test_arguments(runtime,policy),*options,'--run',modules['main']['artifact'],*(['--contract',mode] if mode!='normal' else [])]
from host_interfaces import authorize_test_imports
argv = authorize_test_imports(argv)
env=dict(cfg['native_environment']);env.update(ROS_LOG_DIR=str(d/'ros-logs'),ROS_HOME=str(d/'ros-home'))
row=dict(format='uwvm-sdk-pal-preload-native-result-v1',status='RUNNING',case=args.case,mode=mode,scope='Actual Java/Wasm modules and native ROS transport; no simulator qualification',
 cgroup=membership,private_wasm_memories=4,modules=modules,wasi_policy=policy,ros_grants=grants,call_boundaries=boundaries,topic=topic,argv=argv,socket_directory=str(work),
 pins={str(p):sha(p) for p in [vm,gateway,peer,*inputs]},memory_events_before=(group/'memory.events').read_text())
def save():(d/'suite.json').write_text(json.dumps(row,indent=2)+'\n')
save();life=OwnedProcesses();actors=[];descriptors=[];gatew=None
def spawn(label,command,**kw):
 fd=None
 if label!='vm':
  p={'gateway':gateway,'observer':peer}[label];fd=os.open(p,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW)
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
 guest=spawn('vm',[sys.executable,'-c',helper,str(gater),str(fd),str(errw),*argv],pass_fds=(gater,fd,errw),stdin=subprocess.PIPE,nonblocking_stdin=False)
 os.close(gater);descriptors.remove(gater);os.close(errw);descriptors.remove(errw)
 observer=spawn('observer',[str(peer),topic,'1' if mode=='normal' else '0'],stdin=subprocess.PIPE,nonblocking_stdin=False)
 until(lambda:(d/'observer.stdout').read_bytes().startswith(b'READY\n') or observer.poll() is not None,20)
 assert observer.poll() is None,(d/'observer.stderr').read_text()
 lines=['backend ros2','worker-uid '+str(os.getuid()),'worker-pid '+str(guest.pid),'socket '+str(socket_path)]+['connection '+k+' '+v for k,v in values.items() if k not in ('gateway-socket','gateway-uid')]
 for grant in grants:lines+=['grant '+' '.join(grant[k] for k in ['alias','operation','resource','type','identity'])]+['set '+grant['alias']+' '+k+' '+v for k,v in grant['fields'].items()]
 conf=d/'gateway.conf';conf.write_text('\n'.join(lines)+'\n');conf.chmod(0o600);row['gateway_config_sha256']=sha(conf)
 bridge=spawn('gateway',[str(gateway),str(conf)],stdin=subprocess.DEVNULL)
 until(lambda:socket_path.exists() or bridge.poll() is not None,20);assert bridge.poll() is None,(d/'gateway.stderr').read_text()
 started=time.monotonic();os.write(gatew,b'R');os.close(gatew);gatew=None;assert os.read(errr,4096)==b''
 actual=os.stat('/proc/'+str(guest.pid)+'/exe');held=os.fstat(fd);assert (actual.st_dev,actual.st_ino)==(held.st_dev,held.st_ino);row['actual_vm_fd_exec']=True;save()
 if mode in ('normal','cleanup'):
  until(lambda:(b'UWVM_PRELOAD publisher-ready\n' in (d/'vm.stdout').read_bytes() and b'MATCHED\n' in (d/'observer.stdout').read_bytes()) or guest.poll() is not None,cfg['limits']['timeout_seconds'])
  assert guest.poll() is None,(d/'vm.stderr').read_text()[-5000:]
  guest.stdin.write(b'g' if mode=='normal' else b'c');guest.stdin.flush()
 until(lambda:guest.poll() is not None,cfg['limits']['timeout_seconds']);row['guest_exit']=guest.returncode;row['seconds']=time.monotonic()-started
 assert guest.returncode==0,(guest.returncode,(d/'vm.stderr').read_text()[-5000:])
 if mode=='normal':until(lambda:b'RECEIVED ' in (d/'observer.stdout').read_bytes() or observer.poll() is not None,20)
 observer.stdin.write(b'Q');observer.stdin.flush();until(lambda:observer.poll() is not None,20);row['observer_exit']=observer.returncode
 assert observer.returncode==0,(d/'observer.stdout').read_text()
 lines=(d/'vm.stdout').read_text().splitlines()
 expected={'preload':True,'denied_modules':3,'caught_overflows':1,'finally_calls':2,'published':True,'closed':True} if mode=='normal' else {'preload_contract':mode,'denied_modules':3,'passed':True}
 assert len(lines)==(2 if mode in ('normal','cleanup') else 1) and json.loads(lines[-1])==expected,lines
 if mode in ('normal','cleanup'):assert lines[0]=='UWVM_PRELOAD publisher-ready'
 row['guest_result']=expected
 received=[bytes.fromhex(l[9:]) for l in (d/'observer.stdout').read_text().splitlines() if l.startswith('RECEIVED ')]
 assert received==([b'uwvm-managed-preload'] if mode=='normal' else [])
 raw=(d/'vm.stderr').read_text();diagnostic=re.sub(r'\x1b\[[0-?]*[ -/]*[@-~]','',raw)
 assert '[unwind-check] status=ok' in diagnostic and 'compiler=llvm_jit_only, uwvm-int-translation=disabled' in diagnostic and 'body-fallback=yes' not in diagnostic
 denials=[]
 for line in diagnostic.splitlines():
  try:event=json.loads(line)
  except ValueError:continue
  if event.get('event')=='unresolved-denial' and event.get('error')==13:denials.append(event)
 assert {x['module'] for x in denials}>={'main','io','algorithm'},denials
 if mode=='denied':assert any(x['module']=='ros_comm' for x in denials)
 row['denials']=denials
 for name in modules:assert 'LLVM JIT materialization for module "'+name+'" done.' in diagnostic,name
 audit=(d/'gateway.stdout').read_text()+(d/'gateway.stderr').read_text();events=[dict(re.findall(r'([a-z_]+)=([^ ]+)',line)) for line in audit.splitlines() if line.startswith('ros_audit ')]
 row['gateway_audit']=events
 effects=[v for v in events if v.get('alias')=='shared_pub']
 assert all(v.get('error')=='0' for v in effects),effects
 assert sum(v.get('operation')=='rmw.publish-v1' for v in effects)==(1 if mode=='normal' else 0),effects
 if mode in ('normal','cleanup'):
  assert sum(v.get('operation')=='capability.close' for v in effects)==1,effects
  assert effects[-1]['operation']=='capability.close',effects
 else:assert not effects,effects
 row['pins_unchanged']=all(sha(p)==h for p,h in row['pins'].items());assert row['pins_unchanged']
 row.update(status='PASS',selected=1,executed=1,passed=1,failed=0,blocked=0,skipped=0,native_unwind_checked=True,interpreter_fallback=False,no_native_request_after_close=True)
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
