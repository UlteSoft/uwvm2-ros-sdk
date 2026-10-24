## @brief Validate a whole original record with the genuine Nim codec.
import "franka/nim/ros1/franka-ros1-complete/records"
import std/strutils
var bytes = newSeq[byte](41)
let used = stdin.readBuffer(addr bytes[0], bytes.len)
bytes.setLen(used)
try:
    let value = decodeRos1Franka_gripperGraspGoal(bytes)
    let encoded = encode(value)
    for item in encoded: stdout.write(toHex(item, 2))
    stdout.write("\n")
except CatchableError as failure:
    stderr.writeLine(failure.msg)
    quit(22)
