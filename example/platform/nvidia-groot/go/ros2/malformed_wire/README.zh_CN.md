# nvidia-groot Go malformed_wire

通过公共 Xmake 调用统一锁定 Go1.24.2：设置 UWVM_ROS_SDK_ROOT，执行 `xmake f -a wasm32`、`xmake -vD -j1`，输出仅一个 Wasm。wasm64 必须明确拒绝。

可传 uint32 seed；Go 在运行时构建并编码全部活动字段。
截短与添加后缀的输入都必须被拒绝。

此 CPU codec 示例与原始 Array 的原生 ROS 闭环分别验收。源码、编译、执行状态逐组件记录；不隐式产生 ROS/GPU 权限。
