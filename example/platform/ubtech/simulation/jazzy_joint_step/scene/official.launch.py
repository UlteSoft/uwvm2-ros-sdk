"""Launch official ROS nodes only, after external job/namespace admission.

The model and parameter files come from prepare.py. This
launch neither implements a fake response nor registers a portable VM import.
No physical hardware plugin, RViz or vendor real-robot launcher is selected.
"""
from pathlib import Path
import hashlib
import json
import xml.etree.ElementTree as ET
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument, OpaqueFunction
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node


def setup(context):
    directory = Path(LaunchConfiguration('prepared').perform(context)).resolve(strict=True)
    namespace = LaunchConfiguration('namespace').perform(context).strip('/')
    if namespace not in ('uwvm_sim/fourier', 'uwvm_sim/ubtech'):
        raise RuntimeError('Only an explicitly reviewed software-simulation namespace is admitted')
    materialization = json.loads((directory / 'materialization.json').read_text())
    if materialization['namespace'] != namespace:
        raise RuntimeError('Prepared files belong to another simulation namespace')
    for filename in ('official-model-with-mock.urdf', 'controllers.yaml'):
        if hashlib.sha256((directory / filename).read_bytes()).hexdigest() != materialization['prepared_files'][filename]:
            raise RuntimeError('Prepared model/controller data changed')
    model = (directory / 'official-model-with-mock.urdf').read_text()
    parsed = ET.fromstring(model)
    plugins = parsed.findall('ros2_control/hardware/plugin')
    if len(parsed.findall('ros2_control')) != 1 or len(plugins) != 1 or plugins[0].text != 'mock_components/GenericSystem':
        raise RuntimeError('The official software-only hardware plugin is missing')
    configuration = str(directory / 'controllers.yaml')
    manager = '/' + namespace + '/controller_manager'
    return [
        Node(package='robot_state_publisher', executable='robot_state_publisher',
             namespace=namespace, parameters=[{'robot_description': model}],
             remappings=[('joint_states', 'joint_state_broadcaster/joint_states')], output='screen'),
        Node(package='controller_manager', executable='ros2_control_node',
             namespace=namespace, parameters=[configuration],
             remappings=[('robot_description', '/' + namespace + '/robot_description')], output='screen'),
        Node(package='controller_manager', executable='spawner', namespace=namespace,
             arguments=['joint_state_broadcaster', '--controller-manager', manager,
                        '--controller-manager-timeout', '20'], output='screen'),
        Node(package='controller_manager', executable='spawner', namespace=namespace,
             arguments=['bounded_position_controller', '--controller-manager', manager,
                        '--controller-manager-timeout', '20'], output='screen')]


def generate_launch_description():
    return LaunchDescription([DeclareLaunchArgument('prepared'),
                              DeclareLaunchArgument('namespace'), OpaqueFunction(function=setup)])
