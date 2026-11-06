from pathlib import Path
import hashlib,json,os,pwd,shutil,time,xml.etree.ElementTree as ET
E=Path(__file__).resolve().parent
def need(ok,message):
 if not ok:raise RuntimeError(message)
def prepare(run):
 import yaml
 assets=json.loads((E/'model-assets.json').read_text())
 root=Path(os.environ['WEBOTS_HOME'])
 # Webots R2025a caches remote asset URLs by SHA1(URL); only verified original
 # bytes are copied into this invocation's owned cache. No network is required.
 cache_home=run/'webots-cache'
 cache=cache_home/'Cyberbotics/Webots/assets';cache.mkdir(parents=True,exist_ok=False)
 os.environ['XDG_CACHE_HOME']=str(cache_home)
 cached=[]
 for entry in assets['files']:
  relative=Path(entry['path'])
  need(not relative.is_absolute() and '..' not in relative.parts,'Invalid model asset path')
  content=(root/relative).read_bytes()
  need(len(content)==entry['bytes'] and hashlib.sha256(content).hexdigest()==entry['sha256'],'Original model asset differs: '+str(relative))
  url='https://raw.githubusercontent.com/cyberbotics/webots/R2025a/'+entry['path']
  destination=cache/hashlib.sha1(url.encode('utf-8')).hexdigest()
  destination.write_bytes(content)
  cached.append({'url':url,'path':str(destination),'sha256':entry['sha256']})
 names=[c+' motor' for c in 'ABCDEF']
 doc=ET.parse(E/'abb-driver.urdf');control=doc.getroot().find('ros2_control')
 for joint in list(control.findall('joint')):
  if joint.attrib['name'] not in names:control.remove(joint)
 description=run/'robot.urdf';doc.write(description,encoding='unicode',xml_declaration=True)
 data=yaml.safe_load((E/'abb-controller.yaml').read_text())
 data['abb/abb_joint_trajectory_controller']['ros__parameters']['joints']=names
 data['abb/abb_joint_state_broadcaster']={'ros__parameters':{'joints':list(names),'interfaces':['position']}}
 controllers=run/'controllers.yaml';controllers.write_text(yaml.safe_dump(data,sort_keys=False))
 world=run/'abb.wbt';shutil.copy2(E/'abb.wbt',world)
 return {'offline_assets':cached,'derived_input_sha256':{str(p.name):hashlib.sha256(p.read_bytes()).hexdigest() for p in (description,controllers,world)},'description':str(description),'controllers':str(controllers),'world':str(world),'controller_name':'abb_joint_trajectory_controller','joint_names':names,'original_model_commit':assets['commit'],'assets':assets['files'],'scope':'Original ABB IRB4600-40 arm and original native Webots physics, six arm joints; gripper transport not qualified'}
def start_native(run,cfg,report,launch,base):
 scene=report['scene']
 os.environ['USER']=pwd.getpwuid(os.getuid()).pw_name
 pinned={Path(row['path']).resolve() for row in cfg['native']['files']}
 for role in ('webots','python'):
  base.need(Path(cfg['native'][role]).resolve() in pinned,'Pin the native '+role+' file')
 base.need((Path(os.environ['WEBOTS_HOME'])/'bin/webots-bin').resolve()==Path(cfg['native']['webots']).resolve(),'WEBOTS_HOME and pinned executable differ')
 os.environ.update(UWVM_ABB_DESCRIPTION=scene['description'],UWVM_ABB_CONFIGURATION=scene['controllers'],UWVM_ABB_WEBOTS_WORLD=scene['world'],UWVM_ABB_XVFB_ERROR_LOG=str(run/'xvfb.stderr'))
 proc=launch('webots_scene',[cfg['native']['python'],str(Path(__file__).with_name('scene.launch.py'))])
 stdout=run/'webots_scene.stdout';deadline=time.monotonic()+75
 while True:
  base.need(proc.poll() is None and time.monotonic()<deadline,'Original Webots scene did not activate its controllers')
  output=stdout.read_text()
  if all('Configured and activated '+name in output for name in ['abb_joint_trajectory_controller','abb_joint_state_broadcaster']):break
  time.sleep(.05)
 selected={}
 for row in base.session_members(proc.pid):
  try:
   actual=base.process(row['pid'])
   for role in ('controller_manager','webots','robot_state_publisher'):
    if actual['executable_sha256']==base.digest(cfg['native'][role]):selected[role]=actual
  except (FileNotFoundError,ProcessLookupError):pass
 base.need(set(selected)=={'controller_manager','webots','robot_state_publisher'},'Actual native processes were not observed')
 observations=[]
 for role,actual in selected.items():
  base.check_resource_boundary(actual)
  status=(Path('/proc')/str(actual['pid'])/'status').read_text()
  fields=dict(line.split(':',1) for line in status.splitlines() if ':' in line)
  base.need(all(int(fields[k],16)==0 for k in ('CapEff','CapPrm','CapBnd','CapAmb')) and fields['NoNewPrivs'].strip()=='1' and fields['Seccomp'].strip()=='2','Native security boundary changed')
  maps=(Path('/proc')/str(actual['pid'])/'maps').read_text()
  if role=='controller_manager':base.need(str(Path(cfg['native']['controller_plugin']).resolve()) in maps,'Original trajectory controller plugin is not mapped')
  observations.append({'role':role,'actual':actual,'security_status':status,'maps':maps})
 report['native_observations']=observations
