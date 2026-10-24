// SPDX-License-Identifier: Apache-2.0
/**
 * @file main.ts
 * @brief Subscribe to one original motion-control state with a finite deadline.
 * @details Retained ROS samples preserve their timestamps. An empty queue is
 * polled for at most three seconds using explicitly granted WASI clock access.
 */
import {stateJson} from 'agibot/as/json';
import {nextMotionState} from 'agibot/as/client';
import {commandAlias, exit, quote, write} from 'agibot/shared/as/wasi';

/** @brief WASI command entry for a single complete McCommonState observation. */
export function _start(): void
{
    const alias = commandAlias();
    if(alias.length == 0)
    {
        write('Expected exactly one granted Agibot alias\n', 2);
        exit(22);
        return;
    }
    const result = nextMotionState(alias, 3000);
    if(result.error != 0 || result.value == null)
    {
        write(
            'McCommonState failed: ' + result.error.toString() + '; close: ' + result.cleanupError.toString() + '\n',
            2,
        );
        exit(result.error == 0 ? 22 : result.error);
        return;
    }
    const response = result.value!;
    const outputError = write(stateJson(response) + '\n');
    exit(outputError);
}
