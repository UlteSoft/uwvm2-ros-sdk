## @brief Validate a whole original record with the genuine Nim codec.
import "flexiv/nim/ros1/flexiv-ros1-noetic-complete/records"
import std/strutils
var bytes = newSeq[byte](2)
let used = stdin.readBuffer(addr bytes[0], bytes.len)
bytes.setLen(used)
try:
    let value = decodeRos1Flexiv_msgsMode(bytes)
    let encoded = encode(value)
    for item in encoded: stdout.write(toHex(item, 2))
    stdout.write("\n")
except CatchableError as failure:
    stderr.writeLine(failure.msg)
    quit(22)
