# Zig 原始 Franka SetJointImpedance 客户端

真实 Zig 程序编码全部七个原始 float64 joint_stiffness 值，通过公共 ROS1 owner 仅调用一次 franka_msgs/SetJointImpedance，解码 success 与 UTF-8 error 两个原始响应字段，再完整编码响应。有效业务拒绝仍是响应数据。任何调用或不确定效果都不重放。已取得的 owner 仅关闭一次，独立报告 cleanup。

设置已安装的 UWVM_ROS_SDK_ROOT；先执行 `xmake f --plat=wasm-wasip1 --arch=wasm32`（或 wasm64），再执行 `xmake -vD main`。复制部署模板为 deployment.json，手工选择源码配对的 Noetic runtime/gateway，再执行 `UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。明确 sample 授权限定原生 MD5、canonical adapter identity、56/261 字节边界、一个在途请求和 5 秒期限。关闭 ROS 的策略须返回13，且不得原生投递。

有限 native_service.zig 模块声明两个完整原始 Service 记录，调用当前公共 Cursor codec，不包含 codec 实现。历史 records.zig 的 Writer/Reader 接口不在本例验收范围内。平台 action 仅列举模块。未修改的公共 native 编译器适配层版本1调用已提供的 Zig 0.14.1 和实测自带 Clang/LLVM19.1.7 闭包；公共 LLVM23 仅编译标量启动桥并完成 WASI 链接。厂商记录、序列化、传输选择、校验和输出均由 Zig 实现，启动桥不包含 ROS 或 codec。生成记录的 native_identity=null 不声称已获得原生 MD5；部署策略和真实原生 fixture 独立建立该标识。

使用同一不可变 Wasm 在 x86_64 与 QEMU AArch64 上调用真实 Noetic 原始 TypeSupport，保留完整原生请求/响应、canonical 字节对比、策略拒绝和进程回收。本离线 fixture 不验收硬件、其他语言/接口、精确 Humble 或完整 profile。
