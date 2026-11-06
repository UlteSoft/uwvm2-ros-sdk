# UR5e official Webots simulation

The C application executes as Wasm in uwvm2-ros, using the unchanged official
[Webots R2025a UR5e model](https://github.com/cyberbotics/webots/blob/R2025a/projects/robots/universal_robots/protos/UR5e.proto)
and the original Webots ROS2 driver and ROS2 trajectory controller.
The tested scope is six arm joints. The SDK supplies the scene composition and test;
it does not claim manufacturer certification or physical-robot admission.

Build with xmake -P ., then run xmake test -P . Set UWVM_ROS_UNIVERSAL_ROBOTS_WEBOTS_TEST_CONFIG
to an explicit deployment JSON based on deployment.template.json. Reuse an installed
Webots R2025a and ROS2 Jazzy environment; the test never installs dependencies.
Set UWVM_OFFICIAL_WEBOTS_ASSETS to the verified official source asset tree.
model-assets.json pins each original dependency by SHA-256 and Git blob identity.
The host launcher, VM, gateway and native programs also require exact byte identities.

Both the interpreter and JIT run the same Wasm image. Its eight scenarios check
motion with fresh joint feedback, denied motion with unchanged state, invalid
memory and payload boundaries, owned-goal cancellation, monotonic timeout,
gateway disconnection and isolation between two simultaneous Wasm processes.
All WASI and ROS interfaces are exposed and authorized explicitly by the test
contract; the default runtime has no such authority.

Actual xmake test evidence contains the model identity, unchanged Wasm hash,
native loaded images, controller activation, raw logs and process retirement.
Missing assets, permissions, controllers or feedback fail the test. Passing this
example applies only to the listed model, joints and software configuration.
