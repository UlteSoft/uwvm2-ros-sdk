/**
 * @file main.ts
 * @details Namespace imports are resolved by the SDK build configuration.
 * @brief Read the complete value of one configured ABB IO signal.
 * @details The strict UTF-8 signal name is validated before opening. No IO write is performed.
 * Build here with xmake and execute the emitted WASI command through a ROS 2
 * host granting the exact existing alias. No host JavaScript emulation is used.
 * @see readIO
 */
import {NativeApi} from 'ros/as/ros2/roswasm';
import {readIO} from 'abb/as/observation';
import {readArguments, outputObservation, proc_exit, pauseForSample} from 'abb/as/command_io';

/**
 * @brief Execute one read_io observation with complete result reporting.
 * @details Usage: application ALIAS SIGNAL. Exactly 3 arguments
 * are required including the program name. Input refusal returns 22 before any
 * ROS operation; otherwise checked cleanup precedes stdout and process exit.
 * The state command waits only between idle polls. Service requests are never replayed.
 * @see readArguments, outputObservation
 */
export function _start(): void
{
    const input = readArguments();
    if(input.status || input.values.length != 3)
    {
        proc_exit(22);
        return;
    }
    const result = readIO(new NativeApi(), input.values[1], input.values[2]);
    proc_exit(outputObservation(result));
}
