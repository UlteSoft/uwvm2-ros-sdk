# SPDX-License-Identifier: Apache-2.0
"""Construct pinned official native Humble infrastructure; never start a robot app.

Uses the immutable official OCI base to provide its own original dpkg-deb
reader, so extracting dependencies cannot replace that live reader. bwrap is an
explicit trusted OS prerequisite; existing shared Python resolution is used by
native_ros.lua. Native application/official scene/source approval are separate.
"""
import argparse,fcntl,hashlib,json,os,re,shutil,stat,subprocess,sys,tarfile,time,urllib.parse,urllib.request
from pathlib import Path,PurePosixPath

def sha(path):
    with path.open('rb') as stream:return hashlib.file_digest(stream,'sha256').hexdigest()
def safe_parts(name):
    # Backslash is an ordinary filename byte on the explicitly Linux/POSIX host.
    if name.startswith('/') or '\0' in name:raise ValueError('Nonconfined archive path: '+repr(name))
    parts=tuple(p for p in PurePosixPath(name).parts if p not in ('','.'))
    if '..' in parts:raise ValueError('Nonconfined archive parent')
    return parts
class Extractor:
    """Resolve all archive symlinks relative to the container root, never host /."""
    def __init__(self,root):self.root=root
    def resolve(self,parts):
        pending=list(parts);resolved=[];links=0
        while pending:
            part=pending.pop(0)
            if part in ('','.','/'):continue
            if part=='..':
                if not resolved:raise ValueError('Container-root symlink escape')
                resolved.pop();continue
            candidate=self.root.joinpath(*resolved,part)
            if candidate.is_symlink():
                links+=1
                if links>64:raise ValueError('Container symlink cycle')
                link=os.readlink(candidate)
                if link.startswith('/'):resolved=[]
                pending=list(PurePosixPath(link.lstrip('/')).parts)+pending
            else:resolved.append(part)
        return self.root.joinpath(*resolved)
    def remove(self,path):
        if path.is_symlink() or path.is_file():path.unlink()
        elif path.is_dir():shutil.rmtree(path)
    def whiteouts(self,path):
        with tarfile.open(path,'r:gz') as archive:
            for item in archive:
                parts=safe_parts(item.name)
                if not parts or not parts[-1].startswith('.wh.'):continue
                parent=self.resolve(parts[:-1]);name=parts[-1]
                if name=='.wh..wh..opq':
                    if parent.is_dir():
                        for child in parent.iterdir():self.remove(child)
                else:self.remove(parent/name[4:])
    def extract(self,archive):
        pending=[];count=0;special=[]
        for item in archive:
            parts=safe_parts(item.name)
            if not parts or parts[-1].startswith('.wh.'):continue
            parent=self.resolve(parts[:-1]);parent.mkdir(parents=True,exist_ok=True);destination=parent/parts[-1]
            if item.isdir():
                destination=self.resolve(parts)
                if destination.exists() and not destination.is_dir():self.remove(destination)
                destination.mkdir(parents=True,exist_ok=True)
                continue
            if item.islnk():pending.append((parts,safe_parts(item.linkname.lstrip('/'))));continue
            self.remove(destination)
            if item.issym():os.symlink(item.linkname,destination)
            elif item.isfile():
                source=archive.extractfile(item)
                with destination.open('xb') as output:shutil.copyfileobj(source,output,1024*1024)
                destination.chmod(item.mode&0o777)
            else:special.append(item.name)
            count+=1
        while pending:
            deferred=[]
            for parts,link in pending:
                source=self.resolve(link)
                if not source.exists():deferred.append((parts,link));continue
                destination=self.resolve(parts[:-1])/parts[-1];self.remove(destination)
                if not source.is_file() or source.is_symlink():raise ValueError('Regular in-root hardlink source required')
                os.link(source,destination,follow_symlinks=False)
            if len(deferred)==len(pending):raise ValueError('Unresolved original archive hardlinks')
            pending=deferred
        return {'members':count,'special_device_members_omitted':special}

class NativeHTTPSRedirect(urllib.request.HTTPRedirectHandler):
    def redirect_request(self,request,fp,code,msg,headers,newurl):
        if urllib.parse.urlsplit(request.full_url).scheme=='https' and urllib.parse.urlsplit(newurl).scheme!='https':
            raise ValueError('Pinned native HTTPS downloads cannot downgrade transport')
        return super().redirect_request(request,fp,code,msg,headers,newurl)

