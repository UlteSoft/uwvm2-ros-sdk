/** @brief Observe complete drdds/msg/JointData from an explicitly granted fixture alias. */
import {wait_joint, output} from "deep_robotics/js/ros2/observation";
globalThis.exitCode = 22;
if(__uwvm.argv.length === 2)
{
    const result = wait_joint(__uwvm.argv[1], 250, () => __uwvm.pause_ms(20));
    globalThis.exitCode = output(result);
}
