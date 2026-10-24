/**
 * @file main_ros1.ts
 * @brief Retained universal_robots native ROS application flow over the public typed SDK.
 * @details Select the exact original source profile and manually configured deployment before use. Observe the
 * operation and cleanup statuses separately. Source retention does not establish native communication, current
 * robot state, or controller compatibility.
 * @see document/platform/universal_robots/en_US/README.md
 */

/**
 * Actual ROS1 WASI command. Standard input contains one explicit counted alias.
 * Default-zero Runtime authority exits13 before subscription or a native effect.
 */
import {readOnce} from "universal_robots/flows/as/telemetry_ros1";
import {readAlias, proc_exit} from "universal_robots/flows/as/wasi_alias";

export function _start(): void
{
    const input = readAlias();
    const code = input.status ? input.status : readOnce(input.alias);
    proc_exit(code < 126 ? code : 125);
}
