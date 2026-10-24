// SPDX-License-Identifier: Apache-2.0
/**
 * @file main.ts
 * @brief Enumerate original LinkCraft resource metadata on X2 Ultra variants.
 * @details No resource is played. Timestamps remain decimal uint64 strings and
 * returned names are JSON-escaped; a successful transport still requires a zero
 * original vendor response code.
 */
import {resourcesJson} from 'agibot/as/json';
import {listResources} from 'agibot/as/client';
import {commandAlias, exit, quote, write} from 'agibot/shared/as/wasi';

/** @brief WASI command entry for GetRobotResources. */
export function _start(): void
{
    const alias = commandAlias();
    if(alias.length == 0)
    {
        write('Expected exactly one granted Agibot alias\n', 2);
        exit(22);
        return;
    }
    const result = listResources(alias);
    if(result.error != 0 || result.value == null)
    {
        write(
            'GetRobotResources failed: ' + result.error.toString() + '; close: ' + result.cleanupError.toString() + '\n',
            2,
        );
        exit(result.error == 0 ? 22 : result.error);
        return;
    }
    const response = result.value!;
    const outputError = write(resourcesJson(response) + '\n');
    exit(outputError != 0 ? outputError : response.header.header.code == 0 ? 0 : 1);
}
