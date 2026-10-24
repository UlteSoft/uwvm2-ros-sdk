# Current public configuration

The shared frontend validates the installed `share/platform/unitree/provider.json` before building. Its current declared distributions are **ros1: noetic; ros2: jazzy**. Select these with `set_ros1_version` or `set_ros2_version` as applicable. The first release uses `set_` configuration names and provides no old version-selector aliases.

Other distribution names retained in source catalogs or historical source-compatibility descriptions do not add a declared build route. An undeclared distribution fails validation. The schema's target list also does not qualify every language/width combination; the selected source-language provider may reject an unimplemented pair.

Application targets produce one `.wasm`. The current shared dispatcher preserves ordinary `set_kind("binary")`, `set_kind("shared")` and `set_kind("static")`. C/C++ use the common native library contract. Genuine JS/Python/Lua computation libraries use the WASI provider and the bounded scalar ABI described in the language library manual; native ROS interpreted consumers with library dependencies remain open. Lua examples explicitly select the real `eh` profile. Support and execution qualification are recorded separately. Build configuration grants no ROS authority; deployment requires the user's explicit manual policy.
