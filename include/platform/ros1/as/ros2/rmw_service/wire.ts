// @file wire.ts
// @brief Represent complete typed values and their bounded wire layout for ros1.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

/** Shared AssemblyScript source identity; selecting a view grants no authority. */
export * from "../../../../ros/as/ros2/rmw_service/wire";
