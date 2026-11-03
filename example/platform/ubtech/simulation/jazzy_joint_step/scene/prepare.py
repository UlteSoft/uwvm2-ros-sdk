"""Prepare an official ROS GenericSystem model; implement no simulated server.

The exact vendor URDF supplies topology and limits. Only the official
mock_components/GenericSystem and ROS controllers implement command/state
behavior. Their ideal software scope is not dynamics or real robot safety.
This data preparer starts no node, compiler, lease or hardware process.
"""
import argparse
from decimal import Decimal, ROUND_CEILING, ROUND_FLOOR
import hashlib
import json
from pathlib import Path
import shutil
import sys
import xml.etree.ElementTree as ET


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--profile', type=Path, required=True)
    parser.add_argument('--adapter-template', type=Path, required=True)
    parser.add_argument('--model', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--simulate-no-feedback', action='store_true',
                        help='Use the official GenericSystem disable_commands fault mode')
    args = parser.parse_args()
    if sys.platform != 'linux':
        raise RuntimeError('Source is Mac-authored; actual preparation runs in the admitted Linux job')
    profile = json.loads(args.profile.read_text())
    adapter = json.loads(args.adapter_template.read_text())
    route = dict(platform=profile['platform'], portable_contract_version=adapter['contract_version'])
    if route['portable_contract_version'] != '0.1.0':
        raise RuntimeError('Only the installed portable 0.1.0 contract is admitted')
    candidate = dict(namespace=profile['namespace'], vendor_model=profile['model'], adapter_draft=adapter)
    if profile['category'] != 'official_ros_ideal_controller_reference':
        raise RuntimeError('This preparer is restricted to the selected official ideal reference')
    if candidate['namespace'] != 'uwvm_sim/' + route['platform'] or route['platform'] not in ('fourier', 'ubtech'):
        raise RuntimeError('The model route has no reviewed simulation namespace')
    raw = args.model.read_bytes()
    if hashlib.sha256(raw).hexdigest() != candidate['vendor_model']['sha256']:
        raise RuntimeError('The exact official vendor model changed')
    if b'<!DOCTYPE' in raw or b'<!ENTITY' in raw:
        raise RuntimeError('External model entities are not admitted')
    license_file = args.model.with_name('LICENSE.upstream')
    if hashlib.sha256(license_file.read_bytes()).hexdigest() != candidate['vendor_model']['license_sha256']:
        raise RuntimeError('The original model license bytes are not preserved')
    root = ET.fromstring(raw, parser=ET.XMLParser(target=ET.TreeBuilder(insert_comments=True)))
    if root.tag != 'robot' or root.findall('ros2_control'):
        raise RuntimeError('Use one untouched vendor model without an existing ros2_control hardware route')
    joints = candidate['adapter_draft']['joints']
    if not 1 <= len(joints) <= 16:
        raise RuntimeError('The consumed portable 0.1.0 intersection requires 1..16 joints')
    names = [joint['native_joint'] for joint in joints]
    if len(set(names)) != len(names):
        raise RuntimeError('Duplicate joint mappings are not a bijection')
    hardware = ET.SubElement(root, 'ros2_control', name='PortableOfficialIdealSystem', type='system')
    backend = ET.SubElement(hardware, 'hardware')
    ET.SubElement(backend, 'plugin').text = 'mock_components/GenericSystem'
    ET.SubElement(backend, 'param', name='calculate_dynamics').text = 'false'
    ET.SubElement(backend, 'param', name='mock_sensor_commands').text = 'false'
    ET.SubElement(backend, 'param', name='disable_commands').text = 'true' if args.simulate_no_feedback else 'false'
    for index, joint in enumerate(joints):
        if joint['slot'] != index or joint['kind'] != 'bounded_revolute' or joint['source_unit'] != 'rad':
            raise RuntimeError('Only dense, bounded revolute radians are admitted')
        if joint['sign'] != 1 or joint['zero_offset_microrad'] != 0:
            raise RuntimeError('This source candidate admits only the reviewed identity joint transform')
        matches = [value for value in root.findall('joint') if value.get('name') == joint['native_joint']]
        if len(matches) != 1 or matches[0].get('type') != 'revolute' or matches[0].find('mimic') is not None:
            raise RuntimeError('Missing, continuous, fixed or coupled native joint')
        limits = matches[0].find('limit')
        if limits is None:
            raise RuntimeError('Official model has no finite bounds')
        lower = Decimal(limits.attrib['lower']); upper = Decimal(limits.attrib['upper'])
        if not lower.is_finite() or not upper.is_finite():
            raise RuntimeError('Nonfinite official joint bounds')
        lo = int((lower * 1000000).to_integral_value(rounding=ROUND_CEILING))
        hi = int((upper * 1000000).to_integral_value(rounding=ROUND_FLOOR))
        if (lo, hi) != (joint['lower_microrad'], joint['upper_microrad']) or not lo < hi:
            raise RuntimeError('External limits differ from the exact model')
        entry = ET.SubElement(hardware, 'joint', name=joint['native_joint'])
        ET.SubElement(entry, 'command_interface', name='position')
        state = ET.SubElement(entry, 'state_interface', name='position')
        initial = max(lo, min(0, hi))
        ET.SubElement(state, 'param', name='initial_value').text = str(Decimal(initial) / 1000000)
        velocity = ET.SubElement(entry, 'state_interface', name='velocity')
        ET.SubElement(velocity, 'param', name='initial_value').text = '0'
    output = args.output; output.mkdir(parents=True, exist_ok=False)
    (output / 'original-vendor-model.urdf').write_bytes(raw)
    shutil.copyfile(license_file, output / 'LICENSE.upstream')
    (output / 'MODEL_ORIGIN.json').write_text(json.dumps(candidate['vendor_model'], indent=2) + '\n')
    ET.ElementTree(root).write(output / 'official-model-with-mock.urdf', encoding='utf-8', xml_declaration=True)
    # JSON is a YAML 1.2 subset accepted as an explicit ROS parameter document.
    prefix = '/' + candidate['namespace'].strip('/')
    configuration = {
        prefix + '/controller_manager': {'ros__parameters': {'update_rate': 100,
            'joint_state_broadcaster': {'type': 'joint_state_broadcaster/JointStateBroadcaster'},
            'bounded_position_controller': {'type': 'joint_trajectory_controller/JointTrajectoryController'}}},
        prefix + '/joint_state_broadcaster': {'ros__parameters': {'use_local_topics': True,
            'joints': names, 'interfaces': ['position', 'velocity']}},
        prefix + '/bounded_position_controller': {'ros__parameters': {'joints': names,
            'command_interfaces': ['position'], 'state_interfaces': ['position', 'velocity'],
            'allow_partial_joints_goal': False,
            'constraints': {'goal_time': 2.0, **{name: {'trajectory': 0.02, 'goal': 0.001}
                                               for name in names}}}}}
    (output / 'controllers.yaml').write_text(json.dumps(configuration, indent=2) + '\n')
    record = dict(status='DATA_PREPARED_ONLY_SIMULATION_NOT_RUN', platform=route['platform'],
        official_model_sha256=hashlib.sha256(raw).hexdigest(), namespace=candidate['namespace'],
        prepared_files={name: hashlib.sha256((output / name).read_bytes()).hexdigest()
                        for name in ('official-model-with-mock.urdf', 'controllers.yaml')},
        source_contract_version=route['portable_contract_version'],
        adapter_template_sha256=hashlib.sha256(args.adapter_template.read_bytes()).hexdigest(),
        official_disable_commands_fault=args.simulate_no_feedback,
        physical_hardware=False, simulated_implementation='Official ROS GenericSystem/JTC only',
        policy_or_host_implementation_created=False)
    (output / 'materialization.json').write_text(json.dumps(record, indent=2) + '\n')
    print(json.dumps(record), flush=True)


if __name__ == '__main__':
    main()
