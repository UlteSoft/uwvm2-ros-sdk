from pathlib import Path
import os,sys,subprocess,time,json,hashlib,uuid,signal,re,select
import argparse
parser=argparse.ArgumentParser()
for name in ('sdk-root','wasm','output','deployment','operation'):
 parser.add_argument('--'+name,required=True)
parser.add_argument('--case',choices=('guest-contract-normal','guest-contract-denied','guest-contract-invalid-input','guest-contract-cleanup'),required=True)
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
if config.get('format')!='uwvm-sdk-local-native-ros1-vendor-test-v1':
 raise ValueError('Select an explicit native ROS 1 functional test deployment')
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
vm=pinned('runtime');gateway=pinned('gateway');peer=pinned('peer');master=pinned('master');master_script=pinned('master_script')
registry=json.loads(pinned('registry').read_text())
ros=Path(config['ros_prefix']).resolve(strict=True);ubuntu=Path(config['system_prefix']).resolve(strict=True)
metadata=json.loads(pinned('metadata').read_text())
work_root=Path(config['scratch']).resolve(strict=True)
if work_root.stat().st_uid!=os.getuid() or work_root.stat().st_mode & 0o077:
 raise ValueError('Select an owner-only native test scratch directory')
# Pin every explicitly provided native dependency, including type descriptions.
for f in config['native_inputs']:
 if digest(f['path'])!=f['sha256']:raise ValueError('Native input identity differs: '+f['path'])
env={'PATH':os.defpath,'LANG':'C.UTF-8','LC_ALL':'C.UTF-8',
 'LD_LIBRARY_PATH':':'.join([str(ros/'lib'),str(ubuntu/'lib/x86_64-linux-gnu'),*config['native_library_paths']]),
 'PYTHONPATH':':'.join(config['python_paths']),'PYTHONDONTWRITEBYTECODE':'1','PYTHONNOUSERSITE':'1',
 'ROS_MASTER_URI':'http://127.0.0.1:11311','ROS_IP':'127.0.0.1','ROS_DISTRO':'noetic','ROS_VERSION':'1'}
row={'format':'uwvm-sdk-native-ros1-vendor-observation-functional-result-v1','deployment_sha256':digest(args.deployment),'source_sha256':digest(__file__),'cgroup':membership,'scope':'real native ROS transport, not simulator qualification','executables':{str(p):digest(p) for p in (vm,gateway,peer,master,master_script)},'cases':[]};life=OwnedProcesses()
import struct
def text_wire(value):
 b=value.encode();return struct.pack('<I',len(b))+b
def doubles(values):
 return struct.pack('<I',len(values))+struct.pack('<'+'d'*len(values),*values)
def names(values):
 return struct.pack('<I',len(values))+b''.join(text_wire(v) for v in values)
scenario=args.operation
types={
 'battery_state':'pal_device_msgs/BatteryState','bumper':'pal_device_msgs/Bumper','led_group':'pal_device_msgs/LedGroup',
 'sensor_state':'turtlebot3_msgs/SensorState','sound':'turtlebot3_msgs/Sound','version_info':'turtlebot3_msgs/VersionInfo',
 'joint_group_command':'interbotix_xs_msgs/JointGroupCommand','joint_single_command':'interbotix_xs_msgs/JointSingleCommand','joint_trajectory_command':'interbotix_xs_msgs/JointTrajectoryCommand'}
if scenario not in types:raise ValueError('Unsupported complete observation scenario')
# Independent canonical wire oracle; no SDK codec or generated DDS serializer is used here.
wires={
 'battery_state':struct.pack('<bf',4,87.5),
 'bumper':struct.pack('<III',0,23,456000000)+text_wire('bumper_中')+b'\x01',
 'led_group':struct.pack('<I',3),
 'sensor_state':struct.pack('<III',0,29,987654)+text_wire('base_🙂')+struct.pack('<BfffBBB iif',3,.25,1.5,42.25,3,2,1,-2147483647,2147483646,12.5),
 'sound':b'\x04',
 'version_info':text_wire('2026.11.04')+text_wire('1.2.3')+text_wire('2.4.6-中'),
 'joint_group_command':text_wire('arm_中')+struct.pack('<Ifff',3,.125,-.25,.5),
 'joint_single_command':text_wire('wrist_🙂')+struct.pack('<f',-.75),
 'joint_trajectory_command':text_wire('group')+text_wire('arm_中')+struct.pack('<III',0,17,123456789)+text_wire('map_中')+names(['left','right_🙂'])+struct.pack('<I',1)+doubles([1.25,-2.5])+doubles([.125,-.25])+doubles([.5,-.75])+doubles([2.,3.])+struct.pack('<iI',3,250000000)}
