# hello_robot / moonbit

This route still needs its shared language engine and platform bindings. Documentation is not counted as implementation or acceptance.

Install one SDK release and Xmake, then set `UWVM_ROS_SDK_ROOT` to the SDK root. The shared installer verifies archives and member SHA-256 values; an ambient interpreter is not a build input. Compiler route: the single source-locked common language provider named in dependencies.json. Building does not require uwvm2-ros or native ROS.

Every standalone target declares `set_language("moonbit")`, `set_ros_platform("hello_robot")`, `set_ros1_version(...)` or `set_ros2_version(...)`, `set_arch(...)`, and `set_plat(...)`. Select the exact source revision with `set_values("ros.sdk.vendor_profile", "profile")` from `share/platform/hello_robot/provider.json`. A vendor branch and a native ROS distribution are independent facts. For example, `ros1_humble_devel` names a source profile; it does not designate a ROS 1 Humble distribution.

Model, driver revision, calibration, operating mode, transport, ABI, Wasm features and permissions come from explicit native deployment facts. Catalog selection cannot identify connected hardware. The provider performs no automatic discovery, second-VM installation, hardware command or permission grant. Preserve the requested wasm32/wasm64 and WASI generation exactly. The managed AOT recipe currently targets wasm32-wasip1; other managed targets remain open engineering work.

Run `xmake f --plat=wasm-wasip1 --arch=wasm32`, then `xmake`. The deployment directory must contain only the application `.wasm`; assemblies, native objects and compiler caches remain intermediates. Separately, `xmake run` requires the installed uwvm2-ros, matching native registry/ROS peers and manually supplied permissions. Qualification uses controlled simulated peers.

Read `API.md`, the platform `API_CATALOG.md`, and `EXAMPLES.md` for API, field and example details. This source route currently exposes 0 files.
