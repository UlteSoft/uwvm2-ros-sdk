# Native application removal and official environment boundary

The earlier SDK-authored native application candidates have been removed from the public SDK and preserved with their complete local helper closures in owner qualification archives. None is an installed SDK application, test fallback or implicit dependency. No public entry executes the archived implementations.

The removed candidates had distinct roles:

| Earlier role | Scope of native behavior | Current acceptance |
| --- | --- | --- |
| GR00T service and tensor/video conversion | Native ROS service callbacks and model inference; not a claim of robot actuation | Removed; genuine guest migration required |
| AprilTag/component and CPU exchange apps | SDK-owned native executors, component setup and pub/sub | Removed; genuine guest migration required |
| Carter ROS client | Native velocity publication | Removed; guest control required |
| Clock, cube, camera and sensor observers | Native queries, callbacks, observation and/or scene/feedback processing | Removed; guest callback and sensor path required |
| Frozen joint simulation observer candidate | Read-only controller query and state/status/description subscriptions; no task goal submitted by this witness | Removed; no legacy migration credit |

Unmodified official simulators/controllers and supplied provider plugins are the external environment. The runtime's bounded, identity-checked ROS host is maintained by the VM owner. Neither category authorizes an SDK-owned native application to execute guest logic. Native type identity exporters and bounded serialization traits remain source metadata tools and do not establish a client-library port.

Public migration remains BLOCKED until the actual application and applicable ROS client library execute as Wasm, including queries, callbacks, feedback, sensors and file operations. Reintroduction requires Linux public `xmake` and `xmake test`, nonzero mandatory cases, unified authorization/audit, denied calls without native effects, reverse sensor-to-Wasm evidence and the applicable official simulator.