expected_wire=wires[scenario]
try:
 for name,mode,operation,typ in [(scenario,'silent' if args.case!='guest-contract-normal' else 'sample','topic.subscribe',types[scenario])]:
  guard()
  work=work_root/('n-'+uuid.uuid4().hex[:10]);work.mkdir(mode=0o700)
  env['ROS_LOG_DIR']=str(work/'ros-logs');env['ROS_HOME']=str(work/'ros-home')
  item={'name':name,'mode':mode,'case':args.case,'directory':str(work),'wasm':str(wasm),'wasm_sha256':digest(wasm),'status':'FAIL'};row['cases'].append(item)
  actors=[];descriptors=[];gatew=None
  topic='/sdk_repair/t_'+uuid.uuid4().hex
  text='native UTF-8 中🙂'
  identity=next(row['native_identity'] for row in metadata if row['type']==typ)
  values={'gateway-socket':str(work/'g.sock'),'gateway-uid':str(os.getuid()),'node-name':'sdk_repair_guest','namespace':'/sdk_repair','master-uri':env['ROS_MASTER_URI'],'advertise-host':'127.0.0.1','transport':'tcpros'}
  record=next(r for r in registry['records'] if r['ros_version']==1 and r['type']==typ)
  if record['native_identity']!=identity:raise ValueError('Native and compiled registry type identity differs')
  limits={'overflow-policy':'reject','validator':'none','audit':'allow-and-deny','adapter-codec-identity':record['codec_identity'],'queue-depth':'10','transport':'tcpros'}
  if operation=='service.call':limits.pop('overflow-policy')
  options=['--ros1-single-create','main','--ros1-single-enable','main']
  for k,v in values.items():options+=['--ros1-single-'+k,'main',v]
  options+=['--ros1-single-grant','main','sample',operation,topic,typ,identity]
  for k,v in limits.items():options+=['--ros1-single-set','main','sample',k,v]
  if args.case in ('guest-contract-denied','guest-contract-invalid-input'):options=options[:4]
  policy={'format':'uwvm-sdk-wasip1-policy-v3','modules':{'main':{'enabled':True,'interfaces':{},'grants':['proc-exit','args','stdout.write','stderr.write','stdio.metadata','environ','monotonic-clock','monotonic-timer']}}}
  argv=[str(vm),*test_arguments(['-Raot','--log-verbose','--runtime-compile-threads','1','--runtime-llvm-jit-policy','debug'],policy),*options,*(['--wasm-feature-enable-memory64','--wasm-feature-enable-table64'] if args.architecture=='wasm64' else []), '--wasm-feature-enable-exceptions','--run',str(wasm),*(['sample'] if args.case!='guest-contract-invalid-input' else [])]
  from host_interfaces import authorize_test_imports
  argv = authorize_test_imports(argv)
  def spawn(label,argv,**kw):
   aout=work/(label+'.stdout');aerr=work/(label+'.stderr')
   native_fd=None
   if label!='vm':
    selected={'peer':peer,'gateway':gateway,'master':master}[label]
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
   controller=spawn('master',[str(master),str(master_script),'--core','-p','11311'])
   import xmlrpc.client
   class MasterTransport(xmlrpc.client.Transport):
    def make_connection(self,host):
     connection=super().make_connection(host);connection.timeout=.2;return connection
   def master_ready():
    if controller.poll() is not None:raise RuntimeError((work/'master.stderr').read_text())
    try:
     with xmlrpc.client.ServerProxy(env['ROS_MASTER_URI'],transport=MasterTransport()) as proxy:
      code,message,pid=proxy.getPid('/sdk_test_owner')
      return code==1 and pid==controller.pid
    except (OSError,xmlrpc.client.Error):return False
   waitfor(master_ready,10)
   native=spawn('peer',[str(peer),scenario,topic,mode,'1800'])
   waitfor(lambda:(work/'peer.stdout').read_bytes().startswith(b'READY\n') or native.poll() is not None,10)
   assert native.poll() is None,(work/'peer.stderr').read_text()
   lines=['backend ros1','worker-uid '+str(os.getuid()),'worker-pid '+str(guest.pid),'socket '+str(work/'g.sock')]+['connection '+k+' '+v for k,v in values.items() if k not in ('gateway-socket','gateway-uid')]
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
   item['master_script_sha256_after']=digest(master_script)
   assert item['master_script_sha256_after']==config['master_script']['sha256']
   item['actors']=[{'role':label,'pid':p.pid,'birth':process(p.pid)['birth']} for label,p in actors]
   item['pinned_fd_exec']= (stat.st_dev,stat.st_ino)==(original.st_dev,original.st_ino)
   item['cgroup']=Path('/proc/'+str(guest.pid)+'/cgroup').read_text().strip()
   assert item['pinned_fd_exec']
   waitfor(lambda:guest.poll() is not None,1800)
   if args.case=='guest-contract-normal':waitfor(lambda:'PUBLISHED 1\n' in (work/'peer.stdout').read_text(),5)
   item['exit']=guest.returncode;item['stdout']=(work/'vm.stdout').read_text();item['peer_output']=(work/'peer.stdout').read_text()
   diagnostic=re.sub(r'\x1b\[[0-?]*[ -/]*[@-~]','',(work/'vm.stderr').read_text())
   assert '[unwind-check] status=ok' in diagnostic
   item['native_unwind_checked']=True
   assert 'compiler=llvm_jit_only, uwvm-int-translation=disabled' in diagnostic
   item['interpreter_fallback']=False
   expected_code={'guest-contract-normal':0,'guest-contract-denied':13,'guest-contract-invalid-input':22,'guest-contract-cleanup':11}[args.case]
   assert item['exit']==expected_code,item
   if args.case=='guest-contract-invalid-input':
    assert item['stdout']=='',item
   else:
    acquired=args.case in ('guest-contract-normal','guest-contract-cleanup')
    success=args.case=='guest-contract-normal'
    expected=dict(primary=expected_code,cleanup=0,cleanup_present=int(acquired),response_present=int(success),rpc_present=int(acquired),rpc_status=expected_code if acquired else 0,required_present=int(success),required=len(expected_wire) if success else 0,encoding=0,wire_hex=expected_wire.hex() if success else '')
    assert json.loads(item['stdout'])==expected,item
   lines=item['peer_output'].splitlines()
   assert lines and lines[0]=='READY',item
   if args.case=='guest-contract-normal':
    assert 'MATCHED' in lines and 'PUBLISHED 1' in lines,item
   elif args.case=='guest-contract-cleanup':
    assert lines==['READY','MATCHED'],item
   else:
    assert lines==['READY'],item
   item['expected_wire_hex']=expected_wire.hex()
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
except BaseException as failure:
 row['diagnostic']=repr(failure)
 raise
finally:
 row['retirement']=life.retire([])
 # Hash only after owned actors exit and both output pumps are fully drained.
 for item in row['cases']:
  work=Path(item['directory'])
  item['streams']=[{'path':str(f),'sha256':digest(f)} for f in work.glob('*.stdout')]+[{'path':str(f),'sha256':digest(f)} for f in work.glob('*.stderr')]
  if (work/'peer.stdout').exists():item['peer_output']=(work/'peer.stdout').read_text()
 row['passed']=len(row['cases'])==1 and all(x['status']=='PASS' for x in row['cases']) and row['retirement']['status']=='RETIRED'
 (out/'native-suite.json').write_text(json.dumps(row,indent=2,ensure_ascii=False)+'\n')

if not row['passed']:raise SystemExit(1)
