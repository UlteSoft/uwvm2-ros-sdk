## @brief Validate a whole original record with the genuine Nim codec.
import "franka/nim/ros2/franka-ros2-complete/records"
import std/strutils
var bytes = newSeq[byte](262)
let used = stdin.readBuffer(addr bytes[0], bytes.len)
bytes.setLen(used)
try:
    let value = decodeRos2Franka_msgsSrvSetCartesianStiffness_Response(bytes)
    let encoded = encode(value)
    for item in encoded: stdout.write(toHex(item, 2))
    stdout.write("\n")
except CatchableError as failure:
    stderr.writeLine(failure.msg)
    quit(22)
