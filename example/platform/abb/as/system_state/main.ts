/**
 * @file main.ts
 * @details Namespace imports are resolved by the SDK build configuration.
 * @brief Retain one subscription while awaiting a complete ABB SystemState sample.
 * @details At most 250 polls share one owner, with 20 ms monotonic waits after idle. All original state fields survive.
 * Build here with xmake and execute the emitted WASI command through a ROS 2
 * host granting the exact existing alias. No host JavaScript emulation is used.
 * @see waitSystemState
 */
import {NativeApi} from 'ros/as/ros2/roswasm';
import {waitSystemState} from 'abb/as/observation';
import {readArguments, outputObservation, proc_exit, pauseForSample} from 'abb/as/command_io';

/**
 * @brief Execute one system_state observation with complete result reporting.
 * @details Usage: application ALIAS. Exactly 2 arguments
 * are required including the program name. Input refusal returns 22 before any
 * ROS operation; otherwise checked cleanup precedes stdout and process exit.
 * The state command waits only between idle polls. Service requests are never replayed.
 * @see readArguments, outputObservation
 */
export function _start(): void
{
    const input = readArguments();
    if(input.status || input.values.length != 2)
    {
        proc_exit(22);
        return;
    }
    const result = waitSystemState(new NativeApi(), input.values[1], 250, pauseForSample);
    proc_exit(outputObservation(result));
}
