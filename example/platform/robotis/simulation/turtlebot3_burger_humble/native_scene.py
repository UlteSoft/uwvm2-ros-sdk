"""New headless native infrastructure composition of exact original model/driver assets.
No SDK application,teleop,planning,command generation or feedback acceptance runs here.
"""
from pathlib import Path
import argparse,hashlib,json,os,shutil,signal,subprocess,sys,time

def sha(p):
 with Path(p).open('rb')as f:return hashlib.file_digest(f,'sha256').hexdigest()
def put(p,j):p.write_text(json.dumps(j,indent=2)+'\n')
def verify(closure):
 for row in closure['files']:
  p=Path(row['path']);assert p.is_file()and not p.is_symlink()and p.stat().st_size==row['bytes']and sha(p)==row['sha256'],str(p)
 for row in closure['aliases']:assert os.readlink(row['path'])==row['link']and str(Path(row['path']).resolve())==row['target']
def main():
 case=sys.argv[1];assert case=='turtlebot3';flags=argparse.ArgumentParser(description='Official Humble Burger native driver/simulator only; must use the admitted common producer');flags.add_argument('--sdk-root',required=True,type=Path);flags.add_argument('--ready-file',type=Path);flags.add_argument('--stop-file',type=Path);flags.add_argument('--lifetime-seconds',type=float,default=60);flags.add_argument('--world',choices=['empty_world.world','turtlebot3_world.world','turtlebot3_dqn_stage1.world'],default='turtlebot3_dqn_stage1.world');options=flags.parse_args(sys.argv[5:]);assert .1<=options.lifetime_seconds<=300;shutdown=[False];signal.signal(signal.SIGTERM,lambda *_:shutdown.__setitem__(0,True));signal.signal(signal.SIGINT,lambda *_:shutdown.__setitem__(0,True));out=Path(os.environ['UWVM_SDK_OUTPUT']);closure=json.loads(Path(sys.argv[2]).read_text());verify(closure);native=json.loads(Path(sys.argv[3]).read_text());root=Path(native['rootfs']);ros=native['ros'];assert ros=='humble';prefix=root/'opt/ros'/ros;source_manifest=json.loads(Path(sys.argv[4]).read_text());key={'scout':'agilex-ugv-humble','rrbot':'rrbot-ros2-control-jazzy','turtlebot3':'turtlebot3-sim-humble'}[case];source=next(x for x in source_manifest['sources']if x['id']==key);src=Path(source['source_root'])
 for row in source['files']:
  p=src/row['path'];assert p.is_file()and not p.is_symlink()and p.stat().st_size==row['bytes']and sha(p)==row['sha256'],str(p)
 env=dict(os.environ,**native['environment']);home=out/'home';home.mkdir();env.update(HOME=str(home),XDG_CACHE_HOME=str(home/'.cache'),ROS_LOG_DIR=str(out/'ros-log'),GAZEBO_MODEL_DATABASE_URI='',OMP_NUM_THREADS='2',OPENBLAS_NUM_THREADS='2',GZ_IP='127.0.0.1',QT_QPA_PLATFORM='offscreen')
 # Private source install layout mirrors only original data-install destinations.
 stage=out/'source-prefix';index=stage/'share/ament_index/resource_index/packages';index.mkdir(parents=True)
 def package(name,mapping):
  dest=stage/'share'/name;dest.mkdir(parents=True);(index/name).write_text('')
  for target,original in mapping.items():
   link=dest/target;link.parent.mkdir(parents=True,exist_ok=True);link.symlink_to(original,target_is_directory=original.is_dir())
  return dest
 if case=='scout':
  desc=src/'scout/scout_description';package('scout_description',{p.name:p for p in desc.iterdir()});xacro=desc/'urdf/scout_v2.xacro';entity='scout_v2';world=root/'usr/share/gazebo-11/worlds/empty.world';env.update(GAZEBO_RESOURCE_PATH=str(root/'usr/share/gazebo-11'),GAZEBO_MODEL_PATH=os.pathsep.join([str(root/'usr/share/gazebo-11/models'),str(desc/'models')]),GAZEBO_PLUGIN_PATH=str(prefix/'lib'))
 elif case=='rrbot':
  common=src/'ros2_control_demo_description';package('ros2_control_demo_description',{p.name:p for p in common.iterdir()});nine=src/'example_9';mapping={n:nine/'description'/n for n in ['urdf','ros2_control','gazebo']};mapping.update(config=nine/'bringup/config',package_xml=nine/'package.xml');example=package('ros2_control_demo_example_9',mapping);xacro=example/'urdf/rrbot.urdf.xacro';entity='rrbot_system_position';world=prefix/'opt/gz_sim_vendor/share/gz/gz-sim8/worlds/empty.sdf'
 else:
  tb=src/'turtlebot3_gazebo';package('turtlebot3_gazebo',{p.name:p for p in tb.iterdir()});entity='burger';world=tb/'worlds'/options.world;spawn_pose={'empty_world.world':(0.0,0.0,0.01),'turtlebot3_world.world':(-2.0,-0.5,0.01),'turtlebot3_dqn_stage1.world':(1.1,0.0,0.01)}[options.world];env.update(TURTLEBOT3_MODEL='burger',GAZEBO_RESOURCE_PATH=str(root/'usr/share/gazebo-11'),GAZEBO_MODEL_PATH=os.pathsep.join([str(tb/'models'),str(root/'usr/share/gazebo-11/models')]),GAZEBO_PLUGIN_PATH=str(prefix/'lib'));description=next(row for row in source_manifest['sources']if row['id']=='turtlebot3-humble');description_root=Path(description['source_root']);
  for row in description['files']:
   file=description_root/row['path'];assert file.is_file()and not file.is_symlink()and file.stat().st_size==row['bytes']and sha(file)==row['sha256']
  task_contract=options.sdk_root/'share/platform/robotis/py/ros2/humble/upstream_obstacle_detection/task-scene-requirements.json';task_scene=json.loads(task_contract.read_text());selected=task_scene['selected_original_obstacle_world'];spawn=task_scene['proposed_spawn']
  if options.world=='turtlebot3_dqn_stage1.world':
   assert selected['commit']==source['commit']and selected['path']=='turtlebot3_gazebo/worlds/'+options.world and sha(world)==selected['sha256']and sha(tb/'models/turtlebot3_dqn_world/model.sdf')==selected['model_sha256']and[spawn[k]for k in ['x','y','z','yaw_rad']]==[1.1,0.0,0.01,0.0],'Exact frozen original task world/spawn required'
  desc=description_root/'turtlebot3_description';package('turtlebot3_description',{p.name:p for p in desc.iterdir()});env['GZ_SIM_RESOURCE_PATH']=os.pathsep.join([str(tb/'models'),str(tb),env.get('GZ_SIM_RESOURCE_PATH','')])
 env['AMENT_PREFIX_PATH']=os.pathsep.join([str(stage),str(prefix)]);env['CMAKE_PREFIX_PATH']=os.pathsep.join([str(stage),env.get('CMAKE_PREFIX_PATH','')]);env['GZ_SIM_SYSTEM_PLUGIN_PATH']=os.pathsep.join([str(prefix/'lib'),env.get('GZ_SIM_SYSTEM_PLUGIN_PATH','')]);env['SDF_PATH']=str(prefix/'opt/sdformat_vendor/share/sdformat14');env['GZ_SIM_SYSTEM_PLUGIN_PATH']=os.pathsep.join([env['GZ_SIM_SYSTEM_PLUGIN_PATH'],*[str(p)for p in prefix.glob('opt/*/lib/gz-sim-*/plugins')]]);env['GZ_SIM_PHYSICS_ENGINE_PATH']=os.pathsep.join(str(p)for p in prefix.glob('opt/*/lib/gz-physics-*/engine-plugins'));env['GZ_RENDERING_ENGINE_PATH']=os.pathsep.join(str(p)for p in prefix.glob('opt/*/lib/gz-rendering-*/engine-plugins'));env['GZ_RENDERING_ENGINE_PATH']=os.pathsep.join([env['GZ_RENDERING_ENGINE_PATH'],str(prefix/'opt/gz_rendering_vendor/lib/gz-rendering-8/engine-plugins')]);env['GZ_SIM_RENDER_ENGINE_PATH']=env['GZ_RENDERING_ENGINE_PATH'];env['GZ_RENDERING_RESOURCE_PATH']=str(prefix/'opt/gz_rendering_vendor/share/gz/gz-rendering8');env['__EGL_VENDOR_LIBRARY_FILENAMES']=str(root/'usr/share/glvnd/egl_vendor.d/50_mesa.json');env['ALSOFT_DRIVERS']='null';env['GAZEBO_IP']='127.0.0.1';env['GZ_SIM_RESOURCE_PATH']=os.pathsep.join([str(stage/'share'),env.get('GZ_SIM_RESOURCE_PATH','')]);loader=native['loader'];version='3.10'if ros=='humble'else'3.12';python=root/('usr/bin/python'+version)
 def elf(file,*args):return[loader,'--library-path',env['LD_LIBRARY_PATH'],str(file),*map(str,args)]
 def py(file,*args):return elf(python,'-B',file,*args)
 # Native resource precondition only; never a VM/production permission grant.
 cgroup_relative=Path('/proc/self/cgroup').read_text().strip().split(':',2)[-1];current=Path('/sys/fs/cgroup')/cgroup_relative.lstrip('/');budget=[];shared=False
 for ancestor in [current,*current.parents]:
  if not ancestor.is_relative_to('/sys/fs/cgroup'):break
  if (ancestor/'memory.max').exists():
   maximum=(ancestor/'memory.max').read_text().strip();swap=(ancestor/'memory.swap.max').read_text().strip();budget.append({'path':str(ancestor),'memory_max':maximum,'swap_max':swap})
   assert swap=='0'and maximum!='max'and int(maximum)<=68719476736,'Native actor must be born under bounded64GiB/zero-swap budget'
   if int(maximum)==68719476736:shared=True;break
 assert shared and str(os.getpid())in(current/'cgroup.procs').read_text().split(),'Actual native actor/common ancestry required'
 shared=options.sdk_root.resolve(strict=True)/'tools/shared/python';expected_shared={'owned_processes.py': '40777b1336d5b166c9f96e6dc2df15e733c1e06cf71de5bd9ef451c40bae1268', 'runtime_boundary.py': 'd9b6f1357e247e46ef1212faad4542f283c57230f1670c9c9114b3666485e484'}
 for name,expected in expected_shared.items():assert sha(shared/name)==expected,'Shared lifecycle source identity differs'
 sys.path.insert(0,str(shared));from owned_processes import OwnedProcesses
 lifecycle=OwnedProcesses();lifecycle_actors=[]
 records=[];running=[];tracked=[];handles=[];commands=[]
 def execute(name,argv,role,timeout=45,background=False):
  assert not shutdown[0],'Native startup cancelled before child spawn'
  stdout=(out/(name+'.stdout')).open('wb');stderr=(out/(name+'.stderr')).open('wb');handles.extend([stdout,stderr]);p=subprocess.Popen(argv,env=env,stdout=stdout,stderr=stderr,start_new_session=True);rec={'name':name,'role':role,'argv':argv,'pid':p.pid,'birth_ticks':None,'cgroup':None}
  proc=Path('/proc')/str(p.pid)
  try:rec.update(birth_ticks=int((proc/'stat').read_text().rsplit(')',1)[1].split()[19]),cgroup=(proc/'cgroup').read_text())
  except FileNotFoundError:pass
  records.append(rec);tracked.append((p,rec));lifecycle_actors.append({'pid':p.pid,'birth':str(rec['birth_ticks']),'process':p});lifecycle.observe();commands.append({'name':name,'argv':argv,'role':role})
  if background:running.append((p,rec));return p
  deadline=time.monotonic()+timeout
  while p.poll()is None:
   lifecycle.observe()
   if time.monotonic()>=deadline:raise TimeoutError('Native initialization deadline: '+name)
   time.sleep(.05)
  rec['exit_code']=p.returncode;stdout.flush();stderr.flush();assert p.returncode==0,(name,p.returncode);return p
 result={'case':case,'source_commit':source['commit'],'source_repository':source['repository'],'native_only':True,'application_executed':False,'commands_generated':False,'guest_feedback_accepted':False,'scenario_pass':False,'processes':records,'composition_origin':'New explicit CPU/headless infrastructure composition using exact original models/plugins/configuration. Not an execution of the original GUI launch file.','endpoint_readiness':False}
 try:
  urdf=out/'robot.urdf'
  if case=='turtlebot3':shutil.copyfile(src/'turtlebot3_gazebo/urdf/turtlebot3_burger.urdf',urdf)
  else:
   execute('xacro',py(prefix/'bin/xacro',xacro,*(['use_gazebo:=true']if case=='rrbot'else[])),'Original model expansion only')
   shutil.copyfile(out/'xacro.stdout',urdf)
  text=urdf.read_text();assert '<robot'in text
  if case=='rrbot':assert 'gz_ros2_control/GazeboSimSystem'in text and 'RRBotSystemPositionOnlyHardware'not in text,'Real Gazebo hardware path required'
  params=out/'robot-state-publisher.yaml';put(params,{'/**':{'ros__parameters':{'robot_description':text,'use_sim_time':True}}})
  if ros=='humble':server=execute('native-simulator',elf(root/'usr/bin/gzserver','--verbose','-s','libgazebo_ros_init.so','-s','libgazebo_ros_factory.so',world),'Official Gazebo11 physics and native driver factory',background=True)
  else:
   server=execute('native-simulator',elf(root/'usr/bin/ruby3.2',prefix/'opt/gz_tools_vendor/bin/gz','sim','--headless-rendering','-s','-r','-v','3',world),'Official Gazebo Harmonic physics/sensors; software rendering',background=True)
  rsp=execute('native-model-tf',elf(prefix/'lib/robot_state_publisher/robot_state_publisher','--ros-args','--params-file',params),'Native model-description and driver TF infrastructure only',background=True)
  time.sleep(3);assert server.poll()is None and rsp.poll()is None,'Native simulator/model infrastructure exited before spawn'
  if case in ['scout','turtlebot3']:
   model=urdf if case=='scout'else src/'turtlebot3_gazebo/models/turtlebot3_burger/model.sdf'
   execute('spawn-original-model',py(prefix/'lib/gazebo_ros/spawn_entity.py','-entity',entity,'-file',model,'-x',str(spawn_pose[0]),'-y',str(spawn_pose[1]),'-z',str(spawn_pose[2]),'-Y','0'),'Initialize original actual Gazebo11 model/plugins only; no SDK application commands',timeout=60)
   if case=='turtlebot3':
    execute('native-topic-list',elf(root/'usr/bin/gz','topic','--list'),'Native simulator transport inspection only; no ROS app callback')
    topics=(out/'native-topic-list.stdout').read_text().splitlines();scan_topics=[t.strip()for t in topics if 'burger'in t and t.strip().endswith('/scan')];assert len(scan_topics)==1,scan_topics
    execute('native-ray-scan-packets',elf(root/'usr/bin/gz','topic','--echo',scan_topics[0],'--duration','3'),'Actual original Gazebo CPU ray sensor packets; supporting driver readiness only,not guest feedback acceptance',timeout=15)
    import re
    packets=(out/'native-ray-scan-packets.stdout').read_text();ranges=len(re.findall(r'^\s*ranges:',packets,re.MULTILINE));assert ranges>=360 and ranges%360==0,(ranges,scan_topics);result.update(native_sensor_topic=scan_topics[0],native_range_values=ranges,native_scan_packets=ranges//360,original_humble_ros_command_type='geometry_msgs/msg/Twist',guest_feedback_accepted=False)
    import math
    values=[float(value)for value in re.findall(r'^\s*ranges:\s*(\S+)',packets,re.MULTILINE)];front=values[:90]+values[270:360];finite=[v for v in front if math.isfinite(v)];result['native_initial_scan_statistics']={'first_frame_ranges':len(values[:360]),'front_quadrants_finite_min_m':min(finite)if finite else None,'front_nonfinite_count':sum(not math.isfinite(v)for v in front),'data_role':'Native sensor observation only,not a guest callback or task decision'}
  else:
   execute('spawn-original-model',elf(prefix/'lib/ros_gz_sim/create','-name',entity,'-file',urdf if case=='rrbot'else src/'turtlebot3_gazebo/models/turtlebot3_burger/model.sdf','-x','0','-y','0','-z','0'if case=='rrbot'else'0.01'),'Initialize actual official model/physics/plugin only',timeout=60)
   if case=='rrbot':
    bridge=execute('native-clock-bridge',elf(prefix/'lib/ros_gz_bridge/parameter_bridge','/clock@rosgraph_msgs/msg/Clock[gz.msgs.Clock'),'Native simulator clock transport',background=True)
    execute('native-controller-initialization',py(prefix/'lib/controller_manager/spawner','joint_state_broadcaster','forward_position_controller','--param-file',stage/'share/ros2_control_demo_example_9/config/rrbot_controllers.yaml'),'Initialize original physical-driver controllers; no control application',timeout=60)
   else:execute('native-sensor-command-bridge',elf(prefix/'lib/ros_gz_bridge/parameter_bridge','--ros-args','-p','config_file:='+str(src/'turtlebot3_gazebo/params/turtlebot3_burger_bridge.yaml')),'Original model sensor/state and command transport only; no command generation',background=True)
  time.sleep(7);assert all(p.poll()is None for p,_ in running),'Native endpoint exited during readiness window';result['endpoint_readiness']=True
  ready={'format':'sdk-native-turtlebot3-humble-endpoint-readiness-v1','pid':os.getpid(),'birth_ticks':int(Path('/proc/self/stat').read_text().rsplit(')',1)[1].split()[19]),'cgroup':Path('/proc/self/cgroup').read_text(),'budget_ancestry':budget,'script_sha256':sha(Path(__file__).resolve()),'source_commit':source['commit'],'robot':'Burger','ros_distribution':'humble','command_type':'geometry_msgs/msg/Twist','command_topic':'/cmd_vel','odom_topic':'/odom','scan_topic':'/scan','ros_domain_id':os.environ['ROS_DOMAIN_ID'],'native_processes':[row for process,row in running if process.poll()is None],'native_sensor_range_values':result['native_range_values'],'source_model_sha256':sha(src/'turtlebot3_gazebo/models/turtlebot3_burger/model.sdf'),'world':options.world,'source_world_sha256':sha(world),'original_task_contract_sha256':sha(task_contract),'matches_original_task_world':options.world=='turtlebot3_dqn_stage1.world','spawn_yaw_rad':0.0,'original_world_spawn_pose':list(spawn_pose),'application_executed':False,'production_admission':False,'scenario_pass':False}
  if options.ready_file:
   options.ready_file.parent.mkdir(parents=True,exist_ok=True);temporary=options.ready_file.with_suffix('.pending');put(temporary,ready);temporary.rename(options.ready_file)
  result['ready']=ready;deadline=time.monotonic()+options.lifetime_seconds
  while time.monotonic()<deadline and not shutdown[0]and not(options.stop_file and options.stop_file.exists()):
   lifecycle.observe();assert all(process.poll()is None for process,_ in running),'Native endpoint actor died during live interval';time.sleep(.05)
  result['native_stop_reason']='signal'if shutdown[0]else'stop_file'if options.stop_file and options.stop_file.exists()else'lifetime_expired'
 except BaseException as error:result['failure']=str(error);result['endpoint_readiness']=False;raise
 finally:
  retirement=lifecycle.retire(lifecycle_actors);result['owned_process_retirement']=retirement
  for process,record in tracked:record.update(exit_code=process.returncode,retired=not(Path('/proc')/str(process.pid)).exists())
  for h in handles:h.close()
  put(out/'native-readiness.json',result);put(out/'native-commands.json',commands);put(out/'native-environment.json',{'rootfs':str(root),'environment':{k:env[k]for k in native['environment']if k in env},'case':case,'native_only':True,'scenario_pass':False})
  assert retirement['status']=='RETIRED','Shared lifecycle could not prove full native descendant retirement'
 print(json.dumps({'case':case,'native_endpoint_readiness':result['endpoint_readiness'],'scenario_pass':False,'processes':[(r['name'],r.get('exit_code'))for r in records]}))
if __name__=='__main__':main()
