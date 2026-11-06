# SPDX-License-Identifier: Apache-2.0
"""Compose the pinned original CRX10iA software mock and explicit initial state."""
from pathlib import Path
import hashlib
import json
import xml.etree.ElementTree as ET


def prepare(output):
    import xacro
    from ament_index_python.packages import get_package_share_directory
    example = Path(__file__).resolve().parent
    lock = json.loads((example / 'provider.source.lock.json').read_text())
    packages = {name: Path(get_package_share_directory(name))
                for name in ('fanuc_hardware_interface', 'fanuc_crx_description')}
    observed = []
    for entry in lock['files']:
        package, _, relative = entry['source_path'].partition('/')
        if package not in packages:
            continue
        source = packages[package] / relative
        digest = hashlib.sha256(source.read_bytes()).hexdigest()
        if digest != entry['sha256']:
            raise RuntimeError('Original FANUC input changed: ' + entry['source_path'])
        observed.append({'path': str(source), 'sha256': digest})
    model = packages['fanuc_hardware_interface'] / 'robot/crx10ia.urdf.xacro'
    xml = xacro.process_file(str(model), mappings={
        'use_mock': 'true', 'robot_ip': '127.0.0.1', 'prefix': '',
        'origin_xyz': '0 0 0', 'origin_rpy': '0 0 0',
        'parent_link': 'world', 'child_link': 'end_effector'}).toxml()
    tree = ET.fromstring(xml)
    systems = tree.findall('ros2_control')
    if (len(systems) != 1 or systems[0].find('hardware/plugin').text != 'mock_components/GenericSystem'
        or [joint.get('name') for joint in systems[0].findall('joint')] != ['J' + str(i) for i in range(1, 7)]):
        raise RuntimeError('Only the original six-joint GenericSystem software model is admitted')
    initial = json.loads((example / 'software-initial-state.json').read_text())
    for entry in initial['states']:
        matches = systems[0].findall("gpio[@name='" + entry['gpio'] + "']/state_interface[@name='" + entry['interface'] + "']")
        if len(matches) != 1 or matches[0].find('param[@name="initial_value"]') is not None:
            raise RuntimeError('Explicit software initial-state field changed')
        ET.SubElement(matches[0], 'param', name='initial_value').text = str(entry['value'])
    rendered = ET.tostring(tree, encoding='unicode')
    description = output / 'robot.urdf'
    description.write_text(rendered)
    yaml = (packages['fanuc_hardware_interface'] / 'config/ros2_controllers.yaml').read_text()
    for token, value in [('prefix', ''), ('gpio_config_package', 'fanuc_hardware_interface'),
                         ('gpio_config_path', 'config/example_gpio_config.yaml')]:
        yaml = yaml.replace('$(var ' + token + ')', value)
    if '$(var ' in yaml:
        raise RuntimeError('Unresolved original controller configuration')
    controllers = output / 'controllers.yaml'
    controllers.write_text(yaml)
    result = {'original_inputs': observed, 'original_render_sha256': hashlib.sha256(xml.encode()).hexdigest(),
              'render_sha256': hashlib.sha256(rendered.encode()).hexdigest(), 'software_initial_state': initial,
              'hardware_plugin': 'mock_components/GenericSystem',
              'controller_plugin': 'fanuc_controllers/ScaledJointTrajectoryController',
              'physical_robot_authorized': False, 'description': str(description), 'controllers': str(controllers)}
    (output / 'scene.json').write_text(json.dumps(result, indent=2) + '\n')
    return result
