/**
 * @file main.ts
 * @brief Observe all four joystick axes and the complete key bitmask without generating input.
 * @details A real AssemblyScript compiler emits this entire application into
 * one Wasm command. Actual native ROS transport is provided by uwvm2-ros.
 */
import {NativeApi} from 'ros/as/ros2/roswasm';
import {waitWirelessController} from 'unitree/as/ros2/observation';
import {readArguments, outputObservation, pauseForSample, proc_exit} from 'unitree/as/command_io';

/**
 * @brief Observe one complete native WirelessController record using an existing alias.
 * @details Exactly one alias argument is required. The observation retains one
 * owner for at most 250 polls with twenty-millisecond waits only after idle.
 * All owners close before stdout/exit. No robot command is ever published.
 */
export function _start(): void
{
    const input = readArguments();
    if(input.length != 2)
    {
        proc_exit(22);
        return;
    }
    const result = waitWirelessController(new NativeApi(), input[1], 250, pauseForSample);
    proc_exit(outputObservation(result));
}
