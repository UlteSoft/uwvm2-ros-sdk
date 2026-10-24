//go:build tinygo && (wasm || tinygo.wasm) && ((!ros1 && !ros2) || (ros1 && ros2))

// @file selection_error.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

// Select exactly one backend. This intentional unresolved name gives a clear
// compile-time failure instead of silently choosing the wrong import module.
var _ = select_exactly_one_of_ros1_or_ros2
