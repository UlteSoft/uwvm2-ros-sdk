This input-driven Wasm example checks complete Image row/payload validation and the pinned AprilTag CUDA versus VPI encoding distinction. Build with public xmake on admitted Linux; execute with an explicitly authorized uwvm2-ros deployment. The five image arguments are profile, encoding, step bytes, payload bytes and expected status. cases.v1.json records thirty-two positive/negative cases. Public VM-backed xmake test registration is pending; zero tests is not success.

The pair subcommand checks complete CameraInfo metadata, coefficient quotas, uncalibrated defaults and exact signed acquisition times. The family subcommand takes profile, exact tag family and expected status. It checks CUDA tag36h11 and all nine pinned VPI families, plus unsupported names/profiles and prefix rejection.

These local value checks create no ROS parameter, callback, detector, GPU resource or permission. They are distinct from native ROS pointer layout and do not qualify official ROS roundtrip or simulation. The SDK UNSUPPORTED status records the local unsupported-family migration policy; it is not the native constructor exception ABI.

Encoding, synchronization and family support are compared with the [pinned NVIDIA implementation](https://raw.githubusercontent.com/NVIDIA-ISAAC-ROS/isaac_ros_apriltag/95df59e5dc9c253b6e8e11471c10fd510b036fdd/isaac_ros_apriltag/src/apriltag_node.cpp).
