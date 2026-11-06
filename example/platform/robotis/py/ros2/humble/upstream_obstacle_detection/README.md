# Original Humble obstacle detection in Wasm

The original Python obstacle algorithm runs in CPython compiled to Wasm inside
uwvm2-ros. The native Humble/Gazebo processes provide the robot, sensors, and ROS
transport. They do not execute a Python replacement for the guest algorithm.

Build with the existing SDK tool cache. A deployment must explicitly enable the
WASIp1 and ROS 2 namespaces and grant the operations listed in
deployment.template.json. The template is a configuration example, not an
automatic grant. Its optional finite quotas are deployment choices; omitting
quotas leaves enabled operations unlimited. The system-clock capability alias
robotis-obstacle-log-system-clock uses the canonical resource
/uwvmros/turtlebot3/obstacle/log_system_clock.

## LaserScan wire profile

This application uses the full original LaserScan fields, including all seven
binary32 metadata values, both sequences, and Header. Its selected
laserscan-ieee-profile.json explicitly permits IEEE binary32 values, including
infinities, NaNs, and signed zero. The general finite-only vendor codec remains
separate and unchanged.

The profile bounds (128 UTF-8 frame bytes and at most 1,024 elements in each
sequence) are part of this selected message schema, not WASI path limits or
automatically imposed traffic quotas. The native adapter validates complete
lengths and UTF-8 before allocation, rejects input/output overlap, and leaves
the destination unchanged on a rejected decode.

Generate the selected native registry using an actual installed-Humble source
proof and independently obtained native metadata:

~~~sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/robotis/laser_scan_native.py" \
  --sdk "$UWVM_ROS_SDK_ROOT" \
  --catalog "$CATALOG" \
  --proof "$NATIVE_SOURCE_PROOF" \
  --native-metadata "$NATIVE_METADATA" \
  --out "$NEW_OUTPUT_DIRECTORY"
~~~

The native_source.hpp from that same proof must be available on the gateway's
include path. Use the generated manifest.hpp and native_source_provider.hpp as
the explicitly selected runtime and gateway registries. Generation checks
original message identities and source hashes; generation alone does not prove
transport or application behavior.

## Integration evidence

The independent C Wasm obstacle_scenario actor observes real scan, odometry,
and task commands. It sends raw turn/resume/stop inputs and cancellation; it
does not publish /cmd_vel or generate sensor data. A complete scene test must
also verify the original Python Wasm execution, native feedback, and actor
retirement. Neither successful generation nor native endpoint readiness counts
as a passed application scene.

## Required xmake scene

This example registers a mandatory native-scene test. Select an installed
deployment with UWVM_ROS_TURTLEBOT_TEST_DEPLOYMENT and a fresh writable evidence
root with UWVM_ROS_TEST_EVIDENCE_ROOT, then run xmake test -j1. Missing deployment,
failed guest execution, incomplete feedback, or leaked actors fails the test.

The deployment JSON format is uwvm-sdk-turtlebot-native-test-v1. It contains:

- runtime, gateway, scenario_wasm, native_loader, native_runtime_closure,
  native_environment, native_sources, and native_profile_evidence: each is an
  object with an absolute path and its SHA-256 in sha256.
- application_wasm_sha256: the exact newly built Python Wasm hash.
- native_rootfs and native_prefix: the installed Humble runtime and message prefix.
- aggregate_cgroup: the shared 64 GiB, zero-swap test cgroup.
- native_cgroup: the current bounded test group or a direct child of the aggregate.
  Its actual kernel memory limit must be at most 64 GiB with zero swap. The
  deployment selects CPU limits; the test records them and the effective CPU set.
- socket_directory: a writable directory for private Unix sockets.
- domain_id: the isolated ROS domain, an integer from 0 through 232.

native_profile_evidence is the successful qualified IEEE LaserScan native
adapter check. The runtime and gateway must use that selected full-field
registry. The driver artifact is built from the independent C obstacle_scenario
example. Native input bundles come from the existing simulation environment;
the test does not install compilers, interpreters, or ROS.

Run the test within a private loopback-only Linux network namespace and the
aggregate cgroup. The public test tool accepts --sdk-root, --deployment, --wasm,
and --output. It starts the original Gazebo world, executes both Wasm artifacts
with explicit WASIp1/ROS authority, independently decodes the observed wire
records, and requires normal exits and process retirement. The scene omits
optional traffic quotas; it does not weaken the selected resource grants.

The 1 ms observer wait explicitly uses CLOCK_MONOTONIC. Successful publication
alone is not a delivery acknowledgement: raw setpoints are repeated every
100 ms only until feedback confirms their phase. Cancellation keeps its
transient-local publisher alive for discovery and separately requires the
original Python Wasm to exit. Recorded scene success is finite functional
evidence, not a production safety or complete-message-delivery certificate.
