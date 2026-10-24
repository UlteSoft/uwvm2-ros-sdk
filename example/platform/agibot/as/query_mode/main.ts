// SPDX-License-Identifier: Apache-2.0
/**
 * @file main.ts
 * @brief Query the original motion mode through an audited ROS capability.
 * @details Compile to a WASI command. The sole argument selects a granted alias.
 * The complete GetMcAction response is decoded in guest memory; all original
 * fields are written as JSON, and vendor rejection produces a nonzero exit.
 */
import {modeJson} from 'agibot/as/json';
import {queryMode} from 'agibot/as/client';
import {commandAlias, exit, quote, write} from 'agibot/shared/as/wasi';

/** @brief WASI command entry; no JavaScript or Node runtime executes this function. */
export function _start(): void
{
    const alias = commandAlias();
    if(alias.length == 0)
    {
        write('Expected exactly one granted Agibot alias\n', 2);
        exit(22);
        return;
    }
    const result = queryMode(alias);
    if(result.error != 0 || result.value == null)
    {
        write(
            'GetMcAction failed: ' + result.error.toString() + '; close: ' + result.cleanupError.toString() + '\n',
            2,
        );
        exit(result.error == 0 ? 22 : result.error);
        return;
    }
    const response = result.value!;
    const outputError = write(modeJson(response) + '\n');
    exit(outputError != 0 ? outputError : response.header.code == 0 ? 0 : 1);
}
