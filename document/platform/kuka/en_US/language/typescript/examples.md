# Build and run the KUKA TypeScript examples

Each project has an independent `xmake.lua` and produces one application `.wasm`.
The examples validate two non-default complete values, independent little-endian
bytes, decoded fields and rejection of trailing bytes before printing `PASS`.

| Directory | Record exercised |
| --- | --- |
| `state_codec` | `kuka_driver_interfaces/msg/KssStatus` |
| `service_response_codec` | `lifecycle_msgs/srv/ChangeState_Response` |
| `feedback_codec` | `control_msgs/action/FollowJointTrajectory_Feedback` |

Select the installed SDK and build a project:

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros-sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/kuka/typescript/ros2/kuka-ros2-complete/state_codec"
xmake f -c -p wasm-wasip1 -a wasm32
xmake
```

Use `xmake f -c -p wasm-wasip1 -a wasm64` followed by `xmake` for the memory64
application. Both configurations use the same shared compiler and JS engine
family. Building does not require uwvm2-ros or a native ROS installation.

Running requires the installed Linux uwvm2-ros executable and explicit module
permissions. Save the following as `value-deployment.json`, adjusting `runtime`
to its installed absolute path:

```json
{
  "format": "uwvm-native-ros-run-v2",
  "runtime": "/opt/uwvm2-ros/bin/uwvm2-ros",
  "backend": "ros2",
  "distribution": "jazzy",
  "execution_timeout_seconds": 300,
  "connection": {
    "node-name": "kuka_value_example",
    "namespace": "/",
    "domain-id": "219",
    "rmw-implementation": "rmw_fastrtps_cpp",
    "security-mode": "disabled-test",
    "keystore": "not-applicable",
    "enclave": "not-applicable"
  },
  "examples": {
    "state_codec": {
      "arguments": [],
      "main_module": "main",
      "preloads": [],
      "modules": {
        "main": {
          "ros_enabled": false,
          "grants": [],
          "wasi_grants": ["stdio-full-rights"]
        }
      }
    }
  }
}
```

```sh
export UWVM_ROS_RUN_CONFIG="$PWD/value-deployment.json"
xmake run
```

The launcher selects AOT and checked native unwind. This configuration explicitly
disables ROS and grants only WASI standard streams; no gateway is required or
started. The ROS connection fields identify the selected profile and create no
native connection while ROS is disabled. For another example, change the key
`state_codec` under `examples` to the selected directory name. The launcher adds
the parser features required by an explicitly selected wasm64 build.

To communicate with ROS, define a separate deployment with the proper native
gateway, exact type identities, limits and manual per-module grants. Enabling
any module, including a preload, requires the gateway. Merely selecting this
vendor, installing its types or passing a codec check grants no ROS authority.

The selected value examples and corresponding stronger VM regressions have
separate build and execution evidence for both widths. Native ROS peers,
service/action ownership and static/shared libraries are outside this example
scope. QEMU AArch64 checks establish functionality, not native performance.

Use a current uwvm2-ros build containing the AArch64 caller-frame repair for
memory64 applications. Qualification used paired LLVM
`23.1.1-uwvm-ros.15`: all six independent Xmake-only cold builds reproduced the
exact Wasm bytes executed on native x86_64 and full-system QEMU AArch64.
