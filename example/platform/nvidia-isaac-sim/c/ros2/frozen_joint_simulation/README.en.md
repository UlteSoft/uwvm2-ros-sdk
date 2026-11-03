# Frozen joint step in Isaac Sim

This source candidate selects Isaac Sim 6.0.0 Franka/Panda physics, Jazzy and Ubuntu 24.04 x86_64. All nine simulation cases are currently BLOCKED. The existing portable 0.1.0 C algorithm is not a port of the upstream rcl/rclcpp libraries, rclpy in python.wasm, or rcljava AOT to Wasm. The complete guest client/callback/feedback path still needs implementation and Linux qualification. Physical robot execution is prohibited.

The complete accepted Wasm SHA256 is `c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043`. The build preserves the original `portable-joint-step-v0-1-0` output basename, compiles the unchanged C source with the SDK compiler, retains that candidate, requires its complete hash to match, and copies the original installed frozen artifact to the target. Recompilation is not platform reuse evidence. The test build phase only verifies that existing target; it does not compile, relink, replace or patch it. Other vendors must consume the same complete bytes.

Install the complete SDK with its pinned LLVM 23/WASI toolchain and set `UWVM_ROS_SDK_ROOT`. The shared files `tools/shared/xmake/simulation_example.lua` and `tools/shared/python/simulation_example.py` are required. Enter a VM-owned Linux simulation admission with the original shared 64 GiB/zero-swap budget, existing lifetime global lease, independent guardian and sufficient space. Set `UWVM_ROS_SIMULATION_ADMISSION` and `UWVM_ROS_SIMULATION_DEPLOYMENT` using that public API's admission/deployment contracts.

`deployment.template.json` defines the NVIDIA extension to the common deployment. Fill exact authenticated installed official scene/model/provider/runtime/native-host paths and whole hashes. Simulator, robot-state-publisher and controller commands must start pinned native executables with explicit arguments; pin official scene scripts, generated robot description and USD/model inputs separately. The scene must publish real physics JointState, the robot description must match its complete reviewed hash, and a real JTC must claim the configured joint position interfaces. Actual controller ELF mappings must match pinned provider files. Mock hardware is rejected. Use supported RTX hardware with at least 16 GiB VRAM; V100 does not satisfy this profile. Install official dependencies under their published licences without unsigned substitutes or TLS bypass.

Supply separately reviewed adapter/grant/provenance files. Configuration and build grant nothing. Alias `robot`, module `main`, capability `joint.position.bounded.v1`, source units, joint limits, topics, ROS release and native resources stay outside the algorithm Wasm. The native socket must be fresh in a session-owned directory with mode 0700. Use a published native host and the runtime's default checked-unwind/AOT profile. Private source overlays are not accepted.

From this directory:

```sh
xmake
xmake test
```

The shared rule registers `isaacsim-frozen-joint-step/official-scenarios`. It rejects zero/unmatched selections and fails overall on any required blocked, failed or unexecuted case. The current driver explicitly blocks every case until the guest legacy libraries, callbacks and feedback path are qualified. It imports no host ROS client and starts no native substitute. Native qualification witnesses cannot replace guest execution. Future qualification also requires the real VM's permission/session/native-operation event, correlated UUIDs and independent fresh official simulator state.

Delivery remains incomplete. Earlier native observation source is retained only in the VM qualification workspace; it is not a dependency of this public example. Its subscriptions and ListControllers query were read-only witnesses and did not submit task goals. Earlier source revisions encountered SDK installation/staging prerequisites on Linux; the current source and frozen test build hook have not been Linux-qualified. No successful build, emitted Wasm, VM/native/official simulation acceptance, QEMU or native performance result is claimed here. Full sensor coverage, every remaining assigned model/mode/release/ABI/language and the final world-model/complex-multilingual/cross-vendor SDK example remain mandatory.

Application and example assertions: Apache-2.0. Official simulator/assets, ROS providers and other dependencies retain their own published licences.
