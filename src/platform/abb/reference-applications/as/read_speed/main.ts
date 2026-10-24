/**
 * @file main.ts
 * @brief Read the complete RAPID motion speed ratio once.
 * @details The empty request changes no speed override. Controller refusal retains the full reply.
 * Build here with xmake and execute the emitted WASI command through a ROS 2
 * host granting the exact existing alias. No host JavaScript emulation is used.
 * @see readSpeed
 */
import {NativeApi} from 'ros/as/ros2/roswasm';
import {readSpeed} from 'abb/as/observation';
import {readArguments, outputObservation, proc_exit} from '../command_io';

/**
 * @brief Execute one read_speed observation with complete result reporting.
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
    const result = readSpeed(new NativeApi(), input.values[1]);
    proc_exit(outputObservation(result));
}
