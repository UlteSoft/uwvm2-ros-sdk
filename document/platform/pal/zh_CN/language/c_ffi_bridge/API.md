# pal 显式 C FFI API

每个 profile 为每种原始记录提供六个可链接的 C ABI 函数，直接调用已有完整 C codec，保留全部字段、容量与 codec 身份。本目录只表示显式外部函数桥接；其他语言仍必须使用自己的真实编译器或运行时。

`uwvm_pal_PROFILE_SYMBOL_storage_size()` 与 `_storage_alignment()` 返回所选目标 C 对象的实际大小和对齐。调用方用真实语言分配器持有正确对齐的客体内存；地址只在同一应用实例中有意义。memory64 会改变指针与 size_t 宽度，必须另外构建并执行验证。

`_validate(value)` 对完整有效值返回 0，对空指针或非法字段返回 22。`_wire_size(value, length)` 先验证全部值，失败时不改变独立的长度输出。`_encode(value, output, capacity, length)` 保留原有事务式验证与写入：非法或重叠存储返回 22，容量不足返回 90。`_decode(input, length, value)` 拒绝截断、尾随和非法输入，仅在完整成功后提交目标记录。记录、缓冲区和输出位置均归调用方所有，必须相互独立；这些函数不会打开 ROS 资源或授予权限。

把恰好匹配所选 profile 的实现与真实语言调用方编入同一应用，添加全局 `include/platform` 导入根并使用下表公开头文件。调用方必须遵守实际 C 调用约定。不能把 C 对象内存当成 canonical ROS 字节；全部活动字段需要显式初始化，清零不等于声明的 native 默认值。完整字段、单位、常量、默认值及 service/action 组件见平台 `API_CATALOG.md` 和 `share/platform/pal/catalogs/PROFILE/schema.json`。

当前桥接覆盖完整本地记录的验证与编解码；topic/service/action 的资源适配与原生 ROS 准入仍需公共 C 基础设施。源码声明不代表已通过构建、x86 原生 ROS、QEMU AArch64 或 memory64 验收。

| Profile | Backend | Records | Header | Implementation |
| --- | --- | ---: | --- | --- |
| `ros1_humble_devel` | `ros1` | 275 | `include/platform/pal/c_ffi_bridge/ros1/ros1_humble_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros1/ros1_humble_devel/abi.c` |
| `ros1_indigo_devel` | `ros1` | 222 | `include/platform/pal/c_ffi_bridge/ros1/ros1_indigo_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros1/ros1_indigo_devel/abi.c` |
| `ros1_noetic_devel` | `ros1` | 222 | `include/platform/pal/c_ffi_bridge/ros1/ros1_noetic_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros1/ros1_noetic_devel/abi.c` |
| `ros2_humble_devel` | `ros2` | 30 | `include/platform/pal/c_ffi_bridge/ros2/ros2_humble_devel/abi.h` | `src/platform/pal/c_ffi_bridge/ros2/ros2_humble_devel/abi.c` |
