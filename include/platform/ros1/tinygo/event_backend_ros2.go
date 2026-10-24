//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1

// @file event_backend_ros2.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

// eventBackend is fixed by the selected import module, never inferred from data.
const eventBackend uint8 = 2
