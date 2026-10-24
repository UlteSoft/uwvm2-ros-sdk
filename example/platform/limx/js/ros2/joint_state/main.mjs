/** @brief Observe complete uwvm_limx_bridge/msg/JointState from an explicitly granted fixture alias. */
import {wait_joint_state, output} from "limx/js/ros2/observation";
globalThis.exitCode = 22;
if(__uwvm.argv.length === 2)
{
    const result = wait_joint_state(__uwvm.argv[1], 250, () => __uwvm.pause_ms(20));
    globalThis.exitCode = output(result);
}