class BlobCache:
    """One locked content cache; scoped public registry tokens stay in memory."""
    def __init__(self,directory,offline=False,observer=None):
        self.directory=directory;self.offline=offline;self.observer=observer
        self.tokens={};self.opener=urllib.request.build_opener(NativeHTTPSRedirect())
    def registry_token(self,repository):
        current=self.tokens.get(repository)
        if current is not None and time.monotonic()<current['until']:return current['token']
        query=urllib.parse.urlencode({'service':'registry.docker.io','scope':'repository:'+repository+':pull'})
        with self.opener.open('https://auth.docker.io/token?'+query,timeout=60) as response:
            raw=response.read(1048577)
        if len(raw)>1048576:raise ValueError('Bounded registry response required')
        value=json.loads(raw);token=value.get('token')
        if type(token)is not str or not token or len(token)>65536 or '\\r'in token or '\\n'in token:raise ValueError('Valid scoped registry token required')
        lifetime=value.get('expires_in',300)
        if type(lifetime)is not int or lifetime<=0:raise ValueError('Valid registry token lifetime required')
        self.tokens[repository]={'token':token,'until':time.monotonic()+max(1,min(300,lifetime-30))}
        return token
    def get(self,row,url=None,registry=False):
        digest=row.get('sha256',row.get('digest','').removeprefix('sha256:'))
        if len(digest)!=64 or any(x not in '0123456789abcdef' for x in digest):raise ValueError('Exact lowercase SHA256 required')
        if type(row.get('bytes'))is not int or row['bytes']<=0:raise ValueError('Exact positive native archive extent required')
        repository=None
        if registry:
            repository='library/ros' if registry is True else registry
            if type(repository)is not str or re.fullmatch(r'[a-z0-9]+(?:[._-][a-z0-9]+)*(?:/[a-z0-9]+(?:[._-][a-z0-9]+)*)+',repository)is None:
                raise ValueError('Exact registry repository scope required')
            expected='https://registry-1.docker.io/v2/'+repository+'/blobs/sha256:'+digest
            if (url or row.get('url'))!=expected:raise ValueError('Registry token target must match exact repository and blob')
        path=self.directory/digest;lockfd=os.open(str(path)+'.lock',os.O_RDWR|os.O_CREAT|os.O_CLOEXEC|os.O_NOFOLLOW,0o600)
        try:
            info=os.fstat(lockfd)
            if not stat.S_ISREG(info.st_mode) or info.st_nlink!=1 or info.st_uid!=os.getuid():raise ValueError('Private regular cache lock required')
            fcntl.flock(lockfd,fcntl.LOCK_EX)
            if not path.exists():
                if self.offline:raise RuntimeError('Offline pinned native archive missing: '+digest)
                endpoint=url or row.get('download_url') or row.get('url')
                if type(endpoint)is not str:raise ValueError('Pinned native archive URL required')
                if endpoint.startswith('http://archive.ubuntu.com/') or endpoint.startswith('http://security.ubuntu.com/'):endpoint='https://'+endpoint[len('http://'):]
                if urllib.parse.urlsplit(endpoint).scheme!='https':raise ValueError('Native archive HTTPS required')
                request=urllib.request.Request(endpoint)
                if repository:
                    # urllib deliberately omits unredirected headers on every
                    # redirect, including the registry's signed CDN redirect.
                    request.add_unredirected_header('Authorization','Bearer '+self.registry_token(repository))
                temporary=self.directory/(digest+'.'+os.urandom(8).hex()+'.partial');size=0;actual=hashlib.sha256()
                try:
                    with self.opener.open(request,timeout=60) as response,temporary.open('xb') as output:
                        while block:=response.read(1024*1024):
                            size+=len(block)
                            if size>row['bytes']:raise ValueError('Pinned native download exceeds exact extent')
                            actual.update(block);output.write(block)
                    if size!=row['bytes'] or actual.hexdigest()!=digest:raise ValueError('Pinned native download hash mismatch')
                    temporary.chmod(0o444);temporary.rename(path)
                finally:
                    if temporary.exists():temporary.unlink()
            if path.is_symlink() or not path.is_file() or path.stat().st_size!=row['bytes'] or sha(path)!=digest:raise ValueError('Pinned native cache object changed')
            if self.observer:self.observer({'sha256':digest,'bytes':row['bytes']})
            return path
        finally:os.close(lockfd)

