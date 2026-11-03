# SPDX-License-Identifier: Apache-2.0
"""UR scope of the ONE native constructor; no downloader, installer or runner CLI.

All archives use native_ros.BlobCache and all rootfs writes use its Extractor.
The public vendor model constructor supplies the original UR model/configuration.
This prepares native infrastructure inputs, never the Wasm application or scene.
"""
import hashlib,json,os,stat,sys,tarfile
from pathlib import Path

SCENE=Path('example/platform/universal_robots/simulation/ursim_e_series')
def sha(path):
    with path.open('rb') as stream:return hashlib.file_digest(stream,'sha256').hexdigest()
def pin(path):return {'path':str(path),'bytes':path.stat().st_size,'sha256':sha(path)}
def write(path,value):path.write_text(json.dumps(value,indent=2)+'\n')
def load(sdk,common_file,common):
    folder=sdk/SCENE
    supplement_file=folder/'native-ur-humble-supplement.lock.json'
    image_file=folder/'ursim-image.lock.json';assets_file=folder/'native-assets.lock.json'
    supplement=json.loads(supplement_file.read_bytes());image=json.loads(image_file.read_bytes());assets=json.loads(assets_file.read_bytes())
    if supplement.get('format')!='uwvm-native-ur-humble-supplement-lock-v1' or supplement['base_common_lock']!={'path':str(common_file.relative_to(sdk)),'sha256':sha(common_file)} or supplement['base_image_manifest']!=common['image']['manifest_digest']:
        raise ValueError('Exact UR dependency supplement relative to this shared base required')
    if supplement['package_count']!=54 or len(supplement['packages'])!=54 or len({r['name'] for r in supplement['packages']})!=54:
        raise ValueError('Complete exact54 UR supplement required')
    if image.get('format')!='uwvm-official-ursim-image-lock-v1' or image['registry']!='https://registry-1.docker.io' or image['repository']!='universalrobots/ursim_e-series' or image['manifest_digest']!=assets['official_image_manifest'] or image['manifest_content_sha256']!=image['manifest_digest'].removeprefix('sha256:'):
        raise ValueError('Exact original official URSim image and native assets required')
    if sum(r['bytes'] for r in supplement['packages'])!=supplement['exact_payload_bytes']:raise ValueError('Complete supplement byte extent differs')
    packages=[]
    for original in supplement['packages']:
        if original['architecture'] not in ('amd64','all'):raise ValueError('UR native package architecture differs')
        row={'package':original['name'],'version':original['version'],'architecture':original['architecture'],'bytes':original['bytes'],'sha256':original['sha256'],'url':original['publisher_url'],'authenticated_index_sha256':original['authenticated_index_sha256']}
        # Same signed package bytes through the official ROS2 main pool TLS URL.
        tail=row['url'].split('/ubuntu/',1)
        if len(tail)==2 and ('packages.ros.org/' in tail[0] or 'repo.ros2.org/' in tail[0]):
            row['download_url']='https://repo.ros2.org/ubuntu/main/'+tail[1]
        packages.append(row)
    return {'folder':folder,'supplement':supplement,'image':image,'assets':assets,
            'packages':packages,'input_pins':[pin(p) for p in (supplement_file,image_file,assets_file,folder/'prepare_driver.py')],
            'supplement_file':supplement_file,'image_file':image_file}
def normalize_aliases(root,Extractor):
    changed=[]
    for p in sorted(root.rglob('*')):
        if p.is_symlink() and os.readlink(p).startswith('/'):
            previous=os.readlink(p);destination=Extractor(root).resolve(tuple(p.relative_to(root).parts))
            if not destination.is_relative_to(root):raise ValueError('Native alias leaves its root')
            relative=os.path.relpath(destination,p.parent)
            p.unlink();os.symlink(relative,p);changed.append({'path':str(p.relative_to(root)),'original_link':previous,'relocated_link':relative})
    for p in root.rglob('*'):
        if p.is_symlink() and not p.resolve().is_relative_to(root):raise ValueError('Native alias still leaves private root')
    return changed
