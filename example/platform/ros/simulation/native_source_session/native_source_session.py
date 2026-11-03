"""Bounded native-only source lifetime; strict VM producer/application phases stay external.

Run only after independent queue/production admission. This is a process owner,
not an execution-authority creator, ROS application, task judge or journal arm.
"""
from pathlib import Path
import argparse,hashlib,json,os,signal,subprocess,sys,time,uuid

def sha(path):
 with Path(path).open('rb')as stream:return hashlib.file_digest(stream,'sha256').hexdigest()
def pin(row):
 p=Path(row['path']);assert p.is_absolute()and p.is_file()and not p.is_symlink()and p.stat().st_size==row['bytes']and sha(p)==row['sha256'],'Native input pin differs: '+str(p);return p
def put(path,value):path.write_text(json.dumps(value,indent=2)+'\n')
def attempt(errors,stage,operation):
 try:return operation()
 except BaseException as error:error.add_note('Native session stage: '+stage);errors.append((stage,error));return None
def facts(errors):return[{'stage':stage,'type':type(error).__name__,'message':str(error),'errno':getattr(error,'errno',None)}for stage,error in errors]
def kernel(pid):
 p=Path('/proc')/str(pid);f=(p/'stat').read_text().rsplit(')',1)[1].split();return {'pid':pid,'birth_ticks':int(f[19]),'state':f[0],'cgroup':(p/'cgroup').read_text(),'namespaces':{n:os.readlink(p/'ns'/n)for n in ['user','pid','net','mnt','ipc','uts']}}
def check_budget(budget,live,journal_seconds=None):
 assert budget['format']=='uwvm-native-source-phase-budget-v1'and .1<=live<=budget['native_post_ready_max_seconds']-budget['native_shutdown_reserve_seconds'] and budget['native_post_ready_max_seconds']<=300
 native=budget['native_startup_seconds']+budget['native_post_ready_max_seconds']+budget['native_retirement_seconds']+budget['source_footer_seconds']
 assert native==budget['native_generation_queue_seconds']
 phases=budget['external_post_ready_allocations_seconds'];assert sum(phases.values())<=budget['native_post_ready_max_seconds']-budget['native_shutdown_reserve_seconds']
 total=budget['generations']*native+budget['between_generations_seconds']+budget['outer_journal_open_close_seconds']
 assert total==budget['required_full_journal_seconds']
 if journal_seconds is not None and journal_seconds<total:raise ValueError('Journal window omits full startup/generation/reset/drain budget: '+str(journal_seconds)+' < '+str(total))
 return total