def inventory(root):
    rows=[]
    for path in sorted(root.rglob('*')):
        relative=str(path.relative_to(root))
        if path.is_symlink():rows.append({'path':relative,'symlink':os.readlink(path)})
        elif path.is_file():rows.append({'path':relative,'bytes':path.stat().st_size,'sha256':sha(path)})
    return rows

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    for name in ('sdk','cache','output'):parser.add_argument('--'+name,type=Path,required=True)
    parser.add_argument('--offline',action='store_true');parser.add_argument('--scope',choices=('base','ur'),default='base');args=parser.parse_args()
    sdk=args.sdk.resolve(strict=True);cache=args.cache.resolve();out=args.output.resolve()
    if out.exists() or out.is_relative_to(sdk) or out==cache or out.is_relative_to(cache):raise ValueError('Fresh output separate from SDK/blob cache required')
    sys.path.insert(0,str(sdk/'tools/language/python'))
    from relink_stdlib import cgroup_budget
    budget=cgroup_budget()
    if sys.version_info<(3,11):raise RuntimeError('Use the shared explicitly selected Python>=3.11')
    bwrap=Path('/usr/bin/bwrap')
    try:info=bwrap.lstat()
    except FileNotFoundError:
        sys.path.insert(0,str(Path(__file__).resolve().parent))
        import native_os
        staged=native_os.stage_missing_bwrap(sdk,cache,BlobCache,args.offline)
        raise RuntimeError('BLOCKED_NATIVE_BWRAP_TRUSTED_OS_INSTALL_REQUIRED: verified original OS archives and source evidence staged at '+str(staged)+'; trusted OS installation and applicable user namespace policy still require review') from None
    if not stat.S_ISREG(info.st_mode) or info.st_uid!=0 or info.st_mode&0o022:raise RuntimeError('Trusted OS /usr/bin/bwrap with reviewed userns policy required')
    lockfile=sdk/'share/toolchains/native/linux-x86_64/ros-humble-jammy.json';lock=json.loads(lockfile.read_bytes())
    if lock.get('format')!='uwvm-native-ros-humble-source-lock-v1' or lock.get('host')!='linux' or lock.get('arch')!='x86_64' or os.uname().machine!='x86_64':raise ValueError('Exact linux/x86_64 Humble lock required')
    scope=None
    if args.scope=='ur':
        sys.path.insert(0,str(Path(__file__).resolve().parent))
        import native_ur
        scope=native_ur.load(sdk,lockfile,lock)
    out.mkdir(parents=True);cache.mkdir(parents=True,exist_ok=True);blobs=cache/'blobs';blobs.mkdir(exist_ok=True)
    report={'format':'uwvm-native-ros-humble-construction-v1','status':'RUNNING','source_lock_sha256':sha(lockfile),'cgroup':budget,'bwrap_sha256':sha(bwrap),'commands':[],'archives':[],'native_application_executed':False,'maintainer_scripts_executed':False,'system_docker_or_daemon_used':False,'production_admission':False,'official_scene':False}
    def save():(out/'native-environment.json').write_text(json.dumps(report,indent=2)+'\n')
    def observed_archive(row):report['archives'].append(row);save()
    blob=BlobCache(blobs,args.offline,observed_archive).get
    def command(label,argv,timeout=300):
        step={'phase':label,'argv':argv};report['commands'].append(step);save()
        with (out/(label+'.stdout')).open('xb') as stdout,(out/(label+'.stderr')).open('xb') as stderr:run=subprocess.run(argv,stdout=stdout,stderr=stderr,check=False,timeout=timeout)
        step['exit_code']=run.returncode;save()
        if run.returncode:raise RuntimeError('Original native dependency stage failed: '+label)
    base=out/'immutable-official-base';base.mkdir();extract=Extractor(base);save()
    try:
        for row in lock['image']['layers']:
            url=lock['image']['registry']+'/v2/'+lock['image']['repository']+'/blobs/'+row['digest'];archive=blob(row,url,True);extract.whiteouts(archive)
            with tarfile.open(archive,'r:gz') as source:row_result=extract.extract(source)
            report.setdefault('oci_extractions',[]).append({'index':row['index'],**row_result});save()
        (base/'work').mkdir(exist_ok=True);(base/'work/archive.deb').touch()
        root=out/'rootfs';shutil.copytree(base,root,symlinks=True);extract=Extractor(root);logs=out/'package-logs';logs.mkdir()
        if scope is not None and sha(base/'var/lib/dpkg/status')!=scope['supplement']['base_status_sha256']:raise ValueError('UR supplement immutable base package status differs')
        packages=lock['packages']+([] if scope is None else scope['packages'])
        for index,row in enumerate(packages):
            archive=blob(row)
            argv=[str(bwrap),'--unshare-user','--uid','0','--gid','0','--cap-drop','ALL','--ro-bind',str(base),'/','--proc','/proc','--dev','/dev','--tmpfs','/tmp','--ro-bind',str(archive),'/work/archive.deb','--clearenv','--setenv','PATH','/usr/bin:/bin','--','/usr/bin/dpkg-deb','--fsys-tarfile','/work/archive.deb']
            with (logs/(str(index)+'.stderr')).open('xb') as stderr:
                child=subprocess.Popen(argv,stdout=subprocess.PIPE,stderr=stderr,close_fds=True)
                try:
                    with tarfile.open(fileobj=child.stdout,mode='r|') as source:extracted=extract.extract(source)
                    child.stdout.close()
                    if child.wait(timeout=60):raise RuntimeError('Original immutable-base dpkg reader failed')
                except BaseException:
                    child.stdout.close();child.kill();child.wait();raise
            report.setdefault('debian_extractions',[]).append({'package':row['package'],'version':row['version'],**extracted});save()
        if scope is not None:
            native_ur.finish(sdk,out,root,scope,blob,Extractor,command,report,save,bwrap)
            return
        # Only the original interface packages enter this native workspace.
        work=out/'work';work.mkdir();(work/'home').mkdir();(work/'src').mkdir()
        source=out/'original-unitree-source';source.mkdir();archive=blob(lock['unitree_source']['archive'])
        with tarfile.open(archive,'r:gz') as tar:Extractor(source).extract(tar)
        for row in lock['unitree_source']['files']:
            path=source/row['path']
            if path.is_symlink() or not path.is_file() or path.stat().st_size!=row['bytes'] or sha(path)!=row['sha256']:raise ValueError('Complete original Unitree source changed')
        def verify_original_sources():
            for row in lock['unitree_source']['files']:
                path=source/row['path']
                if path.is_symlink() or not path.is_file() or path.stat().st_size!=row['bytes'] or sha(path)!=row['sha256']:raise ValueError('Original Unitree source drift')
                for package in lock['unitree_source']['packages']:
                    relative=Path(row['path'])
                    if relative.is_relative_to(package['path']):
                        copied=work/'src'/package['name']/relative.relative_to(package['path'])
                        if copied.is_symlink() or not copied.is_file() or sha(copied)!=row['sha256']:raise ValueError('Original interface build source drift')
        for package in lock['unitree_source']['packages']:
            if package['name'] not in ('unitree_go','unitree_hg','unitree_api'):raise ValueError('Native application package forbidden')
            shutil.copytree(source/package['path'],work/'src'/package['name'],symlinks=True)
        def native(script,writable=False):
            return [str(bwrap),'--unshare-user','--uid','0','--gid','0','--cap-drop','ALL','--unshare-pid','--unshare-ipc','--unshare-uts','--bind' if writable else '--ro-bind',str(root),'/','--proc','/proc','--dev','/dev','--tmpfs','/tmp','--tmpfs','/run','--bind',str(work),'/work','--clearenv','--setenv','HOME','/work/home','--setenv','PATH','/usr/sbin:/usr/bin:/sbin:/bin','--setenv','PYTHONDONTWRITEBYTECODE','1','--setenv','ROS_LOCALHOST_ONLY','1','--setenv','CMAKE_BUILD_PARALLEL_LEVEL','2','--setenv','MAKEFLAGS','-j2','--chdir','/work','--','/bin/bash','-c',script]
        command('native-linker-cache',native('/sbin/ldconfig',True))
        command('build-original-interfaces',native('source /opt/ros/humble/setup.bash && colcon build --executor sequential --packages-select unitree_go unitree_hg unitree_api --merge-install --cmake-args -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF'),2400)
        (work/'metadata.py').write_text("from unitree_go.msg import LowCmd,LowState\nLowCmd.__class__.__import_type_support__()\nLowState.__class__.__import_type_support__()\nassert len(LowCmd().motor_cmd)==20 and len(LowState().motor_state)==20 and len(LowState().imu_state.quaternion)==4\nprint('ORIGINAL_NATIVE_INTERFACE_METADATA_PASS')\n")
        command('native-interface-metadata',native('source /opt/ros/humble/setup.bash && source /work/install/local_setup.bash && python3 /work/metadata.py && ros2 pkg prefix rmw_cyclonedds_cpp && ros2 pkg prefix gazebo_ros && ros2 pkg prefix turtlebot3_gazebo'))
        verify_original_sources()
        report['original_interface_source_drift']=[]
        report.update(status='PINNED_NATIVE_DEPENDENCIES_AND_ORIGINAL_INTERFACE_METADATA_PASS_SCENES_NOT_RUN',rootfs=str(root),unitree_prefix=str(work/'install'),rootfs_files=inventory(root),unitree_files=inventory(work/'install'));save()
    except BaseException as error:
        report.update(status='FAIL',error=repr(error));save();raise
if __name__=='__main__':main()
