# Simulator clock contract and Wasm migration status

The versioned ClockControl schema and source-language binding/generator inputs remain available. They are a contract for guest applications, not evidence of a complete upstream ROS library or callback migration.

The earlier SDK-written host Python clock service, native subscription/executor implementation and package entry have been removed from the public SDK. No public application uses those files as an implicit environment or feedback provider. Their original implementations and dependency identities remain historical owner qualification material.

A complete clock program must execute the requested operation, ROS time handling, callback state and returned sensor/clock processing inside Wasm. Python means python.wasm with migrated rclpy; Java means AOT-to-Wasm; C/C++ means the shared actual client-library products. The VM's approved ROS host enforces module ownership, grants, operation/resource identity, arguments, lifetime and results. It must not run a host Python clock service on the guest's behalf.

A genuine official simulator and its supplied clock plugin may remain external. Official simulation time, pause/resume, restart/rollback, stale/foreign handles, permission preservation and reverse callback delivery still require deterministic, audited Linux qualification. Native clock subscription alone supplies no guest callback evidence.

Public `xmake` and `xmake test` are required for every actual migrated application. Current complete legacy migration/official simulation states remain BLOCKED/NOT_RUN; missing prerequisites cannot skip or produce zero-test success. The same whole Wasm must remain fixed across compatible vendor deployments and during tests.
