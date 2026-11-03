"""Official native URSim/driver endpoint only; all task ROS logic remains Wasm.

Call only through the admitted common producer, with byte-pinned constructor
inputs and an independent guardian. This endpoint never enrolls a VM, creates
execution authority, sends task trajectories, or operates physical hardware.
"""
from pathlib import Path
import argparse,hashlib,json,os,shutil,signal,stat,subprocess,sys,time

def sha(path):
 with Path(path).open('rb')as stream:return hashlib.file_digest(stream,'sha256').hexdigest()
def put(path,value):Path(path).write_text(json.dumps(value,indent=2)+'\n')
def pin(row):
 path=Path(row['path']);assert path.is_absolute()and path.is_file()and not path.is_symlink()and path.stat().st_size==row['bytes']and sha(path)==row['sha256'],'Native constructor input identity differs'
 return path

def cleanup_attempt(errors,stage,operation):
 try:return operation()
 except BaseException as error:
  error.add_note('Native cleanup stage: '+stage);errors.append((stage,error));return None
def cleanup_error_facts(errors):
 return[{'stage':stage,'type':type(error).__name__,'message':str(error),'errno':getattr(error,'errno',None)}for stage,error in errors]
def raise_cleanup_errors(primary,errors):
 if errors:raise BaseExceptionGroup('Native operation and cleanup errors',([primary]if primary is not None else[])+[error for _,error in errors])
def retire_native_endpoint(lifecycle,actors,ready_file,phase,stop_reason,errors):
 receipt=None
 try:
  cleanup_attempt(errors,'ready_lease_unlink',lambda:ready_file.unlink(missing_ok=True))
 finally:
  try:cleanup_attempt(errors,'retirement_begin_log',lambda:phase('native_retirement_begin',reason=stop_reason))
  finally:receipt=cleanup_attempt(errors,'owned_process_retirement',lambda:lifecycle.retire(actors))
 def require_retired():
  assert receipt is not None and receipt['status']=='RETIRED','Shared lifecycle could not prove native UR descendant retirement'
 cleanup_attempt(errors,'retirement_receipt_validation',require_retired)
 if receipt is not None:cleanup_attempt(errors,'retirement_complete_log',lambda:phase('native_retirement_complete',status=receipt['status'],recorded_owned_processes=receipt['recorded_actors']))
 return receipt

