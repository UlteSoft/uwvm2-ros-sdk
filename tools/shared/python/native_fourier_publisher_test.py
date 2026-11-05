"""Supervise real language Wasm plus an independent native typed ROS peer.
The guest executes every publisher assertion; host Python only supplies a nonce,
launches pinned actors and checks their original logs and retirement.
"""
from pathlib import Path
import os,sys,subprocess,time,json,hashlib,re,struct,argparse,socket,copy,tempfile,secrets
from pipe_capture import PipeLoggedProcess
from owned_processes import OwnedProcesses
from wasi_component import read_json
import wasi_policy
parser=argparse.ArgumentParser()
for name in ('sdk-root','manifest','wasm','output','deployment'):
 parser.add_argument('--'+name,required=True)
parser.add_argument('--language',choices=('php','ruby','r'),required=True)
args=parser.parse_args();args.backend='ros2';language=args.language
s=Path(args.sdk_root).resolve(strict=True);manifest_path=Path(args.manifest).resolve(strict=True)
project=manifest_path.parent;wasm=Path(args.wasm).resolve(strict=True)
d=Path(args.output).absolute();d.mkdir(parents=True,mode=0o700,exist_ok=False)
sha=lambda p:hashlib.file_digest(Path(p).open('rb'),'sha256').hexdigest()
config=read_json(args.deployment);manifest=read_json(manifest_path)
if config.get('format')!='uwvm-sdk-fourier-publisher-native-v1' or config.get('language')!=language:raise ValueError('Select the exact native publisher deployment')
expected_cases=['genuine-pinned-engine','reject-oversized-field-before-acquisition','reject-nonfinite-field-before-acquisition','default-denied-publisher-has-no-publish-call','one-accepted-typed-publish-and-explicit-close','fresh-complete-typed-echo-inside-guest']
if manifest.get('format')!='uwvm-sdk-publisher-api-cases-v1' or manifest.get('language')!=language or [x['name'] for x in manifest.get('cases',[])]!=expected_cases:raise ValueError('Run all six original guest assertions')
inputs=[manifest_path,Path(__file__),project/('main.'+{'php':'php','ruby':'rb','r':'R'}[language]),Path(args.deployment)]
for pin in manifest['public_inputs']:
 p=(s if pin['scope']=='sdk' else project)/pin['path']
 if Path(pin['path']).is_absolute() or '..' in Path(pin['path']).parts or sha(p)!=pin['sha256']:raise ValueError('Public input identity differs: '+str(p))
 inputs.append(p)
def pinned(name):
 p=Path(config[name]['path']).resolve(strict=True)
 if str(p)!=config[name]['path'] or sha(p)!=config[name]['sha256']:raise ValueError('Executable identity differs: '+name)
 return p
vm=pinned('runtime');gateway=pinned('gateway');peer=pinned('observer');master=master_script=None
for pin in config['native_inputs']:
 if sha(pin['path'])!=pin['sha256']:raise ValueError('Native dependency identity differs: '+pin['path'])
 inputs.append(Path(pin['path']))
env=dict(config['native_environment'])
if not all(isinstance(k,str) and isinstance(v,str) and '\\0' not in k+v for k,v in env.items()):raise ValueError('Select an explicit native environment')
env.update(ROS_LOG_DIR=str(d/'ros-logs'),ROS_HOME=str(d/'ros-home'))
net=os.stat('/proc/self/ns/net')
if {'device':net.st_dev,'inode':net.st_ino}==config['host_network_namespace'] or any(name!='lo' for _,name in socket.if_nameindex()):raise RuntimeError('Use a private network namespace with loopback only')
policy=copy.deepcopy(config['wasi_policy'])
for module in policy['modules'].values():
 for preopen in module.get('preopens',[]):
  if preopen['host']!='{scratch}':raise ValueError('Publisher test preopens must select the owned scratch fixture')
  scratch=d/'scratch';scratch.mkdir(exist_ok=True);preopen['host']=str(scratch)