def closure(root):
    files=[];aliases=[]
    for p in sorted(root.rglob('*')):
        if p.is_symlink():
            target=p.resolve()
            if not target.is_relative_to(root):raise ValueError('Nonconfined native alias')
            aliases.append({'path':str(p),'link':os.readlink(p),'target':str(target)})
        elif p.is_file():files.append({**pin(p),'mode':oct(p.stat().st_mode&0o777)})
    return {'rootfs':str(root),'ros':'humble','files':files,'aliases':aliases}
def environment(root,Extractor):
    prefix=root/'opt/ros/humble'
    dirs=[prefix/'lib',prefix/'lib/x86_64-linux-gnu',root/'usr/lib/x86_64-linux-gnu',root/'lib/x86_64-linux-gnu',root/'usr/lib',
          root/'usr/lib/x86_64-linux-gnu/pulseaudio',root/'usr/lib/x86_64-linux-gnu/blas',root/'usr/lib/x86_64-linux-gnu/lapack',root/'usr/lib/x86_64-linux-gnu/gazebo-11/plugins']
    values={'PYTHONDONTWRITEBYTECODE':'1','PYTHONHOME':str(root/'usr'),
            'PYTHONPATH':':'.join(map(str,[prefix/'local/lib/python3.10/dist-packages',prefix/'lib/python3.10/site-packages',root/'usr/lib/python3/dist-packages'])),
            'AMENT_PREFIX_PATH':str(prefix),'CMAKE_PREFIX_PATH':str(prefix),'ROS_DISTRO':'humble','ROS_VERSION':'2',
            'RMW_IMPLEMENTATION':'rmw_cyclonedds_cpp','LD_LIBRARY_PATH':':'.join(map(str,dirs)),
            'PATH':str(prefix/'bin')+':/usr/bin:/bin','LIBGL_ALWAYS_SOFTWARE':'1'}
    loader=Extractor(root).resolve(('lib64','ld-linux-x86-64.so.2'))
    if not loader.is_file():raise ValueError('Original native ELF loader missing')
    return {'ros':'humble','rootfs':str(root),'loader':str(loader),'environment':values,
            'scope':'Exact sharedHumble+54originalURpackages; native infrastructure only','production_admission':False}
