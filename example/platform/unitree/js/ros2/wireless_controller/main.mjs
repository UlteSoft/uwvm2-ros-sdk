/**
 * @file main.mjs
 * @brief Observe the entire original ROS 2 WirelessController through the genuine js guest.
 * @details Emit every canonical byte after explicit cleanup. The final process
 * status selects primary, cleanup or output failure and is capped at 125.
 */
import {wait_wireless_controller, output} from 'unitree/js/ros2/observation';

// Validate exactly one alias before acquiring any native resource.
if(__uwvm.argv.length !== 2)
{
    globalThis.exitCode = 22;
}
else
{
    // Only idle permits the 20 ms pause within the finite 250-poll budget.
    const result = wait_wireless_controller(__uwvm.argv[1], 250, () => __uwvm.pause_ms(20));

    // Preserve full independent facts after close; QuickJS reads this exit slot.
    globalThis.exitCode = output(result);
}
