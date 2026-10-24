# TypeScript 开发指南

使用 `set_language("typescript")` 选择真实 `.ts` 或 `.mts` 入口。SDK 通过
Microsoft TypeScript 5.9.3 解析源码、执行严格语义检查并生成 ECMAScript，
再将程序嵌入 JavaScript 路线共用的 QuickJS 2026-06-04 Wasm 引擎。
宿主编译工具不执行用户应用；这条路线并非 TypeScript 原生 AOT。

编译器包、Node 宿主工具与 QuickJS 引擎按固定身份共享。平台只提供类型、
消息绑定及配置，不能另装一套 TypeScript 或 JavaScript 解释器。编译器包
保留上游许可证与标准库声明，宿主工具清单记录每个输入的完整哈希。

## 构建配置

每个示例都有独立的 `xmake.lua`。引导部分通过 `UWVM_ROS_SDK_ROOT` 或所在
SDK 目录定位安装位置。加载 `tools/xmake/ros.lua` 后，Unitree 命令可声明为：

```lua
target("controller")
    set_kind("binary")
    set_language("typescript")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_ros_scenario("wireless_controller")
    set_arch(get_config("arch") or "wasm32")
    set_plat(get_config("plat") or "wasm-wasip1")
    add_files("main.ts")
target_end()
```

在项目目录执行：

```sh
xmake f -y -a wasm32 -p wasm-wasip1
xmake
```

`-a wasm64` 选择独立的 `wasm64-wasip1` ABI，不会回退为 wasm32。构建只需要
Xmake 与已安装的完整 SDK；原生 ROS 和 `uwvm2-ros` 属于运行依赖。
当前编译宿主验收范围是 Linux x86_64。QEMU AArch64 的 guest 执行结果
不能计作 AArch64 宿主编译器安装验收。

## 模块与静态类型

声明一个入口，再通过导入引用依赖。公开命名空间例如
`unitree/js/ros2/records`，或平台已安装的
`<platform>/typescript/<profile>/records`。TypeScript 导入语法不使用尖括号，
示例也不通过父目录层数拼出 SDK 路径。

公开模块支持省略扩展名及显式 `.mjs`、`.mts` 名称。与 `.mjs` 相邻的
`.d.mts` 提供静态类型，`.d.ts` 对应 `.js`。编译器将真实 JavaScript 实现
加入 guest 模块图，声明文件本身不会伪装成运行模块。原有 JS 构造器身份
保持不变，因此嵌套记录仍能通过真实编码器的类型检查。

接口、泛型、枚举表达式、可区分联合及类型专用导入均由真正的 TypeScript
编译器处理。严格语义错误会在应用 Wasm 生成前终止构建。消息边界与线格式
仍由真实 codec 在运行时检查；类型断言不会取消这些检查。

源码契约为 ES2022、严格类型检查和静态 ESM 导入，不自动查找环境中的 npm
依赖。Node 和浏览器全局对象不是 guest API。构建器不读取周围的 tsconfig，
不执行包脚本，也不安装未声明的依赖。动态 `import()` 尚需明确的 guest
加载契约，当前会明确拒绝；本路线不支持 JSX。

## 产物、库和运行

binary 与 shared 交付 `.wasm`。发射的 `.mjs`、诊断和源码清单留在私有
`.uwvm-ros` 构建区域，部署不需要独立 `.js` 文件。普通 `set_kind("static")`
产生真实有索引的静态归档作为私有链接输入，最终应用仍为 `.wasm`。

四个公共示例分别展示 TS 静态链接、TS 动态链接、JS 调用 TS、TS 调用 JS。
有限标量 ABI 与显式 Preload 配置见[库开发指南](LIBRARIES.md)。

ROS 应用需要所选平台的原始类型绑定和部署配置。构建不会授予 ROS 权限。
`xmake run` 需要单独安装 `uwvm2-ros` 并显式选择运行配置，不会自动猜测原生
发行版、启用 ROS 或扩大模块权限。

源码存在与验收完成分别记录。公共前端证据标识编译器、输入、最终 Wasm、
位宽和执行架构；各平台完整类型目录、正向原生 ROS 通信与库组合需要各自
对应的证据。使用前请查看 SDK 人工审查入口及平台的 `review-status.json`，
不能仅凭目录存在判断整个平台和语言已经具备发布资格。
