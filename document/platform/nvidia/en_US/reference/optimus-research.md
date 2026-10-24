# Tesla Optimus public-interface research

Research date: 2026-10-21. Status: **blocked on a verifiable public Optimus
external control definition**. This is research only and adds no supported
platform, ROS compatibility entry, SDK adapter or control registry.

The reviewed primary sources were Tesla's [AI and Robotics page](https://www.tesla.com/AI),
the [Tesla developer documentation](https://developer.tesla.com/docs), and the
official [teslamotors/vehicle-command repository](https://github.com/teslamotors/vehicle-command).
The AI page describes the robotics program but does not provide a versioned
external Optimus command/telemetry protocol or a ROS driver. The developer portal
describes Fleet API access to vehicles and energy devices. The vehicle-command
project is a vehicle protocol; its presence is not evidence of an Optimus SDK.

Within those inspected public sources, no complete Optimus external control SDK,
ROS1/ROS2 driver, full command/status definitions, developer control license and
fixed release were found. This is a scoped negative research result, not proof
that no unpublished or differently distributed interface exists. Revisit it only
with an actual Tesla-published Optimus interface or materials supplied by the
user with an appropriate development license.

Before implementation, the missing input set is:

| Required original material | Current result |
| --- | --- |
| Official Optimus control SDK/repository and fixed version | NOT_FOUND_IN_REVIEWED_SOURCES |
| Complete command, telemetry, errors, units, ownership and transport | NOT_FOUND_IN_REVIEWED_SOURCES |
| Authentication, authorization and external safety/stop semantics | NOT_FOUND_IN_REVIEWED_SOURCES |
| Public developer license permitting the integration | NOT_FOUND_IN_REVIEWED_SOURCES |
| Public ROS1/ROS2 support claim and reproducible original tests | NOT_FOUND_IN_REVIEWED_SOURCES |
| Explicitly authorized physical test robot/environment | NOT_PROVIDED |

No robot was scanned, contacted or reverse-engineered. No Tesla authentication
flow or account operation was attempted. There are zero control implementations,
zero native robot tests, zero Guest integrations and zero upstream suites here.
Future approved work must start from the real public definition, retain empty
default Guest authority, and put native access behind a separate trusted Gateway.

