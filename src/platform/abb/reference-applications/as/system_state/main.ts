/**
 * @file main.ts
 * @brief Subscribe and attempt one complete nonblocking ABB SystemState read.
 * @details Idle status 11 remains observable. The complete header, flags, tasks, and units are preserved.
 * Build here with xmake and execute the emitted WASI command through a ROS 2
 * host granting the exact existing alias. No host JavaScript emulation is used.
 * @see readSystemState
 */
import {NativeApi} from 'ros/as/ros2/roswasm';
import {readSystemState} from 'abb/as/observation';
import {readArguments, outputObservation, proc_exit} from '../command_io';

/**
 * @brief Execute one system_state observation with complete result reporting.
 * @details Usage: application ALIAS. Exactly 2 arguments
 * are required including the program name. Input refusal returns 22 before any
 * ROS operation; otherwise checked cleanup precedes stdout and process exit.
 * No timer, executor, retry, or controller mode change is created.
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
    const result = readSystemState(new NativeApi(), input.values[1]);
    proc_exit(outputObservation(result));
}
