//go:build wasip1 && wasm && ((!ros1 && !ros2) || (ros1 && ros2))

// @file selection_error.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

// A backend is a build-time selection, not a permission fallback. Deliberately
// fail compilation instead of silently selecting a different ROS namespace.
var _ = select_exactly_one_ros1_or_ros2_build_tag
