# universal_robots / objectc example guide

Every source domain has three independent directories and xmake.lua files. Lessons execute real-language construction, encoding, decoding and whole-byte checking, with no precomputed outcome. State defaults are local fixture data.

| Example | Purpose |
| --- | --- |
| `state_codec` | Complete original state fields, widths and arrays. |
| `service_response_codec` | Original response payload, including vendor result/success fields. |
| `feedback_codec` | Complete action feedback where declared; original telemetry message in ROS1 catalogs without that action. |

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros/sdk
cd "$UWVM_ROS_SDK_ROOT/example/platform/universal_robots/objectc/ros1/universal-robots-ros1-complete/state_codec"
xmake
xmake run
```

For another address width, explicitly change set_arch to wasm64, retain wasm-wasip1 and use the same shared versions. An unqualified memory64 frontend/engine remains work for its common owner; never substitute a target or claim support. The user supplies run permissions manually; examples never edit policy.

After the type lesson, native acceptance must verify actual topic/service/action peers, complete contents, denied rights, errors and cleanup through real uwvm2-ros on both x86_64 and QEMU AArch64. Retained communication flows under src/platform/universal_robots/flows/ require the installed shared imports and explicit deployment.
