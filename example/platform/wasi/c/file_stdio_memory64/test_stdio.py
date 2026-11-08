"""Qualify the SDK-built libc file command and its filesystem side effects."""
import argparse,hashlib,importlib.util,json,os,signal,time
from pathlib import Path


def main():
 p=argparse.ArgumentParser()
 for key in ("vm","wasm","output"):p.add_argument("--"+key,type=Path,required=True)
 p.add_argument("--architecture",choices=("wasm32","wasm64"),required=True);a=p.parse_args();a.vm=a.vm.resolve();a.wasm=a.wasm.resolve();a.output=a.output.resolve();a.output.mkdir(parents=True,exist_ok=False)
 sdk=Path(os.environ["UWVM_ROS_SDK_ROOT"]);helper=sdk/"example/platform/wasi/wat/threaded-counter/test_threads.py";spec=importlib.util.spec_from_file_location("uwvm_sdk_owned_process",helper);owned=importlib.util.module_from_spec(spec);spec.loader.exec_module(owned);signal.signal(signal.SIGTERM,owned.interrupted)
 sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();rows=[];report=dict(format="uwvm-sdk-libc-file-v1",architecture=a.architecture,scope="real SDK libc fopen/fread/fwrite/fseeko/ftello/fclose command",wasm_sha256=sha(a.wasm),vm_launcher_sha256=sha(a.vm),lifecycle_helper_sha256=sha(helper),passed=False,cases=rows)
 if (a.vm.parent/"uwvm2-ros").exists():report["binary_sha256"]=sha(a.vm.parent/"uwvm2-ros")
 approved=["args_sizes_get","args_get","environ_sizes_get","environ_get","proc_exit","fd_read","fd_write","fd_close","fd_seek","fd_tell","fd_fdstat_get","fd_fdstat_set_flags","fd_filestat_get","fd_prestat_get","fd_prestat_dir_name","path_open","path_filestat_get"]
 specs=[("roundtrip",5),("create",4),("truncate",4),("create",5),("truncate",5),("create",0),("truncate",0)]
 for engine in ("int","aot"):
  for operation,limit in specs:
   name=engine+"-"+operation+"-limit"+str(limit);mount=a.output/name;mount.mkdir();fixture=mount/"fixture";fixture.write_bytes(b"abcdef");probe=mount/"probe"
   if operation=="truncate":probe.write_bytes(b"preserve")
   full=limit==4;expected=33 if full else 0
   cmd=[str(a.vm),"-R"+engine,"-Rct","0","-Rllvm-cache-path","disable","--wasm-set-main-module-name","main","--wasip1-single-create","main","--wasip1-single-enable","main"]
   if a.architecture=="wasm64":cmd += ["--wasm-feature-enable-memory64","--wasm-feature-enable-table64"]
   for grant in ("proc-exit","args","environ","stdout.write","stderr.write","stdio.metadata"):cmd += ["--wasip1-single-grant","main",grant]
   for interface in approved:
    for suffix in (("","_wasm64") if a.architecture=="wasm64" else ("",)):cmd += ["--wasip1-single-interface","main",interface+suffix,"allow"]
   cmd += ["--wasip1-single-mount-dir","main","/sandbox",str(mount),"--wasip1-single-mount-dir-rights","main","/sandbox","2892800","148898303","--wasip1-single-set-fd-limit","main",str(limit),"--run",str(a.wasm),operation,"full" if full else "allow"]
   start=time.monotonic();code,out,err,timeout,leader,remaining,cleanup=owned.run_owned(cmd,45);elapsed=time.monotonic()-start
   if operation=="roundtrip":
    with fixture.open("rb") as stream:prefix=stream.read(6);stream.seek(4294967305);tail=stream.read(2)
    content_ok=prefix==b"abcdef" and tail==b"R" and fixture.stat().st_size==4294967306 and not probe.exists()
   elif full:content_ok=(not probe.exists() if operation=="create" else probe.read_bytes()==b"preserve") and fixture.read_bytes()==b"abcdef"
   else:content_ok=probe.read_bytes()==b"ok" and fixture.read_bytes()==b"abcdef"
   passed=code==expected and not out and content_ok and not timeout and not remaining and cleanup.get("complete") and cleanup.get("identity_preserved_until_group_cleanup") and cleanup.get("leader_reaped")
   row=dict(name=name,passed=bool(passed),exit=code,expected=expected,content_ok=content_ok,stdout_hex=out.hex(),stderr=err.decode(errors="replace"),seconds=elapsed,argv=cmd,timeout=timeout,leader=leader,cleanup=cleanup);rows.append(row);(a.output/"result.json").write_text(json.dumps(report,indent=2));print(name,"PASS" if passed else "FAIL",flush=True)
   if not passed:raise RuntimeError(json.dumps(row))
 report["passed"]=True;report["passed_count"]=len(rows);(a.output/"result.json").write_text(json.dumps(report,indent=2))

if __name__=="__main__":main()
