# universal_robots MoonBit examples

Each original domain supplies independent state_codec, service_response_codec and feedback_codec projects. They demonstrate complete state, service-response and original feedback/diagnostic values respectively. Each project has its own xmake.lua and a concise main.mbt. The program constructs the original defaults, performs actual encoding and decoding, reports the original type and actual byte length, and terminates on either error.

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros-sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/universal_robots/moonbit/ros1/universal-robots-ros1-complete/state_codec"
xmake f -c -p wasm-wasip1 -a wasm32
xmake
```


The public selectors are set_language, set_ros_platform, set_ros1_version/set_ros2_version, set_ros_scenario, set_arch and set_plat. Preserve the exact ros.sdk.vendor_version domain selected by the example. The shared tool bundle is a build input; the sole application output is one Wasm file.

Run separately with an installed uwvm2-ros and an explicit uwvm-native-ros-run-v2 deployment. Set main to ros_enabled:false, grants:[] and wasi_grants:["stdio-full-rights"] for these local-value lessons. Keep the backend/distribution equal to the Xmake target. Supply the matching runtime/gateway paths and required backend connection fields even when ROS effects are disabled. Use `xmake f --ros-run-config=/absolute/path/value-deployment.json` followed by `xmake run`.

The complete non-default-field and malformed-input regressions are maintained in the VM repository. Their fixtures and counters are separate from these SDK tutorials. Native communication requires exact manually selected aliases and controlled peers. A wasm64 request must produce a real memory64 module or fail explicitly; static/shared kinds require the real shared compiler and loader contract rather than a renamed script package.
