# 使用 C 开发 Franka 原始 ROS1 Service 与 Action 客户端

`call_native_joint_impedance` 和 `call_native_grasp` 使用原始 Noetic 接口，
通过公共 ROS capability API 接入原生 ROS。源码位于
`sdk/example/platform/franka/c/ros1`，每个示例目录都有独立的 Xmake 项目和
需要手动配置的原生部署模板。

## 构建与部署

将 `UWVM_ROS_SDK_ROOT` 指向已安装的 SDK，再进入任一示例目录执行构建。
公共构建器恢复锁定版本的 LLVM 23 编译器及目标依赖；构建不依赖本机 ROS
或 uwvm2-ros 运行时。

```sh
export UWVM_ROS_SDK_ROOT=/opt/uwvm2-ros/sdk
xmake f -a wasm32
xmake
```

切换到真实 memory64 应用时，执行 `xmake f -c -a wasm64`，然后执行
`xmake`。项目通过 `set_language("c")`、`set_ros_platform("franka")`、
`set_ros1_version("noetic")` 和 `set_plat("wasm-wasip1")` 声明公共构建请求。
普通 Xmake 架构配置优先于示例的 wasm32 默认值，应用部署产物为单个 `.wasm`。

将 `deployment.template.json` 复制为 `deployment.json`，手动配置已安装的
runtime、gateway、ROS master 和离线夹具端点。runtime 与 gateway 必须使用
相互匹配的原始 Franka 类型注册表及 codec identity。逐项审阅权限后运行：

```sh
cp deployment.template.json deployment.json
# Edit deployment.json for the installed, source-matched native environment.
UWVM_ROS_RUN_CONFIG=deployment.json xmake run main
```

项目禁用 `run.autobuild`，运行直接使用既有应用，不需要编译器缓存。
公共启动器保持手动提供的权限配置。这两个示例连接受控 ROS 夹具，不会启动
物理机器人。

## 关节刚度 Service

`call_native_joint_impedance` 通过公共路径
`<franka/c/ros1/franka-ros1-complete/bounded_interfaces.h>` 导入完整接口，
并使用公共 ROS1 后端。程序一次发送
`franka_msgs/SetJointImpedanceRequest` 中全部七个 `joint_stiffness` 值，
单位为 N·m/rad。参数 `sample` 指定手动授予的 `service.call` capability。
模板将请求上限设为 56 字节、响应上限设为 261 字节。

原始响应包含 `success` 和 `error`。有效的 `success=false` 仍属于业务响应，
程序保留并打印完整编码结果。通信错误、编解码错误和清理错误分别处理。
程序关闭已获取的 capability，同时报告主要状态与清理状态；退出码优先返回
主要错误，其次返回清理错误。超时请求不会自动重放。

## Grasp Action

`call_native_grasp` 完整填写原始目标的 width、speed、force 以及两个
epsilon 容差。宽度与容差使用米，速度使用米/秒，力使用牛顿。
发送、取消自身目标、接收反馈和接收结果分别使用独立命名的 capability。
程序只发送一次目标，观察原始空反馈，消费完整终态结果，核查本地目标表已
移除该目标，最后关闭四个资源所有者。

只有 idle 状态 11 允许继续轮询。每次观察最多尝试 250 次，间隔 20 ms；
次数耗尽返回 110。因此模板明确为主模块授予 `monotonic-clock`。
其他错误立即返回。取消角色会在清理时关闭，但此示例不实际执行取消请求。
结果中的业务状态与通信成功、清理状态分别表达。

## 已审阅的验收范围

本次源码交付有四次真实 Xmake 构建、十六次实际 `xmake run main` 检查：
两个客户端 × 两种 guest 位宽 × 两种原生主机 × 授权与拒绝两种策略。
原生主机为 x86_64 和 QEMU AArch64，两边复用同一组四个 Wasm 产物。
所有检查都使用实测 64 GiB、零 swap 的 Linux cgroup。父 chat 已对照完整
原生字段、产物与策略哈希以及 Action 反馈订阅释放记录进行核验。

公开 C 源码与受测源码的非注释 token 完全一致，格式和解释性注释另行审阅。
以上结果仅覆盖这两个客户端。服务端实现、实际取消请求、ARM 主机源码构建
以及物理控制器行为仍需分别验收。
