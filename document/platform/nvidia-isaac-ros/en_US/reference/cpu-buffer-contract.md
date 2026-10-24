# CPU-visible sensor values and native acceleration

`sdk/include/platform/nvidia-isaac-ros/c/cpu_sensor_contract.h` is a self-contained
C99 header for complete borrowed Image and PointCloud2 views. It also compiles
as C++ with a toolchain providing `<stdint.h>`. It introduces no import, native
identity, grant, wire format or device handle. Callers must establish the entire
memory extent before constructing a view and keep the underlying owner alive.

Image keeps Header (signed seconds, nanoseconds, full frame ID), height, width,
encoding, endian flag, full step and every data byte. The AprilTag sink validator
accepts exactly the selected detector's rgb8/bgr8/rgba8/bgra8/mono8 encodings.
It checks width times channel count, row padding, step times height, full extent,
UTF-8, timestamps and caller quotas with overflow checks before multiplication.
It never removes padding or claims unsupported encodings are equivalent.

PointCloud2 keeps Header, both dimensions, every PointField name/offset/type/count,
endianness, point and row strides, complete data and is_dense. Overlapping fields
and row padding are preserved. Native legacy eight-type and Lyrical eleven-type
PointField profiles are explicitly different. INT64, UINT64 and BOOL are not
silently interpreted under an old installed schema. The caller's native exporter
must independently prove the actual selected type and constants. This layout
validator cannot substitute for that proof.

The source baseline for those eleven constants is ros2/common_interfaces
`4dd1c9340e8038b3f892057cf49899dcc38079b0`, `sensor_msgs/msg/PointField.msg`,
available in the repository's existing read-only upstream source capture.
The five input encodings are from the fixed NVIDIA detector
`95df59e5dc9c253b6e8e11471c10fd510b036fdd`.

Isaac ROS 5.0.0 uses ROS 2 Lyrical and rosidl::Buffer/CUDA backends. On the native
side, observe the backend's real synchronization, context/device, pitch, cache
ownership and lifetime rules before making an independent CPU copy. Keep the
original native owner alive until that copy completes. Only the copied complete
CPU value may enter the audited bounded codec/Gateway path. This header does not
perform or assert that copy. A CUDA pointer or a Buffer object address must never
be placed into canonical data. GPU import, allocation, stream/event or pointer
sharing would require an independent opt-in capability and is absent here.

The full sensor catalog and real installed type exporter remain integration
dependencies. A successful local layout check alone is neither a native
accelerated-node exchange nor a Wasm-to-Gateway receipt.

