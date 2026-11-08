# Explicit socket preopen permissions

This wasm32 WASI command sends a request, waits synchronously for the complete response, verifies its contents, and shuts down the write side. All application work runs inside uwvm2-ros. The native Python loopback peer supplies only the remote transport endpoint.

Use the installed SDK and existing VM; no compiler installation is part of testing:

~~~sh
export UWVM_ROS_SDK_ROOT=/path/to/uwvm2-ros-sdk
export UWVM_ROS_SOCKET_TEST_VM=/path/to/uwvm2-ros
xmake f -p wasm-wasip1 -a wasm32
xmake
xmake test
~~~

Run under the deployment resource group. The test independently checks namespace hidden, interface denied, exposed interfaces with zero descriptor rights, write-only authority, and exact read/write/shutdown authority. It runs both the interpreter and LLVM JIT. Each policy uses an explicit base WASIp1 namespace and exact interface states, except the deliberately hidden namespace case. Declaring a preopen performs the host-authorized connection; it grants no guest data rights. No protocol classification is used. The saved JSON contains the actual command, exit status and peer-observed bytes for every case.

The command also queries the preopened socket's real FD status, verifies zero ABI padding, then irreversibly removes its descriptor rights after the response. Restoring write authority and sending after that reduction must both return `ENOTCAPABLE` (76). Interface permissions remain separate from descriptor rights.
