from pathlib import Path
import os,sys,subprocess,time,json,hashlib,uuid,signal,re,select
import argparse
parser=argparse.ArgumentParser()
for name in ('sdk-root','wasm','output','deployment','operation'):
 parser.add_argument('--'+name,required=True)
parser.add_argument('--module-graph')
parser.add_argument('--architecture',choices=('wasm32','wasm64'),required=True)
args=parser.parse_args()
sdk=Path(args.sdk_root).resolve(strict=True);wasm=Path(args.wasm).resolve(strict=True)
out=Path(args.output).resolve();out.mkdir(parents=True,exist_ok=False)
sys.path.insert(0,str(sdk/'tools/shared/python'))
from pipe_capture import PipeLoggedProcess
from owned_processes import OwnedProcesses,process
from wasi_policy import test_arguments
def digest(p):
 with Path(p).open('rb') as f:return hashlib.file_digest(f,'sha256').hexdigest()
config=json.loads(Path(args.deployment).read_text())
if config.get('format')!='uwvm-sdk-local-native-ros2-test-v1':
 raise ValueError('Select an explicit native ROS 2 functional test deployment')
import socket
network=os.stat('/proc/self/ns/net')
if {'device':network.st_dev,'inode':network.st_ino}==config['host_network_namespace'] or any(name!='lo' for _,name in socket.if_nameindex()):
 raise RuntimeError('Native test requires its own Linux network namespace with only loopback')
membership=Path('/proc/self/cgroup').read_text().strip()
if not membership.startswith('0::/') or '\n' in membership:raise RuntimeError('Unified cgroup required')
group=Path('/sys/fs/cgroup')/membership[3:].lstrip('/')
def guard():
 if Path('/proc/self/cgroup').read_text().strip()!=membership or (group/'memory.max').read_text().strip()!=str(64*1024**3) or (group/'memory.swap.max').read_text().strip()!='0':
  raise RuntimeError('Required 64 GiB/zero-swap boundary changed')
guard()
def pinned(name):
 value=config[name];p=Path(value['path'])
 if not p.is_absolute() or p.resolve(strict=True)!=p or digest(p)!=value['sha256']:raise ValueError('Pinned executable differs: '+name)
 return p
vm=pinned('runtime');gateway=pinned('gateway');peer=pinned('peer')
ros=Path(config['ros_prefix']).resolve(strict=True);ubuntu=Path(config['system_prefix']).resolve(strict=True)
work_root=Path(config['scratch']).resolve(strict=True)
if work_root.stat().st_uid!=os.getuid() or work_root.stat().st_mode & 0o077:
 raise ValueError('Select an owner-only native test scratch directory')
# Pin every explicitly provided native dependency, including type descriptions.
for f in config['native_inputs']:
 if digest(f['path'])!=f['sha256']:raise ValueError('Native input identity differs: '+f['path'])
env={'PATH':os.defpath,'LANG':'C.UTF-8','LC_ALL':'C.UTF-8',
 'AMENT_PREFIX_PATH':str(ros),'LD_LIBRARY_PATH':str(ros/'lib')+':'+str(ubuntu/'lib/x86_64-linux-gnu'),
 'ROS_DOMAIN_ID':'73','RMW_IMPLEMENTATION':'rmw_fastrtps_cpp',
 'ROS_AUTOMATIC_DISCOVERY_RANGE':'LOCALHOST','ROS_STATIC_PEERS':''}
preloading=args.operation=='preload_modules'
if preloading != bool(args.module_graph):raise ValueError('Native preload test requires its exact built graph')
preloads=[];module_inputs=[]
if preloading:
 graph_path=Path(args.module_graph).resolve(strict=True);graph=json.loads(graph_path.read_text())
 if (graph.get('format')!='uwvm-sdk-target-artifacts-v1' or graph.get('kind')!='binary'
     or Path(graph.get('artifact','')).resolve(strict=True)!=wasm or graph.get('sha256')!=digest(wasm)):
  raise ValueError('Native preload command identity differs')
 rows=graph.get('preload',[])
 if len(rows)!=3 or {r.get('module') for r in rows}!={'io','algorithm','ros_comm'}:
  raise ValueError('Native preload module set differs')
 module_inputs.append({'path':str(graph_path),'sha256':digest(graph_path)})
 for r in rows:
  f=Path(r['artifact'])
  if (r.get('artifact_model')!='core-preload' or not f.is_absolute()
      or f.resolve(strict=True)!=f or f==wasm or digest(f)!=r.get('sha256')):
   raise ValueError('Native preload artifact differs')
  module_inputs.append({'path':str(f),'sha256':r['sha256'],'module':r['module']})
  preloads+=['--wasm-preload-library',str(f),r['module']]
