import {NativeApi} from '../../../../../../../assemblyscript/ros2/roswasm';
import {Ros2Turtlebot3_msgsActionPatrolClient} from '../../../../../../../custom-types/robotis-turtlebot3-humble-complete/bounded_interfaces';
import {
    Ros2Turtlebot3_msgsActionPatrol_Goal as Goal,
    Ros2Turtlebot3_msgsActionPatrol_GoalCodec as GoalCodec,
    Ros2Turtlebot3_msgsActionPatrol_Result as Result,
    Ros2Turtlebot3_msgsActionPatrol_Feedback as Feedback,
} from '../../../../../../../custom-types/robotis-turtlebot3-humble-complete/bounded_records';
import {Report, readRequest, drive, writeBytes, writeReport, finish} from './client';

/**
 * @brief Execute the real Humble-profile original Patrol client in Wasm.
 * @details Reads all bounded basic stdin fields before any ROS owner opens.
 * Pure encode and x paths create no NativeApi/client. The positive path uses
 * the exact Humble generated complete original Goal/Feedback/Result codecs and
 * independent role owners. Normal errors preserve all cleanup results; no
 * native server, replay, automatic cancel or physical recovery is introduced.
 * @see readRequest drive writeReport
 */
export function _start(): void
{
    const input = readRequest();
    if(input.status || input.mode == 'x')
    {
        finish(input.status);
        return;
    }
    const goal = new Goal();
    goal.goal.x = input.mode == 's' ? 1 : 2;
    goal.goal.y = input.distance;
    goal.goal.z = input.count;
    if(input.encode)
    {
        const encoded = new GoalCodec().encodeChecked(goal);
        finish(encoded.status ? encoded.status : writeBytes(encoded.bytes));
        return;
    }
    const report = new Report(input.polls);
    const client = new Ros2Turtlebot3_msgsActionPatrolClient(new NativeApi(), input.aliases[0], input.aliases[1], input.aliases[2], input.aliases[3], '', 1);
    drive<Goal, Result, Feedback>(client, goal, report, input.polls, (value: Feedback): string => value.state, (value: Result): string => value.result);
    finish(writeReport(report));
}