def finish(sdk,out,root,scope,blob,Extractor,command,report,save,bwrap):
    supplement=scope['supplement'];image=scope['image'];assets=scope['assets'];folder=scope['folder']
    report['scope']='ur';report['ur_source_inputs']=scope['input_pins'];report['ur_supplement_packages']=scope['packages'];save()
    argv=[str(bwrap),'--unshare-user','--uid','0','--gid','0','--cap-drop','ALL','--unshare-pid','--unshare-ipc','--unshare-uts',
          '--bind',str(root),'/','--proc','/proc','--dev','/dev','--tmpfs','/tmp','--tmpfs','/run','--clearenv',
          '--setenv','PATH','/usr/sbin:/usr/bin:/sbin:/bin','--','/sbin/ldconfig']
    command('native-linker-cache',argv)
    report['native_alias_metadata_relocations']=normalize_aliases(root,Extractor);save()
    native_closure=closure(root);native_closure.update(common_source_lock_sha256=report['source_lock_sha256'],supplement_sha256=sha(scope['supplement_file']),original_vendor_regular_payloads_modified=False,generated_linker_cache=pin(root/'etc/ld.so.cache'),alias_metadata_relocated_only=True)
    closure_file=out/'native-runtime-closure.json';environment_file=out/'native-process-environment.json'
    write(closure_file,native_closure);write(environment_file,environment(root,Extractor))
    urroot=out/'ursim-rootfs';urroot.mkdir();extract=Extractor(urroot)
    config=image['config'];config_row={'digest':config['digest'],'bytes':config['size']}
    config_path=blob(config_row,image['registry']+'/v2/'+image['repository']+'/blobs/'+config['digest'],image['repository'])
    config_value=json.loads(config_path.read_bytes())
    if config_value.get('architecture')!='amd64' or config_value.get('os')!='linux':raise ValueError('Exact original URSim linux/amd64 config required')
    report['ursim_original_config']={'sha256':config['digest'].removeprefix('sha256:'),'bytes':config['size']}
    for row in image['layers']:
        endpoint=image['registry']+'/v2/'+image['repository']+'/blobs/'+row['digest']
        if row['url']!=endpoint:raise ValueError('URSim original registry URL differs')
        archive=blob(row,endpoint,image['repository']);extract.whiteouts(archive)
        with tarfile.open(archive,'r:gz') as tar:details=extract.extract(tar)
        report.setdefault('ursim_original_layers',[]).append({'index':row['index'],'digest':row['digest'],**details});save()
    report['ursim_alias_metadata_relocations']=normalize_aliases(urroot,Extractor)
    vendor_files=[];vendor_aliases=[]
    for p in sorted(urroot.rglob('*')):
        if p.is_symlink():vendor_aliases.append({'path':str(p.relative_to(urroot)),'target':os.readlink(p)})
        elif p.is_file():vendor_files.append({'path':str(p.relative_to(urroot)),'bytes':p.stat().st_size,'sha256':sha(p),'mode':oct(p.stat().st_mode&0o7777)})
    if len(vendor_files)!=assets['rootfs_regular_files'] or len(vendor_aliases)!=assets['rootfs_symlinks']:
        raise ValueError('Original URSim full rootfs inventory differs from source asset lock')
    ursim_closure=out/'ursim-rootfs-closure.json'
    write(ursim_closure,{'rootfs':str(urroot),'official_image_manifest':image['manifest_digest'],
          'files':vendor_files,'symlinks':vendor_aliases,'source_lock_sha256':sha(scope['image_file']),
          'original_regular_payload_bytes_modified':False,'unprivileged_metadata_normalization_only':True,'native_image_payload_redistributed':False})
    model=out/'ur-driver-model'
    command('prepare-original-ur-model',[sys.executable,'-I','-S','-B',str(folder/'prepare_driver.py'),'--sdk-root',str(sdk),'--closure',str(closure_file),'--environment',str(environment_file),'--output',str(model)],600)
    model_report=json.loads((model/'native-driver-construction.json').read_bytes())
    if model_report['status']!='PASS_ORIGINAL_HEADLESS_NATIVE_UR5E_MODEL_ONLY' or model_report['use_fake_hardware'] is not False or model_report['headless_mode'] is not True:raise ValueError('Original real-hardware UR model constructor failed')
    bundle={'format':'uwvm-native-ursim-inputs-v1','official_image_manifest':image['manifest_digest'],
            'ursim_closure':pin(ursim_closure),'driver_closure':pin(model/'native-driver-closure.json'),
            'driver_construction':pin(model/'native-driver-construction.json'),
            'driver_configuration_files':[pin(model/name) for name in ('ur-driver-parameters.json','ur5e_update_rate.yaml','ur-controllers.resolved.yaml')],
            'bwrap':pin(bwrap)}
    write(out/'ursim-inputs.json',bundle)
    report.update(status='PINNED_UR_NATIVE_COMMON_CONSTRUCTION_AND_ORIGINAL_MODEL_PASS_SCENE_NOT_RUN',
                  rootfs=str(root),ursim_rootfs=str(urroot),native_runtime_closure=pin(closure_file),
                  native_environment=pin(environment_file),ursim_input_bundle=pin(out/'ursim-inputs.json'),
                  ursim_regular_files=len(vendor_files),ursim_symlinks=len(vendor_aliases),
                  ur_native_model=pin(model/'native-driver-construction.json'),
                  original_ursim_regular_payload_bytes_modified=False,generated_native_linker_cache=pin(root/'etc/ld.so.cache'),native_driver_or_controller_started=False,
                  native_application_executed=False,production_admission=False,official_scene=False);save()

