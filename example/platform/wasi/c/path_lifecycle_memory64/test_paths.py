"""Exercise actual SDK libc path operations with explicit interface authority."""
import argparse,hashlib,importlib.util,json,os,signal,time
from pathlib import Path

def main():
 p=argparse.ArgumentParser()
 for key in ("vm","wasm","output"):p.add_argument("--"+key,type=Path,required=True)
 p.add_argument("--architecture",choices=("wasm32","wasm64"),required=True);a=p.parse_args()
 a.vm=a.vm.resolve();a.wasm=a.wasm.resolve();a.output=a.output.resolve();a.output.mkdir(parents=True,exist_ok=False)
 sdk=Path(os.environ["UWVM_ROS_SDK_ROOT"]);helper=sdk/"example/platform/wasi/wat/threaded-counter/test_threads.py"
 spec=importlib.util.spec_from_file_location("uwvm_sdk_owned_process",helper);owned=importlib.util.module_from_spec(spec);spec.loader.exec_module(owned);signal.signal(signal.SIGTERM,owned.interrupted)
 sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
 operations={"mkdir":"path_create_directory","stat":"path_filestat_get","times":"path_filestat_set_times","link":"path_link","readlink":"path_readlink","rmdir":"path_remove_directory","rename":"path_rename","symlink":"path_symlink","unlink":"path_unlink_file"}
 approved=["args_sizes_get","args_get","environ_sizes_get","environ_get","proc_exit","fd_write","fd_close","fd_fdstat_get","fd_prestat_get","fd_prestat_dir_name",*operations.values()]
 required={"mkdir":0x200,"stat":0x40000,"times":0x100000,"link":0x1800,"readlink":0x8000,"rmdir":0x2000000,"rename":0x30000,"symlink":0x1000000,"unlink":0x4000000}
 report=dict(format="uwvm-sdk-libc-path-lifecycle-v1",architecture=a.architecture,scope="SDK libc9 path operations, minimal operation rights, interface deny, zero descriptor rights and independently missing source/target rights, real native filesystem side effects, int/JIT.",wasm_sha256=sha(a.wasm),launcher_sha256=sha(a.vm),lifecycle_helper_sha256=sha(helper),passed=False,cases=[])
 if (a.vm.parent/"uwvm2-ros").is_file():report["binary_sha256"]=sha(a.vm.parent/"uwvm2-ros")
 def save():(a.output/"result.json").write_text(json.dumps(report,indent=2)+"\n")
 def state(mount):
  return {p.name:dict(mode=p.lstat().st_mode,inode=p.lstat().st_ino,size=p.lstat().st_size,links=p.lstat().st_nlink,mtime=p.lstat().st_mtime_ns,target=os.readlink(p) if p.is_symlink() else None) for p in mount.iterdir()}
 for engine in ("int","aot"):
  for operation,function in operations.items():
   variants=[("allow",False,required[operation]),("interface-deny",True,required[operation]),("rights-deny",True,0)]
   if operation in ("link","rename"):variants += [("source-only-deny",True,0x800 if operation=="link" else 0x10000),("target-only-deny",True,0x1000 if operation=="link" else 0x20000)]
   for variant,deny,rights in variants:
    name=engine+"-"+operation+"-"+variant;mount=a.output/name;mount.mkdir()
    source=mount/"source";source.write_bytes(b"preserved");(mount/"dir").mkdir();(mount/"symlink").symlink_to("source")
    before=state(mount)
    cmd=[str(a.vm),"-R"+engine,"-Rct","0","-Rllvm-cache-path","disable","--wasm-set-main-module-name","main","--wasip1-single-create","main","--wasip1-single-enable","main"]
    if a.architecture=="wasm64":cmd+=["--wasm-feature-enable-memory64","--wasm-feature-enable-table64"]
    for grant in ("proc-exit","args","environ","stdout.write","stderr.write","stdio.metadata"):cmd+=["--wasip1-single-grant","main",grant]
    for interface in approved:
     for suffix in (("","_wasm64") if a.architecture=="wasm64" else ("",)):cmd+=["--wasip1-single-interface","main",interface+suffix,"deny" if variant=="interface-deny" and interface==function else "allow"]
    cmd+=["--wasip1-single-mount-dir","main","/sandbox",str(mount),"--wasip1-single-mount-dir-rights","main","/sandbox",str(rights),"0","--run",str(a.wasm),operation,"deny" if deny else "allow"]
    start=time.monotonic();code,out,err,timeout,leader,remaining,cleanup=owned.run_owned(cmd,60)
    after=state(mount);dest=mount/"dest";effects=after==before if deny else True
    if not deny:
     if operation=="mkdir":effects=(mount/"new-dir").is_dir()
     elif operation=="times":effects=source.stat().st_mtime_ns==456000000000
     elif operation=="link":effects=dest.stat().st_ino==source.stat().st_ino and source.stat().st_nlink==2
     elif operation=="rmdir":effects=not (mount/"dir").exists()
     elif operation=="rename":effects=not source.exists() and dest.read_bytes()==b"preserved"
     elif operation=="symlink":effects=dest.is_symlink() and os.readlink(dest)=="source"
     elif operation=="unlink":effects=not source.exists()
     else:effects=before==after
    diagnostic=(b"warning" in err.lower() and function.encode() in err) if deny else True
    passed=code==0 and not out and effects and diagnostic and not timeout and not remaining and cleanup.get("complete") and cleanup.get("identity_preserved_until_group_cleanup") and cleanup.get("leader_reaped")
    row=dict(name=name,passed=bool(passed),exit=code,effects=effects,diagnostic=diagnostic,stdout_hex=out.hex(),stderr=err.decode(errors="replace"),seconds=time.monotonic()-start,argv=cmd,timeout=timeout,leader=leader,cleanup=cleanup);report["cases"].append(row);save();print(name,"PASS" if passed else "FAIL",flush=True)
    if not passed:raise RuntimeError(json.dumps(row))
 report["passed"]=True;report["passed_count"]=len(report["cases"]);save()
if __name__=="__main__":main()