authority_module='ros_comm' if preloading else 'main'
row={'format':'uwvm-sdk-native-ros2-functional-result-v1','deployment_sha256':digest(args.deployment),'source_sha256':digest(__file__),'module_inputs':module_inputs,'cgroup':membership,'scope':'real native ROS transport, not simulator qualification','executables':{str(p):digest(p) for p in (vm,gateway,peer)},'cases':[]};life=OwnedProcesses()
try:
 for name,mode,operation,typ in [('preload_modules','boundary-denied','topic.publish','std_msgs/msg/String'),('preload_modules','subscribe-string','topic.publish','std_msgs/msg/String'),('publish_string','subscribe-string','topic.publish','std_msgs/msg/String'),('subscribe_string','publish-string','topic.subscribe','std_msgs/msg/String'),('call_trigger','trigger-true','service.call','std_srvs/srv/Trigger'),('call_trigger','trigger-false','service.call','std_srvs/srv/Trigger')]:
  if name!=args.operation:continue
  guard()
  work=work_root/('n-'+uuid.uuid4().hex[:10]);work.mkdir(mode=0o700)
  env['ROS_LOG_DIR']=str(work/'ros-logs')
  item={'name':name,'mode':mode,'directory':str(work),'wasm':str(wasm),'wasm_sha256':digest(wasm),'status':'FAIL'};row['cases'].append(item)
  actors=[];descriptors=[];gatew=None
  topic='/sdk_repair/t_'+uuid.uuid4().hex
  text='native UTF-8 中🙂'
  identity=json.loads((ros/'share'/typ.replace('/msg/','/msg/').replace('/srv/','/srv/')).with_suffix('.json').read_text())['type_hashes'][0]['hash_string']
  values={'gateway-socket':str(work/'g.sock'),'gateway-uid':str(os.getuid()),'node-name':'sdk_repair_guest','namespace':'/sdk_repair','domain-id':'73','rmw-implementation':'rmw_fastrtps_cpp','security-mode':'disabled-test','keystore':'not-applicable','enclave':'not-applicable'}
  limits={'overflow-policy':'reject','validator':'none','audit':'allow-and-deny'}
  limits.update({'qos.reliability':'reliable','qos.durability':'volatile','qos.history':'keep-last','qos.depth':'10','qos.deadline':'infinite','qos.lifespan':'infinite','qos.liveliness':'automatic','qos.liveliness-lease-duration':'infinite'})
  if operation=='service.call':limits.pop('overflow-policy')
  options=[]
  for module in (['main','io','algorithm','ros_comm'] if preloading else ['main']):
   options+=['--ros2-single-create',module,'--ros2-single-enable',module]
  if preloading and mode!='boundary-denied':options+=['--ros2-single-call-boundary','ros_comm','module-exports']
  for k,v in values.items():options+=['--ros2-single-'+k,authority_module,v]
  options+=['--ros2-single-grant',authority_module,'sample',operation,topic,typ,identity]
  for k,v in limits.items():options+=['--ros2-single-set',authority_module,'sample',k,v]
  policy={'format':'uwvm-sdk-wasip1-policy-v2','modules':{'main':{'enabled':True,'grants':['proc-exit','args','stdout.write','stderr.write','stdio.metadata','monotonic-clock','monotonic-timer']}}}
  if preloading:
   policy={'format':'uwvm-sdk-wasip1-policy-v2','modules':{
    'main':{'enabled':True,'grants':['proc-exit','args']},
    'io':{'enabled':True,'grants':['stdout.write','stdio.metadata','monotonic-clock','monotonic-timer']},
    'algorithm':{'enabled':True,'grants':[]},
    'ros_comm':{'enabled':True,'grants':[]}}}
  item['wasi_policy']=policy
  item['ros_resource_module']=authority_module
  argv=[str(vm),*test_arguments([*(['--wasm-feature-enable-memory64','--wasm-feature-enable-table64'] if args.architecture=='wasm64' else []),*preloads,'-Raot','--log-verbose','--runtime-compile-threads','1','--runtime-llvm-jit-policy','debug'],policy),*options,'--run',str(wasm)]
  def spawn(label,argv,**kw):
   aout=work/(label+'.stdout');aerr=work/(label+'.stderr')
   native_fd=None
   if label!='vm':
    selected={'peer':peer,'gateway':gateway}[label]
    native_fd=os.open(selected,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW)
    with os.fdopen(os.dup(native_fd),'rb') as image:
     if hashlib.file_digest(image,'sha256').hexdigest()!=config[label]['sha256']:raise RuntimeError('Native executable changed')
    kw.update(executable='/proc/self/fd/'+str(native_fd),pass_fds=(native_fd,))
   with aout.open('xb') as f,aerr.open('xb') as e:
    p=PipeLoggedProcess(argv,stdout=f,stderr=e,env=env,start_new_session=True,stdin=subprocess.DEVNULL,output_limit=2097152,**kw)
   if native_fd is not None:os.close(native_fd)
   actors.append((label,p));life.observe();return p
  def tick():
   guard();life.observe()
   for label,p in actors:
    p.poll()
    if p.returncode is None and Path('/proc/'+str(p.pid)+'/cgroup').read_text().strip()!=membership:raise RuntimeError('Actor left cgroup')
  def waitfor(check,seconds):
   deadline=time.monotonic()+seconds
   while not check():
    tick()
    if time.monotonic()>=deadline:raise TimeoutError('native readiness/guest deadline')
    time.sleep(.005)
  try:
   # Hold the exact future VM PID behind an explicit pipe until its gateway is ready.
   gater,gatew=os.pipe2(os.O_CLOEXEC);fd=os.open(vm,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW);descriptors+=[gater,fd]
   with os.fdopen(os.dup(fd),'rb') as image:
    if hashlib.file_digest(image,'sha256').hexdigest()!=config['runtime']['sha256']:raise RuntimeError('VM descriptor identity changed')
   errr,errw=os.pipe2(os.O_CLOEXEC);descriptors+=[errr,errw]
   helper='import os,sys,fcntl; g,f,e=map(int,sys.argv[1:4]); assert os.read(g,1)==b"R"; os.close(g); fcntl.fcntl(e,fcntl.F_SETFD,fcntl.FD_CLOEXEC); fcntl.fcntl(f,fcntl.F_SETFD,fcntl.FD_CLOEXEC)\ntry: os.execve(f,sys.argv[4:],{"PATH":os.defpath,"LANG":"C.UTF-8"})\nexcept OSError as x: os.write(e,str(x.errno).encode()); os._exit(125)'
   guest=spawn('vm',[sys.executable,'-c',helper,str(gater),str(fd),str(errw),*argv],pass_fds=(gater,fd,errw))
   os.close(errw);descriptors.remove(errw);os.close(gater);descriptors.remove(gater)
   native=spawn('peer',[str(peer),'subscribe-string' if mode=='boundary-denied' else mode,topic,text,'60'])
   waitfor(lambda:(work/'peer.stdout').read_bytes().startswith(b'READY\n') or native.poll() is not None,10)
   assert native.poll() is None,(work/'peer.stderr').read_text()
   lines=['backend ros2','worker-uid '+str(os.getuid()),'worker-pid '+str(guest.pid),'socket '+str(work/'g.sock')]+['connection '+k+' '+v for k,v in values.items() if k not in ('gateway-socket','gateway-uid')]
   lines+=['grant sample '+operation+' '+topic+' '+typ+' '+identity]+['set sample '+k+' '+v for k,v in limits.items()]
   cfg=work/'gateway.conf';cfg.write_text('\n'.join(lines)+'\n');cfg.chmod(0o600)
   bridge=spawn('gateway',[str(gateway),str(cfg)])
   waitfor(lambda:(work/'g.sock').exists() or bridge.poll() is not None,10)
   assert bridge.poll() is None,(work/'gateway.stderr').read_text()
   os.write(gatew,b'R');os.close(gatew);gatew=None
   assert select.select([errr],[],[],5)[0], 'VM exec gate timed out'
   assert os.read(errr,4096)==b''
   stat=os.stat('/proc/'+str(guest.pid)+'/exe');original=os.fstat(fd)
   item['exec_success_from_kernel_error_pipe']=True
   item['argv']=argv
   item['gateway_configuration_sha256']=digest(cfg)
   item['actors']=[{'role':label,'pid':p.pid,'birth':process(p.pid)['birth']} for label,p in actors]
   item['pinned_fd_exec']= (stat.st_dev,stat.st_ino)==(original.st_dev,original.st_ino)
   item['cgroup']=Path('/proc/'+str(guest.pid)+'/cgroup').read_text().strip()
   assert item['pinned_fd_exec']
   waitfor(lambda:guest.poll() is not None,60)
   item['exit']=guest.returncode;item['stdout']=(work/'vm.stdout').read_text();item['peer_output']=(work/'peer.stdout').read_text()
   diagnostic=re.sub(r'\x1b\[[0-?]*[ -/]*[@-~]','',(work/'vm.stderr').read_text())
   assert '[unwind-check] status=ok' in diagnostic
   item['native_unwind_checked']=True
   assert 'compiler=llvm_jit_only, uwvm-int-translation=disabled' in diagnostic
   item['interpreter_fallback']=False
   publishing=name in ('publish_string','preload_modules')
   body=b'value=42' if preloading else b'hello native ROS' if publishing else text.encode()
   expected=(b'' if name!='call_trigger' else bytes([mode=='trigger-true']))+len(body).to_bytes(4,'little')+body
   primary=13 if mode=='boundary-denied' else 5 if mode=='trigger-false' else 0
   expected_stdout=(f'primary=0x{primary:08x} rpc=0x00000000 rpc_present=1 cleanup=0x00000000 cleanup_present=1\n'
     +f'length=0x{0 if publishing else len(expected):016x} length_present={0 if publishing else 1} response_present={0 if publishing else 1} success={1 if mode=="trigger-true" else 0}\n'
     +'wire='+expected.hex()+'\ntext='+body.decode()+'\n')
   if preloading:expected_stdout='' if mode=='boundary-denied' else 'algorithm=42 ros=0 cleanup=0\n'
   assert item['exit']==primary and item['stdout']==expected_stdout,item
   if mode=='boundary-denied':
    assert item['peer_output']=='READY\n',item
   elif publishing:
    # A successful publish acknowledges transport admission; the independent
    # subscriber callback/output pump may finish after the guest exits.
    wanted='READY\nRECEIVED 1 '+body.hex()+'\nRECEIVED 2 '+body.hex()+'\n'
    waitfor(lambda:(work/'peer.stdout').read_text()==wanted or native.poll() is not None,60)
    item['peer_output']=(work/'peer.stdout').read_text()
    assert item['peer_output']=='READY\nRECEIVED 1 '+body.hex()+'\nRECEIVED 2 '+body.hex()+'\n',item
   elif name=='call_trigger':
    assert item['peer_output']=='READY\nRESPONDED 1 '+str(int(mode=='trigger-true'))+' '+body.hex()+'\n',item
   else:
    lines=item['peer_output'].splitlines()
    assert lines[0]=='READY' and len(lines)>1,item
    assert all(line=='PUBLISHED '+str(i)+' '+body.hex() for i,line in enumerate(lines[1:],1)),item
   for source in module_inputs:
    if digest(source['path'])!=source['sha256']:raise RuntimeError('Preload input changed during execution')
   item['wasm_sha256_after']=digest(wasm)
   assert item['wasm_sha256_after']==item['wasm_sha256']
   item['status']='PASS';print(json.dumps({'operation':name,'mode':mode,'status':'PASS'}),flush=True)
  finally:
   if gatew is not None:os.close(gatew)
   for fd in descriptors:os.close(fd)
   for label,p in reversed(actors):
    if p.poll() is None:p.terminate()
    try:p.wait(timeout=5)
    except subprocess.TimeoutExpired:p.kill();p.wait()
   life.observe()
finally:
 row['retirement']=life.retire([])
 # Hash only after owned actors exit and both output pumps are fully drained.
 for item in row['cases']:
  work=Path(item['directory'])
  item['streams']=[{'path':str(f),'sha256':digest(f)} for f in work.glob('*.stdout')]+[{'path':str(f),'sha256':digest(f)} for f in work.glob('*.stderr')]
  if (work/'peer.stdout').exists():item['peer_output']=(work/'peer.stdout').read_text()
 row['passed']=len(row['cases'])==(2 if args.operation in ('call_trigger','preload_modules') else 1) and all(x['status']=='PASS' for x in row['cases']) and row['retirement']['status']=='RETIRED'
 (out/'native-suite.json').write_text(json.dumps(row,indent=2,ensure_ascii=False)+'\n')

if not row['passed']:raise SystemExit(1)
