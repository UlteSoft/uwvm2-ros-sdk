"""Exact original Go2 native physics/DDS driver launcher; no application ROS logic.

The registered shared constructor supplies the immutable native closure and
venv alias. This launcher downloads/installs nothing and grants no VM authority.
It execs one native process; the admitted caller owns its full lifetime and must
check the ready snapshot PID/birth rather than treating a file as live authority.
"""
from pathlib import Path
import argparse,hashlib,json,os,sys

def sha(path):
 with Path(path).open('rb')as stream:return hashlib.file_digest(stream,'sha256').hexdigest()
def pin(row):
 path=Path(row['path']);assert path.is_absolute()and path.is_file()and not path.is_symlink()and path.stat().st_size==row['bytes']and sha(path)==row['sha256'],'Exact native input identity differs';return path

def main():
 parser=argparse.ArgumentParser(description=__doc__)
 for name in ['sdk-root','input-bundle','output','ready-file']:parser.add_argument('--'+name,type=Path,required=True)
 parser.add_argument('--stop-file',type=Path);parser.add_argument('--duration-seconds',type=float,default=60);args=parser.parse_args();assert 1<=args.duration_seconds<=300 and not args.ready_file.exists();sdk=args.sdk_root.resolve();bundle=json.loads(args.input_bundle.read_text());assert bundle['format']=='uwvm-native-go2-inputs-v2';assert sha(sdk/'tools/shared/python/kernel_budget.py')==bundle['budget_source_sha256'];sys.path.insert(0,str(sdk/'tools/shared/python'));from kernel_budget import cgroup_budget
 budget=cgroup_budget()
 # The caller selects the actual kernel budget. The shared 64 GiB / zero-swap
 # boundary is sufficient; a tighter dedicated leaf is optional. Native
 # process ownership, executable pins and retirement are checked separately.
 closure_path=pin(bundle['closure']);closure=json.loads(closure_path.read_text())
 for row in closure['files']:pin(row)
 for row in closure.get('aliases',[]):assert str(Path(row['path']).resolve(strict=True))==row['target'],'Native alias identity differs'
 binary=pin(bundle['python_binary']);launcher=Path(bundle['python_launcher']);assert launcher.is_absolute()and launcher.resolve(strict=True)==binary and (launcher==binary or any(row['path']==str(launcher)and row['target']==str(binary)for row in closure.get('aliases',[])))
 scene=Path(__file__).resolve().with_name('native_scene.py');assert sha(scene)==bundle['native_endpoint_sha256'];root=Path(bundle['mujoco_source_root']).resolve(strict=True);prefix=Path(bundle['cyclonedds_prefix']).resolve(strict=True);assert bundle['source_versions']=={'unitree_mujoco_commit':'1eb6642e3f3fdfb7fb13a9794fd6a2dd93ea0e7d','unitree_sdk2_python_commit':'814556d15970dd2ecf1c9984e845ca02ab07e206','mujoco':'3.3.6','cyclonedds_python':'0.10.2','cyclonedds_core':'0.10.5'}
 assert(root/'unitree_robots/go2/scene.xml').is_file()and(prefix/'lib').is_dir();domain=int(os.environ['ROS_DOMAIN_ID']);assert 0<=domain<=230;out=args.output.resolve();out.mkdir(parents=True,exist_ok=True);env=dict(os.environ,MUJOCO_GL='disable',PYTHONDONTWRITEBYTECODE='1',OMP_NUM_THREADS='2',OPENBLAS_NUM_THREADS='2',CYCLONEDDS_HOME=str(prefix),LD_LIBRARY_PATH=str(prefix/'lib'));argv=[str(launcher),'-B',str(scene),'--source-root',str(root),'--domain',str(domain),'--duration-seconds',str(args.duration_seconds),'--evidence',str(out/'native-scene.json'),'--ready-file',str(args.ready_file),'--trace-file',str(out/'native-packets.jsonl')]
 if args.stop_file:argv+=['--stop-file',str(args.stop_file)]
 (out/'native-launch.json').write_text(json.dumps({'format':'uwvm-native-go2-launch-v1','input_bundle_sha256':sha(args.input_bundle),'closure_sha256':sha(closure_path),'native_endpoint_sha256':sha(scene),'python_binary_sha256':sha(binary),'argv':argv,'budget_ancestry':budget,'native_only':True,'application_started':False,'shared_installer_or_cache_modified':False,'production_admission':False,'complete_scene_pass':False},indent=2)+'\n');os.execve(str(launcher),argv,env)
if __name__=='__main__':main()
