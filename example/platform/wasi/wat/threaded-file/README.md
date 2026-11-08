# Shared WASI file calls

A real Wasm child waits for its parent after `thread-spawn` returns, opens an explicitly mounted file, checks its bytes, seeks past 4 GiB, writes one byte, checks tell/stat, and closes it. A failed tell after close must leave its output unchanged. The parent verifies its local global remains isolated and reports the child id and final offset for host assertions.

Set `UWVM_ROS_SDK_ROOT` and `UWVM_ROS_FILE_TEST_VM` to this SDK and a compatible VM launcher. Configure/build/test in a separate build directory. Tests explicitly grant the interfaces, mount rights, thread resource, and stdout write; they also exercise exposure, call denial, resource rights, descriptor limits, and manual quota reject/wait.

Target: wasm32-wasip1-threads/noeh. Shared memory64 and other SDK languages remain outside this example's qualification.

The main worker initializes passive data before starting its child. The current CLI threaded profile does not replay active shared data segments.