socket_root=Path(config['socket_directory'])
if not socket_root.is_absolute():raise ValueError('Select an absolute owned socket directory')
socket_root.mkdir(parents=True,mode=0o700,exist_ok=True)
socket_work=Path(tempfile.mkdtemp(prefix='pub-',dir=socket_root));socket_path=socket_work/'g.sock'
values=dict(config['connection']);values.update({'gateway-socket':str(socket_path),'gateway-uid':str(os.getuid())})
grants=copy.deepcopy(config['grants'])
if len(grants)!=2 or {(x['alias'],x['operation'],x['type']) for x in grants}!={('publish','topic.publish','uwvm_fourier_bridge/msg/GroupValues'),('echo','topic.subscribe','uwvm_fourier_bridge/msg/GroupValues')}:raise ValueError('Select the two explicit typed publisher/echo grants')
nonce=secrets.token_hex(16)
opts=['--ros2-single-create','main','--ros2-single-enable','main']
for k,val in values.items():opts+=['--ros2-single-'+k,'main',val]
for grant in grants:
 alias=grant['alias'];opts+=['--ros2-single-grant','main',alias,grant['operation'],grant['resource'],grant['type'],grant['identity']]
 for k,val in grant['fields'].items():opts+=['--ros2-single-set','main',alias,k,val]
argv=[str(vm),*wasi_policy.test_arguments(config['runtime_arguments'],policy),*opts,'--run',str(wasm),nonce]
membership=Path('/proc/self/cgroup').read_text().strip()
if not membership.startswith('0::/') or '\n' in membership:raise RuntimeError('Unified cgroup required')
group=Path('/sys/fs/cgroup')/membership[3:].lstrip('/')
def guard():
 if Path('/proc/self/cgroup').read_text().strip()!=membership or (group/'memory.max').read_text().strip()!='68719476736' or (group/'memory.swap.max').read_text().strip()!='0':raise RuntimeError('Keep the 64 GiB, zero-swap test cgroup')
guard()
row=dict(status='RUNNING',socket_directory=str(socket_work),wasm_sha256_before=sha(wasm),format='uwvm-sdk-fourier-publisher-native-result-v1',backend=args.backend,scope='Original publisher API business in genuine language Wasm; independent native typed roundtrip; finite authored bridge test, not official vendor simulation',deployment_sha256=sha(args.deployment),
 argv=argv,wasi_policy=policy,ros_grants=grants,host_fixture_writable=True,pins={str(p):sha(p) for p in [vm,peer,gateway,wasm,*inputs,s/'tools/shared/python/wasi_policy.py',*([master,master_script] if master else [])]},memory_events_before=(group/'memory.events').read_text())
result=d/'suite.json'
def save():result.write_text(json.dumps(row,indent=2)+'\n')
save();life=OwnedProcesses();actors=[];descriptors=[];gatew=None
def spawn(label,cmd,**kw):
 native_fd=None
 if label!='vm':
  selected={'gateway':gateway,'observer':peer,'master':master}[label]
  native_fd=os.open(selected,os.O_RDONLY|os.O_CLOEXEC|os.O_NOFOLLOW)
  with os.fdopen(os.dup(native_fd),'rb') as image:
   if hashlib.file_digest(image,'sha256').hexdigest()!=config['observer' if label=='observer' else label]['sha256']:raise RuntimeError('Native executable changed')
  kw.update(executable='/proc/self/fd/'+str(native_fd),pass_fds=(native_fd,))
 try:
  with (d/(label+'.stdout')).open('xb') as out,(d/(label+'.stderr')).open('xb') as err:
   p=PipeLoggedProcess(cmd,stdout=out,stderr=err,env=env,start_new_session=True,output_limit=config['limits']['output_bytes'],**kw)
 finally:
  if native_fd is not None:os.close(native_fd)
 actors.append((label,p));life.observe();return p
def tick():
 guard();life.observe()
 for _,p in actors:
  p.poll()
  if p.returncode is None and Path('/proc/'+str(p.pid)+'/cgroup').read_text().strip()!=membership:raise RuntimeError('Actor left test cgroup')
def until(check,seconds):
 stop=time.monotonic()+seconds
 while not check():
  tick()
  if time.monotonic()>stop:raise TimeoutError('native publisher fixture deadline')
  time.sleep(.005)
