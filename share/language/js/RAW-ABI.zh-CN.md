# 完整公共静态 ROS ABI 桥

真正的 QuickJS 与 CPython 共用同一帧实现，分别从源码编译 ROS1 的38项或
ROS2 的43项真实导入。Lua 保留原有完整静态桥。唯一接口依据为
`share/abi/abi-v1.json`；生成器拒绝未经审查的参数形状、类型或数量变化。
构建后独立检查 Wasm 的完整导入签名、真实内存位宽与有限内存上限。

JS 使用 `__uwvm.invoke(name, handle, input, capacity, other, correlation)`；
Python 使用 `_uwvm_ros.invoke` 的相同六参数形式。最后两个参数可以同时省略，
此时均为零。JS 的三个64位字必须为 BigInt；Python 必须为精确 int，不能为
bool 或 int 子类。取值均为0..2^64-1，不经过浮点数。操作名不能含 NUL。
输入最多4,193,786字节；输出容量为0..4,194,304字节。JS 输入为 Uint8Array，
Python 为连续可读字节缓冲区。调用同步保留输入和独占输出；内存32/64指针
都先经 uintptr_t 转换成原 ABI 的 u64 偏移，内存编号固定为0。
JS 容量沿用 int64 转换，Python 使用 Py_ssize_t 转换；调用方应传精确整数。

返回四项为错误码、独立拥有的字节、可选所需长度、可选原始值。
只有 poll/rpc 的 UINT64_MAX 长度哨兵确实被写入，且状态为0或90时，才给出
所需长度。仅错误90不能推断长度。成功 open/submit 给出完整句柄/ID，查询
ABI 版本给出实际版本；其他情况为 None/null。event_ready 要求容量32，成功
返回完整32字节。未知操作或参数形状错误在导入前返回22。成功响应若长度
失配或应返回非零所有者却为零，则变为本地22；已经发生的作用不能据此撤销。

other 为借用的第二句柄，correlation 为原始64位关联字。open 成功才建立
所有权；submit 的请求/目标 ID 不能当成能力句柄。关闭、撤销、监听、取消和
结果确认均为显式调用，无终结器、后台线程、隐藏重试或策略授权。Lua 使用
prepare 与一次性 invoke 帧；三个64位字采用精确8字节小端字符串，调用后
分别检查 error、valid、data、required、value。

原生主机继续检查别名、操作、端点/类型、QoS、所有者、配额与原生类型身份。
原生非零错误保留；常见为9无效句柄、11空队列/配额、13拒绝、22参数错误、
90容量、95不支持、107断开、110超时、125撤销。超时及调用后结果分配失败
都可能晚于真实作用，不应自动重放。保留主错误和清理结果两个独立事实。

完整静态导入仅证明构建。真实语言执行、全字段 codec、显式拒绝权限、原生
ROS 对端、x86_64、QEMU AArch64 与 ARM 宿主编译必须分别验证精确字节。
ABI 版本查询本身不建立任何平台验收资格。

## 原始完整操作表

下表直接列出唯一公共描述符的原始标量参数，没有替换成其他传输协议。

### uwvm_ros1_v1

| Operation | Form | Original parameters | Return |
|---|---|---|---|
| `abi_version` | version | `()` | ABI version |
| `capability_open` | open | `memory:i32, alias_offset:i64, alias_length:i64, handle_out_offset:i64` | error code |
| `capability_close` | handle | `handle:i64` | error code |
| `capability_revoke` | handle | `handle:i64` | error code |
| `topic_publish` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |
| `topic_subscribe` | handle | `handle:i64` | error code |
| `event_poll` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_watch` | watch | `observer_handle:i64, source_handle:i64, correlation:i64` | error code |
| `event_poll_v1` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_ready` | ready | `observer_handle:i64, memory:i32, output_offset:i64` | error code |
| `service_submit` | submit | `source_handle:i64, observer_handle:i64, memory:i32, request_offset:i64, request_length:i64, request_id_out_offset:i64` | error code |
| `service_call` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `service_advertise` | handle | `handle:i64` | error code |
| `service_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_send_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_own_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_any_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_feedback` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_result` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_advertise` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_lookup` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_broadcast` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_get` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_set` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_delete` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_exists` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_list` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_search` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_topic` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_node` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_service` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_topics` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_nodes` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_services` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_ros` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_wall` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `log_write` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |

### uwvm_ros2_v1

| Operation | Form | Original parameters | Return |
|---|---|---|---|
| `abi_version` | version | `()` | ABI version |
| `capability_open` | open | `memory:i32, alias_offset:i64, alias_length:i64, handle_out_offset:i64` | error code |
| `capability_close` | handle | `handle:i64` | error code |
| `capability_revoke` | handle | `handle:i64` | error code |
| `topic_publish` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |
| `topic_subscribe` | handle | `handle:i64` | error code |
| `event_poll` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_watch` | watch | `observer_handle:i64, source_handle:i64, correlation:i64` | error code |
| `event_poll_v1` | poll | `handle:i64, memory:i32, output_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `event_ready` | ready | `observer_handle:i64, memory:i32, output_offset:i64` | error code |
| `service_submit` | submit | `source_handle:i64, observer_handle:i64, memory:i32, request_offset:i64, request_length:i64, request_id_out_offset:i64` | error code |
| `service_call` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `service_advertise` | handle | `handle:i64` | error code |
| `service_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_send_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_own_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_cancel_any_goal` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_feedback` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_receive_result` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_advertise` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `action_respond` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_lookup` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `tf_broadcast` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_get` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_set` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_list` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_describe` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_declare` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_undeclare` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_topic` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_node` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_service` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_inspect_action` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `parameter_subscribe_events` | handle | `handle:i64` | error code |
| `graph_list_topics` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_nodes` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `graph_list_services` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `lifecycle_get_state` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `lifecycle_change_state` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_ros` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_system` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `time_read_steady` | rpc | `handle:i64, memory:i32, request_offset:i64, request_length:i64, response_offset:i64, capacity:i64, length_out_offset:i64` | error code |
| `log_write` | write | `handle:i64, memory:i32, payload_offset:i64, payload_length:i64` | error code |
