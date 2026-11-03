# Noetic rospy genuine Python Wasm consumer candidate

Build/run qualification is pending. Normal `xmake` selects the existing genuine
CPython3.14.8 core and the real ROS1 builtin bridge, not host rospy or ROS2 with
renamed types. `xmake test` uses the existing SDK01 guest-component consumer.
It requires actual denied-open13, String publication/reverse callback, real
graph query, unregistered wrapper/raw handle rejection9 and once-only shutdown
inside the guest. Original native payload/no-effect audit is still required for
Stage A; component completion alone does not qualify ROS, isolation or simulators.

The source/API/lifetime limitations and exact1.17.4 references are in
include/platform/ros/transplate/ros1/rospy/v1. All bindings here are requests,
not grants. Native Noetic host/official ROS closure and the shared public
consumer/native oracle are owned elsewhere and remain required. The finite
cooperative spin extension does not claim native rospy receiver-thread behavior.
