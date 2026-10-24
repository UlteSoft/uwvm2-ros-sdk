# abb SDK

Public headers and language modules live in `sdk/include/platform/abb/<language>/`.
Complete applications live in `sdk/example/platform/abb/<language>/<example>/`.
Package metadata belongs in `sdk/lib/platform/abb/`; original interface definitions
and provenance remain here under `catalogs/`, `ros1/`, `ros2/`, and the upstream
lock/audit files. All ABB-specific maintenance and build implementations belong
in [sdk/tools/platform/abb](../../../tools/platform/abb/README.md). Tests are
external to the SDK.

The [English development guide](../../../document/platform/abb/en_US/README.md)
and [中文开发指南](../../../document/platform/abb/zh_CN/README.md) explain the
actual source APIs, commands, and current language scope. C, C++, AssemblyScript,
official Go, Rust, and Objective-C each provide independent `read_speed`,
`read_io`, and `system_state` command directories with their own documented
`xmake.lua`. The `c_ffi_bridge` group provides three additional commands through the
shared numeric compiler bridge; it is not an independent source language.

The C and C++ `ros1/abb-ros1-complete` and `ros2/abb-ros2-complete` directories
are required: they contain the complete original records/codecs and generated
service/Action interfaces for their distinct schemas. Select one compatible
family per translation unit. These directories are formatted maintained source,
not disposable build output.

The example census is in `example-coverage.json`. It is deliberately separate from typed-record and generic language coverage. Full upstream example parity, official suites, all releases/models and hardware acceptance are not claimed.

Read [controller and application contracts](CONTROLLERS.md) for RobotWare/RWS/EGM
and ROS1/ROS2 maintenance boundaries. New complete-value preflight and diagnostic
access preserve the exact selected types. `upstream-audit/` retains both driver
revisions, launch/configuration and all pending language mappings. Source changes
remain untested until their admitted resource/test report is published.

Canonical source layout: public modules are in `sdk/include/platform/abb/`, complete application sources are in `sdk/example/platform/abb/`, and platform documentation/provenance is in `sdk/share/platform/abb/`. Documentation for a language does not establish an implemented or qualified language port.
