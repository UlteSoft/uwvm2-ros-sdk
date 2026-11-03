# Isaac Sim typed bindings and all-Wasm simulation status

The retained standard JointState/clock/sensor schemas, generated codecs and source-language bindings are interface inputs. Their limited historical source/codec/CPU observations do not establish a full guest ROS application or official physics acceptance.

SDK-authored host Python scenes, camera/sensor graph control, Carter publishers, cube/clock subscribers, service owners and observers have been removed from the public SDK with their complete helper closures. Public SDK targets have no native fallback and do not load the archived implementations. Historical sources preserve their exact roles; a read-only observer is not relabelled as a goal publisher.

Official Isaac Sim and its supplied ROS plugins may provide the external environment. All SDK business logic, client calls, callbacks, query/result/state and reverse sensor processing must execute as Wasm in uwvm2-ros through the same identity-checked permission and audit interface. An SDK-written host ROS observer cannot supply a missing guest callback path.

The public source candidate `example/platform/nvidia-isaac-sim/c/ros2/frozen_joint_simulation` registers nine mandatory scenarios. Its current guest legacy library/callback path and shared production contracts are unavailable, so all nine are BLOCKED. The current revision has no Linux public build/test or official simulation acceptance.

Real validation requires public `xmake` and `xmake test` from the example directory, unchanged whole-Wasm identity throughout testing, nonzero required cases, real command/result/native-operation correlation and denied calls without native side effects. RTX/provider requirements must be qualified on suitable hardware; V100 CUDA execution does not qualify RTX simulation.
