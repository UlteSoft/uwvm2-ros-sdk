# original_array_receive

设置 `UWVM_ROS_SDK_ROOT`，执行 `xmake f -a wasm32`、`xmake -vD -j1`，
由公共固定 Go1.24.2 前端构建唯一应用 Wasm。wasm64 被明确拒绝。
手动审查并复制 `deployment.template.json`，填写实际原始 Array 运行时和网关，
用 `UWVM_ROS_RUN_CONFIG` 指定配置，执行 `xmake run original_array_receive`。

每个程序真实接收完整原生 Array，用 Go 解码、再编码核对每个字段。
receive 关闭并检查复制的 owner 已失效；echo 随后向独立原生订阅者发布20条
分别计数的完整消息；revoke 撤销并检查复制失效及重新打开返回125。
本目录仅实现名称对应的操作。空闲轮询最多1000次，每次用单调时间等待20ms；
echo 的主动消息间隔100ms，出现副作用调用拒绝即停止，不重放。
13表示拒绝、9失效、11空闲、22输入错误、110等待耗尽、125撤销。
JSON 分开保存主操作与清理状态，wire_hex 保留全部字段及72个协方差值。

仅向 nvidia_go 模块手工授予 sample 精确订阅，echo 另含 outgoing 精确发布。
类型、RIHS、编解码身份和边界均沿用原始数据。其他模块不获授权。
Go 启动和有限等待明确需要 monotonic-clock；不添加实时时钟、随机、文件或GPU
权限。只用受控 domain137 原生夹具，不涉及物理设备。源码、编译、原生执行
分别验收。
