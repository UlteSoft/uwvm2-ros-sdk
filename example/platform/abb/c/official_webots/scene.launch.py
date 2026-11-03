"""ABB-only scene using original Webots driver, controller and simulator clock."""
import os
from pathlib import Path
from launch import LaunchDescription,LaunchService
from launch.actions import ExecuteProcess,RegisterEventHandler,EmitEvent
from launch.event_handlers import OnProcessExit
from launch.events import Shutdown
from launch_ros.actions import Node
from webots_ros2_driver.webots_controller import WebotsController
from webots_ros2_driver.webots_launcher import Ros2SupervisorLauncher


def main():
    here=Path(__file__).resolve().parent
    runtime=Path(os.environ['WEBOTS_HOME'])
    description=Path(os.environ.get('UWVM_ABB_DESCRIPTION',str(here/'abb-driver.urdf'))).read_text()
    configuration=os.environ.get('UWVM_ABB_CONFIGURATION',str(here/'abb-controller.yaml'))
    world=os.environ.get('UWVM_ABB_WEBOTS_WORLD',str(here/'abb.wbt'))
    xvfb_log=os.environ['UWVM_ABB_XVFB_ERROR_LOG']
    xvfb_arguments=os.environ.get('UWVM_ABB_XVFB_ARGUMENTS','-screen 0 1280x1024x24 -nolisten tcp')
    webots=ExecuteProcess(cmd=['xvfb-run','--auto-servernum','--error-file='+xvfb_log,'--server-args='+xvfb_arguments,str(runtime/'webots'),'--batch','--no-rendering','--mode=fast','--stdout','--stderr','--minimize',world],output='screen')
    driver=WebotsController(robot_name='abbirb4600',namespace='abb',parameters=[{'robot_description':description,'use_sim_time':True,'set_robot_state_publisher':True},configuration],output='screen')
    nodes=[webots,driver,Ros2SupervisorLauncher(respawn=False),Node(package='robot_state_publisher',executable='robot_state_publisher',namespace='abb',parameters=[{'robot_description':'<robot name=""><link name=""/></robot>','use_sim_time':True}],output='screen')]
    for name in ['abb_joint_state_broadcaster','abb_joint_trajectory_controller']:
        nodes.append(Node(package='controller_manager',executable='spawner',arguments=[name,'-c','/abb/controller_manager','--controller-manager-timeout','40'],output='screen'))
    nodes.append(RegisterEventHandler(OnProcessExit(target_action=webots,on_exit=[EmitEvent(event=Shutdown(reason='Owned Webots exited'))])))
    service=LaunchService();service.include_launch_description(LaunchDescription(nodes));return service.run()


if __name__=='__main__':raise SystemExit(main())
