/** @brief Observe complete drdds/msg/RobotStatus from an explicitly granted fixture alias. */
import {wait_robot_status, output} from "deep_robotics/js/ros2/observation";
globalThis.exitCode = 22;
if(__uwvm.argv.length === 2)
{
    const result = wait_robot_status(__uwvm.argv[1], 250, () => __uwvm.pause_ms(20));
    globalThis.exitCode = output(result);
}
