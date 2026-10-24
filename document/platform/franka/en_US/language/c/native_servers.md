# franka native C service and action servers


## serve_native_joint_impedance

Source: `sdk/example/platform/franka/c/ros1/serve_native_joint_impedance`.

Build using `xmake f --arch=wasm32` or `wasm64`, then `xmake`, with `UWVM_ROS_SDK_ROOT` selecting the installed SDK. Copy the deployment template to `deployment.json` and manually select the source-paired runtime, native Gateway and offline endpoint. Execute `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`.

Open the independently granted advertise and respond roles, activate one endpoint, poll only on idle11 with the explicit monotonic-clock grant, and respond exactly once using the native-correlated ticket/goal. Preserve every original request/goal field. The offline result has `success=false` and UTF-8 error text; Action terminal kind4 intentionally aborts. Transport/codec errors and cleanup remain separate from business data.

The example keeps the endpoint active for an explicit bounded 200 ms transport grace after replying, then closes both owners in reverse order. An ordinary server retains owners for its application session. No response is automatically retried. The fixture never drives hardware.

## serve_native_grasp

Source: `sdk/example/platform/franka/c/ros1/serve_native_grasp`.

Build using `xmake f --arch=wasm32` or `wasm64`, then `xmake`, with `UWVM_ROS_SDK_ROOT` selecting the installed SDK. Copy the deployment template to `deployment.json` and manually select the source-paired runtime, native Gateway and offline endpoint. Execute `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`.

Open the independently granted advertise and respond roles, activate one endpoint, poll only on idle11 with the explicit monotonic-clock grant, and respond exactly once using the native-correlated ticket/goal. Preserve every original request/goal field. The offline result has `success=false` and UTF-8 error text; Action terminal kind3 intentionally aborts. Transport/codec errors and cleanup remain separate from business data.

The example keeps the endpoint active for an explicit bounded 200 ms transport grace after replying, then closes both owners in reverse order. An ordinary server retains owners for its application session. No response is automatically retried. The fixture never drives hardware.

## Verified scope

Sixteen original Service/Action allow/deny cases cover both Wasm widths and x86/QEMU AArch64. The offline abort is a deliberate business result. Full catalog coverage, cancel handling, physical controllers and exact native Humble remain unqualified. Preserve manual alias grants and the once-only cleanup contract when adapting the example.
