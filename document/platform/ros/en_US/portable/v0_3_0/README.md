# Portable navigation and inbound sensor contracts0.3.0

This version is a review candidate. The seven-call ABI remains version1; the
host must independently implement the declared capability, grants and native
confirmation. Compilation and structural checks are reported in separate
artifact receipts. VM, native ROS and official simulator results are separate.

The planar algorithm uses descriptor/state/command kinds48/49/50. Position is
in integer millimetres; heading is an exact6283186-tick turn, with signed
half-turn endpoints representing the same heading. Native radian conversion,
frame transforms, map/odometry identity and limits are external. This avoids
claiming that a rounded decimal turn equals2*pi radians. It is incompatible
with the preserved0.2.0 milliradian record kinds16/17/18; hosts must reject them.
The program computes one bounded goal, requires native terminal success, then
checks a fresh pose. It supplies no balance, gait, torque or3D controller.

The sensor algorithm consumes actual mono8/RGB8 payload bytes including padding,
checks dimensions and stride, and computes FNV-1a-32 inside Wasm. Its output binds
epoch, host sequence, frame identity, encoding and dimensions to that computation.
ROS2 Header has no sequence field: the adapter assigns a monotonic receipt
sequence and retains the native timestamp separately. Final acceptance requires
official simulator->ROS Image->authorized VM memory->executing Wasm, independent
native/input-copy SHA256 correlation, and FNV recomputation. Source packets,
replays, echo peers and adapter-supplied precomputed digests cannot qualify it.
FNV is not cryptographic authentication or a vision detector.

contract.json, wire.json, adapter.schema.json and algorithms.json define this
version. Adapter JSON is strict bounded UTF8 with no duplicate/unknown keys;
its whole exact bytes are hashed, separately from policy and Wasm. All resource
names, frame/calibration/unit mappings and explicit grants remain outside Wasm.
Unsupported native semantics or missing dependencies remain blocked, not passed
or declared inapplicable. Software simulation only; physical actuation excluded.

Use the existing SDK Xmake C/LLVM23 route on an admitted SSH Linux worker:
set UWVM_ROS_SDK_ROOT to its exact staged SDK, enter one versioned example, run
xmake f -y -c -a wasm32 and xmake -vD -j2. No second toolchain is introduced.
Freeze each emitted artifact once and reuse exact whole SHA256-identical bytes
across its applicable platforms. The existing4449-byte joint artifact remains
unchanged. No public unwind selector is provided; actual VM processes retain
mandatory checked generated-chain/crash-stack and provenance/permission checks.
