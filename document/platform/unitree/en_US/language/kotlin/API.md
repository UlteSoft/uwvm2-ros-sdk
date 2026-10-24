# Kotlin API and complete records

## Namespace and value access

The observation namespace is `uwvm.unitree.kotlin.ros2.Observers` for ROS2; replace `Ros2`/`ros2` with `Ros1`/`ros1` for ROS1. The concrete
Java records live in `uwvm.unitree.ros1 / uwvm.unitree.ros2`. Imports use installed namespaces. Xmake supplies
their complete source roots centrally; examples contain no parent-relative source imports.

Every record has public `field_<original_name>` members, preserving the original names, nesting and fixed-array
extents. Constructors allocate their own nested fixed-array elements and restore the original defaults; bounded
sequences begin empty. `CONST_<original_name>` preserves source constants without consuming instance wire bytes.
`SOURCE_TYPE`, `CODEC_IDENTITY`, `NATIVE_IDENTITY`, `MIN_WIRE_BYTES` and `MAX_WIRE_BYTES` identify the original
schema and its finite wire contract. An empty native identity remains unqualified until independent native metadata
is bound.

`encode(value)` allocates a complete canonical byte sequence; `decode(bytes)` validates the exact extent and
returns a new owned whole record. Invalid bounds, boolean encodings, text, numeric domains or trailing bytes raise
the language's argument exception. Decode commits no partial caller value. Java represents unsigned 8/16/32-bit
fields with wider signed types and validates the original range; unsigned 64-bit fields retain their bits in `long`.
The value classes preserve floating-point bit patterns within the declared finite-value policy.

## Finite observation and retained interfaces

The convenience observer opens one alias, activates one subscription, and polls within the caller's budget. Only
idle status 11 permits another poll, separated by a real 20 ms WASI monotonic wait. At most 249 waits occur with
budget 250. Normal completion or ordinary failure closes the acquired owner once. A trap or fatal allocation failure
requires host instance reclamation.

The returned `result.exchange / result.response / result.canonical` separates the original exchange, the complete decoded record and bytes reencoded from that
record. Read the record only when it is present. The observer commits the record and canonical bytes together after
complete validation. A later local codec failure preserves the original import errno and written-length facts while
setting primary status 22.

Every catalog message also has a concrete `RosNApi...` class. Its publish, subscribe and read methods operate on an
explicitly retained `Owner`; read performs one actual poll and publish performs one actual publish. The caller
serializes that owner and closes it exactly once. These low-level methods do not apply the convenience observer's
finite waiting loop. Topic publication requires its own explicit grant and is not exercised by the observation
examples.

## Result facts and error handling

| Report field | Meaning |
| --- | --- |
| `primary` | First operation or local complete-record validation status |
| `cleanup`, `cleanup_present` | Independent close status and whether a close was attempted |
| `response_present` | Complete typed record has committed |
| `rpc_present`, `rpc_status` | An actual data import ran and its original errno |
| `required_present`, `required` | Whether the original length slot was written and its exact value |
| `encoding`, `wire_hex` | Complete reencoding status and every canonical byte |

The managed properties use the language's ordinary camelCase spelling; the table names are the emitted JSON names.
Status selection prefers `primary`, then `cleanup`. Reporting may return 5 for stdout failure only if no earlier
error occurred; process exits are bounded to 125. Handle 11 within the explicit poll budget, 13 as missing
authority, 22 as invalid input or complete wire data, and 90 as a capacity failure. Preserve other original errors,
including 9, 95, 107, 110 and 125. Never infer a response from a zero-valued unwritten length slot.

## Complete record index

The index covers all 11 ROS1 and 43 ROS2 records, including original Unitree Go, HG and API packages. It is a
schema/API index; the six observation examples verify the types listed in EXAMPLES.md.

