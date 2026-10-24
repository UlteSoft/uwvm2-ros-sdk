/** @brief Observe complete booster_interface/msg/RemoteControllerState from an explicitly granted fixture alias. */
import {wait_remote_controller, output} from "booster/js/ros2/observation";
globalThis.exitCode = 22;
if(__uwvm.argv.length === 2)
{
    const result = wait_remote_controller(__uwvm.argv[1], 250, () => __uwvm.pause_ms(20));
    globalThis.exitCode = output(result);
}
