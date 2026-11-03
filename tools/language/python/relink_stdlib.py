"""Relink genuine shared CPython command wrappers from the locked existing cores.

Run only through an admitted bounded job. Explicit --sdk, --llvm and --output
paths reproduce all four common commands; no campaign environment variable is
used. This command independently verifies current kernel cgroup bounds before
any compiler starts. It does not rebuild the original CPython core or run apps.
"""
import argparse,hashlib,json,os,shutil,subprocess,sys
from pathlib import Path

def sha(p):
    with p.open("rb") as f:return hashlib.file_digest(f,"sha256").hexdigest()
def cgroup_budget():
    if sys.platform!="linux":raise RuntimeError("A real Linux unified cgroup is required")
    raw=Path("/proc/self/cgroup").read_text();members=[line[3:] for line in raw.splitlines() if line.startswith("0::")]
    if len(members)!=1:raise RuntimeError("Require one actual unified cgroup membership")
    root=Path("/sys/fs/cgroup");current=(root/members[0].lstrip("/")).resolve(strict=True);common=root/"uwvmros.slice"
    if not current.is_relative_to(common) or current==common:raise RuntimeError("Run inside an admitted child of the shared uwvmros.slice")
    rows=[];node=current
    while True:
        memory=(node/"memory.max").read_text().strip();swap=(node/"memory.swap.max").read_text().strip()
        if not memory.isdecimal() or not 0<int(memory)<=68719476736 or swap!="0":raise RuntimeError("Every actual actor ancestor must remain <=64GiB and zero swap")
        rows.append({"path":str(node),"memory.max":memory,"memory.swap.max":swap})
        if node==common:break
        node=node.parent
    if rows[-1]["memory.max"]!="68719476736":raise RuntimeError("Exact shared64GiB ancestor required")
    return {"membership":raw,"ancestors":rows,"scope":"Independent current kernel check. Caller must retain its admitted scheduler birth/retirement evidence."}

