import {command} from './client.mjs';
import {Ros2Turtlebot3_msgsActionPatrolClient} from '../../../../../../../custom-types/robotis-turtlebot3-main-complete/bounded_interfaces.mjs';
import {Ros2Turtlebot3_msgsActionPatrol_GoalCodec} from '../../../../../../../custom-types/robotis-turtlebot3-main-complete/bounded_records.mjs';

/**
 * @brief Run the pinned main-profile Patrol command inside the Wasm engine.
 * @details Uses main's exact generated original action owner/Goal codec. No
 * activity occurs on import; command's bounded input/authority/cleanup rules apply.
 * @returns {number} Primary then cleanup status, capped at 125 by command.
 * @see command
 */
export function main()
{
    return command(Ros2Turtlebot3_msgsActionPatrolClient, Ros2Turtlebot3_msgsActionPatrol_GoalCodec);
}
