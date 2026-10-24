# flexiv native C service and action servers


## serve_native_joint_impedance

Source: `sdk/example/platform/flexiv/c/ros2_jazzy_v2_2/serve_native_joint_impedance`.

This finite offline Jazzy v2.2 fixture uses the original complete flexiv_msgs/srv/SetJointImpedance type. Service response includes every nested JointImpedance setting field. Action feedback includes current_width, current_force and moving; terminal kind3 intentionally aborts with the original false/UTF-8 error result. Native ROS2 ABORTED status is6. It never invokes physical hardware.

Build both widths through ordinary Xmake. Manually configure the exact native RIHS identity, independent advertise/respond grants, runtime/gateway paths and monotonic-clock permission in deployment.json. Run with UWVM_ROS_RUN_CONFIG=deployment.json xmake run main. Disabled/no-grant cases must return13; business failure remains distinct from transport success. The finite fixture uses a200-ms transport grace before closing both owners; production servers keep their session owners alive. Cancellation and whole-profile acceptance remain separate.

## serve_native_grasp

Source: `sdk/example/platform/flexiv/c/ros2_jazzy_v2_2/serve_native_grasp`.

This finite offline Jazzy v2.2 fixture uses the original complete flexiv_msgs/action/Grasp type. Service response includes every nested JointImpedance setting field. Action feedback includes current_width, current_force and moving; terminal kind3 intentionally aborts with the original false/UTF-8 error result. Native ROS2 ABORTED status is6. It never invokes physical hardware.

Build both widths through ordinary Xmake. Manually configure the exact native RIHS identity, independent advertise/respond grants, runtime/gateway paths and monotonic-clock permission in deployment.json. Run with UWVM_ROS_RUN_CONFIG=deployment.json xmake run main. Disabled/no-grant cases must return13; business failure remains distinct from transport success. The finite fixture uses a200-ms transport grace before closing both owners; production servers keep their session owners alive. Cancellation and whole-profile acceptance remain separate.

## Verified scope

Sixteen original Service/Action allow/deny cases cover both Wasm widths and x86/QEMU AArch64. The offline abort is a deliberate business result. Full catalog coverage, cancel handling, physical controllers and exact native Humble remain unqualified. Preserve manual alias grants and the once-only cleanup contract when adapting the example.