def main():
 first=time.monotonic_ns();parser=argparse.ArgumentParser(description=__doc__)
 for name in ['sdk-root','input-config','phase-budget','output']:parser.add_argument('--'+name,required=True,type=Path)
 parser.add_argument('--ready-file',required=True,type=Path);parser.add_argument('--stop-file',type=Path);parser.add_argument('--live-seconds',type=float,default=290);args=parser.parse_args();budget=json.loads(args.phase_budget.read_text());check_budget(budget,args.live_seconds)
 sdk=args.sdk_root.resolve(strict=True);sys.path.insert(0,str(sdk/'tools/shared/python'));from owned_processes import OwnedProcesses
 # OwnedProcesses is constructed childless; no child may exist before its ledger.
 life=OwnedProcesses();actors=[];process=None;errors=[];primary=None;retirement=None;critical=[];ready_seen=False;success=False;stop_reason='startup_failed';out=args.output.resolve();out.mkdir(parents=True,exist_ok=False);endpoint_ready=out/'endpoint-ready.json';endpoint_stop=out/'endpoint-stop';phase_path=out/'native-phases.jsonl';sequence=0;stop_signal=[False];signal.signal(signal.SIGTERM,lambda *_:stop_signal.__setitem__(0,True));signal.signal(signal.SIGINT,lambda *_:stop_signal.__setitem__(0,True));run_id=uuid.uuid4().hex
 def phase(name,**data):
  nonlocal sequence
  sequence+=1;now=time.monotonic_ns();row={'format':'uwvm-native-source-phase-v1','run_id':run_id,'sequence':sequence,'event':name,'monotonic_ns':now,'since_source_entry_seconds':(now-first)/1e9,'scope':'Native process supervision only; external producer arming/task/journal drain unqualified',**data}
  with phase_path.open('a')as stream:stream.write(json.dumps(row,separators=(',',':'))+'\n')
 report={'format':'uwvm-native-source-session-v1','run_id':run_id,'first_monotonic_ns':first,'boot':Path('/proc/sys/kernel/random/boot_id').read_text().strip(),'owner':kernel(os.getpid()),'phase_budget_sha256':sha(args.phase_budget),'input_config_sha256':sha(args.input_config),'source_code_sha256':sha(Path(__file__).resolve()),'external_producer_arming':'NOT_RUN','wasm_warmup_task_cancel_recovery':'NOT_RUN','complete_vm_native_journal_drain':'NOT_RUN','scene_pass':False,'production_admission':False}
 def census():return{(row['pid'],int(row['birth']))for row in life.observe()}
 def live(rows):
  owned=census()
  for row in rows:
   now=kernel(row['pid']);assert(row['pid'],row['birth_ticks'])in owned and now['birth_ticks']==row['birth_ticks']and now['state']not in ['Z','X']and now['cgroup']==row['cgroup']and now['namespaces']==row['namespaces'],'Native critical identity lost'
 try:
  assert not args.ready_file.exists(),'Fresh source readiness path required';phase('source_entry')
  config=json.loads(args.input_config.read_text());assert config['format']=='uwvm-native-source-inputs-v1'and config['scene']in ['turtlebot3','scout','rrbot','go2','ur'];source=pin(config['entrypoint']);allowed={'turtlebot3':'robotis/simulation/turtlebot3_burger_humble/native_scene.py','scout':'agilex/simulation/ugv_gazebo_scout_v2/native_scene.py','rrbot':'ros/simulation/rrbot_example9_jazzy/native_scene.py','go2':'unitree/simulation/unitree_ros2_go2_stand/native_launcher.py','ur':'universal_robots/simulation/ursim_e_series/native_scene.py'};assert source==sdk/'example/platform'/allowed[config['scene']],'Only the exact official native scene entrypoint is allowed; native applications are forbidden'
  for row in config['inputs']:pin(row)
  report.update(scene=config['scene'],native_entrypoint=config['entrypoint'],preparation=config.get('preparation'));phase('native_inputs_verified')
  values={'{ready}':str(endpoint_ready),'{stop}':str(endpoint_stop),'{live_seconds}':str(args.live_seconds+budget['native_shutdown_reserve_seconds']),'{sdk}':str(sdk),'{output}':str(out/'endpoint')}
  tail=[values.get(value,value)for value in config['arguments']];assert all(isinstance(value,str)and '{'not in value and '}'not in value for value in tail)
  native_out=out/'endpoint';native_out.mkdir();env=dict(os.environ,UWVM_SDK_OUTPUT=str(native_out));argv=[os.environ['UWVM_SDK_PYTHON'],'-B',str(source),*tail];report['argv']=argv
  with(out/'endpoint.stdout').open('wb')as stdout,(out/'endpoint.stderr').open('wb')as stderr:
   process=subprocess.Popen(argv,env=env,stdout=stdout,stderr=stderr);owner=kernel(process.pid);actors.append({'pid':process.pid,'birth':str(owner['birth_ticks']),'process':process});phase('native_owner_born',identity=owner);deadline=first/1e9+budget['native_startup_seconds']
   while not endpoint_ready.exists()and process.poll()is None and time.monotonic()<deadline and not stop_signal[0]:census();time.sleep(.05)
   assert endpoint_ready.exists()and process.poll()is None,'Native startup failed or exceeded its complete entry-to-ready allocation'
   raw=json.loads(endpoint_ready.read_text());assert raw['format']==config['ready_format'];report['initial_endpoint_ready']=raw
   identities=raw.get('critical_native_processes',raw.get('native_processes',[]));pids=[row['pid']for row in identities]
   if not pids:pids=[raw['pid']]
   owned=census();critical=[kernel(pid)for pid in sorted(set(pids))];assert all((row['pid'],row['birth_ticks'])in owned for row in critical);live(critical);ready_seen=True;now=time.monotonic_ns();deadline=now/1e9+args.live_seconds
   report['native_backend_lifetime_seconds']=args.live_seconds+budget['native_shutdown_reserve_seconds'];report['native_ready_monotonic_ns']=now;report['critical_processes']=critical;phase('native_endpoint_ready',critical_processes=critical)
   lease={'format':'uwvm-native-source-ready-v1','run_id':run_id,'scene':config['scene'],'owner':report['owner'],'native_critical_processes':critical,'native_ready_monotonic_ns':now,'native_live_deadline_monotonic_ns':int(deadline*1e9),'whole_source_deadline_monotonic_ns':first+int(budget['native_generation_queue_seconds']*1e9),'post_ready_is_not_whole_journal_window':True,'native_backend_lifetime_seconds':report['native_backend_lifetime_seconds'],'native_shutdown_reserve_seconds':budget['native_shutdown_reserve_seconds'],'phase_budget_sha256':report['phase_budget_sha256'],'input_config_sha256':report['input_config_sha256'],'native_endpoint_snapshot':raw,'execution_or_task_authority':False,'scene_pass':False,'production_admission':False}
   args.ready_file.parent.mkdir(parents=True,exist_ok=True);pending=args.ready_file.with_suffix('.pending');put(pending,lease);pending.replace(args.ready_file);last=0
   while time.monotonic()<deadline and process.poll()is None and not stop_signal[0]and not(args.stop_file and args.stop_file.exists()):
    live(critical)
    if time.monotonic()-last>=1:phase('native_live_health');last=time.monotonic()
    time.sleep(.05)
   assert process.poll()is None,'Native owner exited before source-controlled retirement';live(critical);stop_reason='signal'if stop_signal[0]else'external_stop'if args.stop_file and args.stop_file.exists()else'live_window_complete';phase('native_stop_requested',reason=stop_reason);success=True
 except BaseException as error:primary=error;report['original_error']=type(error).__name__+':'+str(error);attempt(errors,'failure_phase',lambda:phase('native_failed',error=str(error)))
 finally:
  # IO failures cannot prevent the independent owned-tree retirement attempt.
  try:
   attempt(errors,'source_ready_unlink',lambda:args.ready_file.unlink(missing_ok=True))
   attempt(errors,'source_pending_unlink',lambda:args.ready_file.with_suffix('.pending').unlink(missing_ok=True))
   def stop_native():
    if process is not None and process.poll()is None:
     attempt(errors,'native_stop_write',lambda:endpoint_stop.write_text('Native supervisor stop only; not ROSActioncancel\n'))
     wait_until=time.monotonic()+min(12,budget['native_retirement_seconds']/2)
     while process.poll()is None and time.monotonic()<wait_until:
      life.observe();time.sleep(.05)
   attempt(errors,'native_stop_and_wait',stop_native)
  finally:
   attempt(errors,'retirement_begin_phase',lambda:phase('native_retirement_begin'))
   retirement=attempt(errors,'owned_process_retirement',lambda:life.retire(actors))
  attempt(errors,'endpoint_ready_unlink',lambda:endpoint_ready.unlink(missing_ok=True))
  def check_retirement():
   assert retirement is not None and retirement['status']=='RETIRED'and not retirement['same_birth_remaining']and not retirement['uncollected_direct_children']and not retirement['errors'],'Native source full retirement not proved'
  attempt(errors,'retirement_validation',check_retirement);attempt(errors,'retirement_end_phase',lambda:phase('native_retirement_complete',status=retirement['status']if retirement else'FAIL'))
  def check_total_time():
   assert (time.monotonic_ns()-first)/1e9<=budget['native_generation_queue_seconds'],'Complete source entry-to-retirement allocation exceeded'
  attempt(errors,'complete_source_time_budget',check_total_time)
  ready_absent=attempt(errors,'source_ready_absence_check',lambda:not args.ready_file.exists())
  report.update(status='RETIRED_NATIVE_SOURCE_ONLY'if success and primary is None and not errors else'FAIL',native_ever_ready=ready_seen,native_stop_reason=stop_reason,cleanup_errors=facts(errors),owned_process_retirement=retirement,source_ready_absent=ready_absent,actual_live_seconds=args.live_seconds,full_external_live_allocation_reserved=args.live_seconds>=sum(budget['external_post_ready_allocations_seconds'].values()),native_owner_exit_code=process.returncode if process else None,finished_monotonic_ns=time.monotonic_ns(),phase_events=sequence)
  attempt(errors,'final_source_report',lambda:put(out/'native-source-session.json',report))
  all_errors=([primary]if primary is not None else[])+[error for _,error in errors]
  if all_errors:raise BaseExceptionGroup('Native source operation and cleanup errors',all_errors)
 print(json.dumps({'status':report['status'],'scene':report['scene'],'scene_pass':False,'production_admission':False}))
if __name__=='__main__':main()
