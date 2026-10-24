# 显式 native 部署

先按[源码解读](README.zh_CN.md)编译 guest。运行仅面向 Linux，要求匹配的原始 ROS2 Jazzy 类型包和实际 publisher。选定原始类型是 `isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray`，native identity 是 `RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff`。String publisher、预先编码的 canonical buffer 或 GPU API 的 CPU 代理都不能代替这里的部署。

## Native 目录和构建选择

SDK 的公开 native 声明位于 `include/platform/nvidia-isaac-ros/native/first-array-jazzy/`，转换实现位于 `src/platform/nvidia-isaac-ros/native/first-array-jazzy/native_ros2.hpp`，元数据位于 `share/platform/nvidia-isaac-ros/native/first-array-jazzy/`。可供生成器重新读取的 catalog 放在原始定义旁：`share/platform/nvidia-isaac-ros/schemas/ros2/catalog.first-array.preparation.json` 和 `catalog.first-array.native.json`。`generation.vendor.json`、`binding-proof.json` 记录真实 SDK 相对路径、字节数和 SHA256；历史生成产物另行标记。

部署者必须选择使用同一份 registry 构建的 VM 与 gateway。公共 VM 构建选择为 `--import-ros2=y` 加 `--ros-custom-registry-header=/absolute/sdk/include/platform/nvidia-isaac-ros/native/first-array-jazzy/manifest.hpp`，所有 VM 翻译单元必须一致。构建时选择不会产生任何运行时 capability。

公共 gateway CMake 项目的选择如下：

```sh
cmake -S "$PROJECT/sdk/src/gateway/ros2" -B "$BUILD/gateway" \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_CXX_FLAGS="-I$UWVM_ROS_SDK_ROOT/include/platform" \
  -DUWVM_ROS_CUSTOM_REGISTRY_HEADER="$UWVM_ROS_SDK_ROOT/include/platform/nvidia-isaac-ros/native/first-array-jazzy/manifest.hpp" \
  -DUWVM_ROS_CUSTOM_ROS2_HEADER="$UWVM_ROS_SDK_ROOT/src/platform/nvidia-isaac-ros/native/first-array-jazzy/native_ros2.hpp" \
  '-DUWVM_ROS_CUSTOM_ROS2_PACKAGES=isaac_ros_apriltag_interfaces;geometry_msgs;builtin_interfaces;std_msgs'
cmake --build "$BUILD/gateway" --target uwvm-ros2-gateway --parallel 1
```

`PROJECT` 是匹配的完整公共源码 checkout，`BUILD` 是新的 native 构建目录，`UWVM_ROS_SDK_ROOT` 是安装的 SDK。实际编译器/sysroot 和已 source 的 ROS 类型包通过标准 CMake toolchain/prefix 配置提供。重排后的 native 实现使用公开 include 名称，因此必须提供 `include/platform` 根。保留现有 warning、类型和 metadata 检查。原始消息定义及全部标准依赖必须齐全；生成源码本身不构成运行回执。

## 部署者配置

将 `deployment.template.json` 复制到部署者控制的绝对路径，将 `runtime`、`gateway` 改为匹配的实际可执行产品。需要 loader 或 QEMU 时可以使用纯 exec prefix，但必须保留真实 PID 和公共 launcher 的原参数。两处 connection 都要与实际 publisher 的 ROS domain 一致。模板中的 `/sdk_fixture/nvidia/AprilTagDetectionArray` 与 domain 137 属于有限本地 fixture；更改时应对应独立运行的原始类型 publisher。

唯一模块为 `nvidia_main`，调用边界为 `same-module`。它只获得一个名为 `sample` 的 `topic.subscribe` alias，绑定上面的准确 type/RIHS 和元数据中的准确 codec identity。额外 WASI 权限只有 idle 等待所需的 `monotonic-clock`；基础标准流权限保持默认。本例和 Xmake 都不会追加 environment、目录、网络或全局 ROS grant。

显式 topic 限制为最大 canonical 9872 字节、reliable/volatile keep-last depth10、burst10、一个 subscriber/inflight、98720 队列字节和每秒262144字节；每秒速率20，溢出丢弃最旧项。burst 不得大于 depth。即使原生 publisher 可以发送更大的原始 ROS 值，这些边界仍然有效；不合格的完整值会被拒绝，不会截断。

模板的 `security-mode=disabled-test` 仅用于隔离 fixture。实际部署应提供所需安全设置和对应类型包/发行版安装。运行前 source 实际 ROS2 环境；公共 launcher 会核对选中的发行版。本例不会自动启动 detector、机器人、GPU 进程或 ROS peer。

```sh
export UWVM_ROS_RUN_CONFIG=/absolute/operator/deployment.json
xmake run original-nvidia-array
```

公共 `platform/ros/run.py` 负责 native gateway/worker 创建、模块独立 socket policy、gateway 绑定的真实 worker PID 和进程清理。选择 wasm64 时，它会在加载模块前加入 memory64/table64 parser feature。`UWVM_ROS_RUN_CONFIG` 只指向被审阅的显式配置，不是权限后备来源。

## 核验与排错

检查 `.uwvm-ros/native-ros/run/` 下的新目录，保留 `execution.json`、worker stdout/stderr、gateway policy/log 和实际产品哈希。`plan.target` 必须对应编译位宽，模块/grant 列表必须与配置一致，`cleanup_errors` 必须为空。应与独立 native 观察比较全部原始字段，不能只看成功退出码。

故意拒绝测试可移除 `sample` grant，并保持其余配置显式。worker 应退出13、输出空 wire、创建零个资源，native subscriber 也必须为零。mode1/2 要独立核对每项退休状态：stale/repeated-close 为9，reopen 后 old-again 仍为9，撤销 alias 的 reopen 为125。原始失败回执应保留，不能覆盖。

本例只验收一条原始 ROSIDL DDS 数据路径。实际 GPU、NITROS 类型适配/协商、guest 发布方向、其他语言与 shared/static 组合均需要单独真实证据。

## 可复现 native 输入

原始纯接口 ROSIDL 输入及哈希位于 src/platform/nvidia-isaac-ros/native/first-array-jazzy/interfaces 和 share/platform/nvidia-isaac-ros/native/first-array-jazzy/native-type-support-inputs.json。使用官方 Jazzy ROSIDL 构建并加载安装后，再构建匹配 gateway；具体命令见独立的四模块部署手册 (`sdk/example/platform/nvidia-isaac-ros/c/ros2/original_array_modules/DEPLOYMENT.zh_CN.md`)。
