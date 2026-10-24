/// @file main.d
/// @brief Use the complete original uwvm_spot_bridge/srv/State_Response through an explicit native alias.
/// @details Preserve every original field and independent request/close status. No permission is granted.
module boston_dynamics_example;
import api = boston_dynamics.d.ros2.observation;
import core = native.d.observation;

/// @brief Enter the actual compiled language with one exact alias argument.
/// @return Original primary, independent close, then stdout status; no replay.
extern(C) uint nl_entry() @nogc nothrow
{
    if (core.argumentCount() != 2)
        return 22;
    api.Ros2Uwvm_spot_bridgeSrvState_Request requestValue;
    requestValue.field_token = 1;
    requestValue.field_nonce = 1;
    requestValue.field_budget_ns = 1000000000;
    auto result = api.callRos2Uwvm_spot_bridgeSrvState(core.argument(1), requestValue);
    return core.report(result);
}
