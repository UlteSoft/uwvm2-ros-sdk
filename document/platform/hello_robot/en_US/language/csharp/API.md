# hello_robot / csharp API

Public typed source lives under `include/platform/hello_robot/csharp/`。

Java and Kotlin use ordinary Java value classes; C#, F# and VB.NET use ordinary CLR value classes. Separate public profile namespaces prevent accidental mixing of source revisions. Each `field_<original-name>` preserves its original field; returned arrays, strings and nested values are owned. `MAX_WIRE_BYTES`, `MIN_WIRE_BYTES` and `CODEC_IDENTITY` describe complete SDK bounds, separately from native registry admission.

`encode`/`Encode` writes a whole record. `decode`/`Decode` checks complete extent, finite floating values, text, sequence and nested bounds, and trailing bytes. Invalid input throws a real `IllegalArgumentException`/`ArgumentException`. Errors from a separately AOT-compiled SDK assembly must reach the application catch; malformed-wire cases cannot be skipped.

Concrete `Api...` facades cover message publish/subscribe, service call/poll/respond, and action send/feedback/result/cancel/server response. Each role has an independently granted alias and an explicitly retained `Owner`/`ActionSet`. Idle 11 is not success; cancel acknowledgment is not a terminal result. Local rejection is 22; original transport errno, RPC and required-length facts are preserved separately.

Stretch lift uses meters and angular joints use radians. Preserve original MultiDOF and tolerance fields. A model label does not prove homing, operating mode, runstop, tool or calibration; the SDK does not automatically home, change mode, release runstop or command a robot.

Original field order, constants, defaults, bounds and source identities are fixed in `share/platform/hello_robot/catalogs/`。