def main():
 flags=argparse.ArgumentParser(description=__doc__)
 flags.add_argument('--sdk-root',required=True,type=Path)
 flags.add_argument('--input-bundle',required=True,type=Path)
 flags.add_argument('--output',required=True,type=Path)
 flags.add_argument('--ready-file',type=Path)
 flags.add_argument('--prepare-only',action='store_true')
 flags.add_argument('--prepared-runtime',type=Path)
 flags.add_argument('--prepared-sha256')
 flags.add_argument('--stop-file',type=Path)
 flags.add_argument('--lifetime-seconds',type=float,default=60)
 options=flags.parse_args();assert .1<=options.lifetime_seconds<=300
 assert not(options.prepare_only and options.prepared_runtime),'Preparation and runtime consumption are separate phases'
 assert options.prepare_only or options.ready_file,'Actual runtime requires a fresh readiness path'
 assert bool(options.prepared_runtime)==bool(options.prepared_sha256),'Exact prepared manifest and SHA256 must be paired'
 native_stop_reason='startup_failed';shutdown=[False];signal.signal(signal.SIGTERM,lambda *_:shutdown.__setitem__(0,True));signal.signal(signal.SIGINT,lambda *_:shutdown.__setitem__(0,True))
 current=Path('/sys/fs/cgroup')/Path('/proc/self/cgroup').read_text().strip().split(':',2)[-1].lstrip('/');budget=[];shared_budget=False
 for ancestor in [current,*current.parents]:
  if not ancestor.is_relative_to('/sys/fs/cgroup'):break
  if not(ancestor/'memory.max').exists():continue
  maximum=(ancestor/'memory.max').read_text().strip();swap=(ancestor/'memory.swap.max').read_text().strip();budget.append({'path':str(ancestor),'memory_max':maximum,'swap_max':swap})
  assert maximum!='max'and swap=='0'and int(maximum)<=68719476736,'Actual bounded64GiB/zero-swap ancestry required'
  if int(maximum)==68719476736:shared_budget=True;break
 assert shared_budget and int((current/'memory.max').read_text())<=4294967296 and str(os.getpid())in(current/'cgroup.procs').read_text().split(),'Native scene needs its actual<=4GiB admitted leaf'
 quota,period=(current/'cpu.max').read_text().split();assert quota!='max'and int(quota)<=2*int(period),'Native scene CPU reservation must be<=2'
 own=Path(__file__).resolve().parent;assets=own/'native_assets';asset_lock=json.loads((own/'native-assets.lock.json').read_text());assert asset_lock['format']=='uwvm-native-ursim-assets-v1'
 for row in asset_lock['files']:
  path=own/row['path'];assert path.is_relative_to(own)and path.is_file()and not path.is_symlink()and path.stat().st_size==row['bytes']and sha(path)==row['sha256'],'Native asset changed'
 for row in asset_lock['shared_sources']:assert sha(options.sdk_root/row['path'])==row['sha256'],'Shared lifecycle source changed'
 sys.path.insert(0,str(options.sdk_root/'tools/shared/python'));from owned_processes import OwnedProcesses
 bundle=json.loads(options.input_bundle.read_text());assert bundle['format']=='uwvm-native-ursim-inputs-v1'and bundle['official_image_manifest']==asset_lock['official_image_manifest']
 ursim_closure_path=pin(bundle['ursim_closure']);bwrap=pin(bundle['bwrap']);info=bwrap.stat();assert stat.S_ISREG(info.st_mode)and info.st_uid==0 and not info.st_mode&0o022,'Trusted OS bwrap required'
 configuration_files={Path(row['path']).name:pin(row)for row in bundle['driver_configuration_files']};assert set(configuration_files)=={'ur-driver-parameters.json','ur5e_update_rate.yaml','ur-controllers.resolved.yaml'}
 lifecycle=OwnedProcesses();lifecycle_actors=[];cleanup_receipt=None
 out=options.output.resolve();out.mkdir(parents=True,exist_ok=True)
 assert options.ready_file is None or not options.ready_file.exists(),'Fresh native readiness path required'
 phase_start=time.monotonic_ns();phase_sequence=0;phase_path=out/'native-lifecycle.jsonl';phase_path.open('x').close()
 def phase(event,**facts):
  nonlocal phase_sequence
  phase_sequence+=1;now=time.monotonic_ns();record={'format':'uwvm-native-endpoint-phase-v1','sequence':phase_sequence,'event':event,'monotonic_ns':now,'elapsed_seconds':(now-phase_start)/1e9,'scope':'Native endpoint supervision only; not task/ROS callback evidence',**facts}
  with phase_path.open('a')as stream:stream.write(json.dumps(record,separators=(',',':'))+'\n')
 phase('input_verification_begin')
 closure=json.loads(ursim_closure_path.read_text());root=Path(closure['rootfs']).resolve(strict=True);assert len(closure['files'])==asset_lock['rootfs_regular_files']and len(closure['symlinks'])==asset_lock['rootfs_symlinks']
 for row in closure['files']:
  assert not Path(row['path']).is_absolute()and '..'not in Path(row['path']).parts,'In-root original payload path required'
  path=root/row['path'];assert path.is_file()and not path.is_symlink()and path.stat().st_size==row['bytes']and sha(path)==row['sha256']and oct(path.stat().st_mode&0o7777)==row['mode'],str(path)
 for row in closure['symlinks']:
  assert not Path(row['path']).is_absolute()and '..'not in Path(row['path']).parts
  assert os.readlink(root/row['path'])==row['target'],row['path']
 driver_construction_path=pin(bundle['driver_construction']);driver_closure_path=pin(bundle['driver_closure']);driver_bootstrap=assets/'native_driver.py';driver_construction=json.loads(driver_construction_path.read_text());driver_closure=json.loads(driver_closure_path.read_text());assert driver_construction['headless_mode']is True and driver_construction['model']=='ur5e'and driver_construction['verify_robot_model']is True and driver_construction['use_fake_hardware']is False and driver_construction['control_manager_hz']==500;assert driver_construction['namespace_rootfs']=='/ursim/.native-ros'and driver_construction['namespace_loader'].startswith('/ursim/.native-ros/')and '..'not in Path(driver_construction['namespace_loader']).parts;assert set(driver_construction['namespace_environment'])<={'PATH','PYTHONDONTWRITEBYTECODE','PYTHONHOME','PYTHONPATH','AMENT_PREFIX_PATH','CMAKE_PREFIX_PATH','ROS_DISTRO','ROS_VERSION','RMW_IMPLEMENTATION','LD_LIBRARY_PATH','LIBGL_ALWAYS_SOFTWARE','GALLIUM_DRIVER','EGL_PLATFORM','LIBGL_DRIVERS_PATH','HOME','ROS_LOG_DIR'};assert all(path.parent==driver_construction_path.parent for path in configuration_files.values());description=json.loads(configuration_files['ur-driver-parameters.json'].read_text())['/**']['ros__parameters']['robot_description'];assert hashlib.sha256(description.encode()).hexdigest()==driver_construction['relocated_urdf_sha256']and '<param name="headless_mode">True</param>'in description and '<param name="verify_robot_model">True</param>'in description and 'ur_robot_driver/URPositionHardwareInterface'in description and 'mock_components/'not in description;driver_source_root=Path(driver_closure['rootfs']);assert driver_source_root.resolve()==Path(driver_construction['rootfs']).resolve()
 phase('input_verification_complete')
 if options.prepared_runtime:
  prepared_path=options.prepared_runtime.resolve(strict=True);assert sha(prepared_path)==options.prepared_sha256,'Prepared private runtime manifest identity differs';prepared=json.loads(prepared_path.read_text());runtime=Path(prepared['runtime']).resolve(strict=True)
  assert prepared['format']=='uwvm-native-ursim-prepared-runtime-v1'and prepared['input_bundle_sha256']==sha(options.input_bundle)and prepared['assets_lock_sha256']==sha(own/'native-assets.lock.json')and prepared['image_root']==str(root),'Prepared runtime source/input identity differs'
  assert runtime==prepared_path.parent/'runtime'and not(runtime.parent/'consumed.json').exists(),'Fresh unconsumed private runtime required'
  phase('prepared_runtime_verification_begin')
  expected={row['path']:row for row in prepared['inventory']};actual={}
  for path in runtime.rglob('*'):
   relative=str(path.relative_to(runtime))
   if path.is_symlink():actual[relative]={'path':relative,'symlink':os.readlink(path)}
   elif path.is_file():actual[relative]={'path':relative,'bytes':path.stat().st_size,'sha256':sha(path),'mode':oct(path.stat().st_mode&0o777)}
  assert actual==expected,'Whole prepared private runtime inventory/payload/mode identity differs'
  for name in ['.native-context.json','.native-domain']:assert not(runtime/'ursim'/name).exists(),'Run-specific context must be generated only by the consuming runtime'
  claim={'format':'uwvm-native-ursim-private-consumption-v1','manifest_sha256':options.prepared_sha256,'boot':Path('/proc/sys/kernel/random/boot_id').read_text().strip(),'pid':os.getpid(),'birth_ticks':int(Path('/proc/self/stat').read_text().rsplit(')',1)[1].split()[19]),'cgroup':Path('/proc/self/cgroup').read_text(),'monotonic_ns':time.monotonic_ns(),'production_admission':False}
  with(runtime.parent/'consumed.json').open('x')as stream:json.dump(claim,stream)
  copied=prepared['independent_ursim_copied_files'];jdk_copied=prepared['independent_jdk_copied_files'];phase('prepared_runtime_verified_and_claimed',manifest_sha256=options.prepared_sha256)
 else:
  phase('independent_runtime_copy_begin')
  runtime=out/'runtime';runtime.mkdir();shutil.copytree(root/'ursim',runtime/'ursim',symlinks=True,copy_function=shutil.copyfile)
  for name in ['root','home-root']:(runtime/name).mkdir()
  (runtime/'ursim/.polyscope').mkdir(parents=True,exist_ok=True);shutil.copyfile(assets/'remotecontrol-enabled.properties',runtime/'ursim/.polyscope/remotecontrol.properties')
  (runtime/'ursim/start-native-controller.sh').write_text('');shutil.copyfile(assets/'native_ui.py',runtime/'ursim/.native-ui-observer.py');shutil.copyfile(assets/'native_ui_plan.json',runtime/'ursim/.native-ui-plan.json');shutil.copyfile(assets/'native_context.py',runtime/'ursim/native_context.py')
  java_relative='usr/lib/jvm/jdk1.8.0_371';java_private=runtime/'ursim/.java/jdk';java_private.parent.mkdir(parents=True,exist_ok=True);shutil.copytree(root/java_relative,java_private,symlinks=True,copy_function=shutil.copyfile);jdk_copied=0
  for row in closure['files']:
   if row['path'].startswith(java_relative+'/'):
    original=root/row['path'];target=java_private/str(Path(row['path']).relative_to(java_relative));assert not target.is_symlink()and target.stat().st_ino!=original.stat().st_ino and sha(target)==row['sha256'];target.chmod(int(row['mode'],8)&0o777);jdk_copied+=1
  # copyfile makes independent payloads; restore only ordinary modes,never privilege bits.
  copied=0
  for row in closure['files']:
   if row['path'].startswith('ursim/'):
    original=root/row['path'];copy=runtime/row['path'];assert copy.is_file()and not copy.is_symlink()and copy.stat().st_ino!=original.stat().st_ino and sha(copy)==row['sha256'];copy.chmod(int(row['mode'],8)&0o777);copied+=1
 
  driver_target=runtime/'ursim/.native-ros';shutil.copytree(driver_source_root,driver_target,symlinks=True,copy_function=shutil.copyfile)
  for row in driver_closure['files']:
   original=Path(row['path']);target=driver_target/original.relative_to(driver_source_root);assert original.is_file()and not original.is_symlink()and original.stat().st_size==row['bytes']and target.is_file()and not target.is_symlink()and target.stat().st_size==row['bytes']and sha(target)==row['sha256']and target.stat().st_ino!=original.stat().st_ino;target.chmod(int(row['mode'],8))
  for row in driver_closure['aliases']:
   original=Path(row['path']);target=driver_target/original.relative_to(driver_source_root);assert os.readlink(original)==os.readlink(target)==row['link']and original.resolve()==Path(row['target'])and target.resolve()==driver_target/Path(row['target']).relative_to(driver_source_root)
  # The independently copied runtime is the only driver root executed. Verify
  # every copied payload against the immutable source closure once, plus the exact
  # regular/alias inventory, before any child starts. A redundant source hash pass
  # is unnecessary: a changed source cannot produce a matching copied payload.
  expected_driver_files={str(Path(r['path']).relative_to(driver_source_root))for r in driver_closure['files']};expected_driver_aliases={str(Path(r['path']).relative_to(driver_source_root))for r in driver_closure['aliases']};actual_driver_files=set();actual_driver_aliases=set()
  for path in driver_target.rglob('*'):
   if path.is_symlink():actual_driver_aliases.add(str(path.relative_to(driver_target)))
   elif path.is_file():actual_driver_files.add(str(path.relative_to(driver_target)))
  assert actual_driver_files==expected_driver_files and actual_driver_aliases==expected_driver_aliases,'Copied native driver root inventory differs'
  for source_name,target_name in [('ur-driver-parameters.json','.native-driver-parameters.json'),('ur5e_update_rate.yaml','.native-ur5e_update_rate.yaml'),('ur-controllers.resolved.yaml','.native-ur-controllers.resolved.yaml')]:shutil.copyfile(driver_construction_path.parent/source_name,runtime/'ursim'/target_name)
  shutil.copyfile(driver_construction_path,runtime/'ursim/.native-driver-construction.json');shutil.copyfile(driver_bootstrap,runtime/'ursim/.native-driver-bootstrap.py')
 if options.prepare_only:
  inventory=[]
  for path in sorted(runtime.rglob('*')):
   relative=str(path.relative_to(runtime))
   if path.is_symlink():inventory.append({'path':relative,'symlink':os.readlink(path)})
   elif path.is_file():inventory.append({'path':relative,'bytes':path.stat().st_size,'sha256':sha(path),'mode':oct(path.stat().st_mode&0o777)})
  phase('independent_runtime_copy_complete');phase('private_runtime_prepared_no_native_processes')
  retirement=lifecycle.retire([]);assert retirement['status']=='RETIRED'
  prepared={'format':'uwvm-native-ursim-prepared-runtime-v1','runtime':str(runtime),'image_root':str(root),'input_bundle_sha256':sha(options.input_bundle),'assets_lock_sha256':sha(own/'native-assets.lock.json'),'preparation_source_sha256':sha(Path(__file__).resolve()),'boot':Path('/proc/sys/kernel/random/boot_id').read_text().strip(),'preparation_cgroup':Path('/proc/self/cgroup').read_text(),'preparation_first_phase_monotonic_ns':phase_start,'preparation_finished_monotonic_ns':time.monotonic_ns(),'independent_ursim_copied_files':copied,'independent_jdk_copied_files':jdk_copied,'inventory':inventory,'preparation_owned_retirement':retirement,'native_controller_or_driver_started':False,'sdk_application_started':False,'single_consumption_required':True,'production_admission':False,'scene_pass':False};put(out/'prepared-runtime.json',prepared);print(json.dumps({'status':'PREPARED_PRIVATE_RUNTIME_ONLY','native_controller_or_driver_started':False,'scene_pass':False}));return
 put(runtime/'ursim/.native-context.json',{'format':'uwvm-native-ursim-private-context-v1','parent_uid':os.getuid(),'parent_namespaces':{n:os.readlink('/proc/self/ns/'+n)for n in ['user','pid','net','mnt','ipc','uts']},'cgroup':Path('/proc/self/cgroup').read_text(),'production_admission':False})
 (runtime/'ursim/.native-domain').write_text(os.environ['ROS_DOMAIN_ID'])
 argv=[str(bwrap),'--unshare-user','--uid','0','--gid','0','--unshare-pid','--unshare-net','--unshare-ipc','--unshare-uts','--hostname','127.0.0.1','--cap-drop','ALL','--die-with-parent','--new-session','--ro-bind',str(root),'/','--bind',str(runtime/'ursim'),'/ursim','--bind',str(runtime/'root'),'/root','--ro-bind',str(assets/'native_controller.sh'),'/ursim/start-native-controller.sh','--proc','/proc','--dev','/dev','--tmpfs','/tmp','--tmpfs','/run','--tmpfs','/sys','--dir','/sys/fs','--tmpfs','/home','--dir','/home/root','--dir','/home/root/service','--ro-bind','/sys/fs/cgroup','/sys/fs/cgroup','--clearenv','--setenv','HOME','/ursim','--setenv','DISPLAY',':1','--setenv','TZ','UTC','--chdir','/ursim','/bin/bash','/ursim/start-native-controller.sh']
 put(out/'verified-startup.json',{'input_bundle_sha256':sha(options.input_bundle),'assets_lock_sha256':sha(own/'native-assets.lock.json'),'rootfs_verified_files':len(closure['files']),'rootfs_verified_symlinks':len(closure['symlinks']),'independent_mutable_copied_files':copied,'independent_original_jdk_files':jdk_copied,'budget_ancestry':budget,'argv':argv,'production_admission':False,'scenario_pass':False})
 phase('runtime_payloads_ready')
 own_cgroup=Path('/proc/self/cgroup').read_text().split(':',2)[-1].strip();group=Path('/sys/fs/cgroup')/own_cgroup.lstrip('/');identities={};samples=[]
 def sample():
  pids=[row['pid']for row in lifecycle.observe()]
  for pid in pids:
   proc=Path('/proc')/str(pid)
   try:
    birth=int((proc/'stat').read_text().rsplit(')',1)[1].split()[19]);key=str(pid)+':'+str(birth)
    if key not in identities:identities[key]={'pid':pid,'birth_ticks':birth,'comm':(proc/'comm').read_text().strip(),'cmdline':(proc/'cmdline').read_bytes().replace(b'\0',b' ').decode(errors='replace'),'cgroup':(proc/'cgroup').read_text(),'uid_map':(proc/'uid_map').read_text(),'gid_map':(proc/'gid_map').read_text(),'namespace_ids':{n:os.readlink(proc/'ns'/n)for n in ['user','pid','net','mnt','ipc','uts']},'status':(proc/'status').read_text()}
   except(ProcessLookupError,FileNotFoundError,PermissionError):pass
  return pids
 def listening(pid):
  ports=[]
  for table in ['tcp','tcp6']:
   try:
    for line in(Path('/proc')/str(pid)/'net'/table).read_text().splitlines()[1:]:
     row=line.split()
     if row[3]=='0A':ports.append(int(row[1].split(':')[1],16))
   except(FileNotFoundError,PermissionError,ProcessLookupError):pass
  return sorted(set(ports))
 driver_binary='/ursim/.native-ros/opt/ros/humble/lib/ur_robot_driver/ur_ros2_control_node'
 def live_kernel(row):
  proc=Path('/proc')/str(row['pid']);fields=(proc/'stat').read_text().rsplit(')',1)[1].split()
  assert int(fields[19])==row['birth_ticks']and fields[0]not in ('Z','X'),'Native critical process identity absent or retired'
  assert(proc/'cgroup').read_text()==row['cgroup'],'Native critical process changed its admitted cgroup'
  assert all(os.readlink(proc/'ns'/name)==value for name,value in row['namespace_ids'].items()),'Native critical process namespace changed'
  return(proc/'comm').read_text().strip(),(proc/'cmdline').read_bytes().split(b'\0')
 def critical_snapshot():
  owned={(row['pid'],int(row['birth']))for row in lifecycle.observe()};selected={}
  for row in identities.values():
   if(row['pid'],row['birth_ticks'])not in owned:continue
   try:comm,args=live_kernel(row)
   except(FileNotFoundError,ProcessLookupError,AssertionError):continue
   role='virtual-controller'if comm=='URControl'else'native-hardware-driver'if driver_binary.encode()in args else None
   if role:
    assert role not in selected,'Ambiguous native critical process role'
    selected[role]={**row,'role':role,'comm':comm,'cmdline':b' '.join(args).decode(errors='replace')}
  assert set(selected)=={'virtual-controller','native-hardware-driver'},'Actual native critical process pair required before ready publication'
  return list(selected.values())
 def require_critical_live(rows):
  owned={(row['pid'],int(row['birth']))for row in lifecycle.observe()}
  for row in rows:
   try:
    assert(row['pid'],row['birth_ticks'])in owned,'Owned process birth is no longer live'
    comm,args=live_kernel(row)
    assert(comm=='URControl'if row['role']=='virtual-controller'else driver_binary.encode()in args),'Critical executable role changed'
   except(FileNotFoundError,ProcessLookupError,AssertionError)as error:
    raise RuntimeError('NATIVE_CRITICAL_PROCESS_LOST:'+row['role'])from error
 process=None;ready=False;ever_ready=False;reason=None;port_evidence=[];critical=[];native_error=None;cleanup_errors=[]
 try:
  with(out/'ursim.stdout').open('wb')as stdout,(out/'ursim.stderr').open('wb')as stderr:
   process=subprocess.Popen(argv,stdout=stdout,stderr=stderr,start_new_session=True,preexec_fn=lambda:os.sched_setaffinity(0,sorted(os.sched_getaffinity(0))[:2]));birth=str(int((Path('/proc')/str(process.pid)/'stat').read_text().rsplit(')',1)[1].split()[19]));lifecycle_actors.append({'pid':process.pid,'birth':birth,'process':process});lifecycle.observe();phase('native_bootstrap_born',pid=process.pid,birth_ticks=int(birth));deadline=time.monotonic()+65
   while time.monotonic()<deadline and not shutdown[0]:
    lifecycle.observe();sample();controllers=[row for row in identities.values()if row['comm']=='URControl'and(Path('/proc')/str(row['pid'])).exists()]
    ports=sorted(set(port for row in controllers for port in listening(row['pid'])));port_evidence.append({'elapsed':65-(deadline-time.monotonic()),'controller_pids':[r['pid']for r in controllers],'listening_ports':ports});samples.append({'time_unix':time.time(),'pids':sample(),'pids_current':(group/'pids.current').read_text().strip(),'pids_events':(group/'pids.events').read_text().strip(),'memory_current':(group/'memory.current').read_text().strip()})
    if {29999,30001,30002,30003,30004}.issubset(ports)and(runtime/'ursim/.evidence/native-bootstrap-complete.json').exists()and(runtime/'ursim/.evidence/native-driver-ready').exists():ready=True;break
    if process.poll()is not None:reason='NATIVE_STARTUP_EXITED';break
    time.sleep(.25)
   if not ready and reason is None:reason='ORIGINAL_NATIVE_DRIVER_HANDSHAKE_OR_BROADCASTER_NOT_READY'

   if ready:
    critical=critical_snapshot();require_critical_live(critical);ever_ready=True;phase('native_endpoint_ready',critical_processes=[{'role':row['role'],'pid':row['pid'],'birth_ticks':row['birth_ticks']}for row in critical])
    host_birth=int(Path('/proc/self/stat').read_text().rsplit(')',1)[1].split()[19]);native_ready={'format':'uwvm-native-ursim-driver-readiness-v1','helper_pid':os.getpid(),'helper_birth_ticks':host_birth,'helper_cgroup':Path('/proc/self/cgroup').read_text(),'source_sha256':sha(Path(__file__).resolve()),'official_image_manifest':asset_lock['official_image_manifest'],'required_ports':[29999,30001,30002,30003,30004],'native_controller_ports_ready':True,'native_driver_endpoint_ready':True,'critical_native_processes':critical,'native_lifecycle_log':str(phase_path),'driver_readiness':json.loads((runtime/'ursim/.evidence/native-driver-readiness.json').read_text()),'live_host_process_identities':[r for r in identities.values()if r['pid']not in [os.getpid(),os.getppid()]and(Path('/proc')/str(r['pid'])).exists()],'private_namespace_only':True,'host_network_ports_opened':False,'sdk_application_started':False,'production_admission':False,'scenario_pass':False}
    if options.ready_file:
     options.ready_file.parent.mkdir(parents=True,exist_ok=True);temporary=options.ready_file.with_suffix('.pending');put(temporary,native_ready);temporary.rename(options.ready_file)
    deadline=time.monotonic()+options.lifetime_seconds
    while time.monotonic()<deadline and not shutdown[0]and not(options.stop_file and options.stop_file.exists()):
     lifecycle.observe();assert process.poll()is None,'Native UR endpoint exited during live interval';require_critical_live(critical);time.sleep(.05)
    native_stop_reason='signal'if shutdown[0]else'stop_file'if options.stop_file and options.stop_file.exists()else'lifetime_expired'
   phase('native_stop_requested',reason=native_stop_reason)
 except BaseException as error:
  ready=False;native_error=type(error).__name__+':'+str(error);reason=str(error);native_stop_reason='critical_process_lost'if 'NATIVE_CRITICAL_PROCESS_LOST:'in reason else'native_failure';cleanup_attempt(cleanup_errors,'native_failure_log',lambda:phase('native_endpoint_failed',reason=reason))
  raise
 finally:
  primary=sys.exception()
  try:
   cleanup_receipt=retire_native_endpoint(lifecycle,lifecycle_actors,options.ready_file,phase,native_stop_reason,cleanup_errors)
   # Each log copy is independent; failed evidence IO must not bypass retirement.
   for name in ['URControl.log','polyscope.log']:
    path=runtime/'ursim'/name
    cleanup_attempt(cleanup_errors,'native_log_copy:'+name,lambda path=path,name=name:shutil.copyfile(path,out/name)if path.exists()else None)
   phase_digest=cleanup_attempt(cleanup_errors,'phase_log_digest',lambda:sha(phase_path))
   if cleanup_errors:ready=False
   retirement=[]  # The shared receipt has already restored adoption; do not observe after retire.
   for key,row in identities.items():
    proc=Path('/proc')/str(row['pid']);same=False
    try:same=int((proc/'stat').read_text().rsplit(')',1)[1].split()[19])==row['birth_ticks']
    except(FileNotFoundError,ProcessLookupError):pass
    retirement.append({'pid':row['pid'],'birth_ticks':row['birth_ticks'],'still_same_process':same,'is_helper':row['pid']==os.getpid(),'is_harness_parent':row['pid']==os.getppid()})
   result={'native_controller_ports_ready':bool(port_evidence)and{29999,30001,30002,30003,30004}.issubset(port_evidence[-1]['listening_ports']),'native_driver_endpoint_ready':ready,'ever_native_endpoint_ready':ever_ready,'critical_native_processes':critical,'native_error':native_error,'cleanup_errors':cleanup_error_facts(cleanup_errors),'native_lifecycle_log':{'path':str(phase_path),'sha256':phase_digest,'events':phase_sequence},'runtime_root':str(runtime),'prepared_runtime_manifest_sha256':options.prepared_sha256,'native_driver_readiness_scope':'Initial handshake snapshot; lifecycle outcome is native_driver_endpoint_ready,not live authority after retirement','reason':reason,'required_ports':[29999,30001,30002,30003,30004],'port_evidence':port_evidence,'socket_families_checked':['tcp','tcp6'],'native_bootstrap_complete':json.loads((runtime/'ursim/.evidence/native-bootstrap-complete.json').read_text())if(runtime/'ursim/.evidence/native-bootstrap-complete.json').exists()else None,'process_identities':list(identities.values()),'process_samples':samples,'retirement_observation':retirement,'own_cgroup':own_cgroup,'native_stop_reason':native_stop_reason,'shared_owned_process_retirement':cleanup_receipt,'main_exit_code':process.returncode if process else None,'ur_image_robot_model':'UR5','ros_driver_model_mapping':'Real UR5e driver with verify_robot_model=true; original headless external-control program','native_environment_only':True,'sdk_application_started':False,'driver_startup_attempted':True,'driver_started':any(row['role']=='native-hardware-driver'for row in critical)or any('/lib/ur_robot_driver/ur_ros2_control_node'in row['cmdline']for row in identities.values()),'native_driver_readiness':json.loads((runtime/'ursim/.evidence/native-driver-readiness.json').read_text())if(runtime/'ursim/.evidence/native-driver-readiness.json').exists()else None,'urcaps_service_qualified':False,'privileged_realtime_qualified':False,'production_admission':False,'scenario_pass':False};put(out/'native-controller-readiness.json',result)
  except BaseException as error:
   error.add_note('Native cleanup stage: final_evidence');cleanup_errors.append(('final_evidence',error))
  finally:raise_cleanup_errors(primary,cleanup_errors)
 print(json.dumps({'native_controller_ports_ready':result['native_controller_ports_ready'],'native_driver_endpoint_ready':ready,'reason':reason,'main_exit_code':result['main_exit_code'],'processes_seen':len(identities),'scenario_pass':False}));assert ready,'Original native driver endpoint readiness failed; original logs retained'
if __name__=='__main__':main()
