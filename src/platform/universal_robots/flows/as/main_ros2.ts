/**
 * @file main_ros2.ts
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/**
 * Actual ROS2 WASI command; this module imports only the selected backend.
 * Read one counted alias from basic stdin; no implicit grant or retry exists.
 */
import {readOnce} from "universal_robots/flows/as/telemetry_ros2";
import {readAlias, proc_exit} from "universal_robots/flows/as/wasi_alias";

export function _start(): void
{
    const input = readAlias();
    const code = input.status ? input.status : readOnce(input.alias);
    proc_exit(code < 126 ? code : 125);
}
