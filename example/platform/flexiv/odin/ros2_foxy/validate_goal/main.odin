package main
// @brief Validate a complete original value with genuine Odin codec logic.
import records "flexiv:odin/ros2/flexiv-ros2-foxy-complete"
foreign {
    fread :: proc "c" (pointer: rawptr, size, count: uintptr, stream: rawptr) -> uintptr ---
    fwrite :: proc "c" (pointer: rawptr, size, count: uintptr, stream: rawptr) -> uintptr ---
    ferror :: proc "c" (stream: rawptr) -> i32 ---
    exit :: proc "c" (status: i32) ---
    stdin, stdout: rawptr
}
main :: proc() {
    input: [113]u8
    output: [113]u8
    count := int(fread(raw_data(input[:]), 1, 113, stdin))
    if ferror(stdin) != 0 { exit(5) }
    value, status := records.decode_Ros2Flexiv_msgsMsgJointPosVel(input[:count], context.allocator)
    if status != 0 { exit(i32(status)) }
    encoded, encoded_status := records.encode_Ros2Flexiv_msgsMsgJointPosVel(&value, output[:])
    if encoded_status != 0 { exit(i32(encoded_status)) }
    if fwrite(raw_data(encoded), 1, uintptr(len(encoded)), stdout) != uintptr(len(encoded)) { exit(5) }
}
