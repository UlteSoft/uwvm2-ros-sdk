# Genuine Ruby shared scalar example

Status: the standard Xmake `shared` producer and C `add_deps` build passed in
an Xmake-only Linux environment with actual64GiB/zero-swap limits. The exact
products then passed two independent-instance calls through the canonical
native-v2 runner, plus missing-preload rejection. Ruby executes the method's
parameter-dependent computation; C bridges and checks results. This scope uses
CRuby3.4.7, LLVM23.1.4, wasm32 Preview1/noeh and the ROS1 import namespace.
No native ROS gateway or peer is started; this does not qualify native Noetic
communication. The tools-image ROS_DISTRO label was removed from this unsourced
fixture. `share/language/ruby/module-status.json` records the portable scope.
The `xmake run` CLI hook itself remains a separate qualification item.

`algorithm/xmake.lua` declares ordinary `set_kind("shared")`. The C main declares
`set_kind("binary")` and `add_deps("algorithm")`. The dependency establishes the
build relationship; deployment explicitly loads the independent Core module as
`algorithm`. Its interface is `<language/common/module.h>` with
`UWVM_LIBRARY_NAMESPACE` set to that exact name. Each target directory contains
one `.wasm`, and the dynamic deployment needs both compiled modules.

Both targets select the existing `ros1_main_packaged_ik` source profile; its
complete17-record module graph remains intact. This computation makes no motion
request.

The real Ruby `Uwvm::Library.call_i32` computes triangular sums, retains its call
counter, runs GC and a Fiber, raises a genuine exception for invalid input and
continues after the protected exception. The C consumer checks separate scalar
results and statuses, then retires the VM once. Later calls report125. Values
crossing this interface are exact i32 scalars; no pointer, memory view, owner or
resource handle transfers between modules. The C source implements no algorithm.

With the public artifact contract and exact reactor template installed, set
`UWVM_ROS_SDK_ROOT` to the SDK and build with `xmake f -c -a wasm32` then `xmake`.
An unavailable genuine reactor template must fail clearly. An explicit wasm64
request must fail without selecting the memory32 engine. Do not substitute the
historical direct-core experiments for an ordinary Xmake build receipt.

Copy `deployment.example.json` to your manual configuration, set actual runtime
and gateway executables and the exact built preload path, and pass its absolute
path as `xmake f --ros-run-config=/absolute/config.json` before
`xmake run shared-scalar-main`. The single canonical launcher is
`tools/platform/ros/run.py`; neither the example nor its provider adds permissions.
The gateway executable is validated as deployment infrastructure, but no gateway
is started when every module has ROS disabled.

Both `main` and `algorithm` have explicit module-local WASI/ROS Single bindings,
ROS disabled, empty ROS grants and empty additional WASI grants. Default WASI
still supplies basic standard streams. No environment, file directory or socket
is inherited. The Ruby module explicitly checks that opening
`chat07-ungranted` returns13 without exposing an owner. This minimal two-module
fixture does not establish the required positive native ROS three-library example,
static archives, memory64 or AArch64 qualification.
