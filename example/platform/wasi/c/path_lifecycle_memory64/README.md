# WASI path lifecycle

This SDK-built C example exercises mkdir, lstat, utimensat, link, readlink, rmdir, rename, symlink and unlink through uwvm2-ros. The test runner explicitly enables the base WASI environment and each named interface. Successful operations receive only their required directory descriptor rights.

The 62 checks cover the interpreter and LLVM JIT, interface denial, zero descriptor rights, and independently missing source or destination rights for link and rename. Every denied call must return ENOTCAPABLE, emit a readable warning and preserve the host fixture. Successful calls are checked against the actual filesystem state.

Set UWVM_ROS_SDK_ROOT and UWVM_ROS_FILE_TEST_VM to the SDK and absolute VM launcher paths, configure the existing wasm-wasip1 toolchain, and run xmake test. Keep generated builds and reports outside the source checkout.
