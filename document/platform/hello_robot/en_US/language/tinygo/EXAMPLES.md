# hello_robot / tinygo examples

This route does not yet have three independently built examples accepted against native ROS on both architectures. Typed source and this manual do not count as that acceptance. Actual applications, per-example xmake.lua files and raw logs remain required after the shared provider is integrated.

Check that the build emits exactly one `.wasm`, then use `xmake run` with manually supplied permissions. Acceptance records real x86_64 and QEMU AArch64 runtime/ELF identities, ROS1/ROS2 message/service/action contents, denied permissions, malformed wire, actual cgroup limits and cleanup results.
