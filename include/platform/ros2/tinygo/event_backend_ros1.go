//go:build tinygo && (wasm || tinygo.wasm) && ros1 && !ros2

// @file event_backend_ros1.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

// eventBackend is fixed by the selected import module, never inferred from data.
const eventBackend uint8 = 1
