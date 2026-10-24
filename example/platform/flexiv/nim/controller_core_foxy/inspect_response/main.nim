## @brief Validate a whole original record with the genuine Nim codec.
import "flexiv/nim/ros2/flexiv-controller-core-foxy-complete/records"
import std/strutils
var bytes = newSeq[byte](16981)
let used = stdin.readBuffer(addr bytes[0], bytes.len)
bytes.setLen(used)
try:
    let value = decodeRos2Trajectory_msgsMsgJointTrajectory(bytes)
    let encoded = encode(value)
    for item in encoded: stdout.write(toHex(item, 2))
    stdout.write("\n")
except CatchableError as failure:
    stderr.writeLine(failure.msg)
    quit(22)
