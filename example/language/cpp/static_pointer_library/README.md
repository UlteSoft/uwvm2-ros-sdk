# C++ static pointer library

Set `UWVM_ROS_SDK_ROOT`, then run `xmake` and `xmake test` in this directory.
Both the indexed Wasm archive and the consumer with `main` use the genuine
C++20 compiler and selected target runtime. `std::span` passes the consumer's
array into the linked implementation; the guest checks the sum, mutations and
an empty subspan at the end.

This is one shared heap and trust domain. It does not establish isolation or
a cross-module C++ ABI. The standard test requires an explicitly pinned VM
deployment and qualified live execution boundary. Missing qualification is
BLOCKED. Official ROS, full simulation and independent-instance tests remain
separate requirements.