| ROS | Native type / 原始类型 | Value class / 值类型 |
| --- | --- | --- |
| ros1 | `unitree_legged_msgs/BmsCmd` | `Ros1Unitree_legged_msgsBmsCmd` |
| ros1 | `unitree_legged_msgs/BmsState` | `Ros1Unitree_legged_msgsBmsState` |
| ros1 | `unitree_legged_msgs/Cartesian` | `Ros1Unitree_legged_msgsCartesian` |
| ros1 | `unitree_legged_msgs/HighCmd` | `Ros1Unitree_legged_msgsHighCmd` |
| ros1 | `unitree_legged_msgs/HighState` | `Ros1Unitree_legged_msgsHighState` |
| ros1 | `unitree_legged_msgs/IMU` | `Ros1Unitree_legged_msgsIMU` |
| ros1 | `unitree_legged_msgs/LED` | `Ros1Unitree_legged_msgsLED` |
| ros1 | `unitree_legged_msgs/LowCmd` | `Ros1Unitree_legged_msgsLowCmd` |
| ros1 | `unitree_legged_msgs/LowState` | `Ros1Unitree_legged_msgsLowState` |
| ros1 | `unitree_legged_msgs/MotorCmd` | `Ros1Unitree_legged_msgsMotorCmd` |
| ros1 | `unitree_legged_msgs/MotorState` | `Ros1Unitree_legged_msgsMotorState` |
| ros2 | `unitree_api/msg/Request` | `Ros2Unitree_apiMsgRequest` |
| ros2 | `unitree_api/msg/RequestHeader` | `Ros2Unitree_apiMsgRequestHeader` |
| ros2 | `unitree_api/msg/RequestIdentity` | `Ros2Unitree_apiMsgRequestIdentity` |
| ros2 | `unitree_api/msg/RequestLease` | `Ros2Unitree_apiMsgRequestLease` |
| ros2 | `unitree_api/msg/RequestPolicy` | `Ros2Unitree_apiMsgRequestPolicy` |
| ros2 | `unitree_api/msg/Response` | `Ros2Unitree_apiMsgResponse` |
| ros2 | `unitree_api/msg/ResponseHeader` | `Ros2Unitree_apiMsgResponseHeader` |
| ros2 | `unitree_api/msg/ResponseStatus` | `Ros2Unitree_apiMsgResponseStatus` |
| ros2 | `unitree_go/msg/AudioData` | `Ros2Unitree_goMsgAudioData` |
| ros2 | `unitree_go/msg/BmsCmd` | `Ros2Unitree_goMsgBmsCmd` |
| ros2 | `unitree_go/msg/BmsState` | `Ros2Unitree_goMsgBmsState` |
| ros2 | `unitree_go/msg/Error` | `Ros2Unitree_goMsgError` |
| ros2 | `unitree_go/msg/Go2FrontVideoData` | `Ros2Unitree_goMsgGo2FrontVideoData` |
| ros2 | `unitree_go/msg/HeightMap` | `Ros2Unitree_goMsgHeightMap` |
| ros2 | `unitree_go/msg/IMUState` | `Ros2Unitree_goMsgIMUState` |
| ros2 | `unitree_go/msg/InterfaceConfig` | `Ros2Unitree_goMsgInterfaceConfig` |
| ros2 | `unitree_go/msg/LidarState` | `Ros2Unitree_goMsgLidarState` |
| ros2 | `unitree_go/msg/LowCmd` | `Ros2Unitree_goMsgLowCmd` |
| ros2 | `unitree_go/msg/LowState` | `Ros2Unitree_goMsgLowState` |
| ros2 | `unitree_go/msg/MotorCmd` | `Ros2Unitree_goMsgMotorCmd` |
| ros2 | `unitree_go/msg/MotorCmds` | `Ros2Unitree_goMsgMotorCmds` |
| ros2 | `unitree_go/msg/MotorState` | `Ros2Unitree_goMsgMotorState` |
| ros2 | `unitree_go/msg/MotorStates` | `Ros2Unitree_goMsgMotorStates` |
| ros2 | `unitree_go/msg/PathPoint` | `Ros2Unitree_goMsgPathPoint` |
| ros2 | `unitree_go/msg/Req` | `Ros2Unitree_goMsgReq` |
| ros2 | `unitree_go/msg/Res` | `Ros2Unitree_goMsgRes` |
| ros2 | `unitree_go/msg/SportModeCmd` | `Ros2Unitree_goMsgSportModeCmd` |
| ros2 | `unitree_go/msg/SportModeState` | `Ros2Unitree_goMsgSportModeState` |
| ros2 | `unitree_go/msg/TimeSpec` | `Ros2Unitree_goMsgTimeSpec` |
| ros2 | `unitree_go/msg/UwbState` | `Ros2Unitree_goMsgUwbState` |
| ros2 | `unitree_go/msg/UwbSwitch` | `Ros2Unitree_goMsgUwbSwitch` |
| ros2 | `unitree_go/msg/WirelessController` | `Ros2Unitree_goMsgWirelessController` |
| ros2 | `unitree_hg/msg/BmsCmd` | `Ros2Unitree_hgMsgBmsCmd` |
| ros2 | `unitree_hg/msg/BmsState` | `Ros2Unitree_hgMsgBmsState` |
| ros2 | `unitree_hg/msg/HandCmd` | `Ros2Unitree_hgMsgHandCmd` |
| ros2 | `unitree_hg/msg/HandState` | `Ros2Unitree_hgMsgHandState` |
| ros2 | `unitree_hg/msg/IMUState` | `Ros2Unitree_hgMsgIMUState` |
| ros2 | `unitree_hg/msg/LowCmd` | `Ros2Unitree_hgMsgLowCmd` |
| ros2 | `unitree_hg/msg/LowState` | `Ros2Unitree_hgMsgLowState` |
| ros2 | `unitree_hg/msg/MainBoardState` | `Ros2Unitree_hgMsgMainBoardState` |
| ros2 | `unitree_hg/msg/MotorCmd` | `Ros2Unitree_hgMsgMotorCmd` |
| ros2 | `unitree_hg/msg/MotorState` | `Ros2Unitree_hgMsgMotorState` |
| ros2 | `unitree_hg/msg/PressSensorState` | `Ros2Unitree_hgMsgPressSensorState` |
