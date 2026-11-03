"""Reproduce native endpoint supervision only; guest task/cancel/recovery stays Wasm.

Run inside the admitted common queue. Each mode uses the unchanged native
4GiB/2CPU/120s envelope; a fresh restart uses a separate admitted job after the
previous owned tree retired. Signals here are fault injection,not ROS cancels.
"""
from pathlib import Path
import argparse,hashlib,json,os,signal,subprocess,sys,time,uuid

def sha(path):
 with Path(path).open('rb')as stream:return hashlib.file_digest(stream,'sha256').hexdigest()
def put(path,value):path.write_text(json.dumps(value,indent=2)+'\n')
def birth(pid):return int((Path('/proc')/str(pid)/'stat').read_text().rsplit(')',1)[1].split()[19])
def absent(row):
 try:return birth(row['pid'])!=row['birth_ticks']
 except(FileNotFoundError,ProcessLookupError):return True


def cleanup_attempt(errors,stage,operation):
 try:return operation()
 except BaseException as error:
  error.add_note('Native cleanup stage: '+stage);errors.append((stage,error));return None
def cleanup_error_facts(errors):
 return[{'stage':stage,'type':type(error).__name__,'message':str(error),'errno':getattr(error,'errno',None)}for stage,error in errors]
def raise_cleanup_errors(primary,errors):
 if errors:raise BaseExceptionGroup('Native operation and cleanup errors',([primary]if primary is not None else[])+[error for _,error in errors])
def retire_lifecycle_case(life,actors,process,stop,wait_exit,ready,mode,out,report,success,primary):
 errors=[];retirement=None
 try:
  def stop_running():
   if process is not None and process.poll()is None:
    written=cleanup_attempt(errors,'stop_file_write',lambda:stop.write_text('Owning native test cleanup\n'))
    if written is not None:cleanup_attempt(errors,'stop_wait',lambda:wait_exit(12))
  cleanup_attempt(errors,'native_stop_request',stop_running)
 finally:retirement=cleanup_attempt(errors,'outer_owned_process_retirement',lambda:life.retire(actors))
 try:
  report['outer_owned_process_retirement']=retirement
  if mode=='owner-loss':cleanup_attempt(errors,'ready_lease_unlink',lambda:ready.unlink(missing_ok=True))
  absent=cleanup_attempt(errors,'ready_lease_check',lambda:not ready.exists())
  report['ready_lease_absent_after_retirement']=absent;report['finished_monotonic_ns']=time.monotonic_ns()
  def require_retired():
   assert retirement is not None and retirement['status']=='RETIRED'and absent,'Native case retirement/readiness lease failure'
  cleanup_attempt(errors,'retirement_receipt_validation',require_retired)
  report['cleanup_errors']=cleanup_error_facts(errors);report['status']='PASS_NATIVE_ENDPOINT_SUPERVISION_ONLY'if success and primary is None and not errors else'FAIL'
  cleanup_attempt(errors,'final_report_write',lambda:put(out/'native-lifecycle-case.json',report))
 except BaseException as error:
  error.add_note('Native cleanup stage: final_evidence');errors.append(('final_evidence',error))
 finally:raise_cleanup_errors(primary,errors)