try:
 gater,gatew=os.pipe2(os.O_CLOEXEC);fd=os.open(vm,os.O_RDONLY|os.O_CLOEXEC);errr,errw=os.pipe2(os.O_CLOEXEC);descriptors+=[gater,fd,errr,errw]
 with os.fdopen(os.dup(fd),'rb') as image:
  if hashlib.file_digest(image,'sha256').hexdigest()!=config['runtime']['sha256']:raise RuntimeError('VM descriptor identity changed')
 helper='import os,sys,fcntl;g,f,e=map(int,sys.argv[1:4]);assert os.read(g,1)==b"R";os.close(g);fcntl.fcntl(e,fcntl.F_SETFD,fcntl.FD_CLOEXEC);fcntl.fcntl(f,fcntl.F_SETFD,fcntl.FD_CLOEXEC)\ntry:os.execve(f,sys.argv[4:],{"PATH":os.defpath,"LANG":"C.UTF-8"})\nexcept OSError as x:os.write(e,str(x.errno).encode());os._exit(125)'
 guest=spawn('vm',[sys.executable,'-c',helper,str(gater),str(fd),str(errw),*argv],pass_fds=(gater,fd,errw),stdin=subprocess.DEVNULL)
 os.close(gater);descriptors.remove(gater);os.close(errw);descriptors.remove(errw)
 if args.backend=='ros1':
  controller=spawn('master',[str(master),str(master_script),'--core','-p','11311'],stdin=subprocess.DEVNULL)
  import xmlrpc.client
  class MasterTransport(xmlrpc.client.Transport):
   def make_connection(self,host):
    connection=super().make_connection(host);connection.timeout=.2;return connection
  def master_ready():
   if controller.poll() is not None:raise RuntimeError((d/'master.stderr').read_text())
   try:
    with xmlrpc.client.ServerProxy(env['ROS_MASTER_URI'],transport=MasterTransport()) as proxy:
     code,message,pid=proxy.getPid('/sdk_test_owner')
     return code==1 and pid==controller.pid
   except (OSError,xmlrpc.client.Error):return False
  until(master_ready,20)
 observer=spawn('observer',[str(peer)],stdin=subprocess.PIPE,nonblocking_stdin=False)
 until(lambda:(d/'observer.stdout').read_bytes().startswith(b'READY\n') or observer.poll() is not None,20);assert observer.poll() is None,(d/'observer.stderr').read_text()
 lines=['backend '+args.backend,'worker-uid '+str(os.getuid()),'worker-pid '+str(guest.pid),'socket '+str(socket_path)]+['connection '+k+' '+val for k,val in values.items() if k not in ('gateway-socket','gateway-uid')]
 for grant in grants:
  lines+=['grant '+' '.join(grant[k] for k in ['alias','operation','resource','type','identity'])]+['set '+grant['alias']+' '+k+' '+val for k,val in grant['fields'].items()]
 cfg=d/'gateway.conf';cfg.write_text('\n'.join(lines)+'\n');cfg.chmod(0o600);row['gateway_config_sha256']=sha(cfg)
 bridge=spawn('gateway',[str(gateway),str(cfg)],stdin=subprocess.DEVNULL)
 until(lambda:socket_path.exists() or bridge.poll() is not None,20);assert bridge.poll() is None,(d/'gateway.stderr').read_text()
 started=time.monotonic();os.write(gatew,b'R');os.close(gatew);gatew=None;assert os.read(errr,4096)==b''
 actual_vm=os.stat('/proc/'+str(guest.pid)+'/exe');held=os.fstat(fd);assert (actual_vm.st_dev,actual_vm.st_ino)==(held.st_dev,held.st_ino)
 row['actual_vm_fd_exec']=True;row['actual_cgroup']=Path('/proc/'+str(guest.pid)+'/cgroup').read_text();save()
 until(lambda:guest.poll() is not None,config['limits']['timeout_seconds']);row['seconds']=time.monotonic()-started;row['guest_exit']=guest.returncode
 observer.stdin.write(b'Q');observer.stdin.flush();until(lambda:observer.poll() is not None,20);row['observer_exit']=observer.returncode
 raw=(d/'vm.stderr').read_text();row['guest_stdout']=(d/'vm.stdout').read_text()
 records=[json.loads(line) for line in row['guest_stdout'].splitlines()]
 row['guest_records']=records;row['observer_stdout']=(d/'observer.stdout').read_text();save()
 assert guest.returncode==0,(guest.returncode,raw[-5000:])
 assert len(records)==7 and [x['case'] for x in records[:-1]]==[c['name'] for c in manifest['cases']]
 assert all(x==dict(format='uwvm-sdk-publisher-api-case-v1',language=language,case=c['name'],passed=True) for x,c in zip(records[:-1],manifest['cases']))
 summary=records[-1];assert summary['format']=='uwvm-sdk-publisher-api-summary-v1' and summary['language']==language and summary['nonce']==nonce
 assert all(summary[k]==6 for k in ['required','selected','executed','passed']) and all(summary[k]==0 for k in ['failed','blocked','not_run'])
 assert summary['vendor_official_API_compatibility'] is False and summary['component_isolation_pass'] is False
 initial=struct.pack('<I',len(nonce))+nonce.encode()+struct.pack('<Idd',2,1.25,-2.5)
 delivered=(nonce+'-roundtrip').encode()
 message=struct.pack('<I',len(delivered))+delivered+struct.pack('<Idd',2,1.25,-2.5)
 observed=[bytes.fromhex(line[8:]) for line in row['observer_stdout'].splitlines() if line.startswith('ALLOWED ')]
 assert observer.returncode==0 and observed.count(message)==1 and observed.count(initial)<=1 and all(x in (message,initial) for x in observed) and 'DENIED ' not in row['observer_stdout']
 row['expected_wire_hex']=message.hex();row['expected_initial_wire_hex']=initial.hex()
 audit=(d/'gateway.stderr').read_text()+(d/'gateway.stdout').read_text();gateway_rows=[dict(re.findall(r'([a-z_]+)=([^ ]+)',line)) for line in audit.splitlines() if line.startswith('ros_audit ')]
 row['gateway_audit']=gateway_rows
 assert gateway_rows and not any(x.get('alias')=='publisher-denied' for x in gateway_rows)
 diagnostic=re.sub(r'\x1b\[[0-?]*[ -/]*[@-~]','',raw)
 assert '[unwind-check] status=ok' in diagnostic and 'compiler=llvm_jit_only, uwvm-int-translation=disabled' in diagnostic and 'body-fallback=yes' not in diagnostic
 row['wasm_sha256_after']=sha(wasm)
 row['pins_unchanged']=all(sha(p)==h for p,h in row['pins'].items());assert row['pins_unchanged']
 for alias in ('publish','echo'):
  closed=max(i for i,x in enumerate(gateway_rows) if x['operation']=='capability.close' and x['alias']==alias)
  assert not any(x['alias']==alias for x in gateway_rows[closed+1:])
 assert all(x['error']=='0' or (x['operation']=='event.poll' and x['error']=='11') for x in gateway_rows)
 assert [x['operation'] for x in gateway_rows if x['alias']=='publish']==['topic.publish','capability.close','topic.publish','capability.close']
 row['no_native_request_after_final_close']=True
 row['native_unwind_checked']=True
 row['interpreter_fallback']=False
 row.update(selected=6,executed=6,passed=6,failed=0,blocked=0,skipped=0)
 row['status']='PASS'
except BaseException as failure:
 row['status']='FAIL';row['failure']=repr(failure);raise
finally:
 if gatew is not None:os.close(gatew)
 for fd in descriptors:os.close(fd)
 for label,p in reversed(actors):
  if p.poll() is None:p.terminate()
  try:p.wait(timeout=5)
  except subprocess.TimeoutExpired:p.kill();p.wait()
 life.observe();row['retirement']=life.retire([]);row['memory_events_after']=(group/'memory.events').read_text()
 row['raw_files']={p.name:sha(p) for p in d.glob('*.std*')}
 if row['retirement']['status']!='RETIRED':row['status']='FAIL'
 save()
 print(row['status'],row.get('guest_exit'),row.get('failure'),flush=True)

if row['status']!='PASS':raise SystemExit(1)
