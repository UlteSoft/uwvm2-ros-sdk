# Source-level migration of ROS control_toolbox PID

`xmake build -P .` produces a real C++ Wasm static archive and links it into
`pid-migration.wasm`. `xmake test -P .` runs both registered cases through
uwvm2-ros using an explicitly configured
`UWVM_ROS_RUNTIME_TEST_DEPLOYMENT`. No test executes the application natively
as a substitute for Wasm execution. Reuse the installed LLVM 23 toolchain and
WASI EH libraries; the example requires no ROS middleware or native PID at run time.

The deployment must enable the WASIp1 namespace and each imported interface,
then grant only the required operations: arguments, process exit, environment,
monotonic clock, stdout/stderr writing and stdio metadata. Interface exposure
does not itself grant filesystem, socket or ROS access. No ROS grant is needed
for this numerical component. The exact imported interface list is recorded
in the built artifact and must agree with the deployment.

The tests perform 9,106 assertions, including original validation exceptions,
four anti-windup modes, bounded-output saturation/recovery, failed configuration
preserving state and failed calls preserving their output. `--trace` prints
4,096 numerical steps using hexadecimal floats. Compare both output streams
against the original native control_toolbox 4.11.1 library with
`-ffp-contract=off`; keep the full streams and binary/source hashes.

`--bench N` times the numerical loop using a monotonic clock and prints a
checksum. Report the kernel time separately from Wasm parsing/JIT/startup time.
Use native x86_64 for performance measurements; QEMU establishes cross-platform
correctness only. A fast kernel alone does not establish end-to-end latency or
real-time suitability.

See `src/platform/ros2/control_toolbox/README.md` for the exact source
adaptations and the current static-library / serial-executor boundary.
