"""Run the SDK-built shared module on real WASI workers and check file effects."""
import argparse
import hashlib
import importlib.util
import json
import os
import signal
import struct
import time
from pathlib import Path


def main():
    parser=argparse.ArgumentParser()
    for key in ("vm","wasm","owner","output"): parser.add_argument("--"+key,type=Path,required=True)
    args=parser.parse_args()
    args.vm,args.wasm,args.owner,args.output=(p.resolve() for p in (args.vm,args.wasm,args.owner,args.output))
    args.output.mkdir(parents=True,exist_ok=False)
    sdk=Path(os.environ["UWVM_ROS_SDK_ROOT"]).resolve()
    lifecycle=sdk/"example/platform/wasi/wat/threaded-counter/test_threads.py"
    spec=importlib.util.spec_from_file_location("uwvm_sdk_owned_process",lifecycle)
    owned=importlib.util.module_from_spec(spec);spec.loader.exec_module(owned)
    signal.signal(signal.SIGTERM,owned.interrupted)
    sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
    report=dict(format="uwvm-sdk-shared-file-v1",scope="actual wasm32 WAT shared child; no shared64/other-language/MTE/TSan claim",wasm_sha256=sha(args.wasm),owner_sha256=sha(args.owner),vm_launcher_sha256=sha(args.vm),lifecycle_helper=str(lifecycle),lifecycle_helper_sha256=sha(lifecycle),passed=False,cases=[])
    binary=args.vm.parent/"uwvm2-ros"
    if binary.is_file():report["binary_sha256"]=sha(binary)
    interfaces=["thread-spawn","path_open","fd_read","fd_write","fd_seek","fd_tell","fd_filestat_get","fd_close","clock_time_get","proc_exit"]
    rights=2097254
    cases=[("allow",0), ("default-hidden",127), ("explicit-hidden",127), ("calls-denied",76), ("resource-denied",76), ("descriptor-full",33), ("quota-reject",6), ("quota-wait",0)]
    for engine in ("int","aot"):
        for case,expected in cases:
            name=engine+"-"+case;mount=args.output/name;mount.mkdir();fixture=mount/"fixture";fixture.write_bytes(b"abcdef")
            cmd=[str(args.vm),"-R"+engine,"-Rct","0","-Rllvm-cache-path","disable","-WFE-threads","--wasi-threads","3","3","1048576","16777216","67108864","262144","--wasm-set-main-module-name","main","--wasip1-single-create","main","--wasip1-single-enable","main"]
            for grant in ("proc-exit","thread-spawn","stdout.write","monotonic-clock"):cmd += ["--wasip1-single-grant","main",grant]
            for interface in interfaces:
                if interface=="fd_seek" and case=="default-hidden":continue
                access="hidden" if interface=="fd_seek" and case=="explicit-hidden" else "deny" if interface=="fd_seek" and case=="calls-denied" else "allow"
                cmd += ["--wasip1-single-interface","main",interface,access]
            cmd += ["--wasip1-single-mount-dir","main","/sandbox",str(mount),"--wasip1-single-mount-dir-rights","main","/sandbox","8192",str(rights&~4 if case=="resource-denied" else rights)]
            if case=="descriptor-full":cmd += ["--wasip1-single-set-fd-limit","main","4"]
            if case=="quota-reject":cmd += ["--wasip1-single-limit","main","filesystem.total-calls","4"]
            if case=="quota-wait":cmd += ["--wasip1-single-limit","main","filesystem.window-calls","1","--wasip1-single-limit-action","main","filesystem.window-calls","wait"]
            cmd += ["--wasm-preload-library",str(args.owner),"env","--run",str(args.wasm)]
            started=time.monotonic();code,out,err,timed_out,leader,remaining,cleanup=owned.run_owned(cmd,45);elapsed=time.monotonic()-started
            successful=case in ("allow","quota-wait");observed=None;content_ok=False
            metadata=fixture.stat()
            with fixture.open("rb") as source:
                prefix=source.read(6)
                if successful:
                    source.seek(4294967305);suffix=source.read(2)
                    content_ok=prefix==b"abcdef" and suffix==b"Z" and metadata.st_size==4294967306
                else:content_ok=prefix==b"abcdef" and source.read(1)==b"" and metadata.st_size==6
            output_ok=not out
            if successful and len(out)==24:
                tid,done,position,guest_elapsed=struct.unpack("<IIQQ",out)
                observed=dict(child_tid=tid,done=done,final_offset=position,guest_chain_nanoseconds=guest_elapsed)
                output_ok=tid>0 and done==1 and position==4294967306 and (case!="quota-wait" or guest_elapsed>=6800000000)
            passed=code==expected and output_ok and (not err if successful else True) and content_ok and not timed_out and not remaining and cleanup.get("complete") and cleanup.get("identity_preserved_until_group_cleanup") and cleanup.get("leader_reaped")
            row=dict(name=name,passed=bool(passed),exit=code,expected=expected,seconds=elapsed,argv=cmd,observed=observed,file_size=metadata.st_size,file_blocks=metadata.st_blocks,content_ok=content_ok,output_hex=out.hex(),stderr=err.decode(errors="replace"),timeout=timed_out,leader=leader,original_descendants=remaining,cleanup=cleanup)
            report["cases"].append(row);(args.output/"result.json").write_text(json.dumps(report,indent=2));print(name,"PASS" if passed else "FAIL",flush=True)
            if not passed:raise RuntimeError(json.dumps(row))
    report["passed"]=True;report["passed_count"]=len(report["cases"]);(args.output/"result.json").write_text(json.dumps(report,indent=2))


if __name__=="__main__":main()
