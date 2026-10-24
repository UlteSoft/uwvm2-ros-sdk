/**
 * @file main.ts
 * @brief Observe a native Gazebo joint-controller state, preserving every original motor field.
 * @details A real AssemblyScript compiler emits this entire application into
 * one Wasm command. Actual native ROS transport is provided by uwvm2-ros.
 */
import {NativeApi} from 'ros/as/ros1/roswasm';
import {waitMotorState} from 'unitree/as/ros1/observation';
import {readArguments, outputObservation, pauseForSample, proc_exit} from 'unitree/as/command_io';

/**
 * @brief Observe one complete native MotorState record using an existing alias.
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
    const result = waitMotorState(new NativeApi(), input[1], 250, pauseForSample);
    proc_exit(outputObservation(result));
}
