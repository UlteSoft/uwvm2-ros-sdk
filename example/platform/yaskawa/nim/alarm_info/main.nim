## @file main.nim
## @brief Observe one complete original ROS 2 alarm_info native message.
## @details One explicit alias is required; the real Nim observer closes before stdout.
import yaskawa/nim/ros2/observation
proc nlEntry(): uint32 {.exportc: "nl_entry", cdecl.} =
    ## @brief Enter the genuine compiled Nim command with its original numeric status.
    ## @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
    ## Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
    ## @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
    ## primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
    if argumentCount() != 2:
        return 22
    var value = waitAlarmInfo(argument(1), 250)
    report(value)
