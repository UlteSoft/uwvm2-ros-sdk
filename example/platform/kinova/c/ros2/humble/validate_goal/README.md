# Kinova Humble goal codec and guest assertions

This C application preserves every field of the pinned canonical
control_msgs/action/FollowJointTrajectory_Goal. The original stdin mode decodes,
validates and re-encodes the actual bytes; it does not send a goal.

The same compiled Wasm now contains three executable assertion groups:
bounds (six/seven-joint model, position/derivative/name/dimension and unsupported
route rejection), sequence (ordered times and duration bounds), and codec
(exact roundtrip, every truncated prefix, capacity transaction and trailing
bytes with unchanged destination). Synthetic component limits are not an
official robot's limits or a grant. Assertion failures are active in release
builds. No ROS client, observer, interpreter or assertion body runs on the host.

## Linux build and test

Install the SDK's pinned Wasm C/WASI toolchain and the exact qualified
uwvm2-ros runtime. From this example's original directory run:

    xmake
    UWVM_ROS_KINOVA_GUEST_TEST_CONFIG=/absolute/test-runtime.json xmake test

Create the external test configuration from guest-test.template.json. Fill its
actual whole runtime SHA256, exact target width and explicitly admitted runtime
arguments, including any required WASIp1 stdout/stderr rights. Native AOT and
the runtime's default checked unwind are mandatory. Do not use an interpreter,
disable unwind checks, point to a host application or reuse a test receipt.
Each case starts the actual runtime with this compiled module and its own
--guest-test selector. The harness requires a fresh nonzero guest assertion
count, zero guest failures, unchanged complete Wasm and the actual native
unwind/no-body-fallback output. Logs remain under this example's .uwvm-ros.

Current source/build/runtime/public-command states are recorded separately in
the owner's qualification materials; this revised source has not been executed.
Missing dependencies are non-success. These are guest component tests, not
upstream rcl compatibility, ROS callbacks, official-simulator or portable
same-Wasm integration acceptance. Those mandatory dimensions remain required.

The sequence component exercises the same duration validator called by full Goal
validation, using independent Duration values for duplicate, decreasing and
increasing times. The selected generated mobile-FJT Goal has point capacity1.
Its actual single-point duration boundary and rejection of a declared count2 are
separate assertions; no second point is written or two-point Goal support claimed.
