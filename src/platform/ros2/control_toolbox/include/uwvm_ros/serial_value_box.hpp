// SPDX-License-Identifier: Apache-2.0
#pragma once
#include <optional>
#if defined(__wasm_atomics__)
#error "The serial PID extraction cannot be used by shared-memory Wasm threads"
#endif
namespace uwvm_ros {
// This value is owned by one serial executor, without concurrent or reentrant
// access. It is deliberately not named ThreadSafeBox. Native threaded ROS must
// retain the upstream realtime_tools implementation.
template<class T> class serial_value_box {
  T value_;
public:
  explicit serial_value_box(T const& value) : value_(value) {}
  T get() const { return value_; }
  void set(T const& value) { value_ = value; }
  std::optional<T> try_get() const { return value_; }
};
}
