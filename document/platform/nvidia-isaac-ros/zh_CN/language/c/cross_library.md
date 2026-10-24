# 原始 Array 库消费

普通 Xmake kind/dependency 图提供以下三个示例：

| 消费方 | 生产方 | 种类 | 示例目录 |
|---|---|---|---|
| C | C++20 | static | `c/ros2/original_array_cpp_static` |
| C++20 | C | static | `cpp/ros2/original_array_c_static` |
| C++20 | C | shared Core 模块 | `cpp/ros2/original_array_c_shared` |

已有 `c/ros2/original_array_modules` 提供 C 消费 C++ algorithm 的独立初始化共享模块，保留 IO、算法、ROS 权限分离。验收针对具体方向、kind 与位宽，不能推论任意语言配对。

`set_kind("static")` 产生带索引的真实可重定位 Wasm 归档，`add_deps` 传播依赖与公共包含目录。即使 C++ 库要求最终使用 C++ 链接驱动，C 应用仍由真正 C 前端编译。独立未引用对象含未定义哨兵，必须不被提取；构建诊断保留 nv_array_summarize 的实际提取记录。静态示例只部署 main.wasm。

`nv_array_summarize(wire,size,output)` 同步借用最多 9872 字节的完整线格式和不重叠摘要输出，完整解码后提交检测数、带符号 64 位 id 总和、FNV32。空指针/超界返回 22，解码错误原样传播且输出字段不变；不保留指针。截短输入检查核验事务性。输入输出位于同一应用内存，静态库不是权限隔离边界。

共享生产者名为 array_c，自有字节和记录存储。begin(size) 返回代际令牌，忙/超界/耗尽返回 0。put(token,index,byte) 只接受下一个 0–255 字节，陈旧/外国令牌返回 9，索引或字节非法返回 22。finish(token) 解码完整长度并封存写权限。fact(token,key) 在 0/1/2 返回检测数、id 总和、FNV32，非法令牌/键返回 -9/-22。close(token) 退休封存代际的全部访问。标量 ABI 不传递指针、ROS 句柄或借用 span。

共享模块直接 ROS/clock 探针应返回 13/76，拒绝时钟操作不得改写输出。它无 ROS 权限或额外 WASI 授权，但默认 Preview 1 WASI 仍保留基本标准流。只有 main 获得显式订阅和 monotonic-clock，ROS 调用边界是 same-module。以 array_c 名称、none 属性预加载相同真实位宽产物。这是自有内存的 Core preload，不是 ELF/PIC/dylink。

各示例自带双语 README、部署说明和完整 v2 模板。使用统一锁定 LLVM 23，显式选择 wasm32/wasm64，仅在操作员提供 UWVM_ROS_RUN_CONFIG 后运行。公共入口保持授权与已有产物；静态图部署单一 main，动态图部署 main 加命名生产者，不需要原生可执行 sidecar。

原生核验应逐一比较原始全部嵌套字段和两个检测的 72 项协方差，而非只看摘要。0 正常关闭；1 关闭重开且旧句柄始终返回 9；2 撤销后重开返回 125；拒绝订阅返回 13 且不创建原生资源。保留原生订阅/发布计数、精确资源创建/关闭/撤销计数与全部进程清理记录。Linux x86、QEMU AArch64、双真实位宽各自需要回执。源码/构建状态不证明 GPU/NITROS、真实 ARM 编译宿主、传递归档、符号冲突或其他未验收语言配对。
