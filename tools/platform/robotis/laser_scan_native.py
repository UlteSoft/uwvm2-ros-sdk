#!/usr/bin/env python3
"""Generate the explicit IEEE LaserScan native profile without changing other codecs.

The caller supplies independently executed installed-Humble proof and metadata.
Generated schemas contain every original field. Four-byte integer wire nodes
validate raw binary32 bits, not converted integers. This source operation does
not grant permissions or claim application, network, or simulator qualification.
"""
import argparse
import hashlib
import json
from pathlib import Path
import sys

def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()

def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk", "catalog", "proof", "native-metadata", "out"):
        parser.add_argument("--" + name, required=True, type=Path)
    args = parser.parse_args()
    sdk=args.sdk.resolve(strict=True)
    args.catalog=args.catalog.resolve(strict=True)
    args.proof=args.proof.resolve(strict=True)
    args.native_metadata=args.native_metadata.resolve(strict=True)
    sys.path.insert(0,str(sdk/"tools/platform/unitree"))
    from binding_sources import api_for
    api=api_for(sdk)
    profile_path=sdk/"share/platform/robotis/py/ros2/humble/upstream_obstacle_detection/laserscan-ieee-profile.json"
    profile=json.loads(profile_path.read_text())
    before={}
    for key,value in profile.items():
        if key=="codec_identity":break
        before[key]=value
    codec="UWVMROS1_"+hashlib.sha256(json.dumps(before,sort_keys=True,separators=(",",":"),ensure_ascii=True).encode()).hexdigest()
    if codec!=profile["codec_identity"] or profile["bounds"]!={"frame_utf8_bytes":128,"frame_embedded_nul":False,"ranges_count":1024,"intensities_count":1024,"min_wire_bytes":48,"max_wire_bytes":8368}:
        raise ValueError("Exact reviewed IEEE profile required")
    for row in profile["source_definitions"]:
        if digest(sdk/row["path"])!=row["sha256"]:
            raise ValueError("Original source identity changed")
    document,admission=api.bind(args.catalog,args.native_metadata.read_bytes(),
        installed_source_proof=args.proof.read_bytes())
    root="sensor_msgs/msg/LaserScan"
    row=next(row for row in document["types"] if row["type"]==root)
    if row["native_identity"]!="RIHS01_64c191398013af96509d518dac71d5164f9382553fce5c1f8cca5be7924bd828":
        raise ValueError("Actual installed LaserScan differs")
    out=args.out.resolve()
    if out.exists():raise ValueError("Use a fresh output directory")
    out.mkdir(parents=True)
    # Keep source paths physically adjacent to their bound catalog.
    for row in document["types"]:
        relative=Path(row["file"])
        if relative.is_absolute() or ".." in relative.parts:raise ValueError("Relative original source required")
        source=args.catalog.parent/relative
        target=out/relative;target.parent.mkdir(parents=True,exist_ok=True);target.write_bytes(source.read_bytes())
    bound=out/"bound-catalog.json";bound.write_text(json.dumps(document,indent=2)+"\n")
    products,generation=api.products(bound,guest_only=False,
        helper_source=(sdk/"tools/platform/unitree/native/metadata_reader.cc.in").read_bytes())
    records,_,_,_=api.load_catalog(bound,True)
    record=records[2,root]
    expected=("header","angle_min","angle_max","angle_increment","time_increment","scan_time","range_min","range_max","ranges","intensities")
    if tuple(m.name for m in record.members)!=expected or record.minimum!=48 or record.maximum!=8368:
        raise ValueError("Complete original LaserScan layout differs")
    if record.members[0].type!="std_msgs/msg/Header" or record.members[0].array:
        raise ValueError("Exact original Header field required")
    for m in record.members[1:8]:
        if m.type!="float32" or m.array or m.count:
            raise ValueError("Seven original binary32 scalar fields required")
    for m in record.members[8:]:
        if m.type!="float32" or m.array!="sequence" or m.count!=1024:
            raise ValueError("Each selected binary32 sequence requires the exact 1024-element profile")
    header=records[2,"std_msgs/msg/Header"]
    if tuple(m.name for m in header.members)!=("stamp","frame_id"):
        raise ValueError("Complete original Header layout required")
    stamp,frame=header.members
    if (stamp.type!="builtin_interfaces/msg/Time" or stamp.array or
            frame.type!="string" or frame.array or frame.string_bound!=128 or
            frame.string_encoding!="utf8"):
        raise ValueError("Exact selected Header and UTF-8 frame profile required")
    manifest=products["manifest.hpp"]
    lines=manifest.splitlines()
    changed=[]
    for index,line in enumerate(lines):
        if "Ros2Sensor_msgsMsgLaserScan" not in line:continue
        revised=line.replace("custom_wire_kind::f32,","custom_wire_kind::u32,")
        if "custom_record_Ros2Sensor_msgsMsgLaserScan{" in line:
            if line.count(record.codec_identity)!=1:raise ValueError("Exact codec declaration required")
            revised=revised.replace(record.codec_identity,codec)
        if revised!=line:changed.append(index+1);lines[index]=revised
    if len(changed)!=4:raise ValueError("Expected two sequences, seven metadata floats and one identity")
    products["manifest.hpp"]="\n".join(lines)+"\n"
    native=products["native_ros2.hpp"]
    start=native.index("#define UWVM_ROS_CUSTOM_ROS2_TYPES(M)")
    stop=native.index("#define UWVM_ROS_CUSTOM_ROS2_SERVICE_TYPES(M)",start)
    macro=native[start:stop]
    if macro.count(record.codec_identity)!=1 or macro.count("::uwvm_custom_bounded_native::Ros2Sensor_msgsMsgLaserScanCodec")!=1:
        raise ValueError("One original LaserScan native registration required")
    macro=macro.replace(record.codec_identity,codec).replace(
        "::uwvm_custom_bounded_native::Ros2Sensor_msgsMsgLaserScanCodec","::uwvm_robotis_ieee::LaserScan")
    # Qualified native-source traits remain paired with the exact generated types.
    # The inherited complete native metadata and constants are not rewritten.
    products["native_source_provider.hpp"]=(
        '#pragma once\n#include "native_source.hpp"\n'
        '#include "native_ros2.hpp"\n'
        '#include <platform/robotis/native/ros2/humble/laser_scan_ieee.hpp>\n'
        '#undef UWVM_ROS_CUSTOM_ROS2_TYPES\n'+macro)
    for name,body in products.items():
        target=out/name;target.parent.mkdir(parents=True,exist_ok=True);target.write_text(body)
    pins={str(p):digest(p) for p in [Path(__file__),profile_path,args.catalog,args.proof,args.native_metadata,
        sdk/"include/platform/robotis/native/ros2/humble/laser_scan_ieee.hpp"]}
    report=dict(scope="Generated selected source only; requires separate native codec/registry/guest tests",
        default_authority=[],raw_binary32_wire_nodes=True,codec_identity=codec,changed_manifest_lines=changed,
        pins=pins,native_admission=admission,generation=generation,
        outputs={name:digest(out/name) for name in products})
    (out/"ieee-profile-generation.json").write_text(json.dumps(report,indent=2)+"\n")

if __name__=="__main__":
    main()
