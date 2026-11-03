# Linux CI source inventory

This owner inventory lists every current kinova child example and retains any required quarantined example as a blocking matrix row. It is source metadata, not a CI run, target-discovery receipt or legacy ROS support claim. SDK01 owns the common Linux workflow and bounded parent/child Xmake scheduler; integration of this inventory is not yet qualified.

Each required child must run exactly `xmake` and `xmake test` from its own original directory, with independent outputs and the exact qualified toolchain, runtime, grants and official provider. Missing prerequisites, missing or quarantined entries, zero tests and missing mandatory scenarios are non-success. Native reference observations and old receipts cannot turn a child green. The host JDK or compiler may build Wasm; guest ROS business logic, queries, callbacks and feedback must execute in Wasm through uwvm2-ros permission and audit.

Do not recover a quarantined implementation through a hidden path or native fallback. Its row remains required until a genuine migrated implementation is qualified and restored. Manual heavy simulator work retains the shared 64GiB, zero-swap ancestor and global lock for every descendant through retirement, regardless of parent Xmake concurrency.
