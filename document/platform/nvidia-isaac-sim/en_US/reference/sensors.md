# Sensor-to-Wasm migration requirements

SDK-authored native sensor scene/graph control and host ROS observers have been removed from the public SDK. Their full historical sources remain owner qualification material; they are not public runtime dependencies. There is no host Python sensor subscription or publisher fallback.

A genuine official simulator and its supplied camera/lidar/IMU/clock plugins form the external environment. The exact provider release, assets, renderer, driver, device and message/type-support identities must be recorded for each applicable scenario. Merely loading an official model or node class does not make an SDK-authored application an official driver.

The actual reverse path must deliver sensor samples through the VM-owned controlled ROS boundary into executing Wasm. The guest performs callback, ownership, timestamp/frame/units validation, state update and required file/communication behavior with the same module identity, grants and operation audit. Native independent witnesses may provide separately labelled reference evidence only.

Mandatory Linux tests include source/provider identity checks, bounded timestamped samples, serialization, stale/foreign references, denied access without native effects, timeouts/cancellation, pause/resume, reconnect, restart/update rollback and permission preservation. Audit presentation off/on must preserve authorization. The same frozen whole Wasm is required across compatible vendors and cannot be rebuilt during `xmake test`.

Complete guest callbacks, real reverse sensor feedback and applicable official physics/renderer scenarios are currently BLOCKED/NOT_RUN. A static schema, a native sample, a generated video or a zero-test command cannot pass this migration requirement.
