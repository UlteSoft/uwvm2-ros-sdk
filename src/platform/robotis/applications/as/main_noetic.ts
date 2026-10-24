/**
 * @file main_noetic.ts
 * @brief Preserve the original robotis explicit-alias application flow.
 * @details The caller supplies aliases and complete command bytes; source selection does not grant permission.
 * Operation failures and explicit resource cleanup remain distinct; admitted effects are never replayed.
 * Canonical storage and input bounds come from the selected public typed SDK.
 * This implementation source still requires a shared provider build and native ROS qualification.
 */
/**
 * Actual ROS1 WASI command. Standard input contains one explicit counted alias.
 * Default-zero Runtime authority exits13 before subscription or a native effect.
 */
import {readOnce, cleanupStatus} from "./telemetry_noetic";
import {readAlias, proc_exit} from "./wasi_alias";

export function _start(): void
{
    const input = readAlias();
    const code = input.status ? input.status : readOnce(input.alias);
    const finalCode = code ? code : cleanupStatus;
    proc_exit(finalCode < 126 ? finalCode : 125);
}
