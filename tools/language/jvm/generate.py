#!/usr/bin/env python3
"""@file generate.py
@brief Emit complete Java/CLR records and endpoints from a public bounded catalog.
@details This maintenance entry consumes the one shared industrial source
parser. Each platform contributes only a catalog/profile and public namespace.
Kotlin uses the ordinary Java types; F#/VB.NET use the ordinary CLR types. No
compiler, guest, source-language evaluator, network or ROS process is invoked.
"""
from __future__ import annotations
import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys
from records import record_source
from endpoints import endpoint_source


def digest(path: Path) -> str:
    """@brief Hash exact input or generated-source bytes without executing them."""
    return hashlib.sha256(path.read_bytes()).hexdigest()


def shared_api(sdk: Path):
    """@brief Bind the source-paired common parser with its exact input identities.
    @param sdk Installed SDK containing the shared industrial/custom-type loader.
    @return Complete canonical parser API; missing common dependencies raise.
    @details The platform cannot replace parsing algorithms or load arbitrary
    catalog-selected code. Only the fixed installed maintenance modules execute.
    """
    parent=sdk/'tools/custom_types.py'
    bounded=sdk/'tools/custom_types/bounded_profile.py'
    adapter=sdk/'tools/industrial/vendor_profile.py'
    spec=importlib.util.spec_from_file_location('_uwvm_managed_industrial',adapter)
    module=importlib.util.module_from_spec(spec)
    sys.modules[spec.name]=module
    spec.loader.exec_module(module)
    templates={}
    for extension in ('rs','mjs','go','ts'):
        name='interface_templates/bounded_interfaces.'+extension+'.in'
        templates[name]=(bounded.parent/name).read_bytes()
    return module.API(parent.read_bytes(),bounded.read_bytes(),parent_path=parent,bounded_path=bounded,
                      parent_sha256=digest(parent),bounded_sha256=digest(bounded),templates=templates,
                      adapter_raw=adapter.read_bytes(),adapter_sha256=digest(adapter))


def main() -> None:
    """@brief Regenerate a complete named profile and preserve every admitted codec identity."""
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk',type=Path,required=True)
    parser.add_argument('--platform',required=True)
    parser.add_argument('--profile',required=True)
    args=parser.parse_args()
    if not re.fullmatch('[a-z][a-z0-9_-]*',args.platform) or not re.fullmatch('[a-z0-9_]+',args.profile):
        raise ValueError('Use normalized installed platform and profile identifiers')
    sdk=args.sdk.resolve(strict=True)
    directory=sdk/'share/platform'/args.platform/'catalogs'/args.profile
    catalog=directory/'catalog.json'
    schema=json.loads((directory/'schema.json').read_text())
    api=shared_api(sdk)
    records,ordered,interfaces,_=api.load_catalog(catalog,False)
    expected={item['name']:item for item in schema['records']}
    if len(expected)!=len(ordered):raise ValueError('The admitted complete record inventory differs')
    for record in ordered:
        previous=expected.get(record.name)
        if not previous or previous['codec_identity']!=record.codec_identity or previous['maximum']!=record.maximum:
            raise ValueError('A source identity or bound changed: '+record.name)
    generated=[]
    package=re.sub('[^a-z0-9_]', '_', args.platform)
    title=''.join(x.title() for x in re.split('[_-]', args.platform))
    backend=ordered[0].version
    for language,extension,namespace in (
        ('java','java',f'uwvm.{package}.ros{backend}.{args.profile}'),
        ('csharp','cs',f'Uwvm.{title}.Ros{backend}.{args.profile}')):
        output=sdk/'include/platform'/args.platform/language/('ros'+str(backend))/namespace.replace('.','/')
        output.mkdir(parents=True,exist_ok=True)
        sources=[(record.symbol,record_source(language,record,records,namespace)) for record in ordered]
        sources.extend(endpoint_source(language,interface,namespace) for interface in interfaces)
        for name,body in sources:
            destination=output/(name+'.'+extension)
            destination.write_text(body)
            generated.append(dict(path=str(destination.relative_to(sdk)),sha256=digest(destination)))
    print(json.dumps(dict(platform=args.platform,profile=args.profile,records=len(ordered),
                          interfaces=len(interfaces),source_only=True,generated=generated),indent=2))


if __name__=='__main__':main()