def main():
 parser=argparse.ArgumentParser(description=__doc__)
 for name in ['sdk-root','input-bundle','output']:parser.add_argument('--'+name,type=Path,required=True)
 parser.add_argument('--mode',required=True,choices=['supervisor-stop','driver-loss','controller-loss','owner-loss','fresh-restart'])
 parser.add_argument('--prepared-runtime',type=Path);parser.add_argument('--prepared-sha256');parser.add_argument('--predecessor-receipt',type=Path);parser.add_argument('--predecessor-sha256');args=parser.parse_args()
 out=args.output.resolve();out.mkdir(parents=True,exist_ok=False);entry=Path(__file__).resolve().parent/'native_scene.py';sdk=args.sdk_root.resolve();sys.path.insert(0,str(sdk/'tools/shared/python'));from owned_processes import OwnedProcesses
 boot=Path('/proc/sys/kernel/random/boot_id').read_text().strip();predecessor=None;input_digest=sha(args.input_bundle)
 if args.mode=='fresh-restart':
  assert args.predecessor_receipt and args.predecessor_sha256 and sha(args.predecessor_receipt)==args.predecessor_sha256,'Exact terminal predecessor receipt required'
  predecessor=json.loads(args.predecessor_receipt.read_text());assert predecessor['status']=='PASS_NATIVE_ENDPOINT_SUPERVISION_ONLY'and predecessor['mode']in ['driver-loss','controller-loss','owner-loss']and predecessor['boot']==boot and predecessor['input_bundle_sha256']==input_digest and predecessor['endpoint_source_sha256']==sha(entry)and predecessor['outer_owned_process_retirement']['status']=='RETIRED'and not predecessor['outer_owned_process_retirement']['same_birth_remaining']and predecessor['ready_lease_absent_after_retirement'];assert all(absent(row)for row in predecessor['initial_native_ready']['critical_native_processes']),'Prior native process birth remains'
 else:assert args.predecessor_receipt is None and args.predecessor_sha256 is None,'Predecessor input belongs only to native restart mode'
 life=OwnedProcesses();actors=[];process=None;success=False;ready=out/'native-ready.json';stop=out/'stop-native';report={'format':'uwvm-native-endpoint-lifecycle-case-v1','run_id':uuid.uuid4().hex,'boot':boot,'mode':args.mode,'input_bundle_sha256':input_digest,'endpoint_source_sha256':sha(entry),'started_monotonic_ns':time.monotonic_ns(),'helper_cgroup':Path('/proc/self/cgroup').read_text(),'phase_deadlines_seconds':{'startup':105,'native_fault_exit_or_stop':15},'sdk_application_started':False,'ros_action_cancel_sent':False,'guest_task_or_recovery_qualified':False,'scene_pass':False,'production_admission':False};put(out/'case-start.json',report)
 def observe():return{(row['pid'],int(row['birth']))for row in life.observe()}
 def wait_exit(seconds):
  deadline=time.monotonic()+seconds
  while process.poll()is None and time.monotonic()<deadline:life.observe();time.sleep(.05)
  return process.poll()
 try:
  argv=[os.environ['UWVM_SDK_PYTHON'],'-B',str(entry),'--sdk-root',str(sdk),'--input-bundle',str(args.input_bundle),'--output',str(out/'endpoint'),'--ready-file',str(ready),'--stop-file',str(stop),'--lifetime-seconds','30'];
  assert bool(args.prepared_runtime)==bool(args.prepared_sha256),'Exact one-use prepared runtime pins must be paired'
  if args.prepared_runtime:
   assert sha(args.prepared_runtime)==args.prepared_sha256;preparation=json.loads(args.prepared_runtime.read_text());report['preparation']={'manifest_sha256':args.prepared_sha256,'first_phase_monotonic_ns':preparation['preparation_first_phase_monotonic_ns'],'finished_monotonic_ns':preparation['preparation_finished_monotonic_ns'],'controller_or_driver_started':preparation['native_controller_or_driver_started']};argv += ['--prepared-runtime',str(args.prepared_runtime),'--prepared-sha256',args.prepared_sha256]
  report['argv']=argv
  with(out/'endpoint.stdout').open('wb')as stdout,(out/'endpoint.stderr').open('wb')as stderr:
   process=subprocess.Popen(argv,stdout=stdout,stderr=stderr);owner_birth=birth(process.pid);actors.append({'pid':process.pid,'birth':str(owner_birth),'process':process});deadline=time.monotonic()+105
   while not ready.exists()and process.poll()is None and time.monotonic()<deadline:life.observe();time.sleep(.05)
   assert ready.exists(),'Actual original native endpoint not ready before bounded startup deadline';native=json.loads(ready.read_text());report['native_ready_monotonic_ns']=time.monotonic_ns();report['initial_native_ready']=native;put(out/'initial-native-ready.json',native);critical=native['critical_native_processes'];assert len(critical)==2 and native['native_driver_endpoint_ready']and not native['sdk_application_started'];owned=observe();assert all((row['pid'],row['birth_ticks'])in owned for row in critical)
   if predecessor:
    old={(row['pid'],row['birth_ticks'])for row in predecessor['initial_native_ready']['critical_native_processes']};assert old.isdisjoint({(row['pid'],row['birth_ticks'])for row in critical});report['predecessor']={'receipt_sha256':args.predecessor_sha256,'run_id':predecessor['run_id'],'prior_mode':predecessor['mode'],'all_prior_native_births_absent':True,'native_environment_reinitialized':True,'guest_reconnect_or_task_resume':'NOT_RUN'}
   if args.mode in ['driver-loss','controller-loss','owner-loss']:
    if args.mode=='owner-loss':target={'pid':process.pid,'birth_ticks':owner_birth,'role':'endpoint-owner'}
    else:target=next(row for row in critical if row['role']==('native-hardware-driver'if args.mode=='driver-loss'else'virtual-controller'))
    assert(target['pid'],target['birth_ticks'])in observe()and birth(target['pid'])==target['birth_ticks'];fd=os.pidfd_open(target['pid'])
    try:assert birth(target['pid'])==target['birth_ticks'];sent=time.monotonic_ns();signal.pidfd_send_signal(fd,signal.SIGKILL)
    finally:os.close(fd)
    report['fault']={'role':target['role'],'pid':target['pid'],'birth_ticks':target['birth_ticks'],'signal':int(signal.SIGKILL),'monotonic_ns':sent};code=wait_exit(15);report['endpoint_exit_code']=code;assert code is not None and code!=0,'Actual native critical/owner loss must fail the endpoint'
   else:
    time.sleep(.5);report['stop_requested_monotonic_ns']=time.monotonic_ns();stop.write_text('Native supervisor stop only; not ROSActioncancel\n');code=wait_exit(15);report['endpoint_exit_code']=code;assert code==0,'Native supervisor stop must retire successfully'
   if args.mode!='owner-loss':
    final=json.loads((out/'endpoint/native-controller-readiness.json').read_text());ret=final['shared_owned_process_retirement'];assert ret['status']=='RETIRED'and not ret['same_birth_remaining']and not ret['uncollected_direct_children']and not ret['errors']and final['ever_native_endpoint_ready'];report['endpoint_final']=final
    phases=[json.loads(line)for line in(out/'endpoint/native-lifecycle.jsonl').read_text().splitlines()];assert[x['sequence']for x in phases]==list(range(1,len(phases)+1))and phases[-1]['event']=='native_retirement_complete';report['native_phase_log']={'path':'endpoint/native-lifecycle.jsonl','sha256':sha(out/'endpoint/native-lifecycle.jsonl'),'events':len(phases),'scope':'Native supervision only,not VM/native DDSbuffer observation'}
    if args.mode in ['driver-loss','controller-loss']:
     assert not final['native_driver_endpoint_ready']and final['native_stop_reason']=='critical_process_lost'and 'NATIVE_CRITICAL_PROCESS_LOST:'in final['reason'];failure=next(x for x in phases if x['event']=='native_endpoint_failed');report['fault']['observed_detection_seconds']=(failure['monotonic_ns']-report['fault']['monotonic_ns'])/1e9;assert report['fault']['observed_detection_seconds']>=0
    else:assert final['native_stop_reason']=='stop_file'and final['native_driver_endpoint_ready']
   else:report['abrupt_owner_phase_footer']='Not expected after SIGKILL; the independent outer ownership ledger proves retirement. No complete guest/buffer observation is claimed.'
   success=True
 except BaseException as error:
  report['failure']=type(error).__name__+':'+str(error);raise
 finally:
  retire_lifecycle_case(life,actors,process,stop,wait_exit,ready,args.mode,out,report,success,sys.exception())
 print(json.dumps({'status':report['status'],'mode':args.mode,'native_only':True,'guest_task_or_recovery_qualified':False}))
if __name__=='__main__':main()
