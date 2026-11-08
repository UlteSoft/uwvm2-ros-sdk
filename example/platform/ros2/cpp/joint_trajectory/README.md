# Original ROS trajectory component

Build with `xmake f -P .`, `xmake build -P .`, then `xmake test -P .` using the
existing SDK tool cache. Set `UWVM_ROS_RUNTIME_TEST_DEPLOYMENT` to an explicit
pinned runtime deployment. The C++ static archive and application use the same
Wasm exception ABI. The example calls the original ROS trajectory implementation
inside uwvm2-ros, with no native ROS library on the execution path.

The summary and numerical trace are anchored to the installed original native
ROS Controls 4.42.1 library. Permission to expose WASIp1 and the concrete args,
stdout/stderr, proc_exit and stdio metadata operations is explicit. No ROS
capability is needed by this pure control component. The native oracle is not
run by xmake test. See the source component's README and source lock for the
value-only dependency adaptation and the limits of this migration.
