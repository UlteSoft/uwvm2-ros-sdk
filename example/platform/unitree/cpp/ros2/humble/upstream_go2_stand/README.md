The two Xmake tests run the original Go2 controller and its callback-observed
build against the installed Unitree MuJoCo/DDS scene. Both applications and the
separate operator stop publisher are Wasm executed by uwvm2-ros. Native Python
only runs the simulator/DDS infrastructure and the test's independent oracle.

Set UWVM_ROS_GO2_TEST_DEPLOYMENT to an absolute JSON file with format
uwvm-sdk-go2-native-test-v1, and UWVM_ROS_TEST_EVIDENCE_ROOT to a writable
absolute directory. Build this example, then run "xmake test -j1" from its directory.
Use a private network namespace containing only loopback. No dependency is
installed by the test.

The deployment must contain:

- runtime, gateway, native_inputs, cancel_wasm, native_loader: objects containing
  an existing absolute path and its exact sha256.
- native_rootfs: the installed Humble root filesystem.
- unitree_prefix: the installed original Unitree message prefix.
- aggregate_cgroup: the common 64 GiB, zero-swap cgroup.
- native_cgroup: its dedicated child limited to at most 2 GiB, zero swap and
  two CPU cores. The test process must already belong to another bounded child.
- socket_directory: a writable directory with enough pathname space for a
  short Unix-domain socket name.
- domain_id: the explicit ROS domain selected for this isolated test.

The native_inputs file uses the native launcher's uwvm-native-go2-inputs-v2 format.
The runtime and gateway must both support the original LowCmd/LowState registry
and its exact native and canonical codec identities. The stop Wasm publishes the
granted Bool cancellation, waits for transmission and reports
"cancel sent=0 wait=0 close=0".

The scene explicitly enables WASI/ROS namespaces and grants the original
deployment template's four ROS resources. WASI grants cover arguments, output,
stream metadata, process exit and monotonic clock/timer operations. This test
selects unlimited guest quotas; it does not change the runtime's zero-authority
defaults or replace the separate permission/quota rejection tests.

A pass requires actual VM execution, native feedback, successful cancellation,
unchanged pinned inputs and complete owned-process retirement. The observed
build additionally checks exact binary32 phase progression, monotonic pacing,
all observed native command CRCs and the ordered four-stage trajectory.
The native trace reserializes received native objects: it does not prove that
every published message was delivered, reproduce received RTPS bytes, or
constitute production qualification. Both fresh scene cases must pass.
