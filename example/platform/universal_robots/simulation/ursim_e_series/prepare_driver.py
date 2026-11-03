"""Private native driver dependencies/model expansion, no robot/application process."""
from pathlib import Path
import argparse,hashlib,json,os,shutil,subprocess,sys

# Export only the existing UR launcher namespace contract from the shared native environment.
DRIVER_NAMESPACE_ENVIRONMENT_KEYS=frozenset(['PATH', 'PYTHONDONTWRITEBYTECODE', 'PYTHONHOME', 'PYTHONPATH', 'AMENT_PREFIX_PATH', 'CMAKE_PREFIX_PATH', 'ROS_DISTRO', 'ROS_VERSION', 'RMW_IMPLEMENTATION', 'LD_LIBRARY_PATH', 'LIBGL_ALWAYS_SOFTWARE', 'GALLIUM_DRIVER', 'EGL_PLATFORM', 'LIBGL_DRIVERS_PATH', 'HOME', 'ROS_LOG_DIR'])

def sha(p):
 with Path(p).open('rb')as f:return hashlib.file_digest(f,'sha256').hexdigest()
def put(p,j):p.write_text(json.dumps(j,indent=2)+'\n')
def main():
 flags=argparse.ArgumentParser(description=__doc__);flags.add_argument('--sdk-root',required=True,type=Path);flags.add_argument('--closure',required=True,type=Path);flags.add_argument('--environment',required=True,type=Path);flags.add_argument('--output',required=True,type=Path);args=flags.parse_args();out=args.output.resolve();out.mkdir(parents=True,exist_ok=True);closure=json.loads(args.closure.read_text());native=json.loads(args.environment.read_text());root=Path(native['rootfs']);sys.path.insert(0,str(args.sdk_root/'tools/language/python'));from relink_stdlib import cgroup_budget;budget=cgroup_budget();assert root==Path(closure['rootfs'])and native['ros']=='humble'
 for row in closure['files']:
  p=Path(row['path']);assert p.is_file()and not p.is_symlink()and p.stat().st_size==row['bytes']and sha(p)==row['sha256']and p.is_relative_to(root)
 for row in closure['aliases']:
  p=Path(row['path']);assert os.readlink(p)==row['link']and str(p.resolve())==row['target']and p.resolve().is_relative_to(root)
 dest=out/'native-ros-rootfs';shutil.copytree(root,dest,symlinks=True,copy_function=shutil.copyfile);files=[];aliases=[]
 for row in closure['files']:
  old=Path(row['path']);p=dest/old.relative_to(root);assert not p.is_symlink()and sha(p)==row['sha256']and p.stat().st_ino!=old.stat().st_ino;p.chmod(old.stat().st_mode&0o777);files.append({'path':str(p),'bytes':p.stat().st_size,'sha256':row['sha256'],'mode':oct(p.stat().st_mode&0o777)})
 for row in closure['aliases']:
  p=dest/Path(row['path']).relative_to(root);assert os.readlink(p)==row['link']and p.resolve()==dest/Path(row['target']).relative_to(root);aliases.append({'path':str(p),'link':row['link'],'target':str(p.resolve())})
 prefix=dest/'opt/ros/humble';env=dict(os.environ,**{k:v.replace(str(root),str(dest))for k,v in native['environment'].items()});env.update(HOME=str(out/'home'),ROS_DOMAIN_ID=os.environ['ROS_DOMAIN_ID'],PYTHONDONTWRITEBYTECODE='1');Path(env['HOME']).mkdir();loader=native['loader'].replace(str(root),str(dest));argv=[loader,'--library-path',env['LD_LIBRARY_PATH'],str(dest/'usr/bin/python3.10'),'-B',str(prefix/'bin/xacro'),str(prefix/'share/ur_description/urdf/ur.urdf.xacro'),'ur_type:=ur5e','name:=ur5e','robot_ip:=127.0.0.1','reverse_ip:=127.0.0.1','safety_limits:=true','use_fake_hardware:=false','fake_sensor_commands:=false','headless_mode:=true','verify_robot_model:=true','script_filename:='+str(prefix/'share/ur_client_library/resources/external_control.urscript'),'input_recipe_filename:='+str(prefix/'share/ur_robot_driver/resources/rtde_input_recipe.txt'),'output_recipe_filename:='+str(prefix/'share/ur_robot_driver/resources/rtde_output_recipe.txt')]
 sys.path.insert(0,str(args.sdk_root/'tools/shared/python'));from owned_processes import OwnedProcesses
 lifecycle=OwnedProcesses();actors=[]
 try:
  with(out/'xacro.stdout').open('wb')as stdout,(out/'xacro.stderr').open('wb')as stderr:
   process=subprocess.Popen(argv,env=env,stdout=stdout,stderr=stderr);birth=(Path('/proc')/str(process.pid)/'stat').read_text().rsplit(')',1)[1].split()[19];actors.append({'pid':process.pid,'birth':birth,'process':process});lifecycle.observe()
   deadline=__import__('time').monotonic()+30
   while process.poll()is None and __import__('time').monotonic()<deadline:lifecycle.observe();__import__('time').sleep(.05)
   assert process.poll()is not None,'Original native model expansion deadline';result_code=process.returncode
 finally:
  retirement=lifecycle.retire(actors);put(out/'native-model-owned-retirement.json',retirement);assert retirement['status']=='RETIRED'

 assert result_code==0,'Original UR5e model expansion failed';xml=(out/'xacro.stdout').read_text();assert 'ur_robot_driver/URPositionHardwareInterface'in xml and 'mock_components/'not in xml and '<param name="verify_robot_model">True</param>'in xml and '<param name="headless_mode">True</param>'in xml
 inside='/ursim/.native-ros';relocated=xml.replace(str(dest),inside);(out/'ur5e.native.urdf').write_text(relocated);put(out/'ur-driver-parameters.json',{'/**':{'ros__parameters':{'robot_description':relocated,'verify_payload_on_set':True}}});controllers=(prefix/'share/ur_robot_driver/config/ur_controllers.yaml').read_text().replace('$(var tf_prefix)','').replace('$(var update_rate)','500');assert '$('not in controllers;(out/'ur-controllers.resolved.yaml').write_text(controllers);shutil.copyfile(prefix/'share/ur_robot_driver/config/ur5e_update_rate.yaml',out/'ur5e_update_rate.yaml');nsenv={k:v.replace(str(dest),inside)for k,v in env.items()if k in native['environment'] and k in DRIVER_NAMESPACE_ENVIRONMENT_KEYS};nsenv.update(PATH=inside+'/opt/ros/humble/bin:/usr/bin:/bin',HOME='/ursim/.native-home',ROS_LOG_DIR='/ursim/.evidence/ros-log',PYTHONDONTWRITEBYTECODE='1');nsenv.pop('ROS_DOMAIN_ID',None)
 put(out/'native-driver-closure.json',{'rootfs':str(dest),'files':files,'aliases':aliases,'source_closure_sha256':sha(args.closure),'source_regular_bytes_changed':False,'source_shared_install_changed':False});put(out/'native-driver-construction.json',{'format':'uwvm-native-ursim-driver-construction-v1','status':'PASS_ORIGINAL_HEADLESS_NATIVE_UR5E_MODEL_ONLY','rootfs':str(dest),'namespace_rootfs':inside,'namespace_loader':loader.replace(str(dest),inside),'namespace_environment':nsenv,'model':'ur5e','verify_robot_model':True,'use_fake_hardware':False,'headless_mode':True,'control_manager_hz':500,'xacro_argv':argv,'xacro_stdout_sha256':sha(out/'xacro.stdout'),'relocated_urdf_sha256':sha(out/'ur5e.native.urdf'),'native_packages':{'ur_robot_driver':'2.15.0','ur_description':'2.14.0','ur_client_library':'2.15.2'},'full_original_launch_executed':False,'native_driver_started':False,'vm_or_application_started':False,'production_admission':False,'scene_pass':False});print(json.dumps({'native_ur5e_model':'PASS_ORIGINAL_REAL_HARDWARE_PLUGIN','files':len(files),'aliases':len(aliases),'vm_or_application_started':False,'scene_pass':False}))
if __name__=='__main__':main()
