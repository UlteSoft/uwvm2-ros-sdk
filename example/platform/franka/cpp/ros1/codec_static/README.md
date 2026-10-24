# Complete franka cpp static codec consumer

Build this project with `xmake f --plat=wasm-wasip1 --arch=wasm32`, then
`xmake -j2 main`. Select `wasm64` explicitly for the other pointer width.
The ordinary `static` target supplies the complete original
`franka_msgs/FrankaState` codec. The library owns every buffer and typed value;
separate Core modules exchange scalar bytes and lengths only.

Copy `deployment.template.json` to your deployment configuration, supply the
installed runtime and gateway paths, and replace the argument with the complete
hexadecimal wire value. Run the public `tools/platform/ros/run.py` entry with
that configuration, scenario `codec_static`, the selected target,
and `build/main/main.wasm`. Both module policies explicitly disable ROS and
list no additional WASI grants. Default WASI standard streams remain available.

The program requires eager constructor state before decoding and prints the
actual library re-encoding. Truncated values, malformed fields and trailing
bytes retain the codec error status. Native ROS delivery and controller behavior
require separate acceptance evidence.
