# C static pointer library

Set `UWVM_ROS_SDK_ROOT`, then run `xmake` and `xmake test` in this directory.
The real C compiler emits an indexed Wasm archive and a consumer with `main`.
The consumer calls the linked function with a pointer/length, checks the sum
and visible mutations, and checks an empty range at the array end.

Both objects belong to one instance and one heap. This is shared visibility,
not isolation. The standard guest runner requires an explicitly pinned VM
deployment and its qualified live execution boundary. Missing runtime input
must remain BLOCKED. Guest component execution, official ROS Stage A, simulator
Stage B and independent-library isolation are separate acceptance scopes.
