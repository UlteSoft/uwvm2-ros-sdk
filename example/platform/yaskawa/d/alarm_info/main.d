/// @file main.d
/// @brief Observe one complete original ROS 2 alarm_info native message.
/// @details One explicit alias is required; the real D observer closes before stdout.
module yaskawa_example;
import api = yaskawa.d.ros2.observation;
/// @brief Enter the genuine compiled D command and preserve its full numeric status.
/// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
/// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
/// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
/// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
extern(C) uint nl_entry() @nogc nothrow
{
    if (api.argumentCount() != 2)
    {
        return 22;
    }
    auto value = api.waitAlarmInfo(api.argument(1), 250);
    return api.report(value);
}