def main():
    p=argparse.ArgumentParser()
    for n in ("sdk","llvm","output"):p.add_argument("--"+n,type=Path,required=True)
    a=p.parse_args();budget=cgroup_budget();a.sdk=a.sdk.resolve(strict=True);a.llvm=a.llvm.resolve(strict=True);a.candidate=a.sdk;out=a.output.resolve()
    if out.exists() or out.is_relative_to(a.sdk) or out.is_relative_to(a.llvm):raise ValueError("Use a fresh explicit output outside the immutable SDK/compiler roots")
    out.mkdir(parents=True);sys.path.insert(0,str(a.sdk/"tools/language/js"))
    from maintenance import toolchain,flags,source_files
    from abi_dispatch import emit
    from bridge import bridge as compatibility_bridge
    from wasm import validate,memory_profile
    result={"format":"uwvm-genuine-cpython-command-relink-v1","status":"RUNNING","cgroup":budget,"engines":[],"native_app_executed":False,"core_rewritten":False,"production_qualified":False}
    def save():(out/"relink.json").write_text(json.dumps(result,indent=2)+"\n")
    save();source_inventory=source_files(a.sdk,"python");result["source_inventory_verified_files"]=len(source_inventory);abi=json.loads((a.sdk/"share/abi/abi-v1.json").read_bytes())
    lock={"format":"uwvm-cpython-stdlib-source-lock-v1","python_version":"3.14.8","original_core_construction_lock":"share/language/python/construction-source-lock.json","original_core_construction_lock_sha256":sha(a.sdk/"share/language/python/construction-source-lock.json"),"application_capacity":16777216,"files":[]}
    changes=["src/language/js/support/application.h","tools/language/python/build.py","tools/language/js/pack.lua","tools/language/python/transplate.lua","share/language/python/stdlib.json","tools/language/python/relink_stdlib.py","tools/language/python/bridge.py"]
    for rel in changes:
        path=a.candidate/rel;lock["files"].append({"path":rel,"bytes":path.stat().st_size,"sha256":sha(path)})
    for rel in ["src/language/python/command.c","src/language/js/support/abi.h","tools/language/js/abi_dispatch.py"]:
        path=a.sdk/rel;lock["files"].append({"path":rel,"bytes":path.stat().st_size,"sha256":sha(path)})
    compatibility={backend:compatibility_bridge(a.sdk,backend) for backend in ("ros1","ros2")}
    shared_inputs={row["path"]:row for value in compatibility.values() for row in value["inputs"]}
    for relative in sorted(shared_inputs):lock["files"].append(shared_inputs[relative])
    lock["builtin_modules"]=["_uwvm_ros","_roswasm_native"]
    lockfile=out/"sdk/share/language/python/stdlib-source-lock.json";lockfile.parent.mkdir(parents=True);lockfile.write_text(json.dumps(lock,indent=2)+"\n")
    compatibility_lock={"format":"uwvm-cpython-real-bridge-source-lock-v1","python_version":"3.14.8","original_construction_lock":"share/language/python/construction-source-lock.json","original_construction_lock_sha256":lock["original_core_construction_lock_sha256"],"stdlib_lock":"share/language/python/stdlib-source-lock.json","stdlib_lock_sha256":sha(lockfile),"files":lock["files"],"runtime_authority":False}
    bridge_lockfile=out/"sdk/share/language/python/bridge-source-lock.json";bridge_lockfile.write_text(json.dumps(compatibility_lock,indent=2)+"\n")
    support=out/"support";support.mkdir();shutil.copyfile(a.candidate/"src/language/js/support/application.h",support/"application.h")
    for triple in ("wasm32-wasip1","wasm64-wasip1"):
        selected,closure=toolchain(a.sdk,a.llvm,a.sdk,triple,"noeh")
        corefile=a.sdk/"lib/language/python"/triple/"core/core.json";core=json.loads(corefile.read_bytes())
        for item in core["inputs"]:
            path=a.sdk/item["path"]
            if path.stat().st_size!=item["bytes"] or sha(path)!=item["sha256"]:raise ValueError("Genuine complete CPython core input changed")
        common=flags(a.llvm,a.sdk,selected,[(a.sdk,"/__uwvm_sdk__"),(out,"/__uwvm_build__/cpython-stdlib")])
        common += ["-DUWVM_APPLICATION_CAPACITY=16777216u","-I"+str(support),"-I"+str(a.sdk/"src/language/js/support")]
        common += ["-I"+str(a.sdk/x) for x in core["include_roots"]]
        for backend in ("ros1","ros2"):
            folder=out/"sdk/lib/language/python"
            if triple!="wasm32-wasip1":folder/=triple
            folder/=backend;folder.mkdir(parents=True);generated=out/(triple+"-"+backend+"-abi");bridge=emit(a.sdk,backend,generated)
            selected_bridge=compatibility[backend]
            binary=folder/"cpython.wasm";argv=[str(a.llvm/"bin/clang"),*common,*selected_bridge["flags"],"-I"+str(generated),str(a.sdk/"src/language/python/command.c"),*map(str,selected_bridge["sources"]),str(a.sdk/core["archive"]),*core["link_libraries"],"-Wl,-z,stack-size=8388608","-Wl,--max-memory=268435456","-Wl,--threads=1","-o",str(binary)]
            log=out/(triple+"-"+backend+".log");row={"target":triple,"backend":backend,"argv":argv,"log":str(log),"core_manifest_sha256":sha(corefile),"compatibility_bridge":selected_bridge["inputs"],"abi_dispatch":bridge,"core_archive_sha256":sha(a.sdk/core["archive"]),"closure":closure,"status":"STARTED"};result["engines"].append(row);save()
            with log.open("xb") as f:subprocess.run(argv,stdout=f,stderr=subprocess.STDOUT,check=True,timeout=600)
            parsed=validate(binary.read_bytes(),abi,backend,address_bits=64 if triple.startswith("wasm64") else 32)
            original=a.sdk/folder.relative_to(out/"sdk")/"runtime.json";metadata=json.loads(original.read_bytes());metadata.update(compatibility_bridge=selected_bridge["inputs"],bridge_source_lock_path="share/language/python/bridge-source-lock.json",bridge_source_lock_sha256=sha(bridge_lockfile),bytes=binary.stat().st_size,sha256=sha(binary),application_capacity=16777216,source_lock_path="share/language/python/stdlib-source-lock.json",source_lock_sha256=sha(lockfile),memory=memory_profile(binary.read_bytes()),wasm_features=(["memory64"] if memory_profile(binary.read_bytes())["address_bits"]==64 else [])+(["table64"] if any(table["address_bits"]==64 for table in memory_profile(binary.read_bytes())["tables"]) else []))
            (folder/"runtime.json").write_text(json.dumps(metadata,indent=2)+"\n");row.update(status="BUILT_PENDING_EXECUTION",bytes=binary.stat().st_size,sha256=sha(binary));save()
    if source_inventory!=source_files(a.sdk,"python"):raise ValueError("Immutable genuine source drift during relink")
    result["status"]="BUILT_FOUR_GENUINE_SHARED_ENGINES_PENDING_EXECUTION";save()
if __name__=="__main__":main()
