/// @file main.d
/// @brief Use the complete original scout_msgs/msg/ScoutRCState through an explicit native alias.
/// @details Preserve every original field and independent request/close status. No permission is granted.
module agilex_example;
import api = agilex.d.ros2.observation;
import core = native.d.observation;

/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
extern(C) uint nl_entry() @nogc nothrow
{
    if (core.argumentCount() != 2)
        return 22;
    auto result = api.waitRos2Scout_msgsMsgScoutRCState(core.argument(1), 250);
    return core.report(result);
}
