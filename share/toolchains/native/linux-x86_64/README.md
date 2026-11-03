# Original native ROS infrastructure

`ros-humble-jammy.json` pins the original OSRF ROS Humble/Jammy image by immutable
amd64 manifest and10layer digests, all757 original Ubuntu/ROS package URLs and
SHA256 plus authenticated APT-index hashes, and complete original Unitree ROS2
source at668d1ec5a05d1c38d3306bdca7d59f2ba3581a88. Only unitree_go/unitree_hg/unitree_api
interfaces are constructed. Native application/controller example packages are
excluded. No package maintainer script or host system daemon is started.

From an admitted Linux/x86_64 job using the shared Python>=3.11 selector
and a trusted OS /usr/bin/bwrap supporting the reviewed user namespace policy:

    xmake lua /absolute/sdk/tools/xmake/native_ros.lua /absolute/sdk /absolute/blob-cache /absolute/new-output

Add `offline` to require every exact archive already be present in the content
addressed blob cache. Output contains the complete rootfs, generated original
interface prefix and raw construction/metadata evidence. The read-only original
OCI base provides its own dpkg-deb reader, avoiding host dpkg dependencies and
in-place reader replacement. Every archive path is resolved within the container
root; absolute archive symlinks never resolve against the host during extraction.

The selector reuses a suitable existing Python or restores the pinned supervisor
bundle shipped in `share/toolchains/host/linux-x86_64/` using Xmake alone. That
interpreter restoration is a separate step from native environment construction.
A trusted OS bwrap and its applicable user namespace policy remain prerequisites;
the Python bundle installs neither system packages nor policy. The combined
missing-prerequisite native construction and current scene route remain unqualified.
Metadata construction is supporting evidence; official drivers/simulators remain
external endpoints and real robot task/ROS behavior must run in Wasm. This helper
starts no robot application, creates no source approval or production grant, and
never touches the canonical coordinator lock or system policies.

The same constructor also supports the `ur` scope:

    xmake lua /absolute/sdk/tools/xmake/native_ros.lua /absolute/sdk /absolute/blob-cache /absolute/new-output online ur

This scope combines the unchanged common Humble lock with the exact 54-package
supplement in `example/platform/universal_robots/simulation/ursim_e_series/`,
then extracts the original 11-layer official URSim image and constructs the
original headless UR5e hardware-driver model. The supplement must match the
common lock and immutable base package status. It uses the same locked blob
cache and confined archive extractor as `base`; registry credentials are scoped
to each exact public repository and remain in memory. `offline ur` requires all
833 original archives/configuration objects already present. No prepared rootfs,
typesupport, model or private per-scene overlay is required as input.

UR output includes `ursim-inputs.json` using the native entry's input schema:

    xmake lua /absolute/sdk/example/platform/universal_robots/simulation/ursim_e_series/native_scene.lua /absolute/sdk /absolute/new-output/ursim-inputs.json /absolute/new-native-run /absolute/ready.json /absolute/stop-native 20

Run that entry only inside its admitted resource boundary. It starts the native
official simulator and hardware-driver endpoints and retires its owned process
tree; a ready endpoint is not a Wasm application or complete robot-task result.
The default scope remains `base`, including its original Unitree interface build.
UR vendor payloads are private inputs and are not redistributed by this recipe.

Keep the constructor and consumer sources from a coherent SDK installation.
The construction closure includes `native_ros.lua`, `native_ros.py`,
`native_ur.py`, `native_os.py`, the common Humble lock, the UR supplement/image/assets locks,
`prepare_driver.py` and the shared resource-budget helper. Python restoration
also requires `python_runtime.lua`, `tool_bundle.lua` and the complete matching
supervisor manifest/XMZ distribution archive. Native runtime preparation and
launch additionally use the scene's own current source/assets and shared
lifecycle helpers; their versions need separate execution evidence.

The original 029 constructor-to-native-runtime check used the preserved 016
entry. The 030 missing-Python restoration check used the earlier 027 constructor.
These historical source scopes remain unchanged.

Subsequent 04/027 evidence connects the shared 029 bundle to the current 019
`prepare_runtime.lua` and `native_scene.lua`. With existing trusted prerequisites,
two fresh private preparations, one-use consumption, actual public Xmake native
startup/stop and owned process retirement passed; reuse was rejected. These
checks reused the immutable shared bundle without rerunning archive acquisition
or the shared constructor.

This qualifies native environment support with existing trusted prerequisites.
The complete missing-Python plus trusted-OS-bwrap clean-machine route and original
Wasm Action task remain unqualified. No dependency count, interpreter restoration
or native endpoint check is a complete Wasm task result.

When `/usr/bin/bwrap` is absent on Ubuntu 25.10 x86-64, the same constructor
stages the exact original packages selected by `bwrap-ubuntu-25.10.json` through
the shared blob cache, then stops with `BLOCKED_NATIVE_BWRAP_TRUSTED_OS_INSTALL_REQUIRED`.
The lock records the complete original target-image base, signed APT indices,
additional package payload/control inventories and the original AppArmor policy.
This is archive preparation only: review the actual system package/policy state
before any administrative installation. It is not a host upgrade plan. Existing
trusted bwrap is reused; no package or policy is installed or upgraded by this
helper. Other distributions require their own reviewed OS prerequisite provider.
