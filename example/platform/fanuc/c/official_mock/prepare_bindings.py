# SPDX-License-Identifier: Apache-2.0
"""Generate guest records from this example's complete original ROS declarations."""
from pathlib import Path
import argparse
import hashlib
import importlib.util
import json
import sys


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--sdk-root', required=True)
    parser.add_argument('--output', required=True)
    args = parser.parse_args()
    sdk = Path(args.sdk_root).resolve()
    types = Path(__file__).resolve().parent / 'types'
    for entry in json.loads((types / 'sources.json').read_text())['files']:
        source = types / entry['path']
        if hashlib.sha256(source.read_bytes()).hexdigest() != entry['sha256']:
            raise RuntimeError('Original ROS declaration changed: ' + entry['path'])
    # This maintained entry exposes the common industrial schema API; it does
    # not generate or depend on any ABB model, native node or application.
    loader = sdk / 'tools/platform/abb/bindings.py'
    spec = importlib.util.spec_from_file_location('_joint_schema_api', loader)
    module = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = module
    spec.loader.exec_module(module)
    api = module.api_for(sdk)
    output = Path(args.output).resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    api.generate(types / 'catalog.json', output, guest_only=True,
                 helper_source=(sdk / 'tools/platform/unitree/native/metadata_reader.cc.in').read_bytes())


if __name__ == '__main__':
    main()
