// @file raw.ts
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** Shared AssemblyScript source identity; selecting a view grants no authority. */
export * from "../../../ros/as/ros2/raw";
