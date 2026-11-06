# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
import hashlib, json, xml.etree.ElementTree as ET

def prepare(output):
    import xacro, yaml
    from ament_index_python.packages import get_package_share_directory
    E = Path(__file__).resolve().parent
    lock = json.loads((E / 'provider.source.lock.json').read_text())
    packages = {'src/motoXY/moto_description/': Path(get_package_share_directory('moveit_resources_moto_description')), 'src/motoXY/moto_moveit_config/': Path(get_package_share_directory('moveit_resources_moto_moveit_config'))}
    observed = []
    for row in lock['files']:
        for prefix, root in packages.items():
            if row['source_path'].startswith(prefix):
                p = root / row['source_path'][len(prefix):]
                sha = hashlib.sha256(p.read_bytes()).hexdigest()
                if sha != row['sha256']:
                    raise RuntimeError('Original Yaskawa source changed: ' + str(p))
                observed.append({'path': str(p), 'sha256': sha})
    description = packages['src/motoXY/moto_description/']
    configuration = packages['src/motoXY/moto_moveit_config/']
    wrapper = ET.Element('robot', {'xmlns:xacro': 'http://www.ros.org/wiki/xacro', 'name': 'moto'})
    for p in [description / 'urdf/moto.urdf', configuration / 'config/moto.ros2_control.xacro']:
        ET.SubElement(wrapper, 'xacro:include', filename=str(p))
    ET.SubElement(wrapper, 'xacro:moto_ros2_control', name='motoFakeSystem', initial_positions_file=str(configuration / 'config/initial_positions.yaml'))
    document = xacro.parse(ET.tostring(wrapper, encoding='unicode'))
    xacro.process_doc(document)
    rendered = document.toxml()
    tree = ET.fromstring(rendered)
    systems = tree.findall('ros2_control')
    joints = ['joint_' + str(i) for i in range(1, 7)]
    if len(systems) != 1 or systems[0].findtext('hardware/plugin') != 'mock_components/GenericSystem' or [x.get('name') for x in systems[0].findall('joint')] != joints:
        raise RuntimeError('Original six-joint software model required')
    original = yaml.safe_load((configuration / 'config/ros2_controllers.yaml').read_text())
    manager = original['controller_manager']['ros__parameters']
    parameters = original['yaskawa']['ros__parameters']
    if 'moto_controller' in manager or parameters['command_interfaces'] != [] or parameters['state_interfaces'] != [] or (parameters['joints'] != joints):
        raise RuntimeError('Source-pinned controller repair precondition changed')
    if manager['yaskawa']['type'] != 'joint_trajectory_controller/JointTrajectoryController':
        raise RuntimeError('Original controller type changed')
    manager['moto_controller'] = manager.pop('yaskawa')
    original['moto_controller'] = original.pop('yaskawa')
    parameters['command_interfaces'] = ['position']
    parameters['state_interfaces'] = ['position', 'velocity']
    description_file = output / 'robot.urdf'
    description_file.write_text(rendered)
    controller_file = output / 'controllers.yaml'
    controller_file.write_text(yaml.safe_dump(original, sort_keys=False))
    result = {'original_inputs': observed, 'controller_name': 'moto_controller', 'joint_names': joints, 'hardware_plugin': 'mock_components/GenericSystem', 'controller_plugin': 'joint_trajectory_controller/JointTrajectoryController', 'description': str(description_file), 'controllers': str(controller_file), 'render_sha256': hashlib.sha256(rendered.encode()).hexdigest(), 'configuration_sha256': hashlib.sha256(controller_file.read_bytes()).hexdigest(), 'physical_robot_authorized': False, 'composition_repairs': ['Instantiate the original disabled moto_ros2_control macro in an owned wrapper', 'Align the original controller configuration with the upstream moto_controller spawner name', 'Select the position command and position/velocity state interfaces already declared in the original control macro'], 'qualification_scope': 'Original GP8 software model and original ros2_control plugins on installed Jazzy; Humble execution is not claimed'}
    (output / 'scene.json').write_text(json.dumps(result, indent=2) + '\n')
    return result
