# codec_ros1clearpath_platform_msgsdrivefeedback

The genuine rs source exercises the complete `clearpath_platform_msgs/DriveFeedback` value. This pure codec command constructs the complete source-language value, encodes it, decodes it and verifies a whole-value re-encode. It requires no native alias and makes no ROS call. Read the English or Chinese language manual for the exact catalog, bounds, defaults, errors and units.

Run `xmake` in this directory. Its independent `xmake.lua` pins the original source profile, revision, ROS generation/distribution, architecture and WASI platform. Build consumes Xmake and the verified SDK dependencies. It produces one application `.wasm` without a deployable sidecar.

Execution uses a separately installed uwvm2-ros runtime. Transport execution also needs the paired native ROS deployment and manually supplied permissions. The SDK grants no authority. Source presence or a compiler pass does not establish native or QEMU acceptance.

本例使用真实 rs 源码和完整 `clearpath_platform_msgs/DriveFeedback`。本纯 codec 示例构造完整源语言值，编码、解码并验证完整值的再次编码，不需要原生 alias，也不调用 ROS。 在本目录执行 `xmake`，生成唯一 `.wasm`。独立配置锁定源码目录、版本、ROS 分发、目标宽度和 WASI 平台。执行需要另外安装 uwvm2-ros；通信执行另需配对的原生 ROS 与人工权限配置。源码或编译通过均不等于原生通信、QEMU 验收通过。
