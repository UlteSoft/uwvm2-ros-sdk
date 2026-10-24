#!/usr/bin/env python3
# @file derive_backend.py
# @brief Provide the complete shared language derive_backend.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local encoding grants no ROS authority; invalid or
# partial wire is rejected before a value is exposed.
"""Derive an unqualified ROS1 candidate from exact cold-built ROS2 engine bytes.

The typed parser checks every import and the full memory profile. Only eight
same-length ROS import-module names change. This step never installs a runtime
or assigns historical execution receipts to a new binary.
"""
import argparse
import json
from pathlib import Path
from embedded_wasm import derive_ros1
from engine_source import checked, limits, read, sha


def main():
    """Verify actual construction and retain the exact typed candidate derivation."""
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk-profile',type=Path,required=True)
    parser.add_argument('--qualified-sdk',type=Path,required=True)
    parser.add_argument('--legacy-eight-import-only',action='store_true',required=True)
    parser.add_argument('--language',choices=('ruby','php'),required=True)
    parser.add_argument('--source',type=Path,required=True)
    parser.add_argument('--source-sha256',required=True)
    parser.add_argument('--construction',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--evidence',type=Path,required=True)
    args=parser.parse_args()
    cgroup=limits()
    sdk=args.sdk_profile.resolve(strict=True)
    construction=read(args.construction)
    checked(args.source,dict(sha256=args.source_sha256))
    if not (construction.get('status')=='PASS' and construction.get('cold_source_build') is True and
        construction.get('cached_core_objects_used')==0 and construction.get('language')==args.language and
        construction.get('sha256')==args.source_sha256):
        raise ValueError('Exact successful cold source construction is required')
    for path in (args.output,args.evidence):
        if path.exists() or path.resolve().is_relative_to(sdk):raise ValueError('Use a new private candidate output')
    descriptor=read(args.qualified_sdk/'share/abi/abi-v1.json')
    data,report=derive_ros1(args.source.read_bytes(),descriptor,args.source_sha256,expected_maximum_pages=16384)
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_bytes(data)
    report.update(status='LEGACY_EIGHT_IMPORT_CANDIDATE_NOT_COMPLETE_ABI',language=args.language,cgroup=cgroup,
        construction_receipt_sha256=sha(args.construction),typed_parser_sha256=sha(Path(__file__).with_name('embedded_wasm.py')),
        source_lock_sha256=sha(sdk/'share/language'/args.language/'source-lock.json'),
        guest_executions=0,native_ros_executions=0,published_engine_replaced=False)
    args.evidence.parent.mkdir(parents=True,exist_ok=True)
    args.evidence.write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(dict(status=report['status'],sha256=sha(args.output),bytes=len(data))))

if __name__=='__main__':main()
