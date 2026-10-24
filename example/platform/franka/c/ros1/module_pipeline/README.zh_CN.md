# 四个模块与显式的逐模块权限

本目录目前是等待公共 kind/dependency 实现的源码候选。应用编译通过不等于
静态归档、共享 Wasm 加载或模块隔离通过；这里尚未给这些库测试记通过。

普通 Xmake `set_kind("binary/shared/static")` 描述全部目标：main 调用独立构建的
io、algorithm、ros_comm；algorithm 再链接真实的 algorithm_core 静态归档。
另有 C 和真正的 C++ 消费者用于检验 C 归档符号提取与跨语言链接。没有另一套
编译器、打包器或 kind DSL。

io 使用自己的 WASI 标准流。algorithm 对实际收到的原生字符串摘要计算结果，
保留默认 WASI，不得到额外资源或 ROS 授权。默认 WASI 仍有基本标准流权限，
不能称为字面上的“零权限”。只有 ros_comm 得到主题订阅及单调时钟授权。
main、io、algorithm 分别通过各自的真实 ROS 导入检查拒绝结果 13，清理结果也
必须为零；不能把成功 open 后的 close 错误当成拒绝。

库间只传递标量。能力句柄、指针及借用字符串都留在所属模块内存中。
额外的 width_echo(uintptr_t) 只传整数位，不传地址，显式绑定所选目标宽度；
memory64 主程序传入超过 32 位的值检查是否被缩窄。分别混用 wasm32 algorithm
与 wasm64 main、反向组合，断言这个实际 i32/i64 函数签名不匹配被拒绝。独立
内存且只使用宽度无关标量的模块并不天然不兼容，不能凭文件名宣称宽度拒绝。
各库构造函数写入独立 volatile 状态，main 在首次操作前实际读取 io=201、
algorithm=202、ros_comm=203，未初始化时以 78 退出。归档构造函数优先级为 101，
algorithm 的 201 优先级构造函数必须先读到归档状态 101 才记录成功；两个静态
消费者也检查归档状态。源码不手动调用 `_initialize`，不在首次函数调用时补初始化。
验收还须检查实际共享 Wasm 的 Core start section，并观察 preload 先于 main 完成
这些初始化；只有 `_initialize` 导出而未运行不能通过。
构造函数分别输出并 flush io-init、archive-init、algorithm-init、ros-init；main
在调用任何导出前输出并 flush main-enter。验收逐一断言初始化标记只出现一次，
都先于 main-enter，且 archive-init 先于 algorithm-init；静态消费者也检查归档
标记先于自身入口。这能识别链接器自动加入的懒初始化导出包装，不能只看状态值。
algorithm 的标记只使用默认基本 WASI 标准流。实际 Core start section 的检查仍是
另一个独立断言。
ros_comm 验证完整 std_msgs/String，逐字节计算 FNV-1a，只复制长度与摘要给 main。
本例容量为 252 个 UTF-8 字节，拒绝嵌入 NUL，允许空字符串。容量是示例的接纳
约束，没有修改原生不定长定义。只有空闲错误 11 可以再次 poll；其他错误停止，
open、激活订阅、已消费消息和不确定 close 都不重放。

构建及完整的手动配置命令见同目录 [English guide](README.en_US.md)。其中所有
CLI 名称已按实际源码的参数定义编写，按以下顺序操作：

1. 设置完整 SDK 的 `UWVM_ROS_SDK_ROOT`，用 `xmake f -c -p wasm-wasip1 -a wasm32`
   选择地址宽度，分别构建 main、static_check_c、static_check_cpp、algorithm_wrong。
2. 动态部署明确包含四个文件：build/main.wasm、build/io.wasm、
   build/algorithm.wasm、build/ros_comm.wasm。归档留在 .uwvm-ros/lib，两个静态链接
   消费者各自只部署一个 Wasm。原生 so/dylib 不能替代共享 Wasm。
3. 在独立 Noetic 终端启动 roscore、原生 String 发布者和观察者。本技术示例使用
   原始 std_msgs/String MD5 `992ce8a1687cec8c8bd883ec73ca41d1`；它不证明自定义
   Franka 目录已经接入运行时注册表。
4. 按英文指南显式设置安装的 runtime/gateway 路径。停止的 worker 保持 PID，随后
   手工写出 UID、PID、socket、连接信息、精确类型和全部有限限额的 gateway.conf。
   启动网关，确认 worker 停止及 socket 存在，再发送 CONT。保留原始退出状态，
   只清理自己启动的网关进程。
5. Preload 的重命名必须正好是 io、algorithm、ros_comm；main 身份显式设为 main。
   WASI Single 和 ROS Single 都绑定这些实际加载身份。只有 ros_comm 的 Single
   目标得到 ROS grant；不存在运行时全局 ROS grant。网关白名单是另一个进程级
   原生边界，不代表对其他 guest 模块授权。Xmake hook 不写入或扩大这份配置。
6. 正向通信、三个未授权模块的拒绝、原始 primary 与一次性 cleanup 各自断言。
   用 algorithm_wrong 的 i64 签名检查 i32 导入拒绝；检查重复模块身份拒绝。
   不同模块里同名导出合法，必须按模块及导出名共同绑定。
7. 使用真正的归档工具与符号工具验证 a 文件中是可重定位 Wasm 对象和实际定义，
   再给两个消费者输入 0、1、2147483648、4294967295 和错误文本，检查真实结果。
8. 用 wasm64 重建，明确添加 memory64/table64 解析开关并执行；随后使用共享的
   QEMU AArch64 命令重复原生观察，记录 QEMU、运行时 ELF/哈希、模块哈希、实际
   64 GiB/零 swap cgroup 与清理。跨编译和文件名都不能替代执行证据。

本例使用普通 Core Wasm 函数导入，不假设 LLVM PIC/dylink 兼容。公共生产者仍需
保留 kind、依赖、文件名、目标目录和公共头路径，真正生成并加载库。其他语言及
其他生产者/消费者组合必须单独实现并测试，不能从 C 应用通过推断。
