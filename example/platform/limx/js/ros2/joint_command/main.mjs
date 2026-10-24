/** @brief Observe complete uwvm_limx_bridge/msg/JointCmdLimx from an explicitly granted fixture alias. */
import {wait_joint_command, output} from "limx/js/ros2/observation";
globalThis.exitCode = 22;
if(__uwvm.argv.length === 2)
{
    const result = wait_joint_command(__uwvm.argv[1], 250, () => __uwvm.pause_ms(20));
    globalThis.exitCode = output(result);
}
