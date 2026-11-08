# angles：原库运行功能与 ROS 包集成边界

上游为 ros/angles 1.16.1，提交
a96224f9ab3ac51fe8fd981c1e1554528dc4345a。source.json 固定保留的原始文件摘要。
upstream 内的 C++ 头文件、Python 包和两套单元测试均保持原始字节。

本实验的验收单位是原库的 C++ / Python 运行功能与上游测试，不是 ROS
构建、安装和部署的全包兼容性。对完整 ROS 包迁移数量的贡献暂时为零。
不得把两种语言、五个平台或两种执行器重复计为多个包。

## 进入 Wasm 的部分

C++ 示例直接编译原始 test/utest.cpp 并使用原始 angles/angles.h，
通过真实 Wasm GoogleTest 执行其 9 项测试。GoogleTest 是测试依赖，
不构成运行库的必要依赖。仅测试框架关闭 pthread、文件系统、输出重定向
和 POSIX 正则特性；这不代表已迁移 GoogleTest 的全部功能。

Python 示例通过源码包清单加载原始 angles 包与 test/utest.py，
在真实 CPython Wasm 引擎中执行全部 7 项测试。标准库也来自 CPython
源码闭包，没有通过宿主 Python 导入或执行业务源码的回退。
构建机的 Python 只用于测试监督和独立的原生对照。

CPython 3.14 会诊断原库文档字符串中的四处无效转义。示例包装器检查
这四条 SyntaxWarning 的类别、文件、行号和消息前缀，再运行原始测试；
既不修改库源码，也不忽略额外警告。

## 仍未证明的部分

原始 ament/CMake、package.xml、setup.py 等元数据仅保留来源。
本实验使用 Xmake 与 SDK 的源码打包流程，尚未证明原始 ROS 工作空间的
安装、导出目标、包发现、Python 安装布局和下游包即插即用兼容性。
这些是构建与部署适配的缺口，不是必须把算法留在原生侧的理由。

运行库本身不依赖 rclcpp/rclpy、RMW/DDS、消息执行器或设备驱动。
它因此可以用于对照那些只迁移了算法、仍依赖原生 ROS 节点的实验。
这也不能推导出依赖 angles 的任意包都已完成迁移。

## 权限与内存边界

权限仍由运行部署从零显式提供。导入 Wasm、加载 Python 源码包或读取
包清单不会自动授予 ROS、宿主文件系统、网络或设备权限。

本地验证配置未授予 stdin.read，标准流也没有 seek 权限。
CPython 初始化时会探测这些可选能力，VM 明确拒绝并输出 warning；
Python 正常处理探测失败，原始测试继续运行。独立的跨执行器检查核对
完整诊断列表；不能以测试进程退出零推断未发生权限拒绝。
公共 component 执行器验证实际 Wasm 进程、退出码与 stdout，并保留原始 stderr。

C++ 头文件编入同一 Wasm 实例，Python 包运行于该实例中的语言引擎。
两者都不是独立内存组件或同内存 preload 动态库的 ABI 证明。
跨组件隔离仍须分别验证私有内存、值/句柄传递和逐模块权限。

测试入口：
- example/platform/ros2/cpp/angles_upstream
- example/platform/ros2/py/angles_upstream

这些测试只报告已执行制品的结果；不声明厂商认证、所有输入无缺陷，
或整个 ROS 包生态的兼容性。
