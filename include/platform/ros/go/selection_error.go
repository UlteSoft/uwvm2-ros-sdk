//go:build wasip1 && wasm && ((!ros1 && !ros2) || (ros1 && ros2))

package roswasm

// A backend is a build-time selection, not a permission fallback. Deliberately
// fail compilation instead of silently selecting a different ROS namespace.
var _ = select_exactly_one_ros1_or_ros2_build_tag
