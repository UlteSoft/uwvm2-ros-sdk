"""Original native driver and broadcaster initialization only; no robot task/control client."""
from pathlib import Path
import json,os,signal,socket,subprocess,time

def main():
 from native_context import require_private_context
 require_private_context()
 root=Path('/ursim');out=root/'.evidence';construction=json.loads((root/'.native-driver-construction.json').read_text());env=dict(os.environ,**construction['namespace_environment']);env['ROS_DOMAIN_ID']=(root/'.native-domain').read_text().strip();Path(env['HOME']).mkdir();loader=construction['namespace_loader'];prefix='/ursim/.native-ros/opt/ros/humble';binary=prefix+'/lib/ur_robot_driver/ur_ros2_control_node';shutdown=[False];signal.signal(signal.SIGTERM,lambda *_:shutdown.__setitem__(0,True));signal.signal(signal.SIGINT,lambda *_:shutdown.__setitem__(0,True));deadline=time.monotonic()+55
 while not(out/'native-bootstrap-complete.json').exists()and not shutdown[0]and time.monotonic()<deadline:time.sleep(.1)
 assert(out/'native-bootstrap-complete.json').exists(),'Original URSim native Dashboard bootstrap absent'

 require_private_context()
 dashboard=[]
 with socket.create_connection(('127.0.0.1',29999),timeout=3)as client:
  stream=client.makefile('rwb',buffering=0);greeting=stream.readline(4096).decode();assert greeting=='Connected: Universal Robots Dashboard Server\n'
  for command in ['is in remote control','robotmode','safetystatus']:
   stream.write((command+'\n').encode());reply=stream.readline(4096).decode();dashboard.append({'native_initialization_query':command,'actual_reply':reply})
 (out/'native-controller-initial-state.json').write_text(json.dumps({'native_provisioning_queries':dashboard,'robot_power_or_move_command':False,'program_sent':False,'sdk_application_or_guest_feedback':False,'scene_pass':False},indent=2)+'\n')

 # Native virtual-controller provisioning precedes the original headless driver.
 # This fixed private namespace has no physical robot route. No task trajectory
 # is generated here; the original application remains a separate Wasm client.
 assert construction['headless_mode']is True,'Original headless model configuration required'
 setup=[]
 with socket.create_connection(('127.0.0.1',29999),timeout=3)as client:
  stream=client.makefile('rwb',buffering=0);assert stream.readline(4096).decode()=='Connected: Universal Robots Dashboard Server\n'
  def request(command):
   stream.write((command+'\n').encode());reply=stream.readline(4096).decode();setup.append({'command':command,'actual_reply':reply,'monotonic_ns':time.monotonic_ns()});(out/'native-power-setup.json').write_text(json.dumps({'scope':'Owning isolated official URSim environment initialization only','events':setup,'actual_sdk_task_trajectory':'NOT_RUN','physical_robot_route':False,'scene_pass':False},indent=2)+'\n');return reply.strip()
  def await_mode(expected,seconds):
   deadline=time.monotonic()+seconds
   while time.monotonic()<deadline:
    if request('robotmode')=='Robotmode: '+expected:return
    time.sleep(.2)
   raise TimeoutError('Original URSim did not reach initialization mode '+expected)
  assert request('is in remote control')=='true','Native virtual controller not in Remote mode; no power command sent'
  assert request('safetystatus')=='Safetystatus: NORMAL','Original native safety state must already be NORMAL; no unlock or safety bypass'
  mode=request('robotmode')
  if mode=='Robotmode: POWER_OFF':assert request('power on').startswith('Powering on');await_mode('IDLE',12)
  else:assert mode=='Robotmode: IDLE','Unexpected native initial power state'
  assert request('brake release').startswith('Brake releasing');await_mode('RUNNING',12)
 argv=[loader,'--library-path',env['LD_LIBRARY_PATH'],binary,'--ros-args','--params-file','/ursim/.native-driver-parameters.json','--params-file','/ursim/.native-ur5e_update_rate.yaml','--params-file','/ursim/.native-ur-controllers.resolved.yaml'];p=None;spawner=None;result={'driver_argv':argv,'native_driver':True,'application_started':False,'headless_mode':construction['headless_mode'],'native_power_initialized':True,'verify_robot_model':True,'task_commands_sent':False,'trajectory_controller_activated':False,'production_admission':False,'scene_pass':False}
 try:
  with(out/'native-driver.stdout').open('wb')as stdout,(out/'native-driver.stderr').open('wb')as stderr:
   p=subprocess.Popen(argv,env=env,stdout=stdout,stderr=stderr,start_new_session=True);result['driver_pid']=p.pid;deadline=time.monotonic()+25
   while p.poll()is None and not shutdown[0]and time.monotonic()<deadline:
    text=(out/'native-driver.stdout').read_text(errors='replace')+(out/'native-driver.stderr').read_text(errors='replace')
    if('System successfully started'in text or 'Successful activation of hardware'in text)and'Robot connected to reverse interface. Ready to receive control commands.'in text:break
    time.sleep(.1)
   text=(out/'native-driver.stdout').read_text(errors='replace')+(out/'native-driver.stderr').read_text(errors='replace');result['native_driver_live']=p.poll()is None;result['original_headless_program_reverse_connected']='Robot connected to reverse interface. Ready to receive control commands.'in text;result['driver_exit_code']=p.poll();result['original_driver_hardware_activation_log']=('System successfully started'in text or 'Successful activation of hardware'in text)
   if p.poll()is None and result['original_driver_hardware_activation_log']:
    init=[loader,'--library-path',env['LD_LIBRARY_PATH'],'/ursim/.native-ros/usr/bin/python3.10','-B',prefix+'/lib/controller_manager/spawner','joint_state_broadcaster','scaled_joint_trajectory_controller','--controller-manager-timeout','8'];result['broadcaster_initialization_argv']=init
    with(out/'native-broadcaster.stdout').open('wb')as so,(out/'native-broadcaster.stderr').open('wb')as se:spawner=subprocess.run(init,env=env,stdout=so,stderr=se,timeout=15)
    result['broadcaster_initialization_exit_code']=spawner.returncode;result['trajectory_controller_activated']=spawner.returncode==0;result['native_controllers_initialized']=['joint_state_broadcaster','scaled_joint_trajectory_controller']if spawner.returncode==0 else[];result['actual_guest_action_goal']='NOT_RUN'
   ready=result['native_driver_live']and result['original_headless_program_reverse_connected']and result['original_driver_hardware_activation_log']and result.get('broadcaster_initialization_exit_code')==0;result['native_readiness']=ready;(out/'native-driver-readiness.json').write_text(json.dumps(result,indent=2)+'\n')
   if ready:(out/'native-driver-ready').write_text('Actual original driver hardware activation and joint-state broadcaster initialization\n')
   else:raise RuntimeError('Native UR driver handshake/readiness failed; original logs retained')
   while p.poll()is None and not shutdown[0]:time.sleep(.1)
 finally:
  if p is not None and p.poll()is None:
   os.killpg(p.pid,signal.SIGINT)
   try:p.wait(timeout=5)
   except subprocess.TimeoutExpired:os.killpg(p.pid,signal.SIGKILL);p.wait(timeout=3)
  result['driver_retired_exit_code']=p.returncode if p else None;(out/'native-driver-final.json').write_text(json.dumps(result,indent=2)+'\n')
if __name__=='__main__':main()
