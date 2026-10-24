# agibot：ros2_sdk_v1_0_0_rl

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## builtin_interfaces/msg/Time

Symbol: `Ros2Builtin_interfacesMsgTime`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | - | - |
| nanosec | uint32 | scalar | - | - |

## aimdk_msgs/msg/RequestHeader

Symbol: `Ros2Aimdk_msgsMsgRequestHeader`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |

## aimdk_msgs/msg/CommonRequest

Symbol: `Ros2Aimdk_msgsMsgCommonRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/RequestHeader | scalar | - | - |

## aimdk_msgs/msg/ResponseHeader

Symbol: `Ros2Aimdk_msgsMsgResponseHeader`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| code | int64 | scalar | - | - |

## aimdk_msgs/msg/CommonState

Symbol: `Ros2Aimdk_msgsMsgCommonState`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | int32 | scalar | - | - |

Original declared constants: `UNKNOWN=0`, `SUCCESS=1`, `FAILURE=2`, `ABORTED=3`, `TIMEOUT=4`, `INVALID=5`, `IN_MANUAL=6`, `NOT_READY=100`, `PENDING=200`, `CREATED=300`, `RUNNING=400`.

## aimdk_msgs/msg/CommonResponse

Symbol: `Ros2Aimdk_msgsMsgCommonResponse`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| status | aimdk_msgs/msg/CommonState | scalar | - | - |
| message | string | scalar | 128 | - |

## aimdk_msgs/msg/CommonTaskResponse

Symbol: `Ros2Aimdk_msgsMsgCommonTaskResponse`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/ResponseHeader | scalar | - | - |
| task_id | uint64 | scalar | - | - |
| state | aimdk_msgs/msg/CommonState | scalar | - | - |

## aimdk_msgs/msg/DomainErrorState

Symbol: `Ros2Aimdk_msgsMsgDomainErrorState`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | - | - |

Original declared constants: `NONE=0`, `DAMPING=1`, `POWERDOWN=2`, `DISABLE=3`, `DISCONNECT=4`.

## aimdk_msgs/msg/JointCommand

Symbol: `Ros2Aimdk_msgsMsgJointCommand`. Complete canonical extent: 44..172 bytes.
Codec identity: `UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |
| stiffness | float64 | scalar | - | - |
| damping | float64 | scalar | - | - |

## aimdk_msgs/msg/MessageHeader

Symbol: `Ros2Aimdk_msgsMsgMessageHeader`. Complete canonical extent: 24..152 bytes.
Codec identity: `UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| frame_id | string | scalar | 128 | - |
| sequence | uint32 | scalar | - | - |
| meas_stamp | builtin_interfaces/msg/Time | scalar | - | - |

## aimdk_msgs/msg/JointCommandArray

Symbol: `Ros2Aimdk_msgsMsgJointCommandArray`. Complete canonical extent: 28..11164 bytes.
Codec identity: `UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| joints | aimdk_msgs/msg/JointCommand | sequence | 64 | - |

## aimdk_msgs/msg/JointState

Symbol: `Ros2Aimdk_msgsMsgJointState`. Complete canonical extent: 30..158 bytes.
Codec identity: `UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| position | float64 | scalar | - | - |
| velocity | float64 | scalar | - | - |
| effort | float64 | scalar | - | - |
| error_code | uint16 | scalar | - | - |

## aimdk_msgs/msg/JointStateArray

Symbol: `Ros2Aimdk_msgsMsgJointStateArray`. Complete canonical extent: 29..10269 bytes.
Codec identity: `UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| state | aimdk_msgs/msg/DomainErrorState | scalar | - | - |
| joints | aimdk_msgs/msg/JointState | sequence | 64 | - |

## aimdk_msgs/msg/ModuleChannelInfo

Symbol: `Ros2Aimdk_msgsMsgModuleChannelInfo`. Complete canonical extent: 58..586 bytes.
Codec identity: `UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| type | string | scalar | 128 | - |
| frequency | float64 | scalar | - | - |
| min_time_diff | float64 | scalar | - | - |
| max_time_diff | float64 | scalar | - | - |
| std_dev | float64 | scalar | - | - |
| window_size | int32 | scalar | - | - |
| timeout_threshold | float64 | scalar | - | - |
| is_active | bool | scalar | - | - |
| is_timeout | bool | scalar | - | - |
| backends | string | sequence | 4 | - |

## aimdk_msgs/msg/ModuleRpcInfo

Symbol: `Ros2Aimdk_msgsMsgModuleRpcInfo`. Complete canonical extent: 16..672 bytes.
Codec identity: `UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 128 | - |
| req_type | string | scalar | 128 | - |
| res_type | string | scalar | 128 | - |
| backends | string | sequence | 4 | - |

## aimdk_msgs/msg/ModuleResourceInfo

Symbol: `Ros2Aimdk_msgsMsgModuleResourceInfo`. Complete canonical extent: 20..5180 bytes.
Codec identity: `UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| module_name | string | scalar | 128 | - |
| rpc_clients | aimdk_msgs/msg/ModuleRpcInfo | sequence | 2 | - |
| rpc_services | aimdk_msgs/msg/ModuleRpcInfo | sequence | 2 | - |
| pub_channels | aimdk_msgs/msg/ModuleChannelInfo | sequence | 2 | - |
| sub_channels | aimdk_msgs/msg/ModuleChannelInfo | sequence | 2 | - |

## aimdk_msgs/msg/ThreadResourceInfo

Symbol: `Ros2Aimdk_msgsMsgThreadResourceInfo`. Complete canonical extent: 32..352 bytes.
Codec identity: `UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| thread_id | uint64 | scalar | - | - |
| thread_name | string | scalar | 128 | - |
| cpu_usage_ratio | float64 | scalar | - | - |
| cpu_sched_policy | string | scalar | 128 | - |
| cpu_sched_priority | int32 | scalar | - | - |
| bounding_cpus | int32 | sequence | 16 | - |

## aimdk_msgs/msg/ProcessResourceInfo

Symbol: `Ros2Aimdk_msgsMsgProcessResourceInfo`. Complete canonical extent: 48..1584 bytes.
Codec identity: `UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| process_id | uint64 | scalar | - | - |
| process_name | string | scalar | 128 | - |
| process_mem_usage | uint64 | scalar | - | - |
| process_mem_usage_ratio | float64 | scalar | - | - |
| process_cpu_usage_ratio | float64 | scalar | - | - |
| thread_count | uint64 | scalar | - | - |
| threads | aimdk_msgs/msg/ThreadResourceInfo | sequence | 4 | - |

## aimdk_msgs/msg/ProcessInfo

Symbol: `Ros2Aimdk_msgsMsgProcessInfo`. Complete canonical extent: 80..12232 bytes.
Codec identity: `UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | aimdk_msgs/msg/MessageHeader | scalar | - | - |
| app_name | string | scalar | 128 | - |
| resource | aimdk_msgs/msg/ProcessResourceInfo | scalar | - | - |
| modules | aimdk_msgs/msg/ModuleResourceInfo | sequence | 2 | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| aimdk_msgs/msg/CommonRequest | message | message: aimdk_msgs/msg/CommonRequest |
| aimdk_msgs/msg/CommonResponse | message | message: aimdk_msgs/msg/CommonResponse |
| aimdk_msgs/msg/CommonState | message | message: aimdk_msgs/msg/CommonState |
| aimdk_msgs/msg/CommonTaskResponse | message | message: aimdk_msgs/msg/CommonTaskResponse |
| aimdk_msgs/msg/DomainErrorState | message | message: aimdk_msgs/msg/DomainErrorState |
| aimdk_msgs/msg/JointCommand | message | message: aimdk_msgs/msg/JointCommand |
| aimdk_msgs/msg/JointCommandArray | message | message: aimdk_msgs/msg/JointCommandArray |
| aimdk_msgs/msg/JointState | message | message: aimdk_msgs/msg/JointState |
| aimdk_msgs/msg/JointStateArray | message | message: aimdk_msgs/msg/JointStateArray |
| aimdk_msgs/msg/MessageHeader | message | message: aimdk_msgs/msg/MessageHeader |
| aimdk_msgs/msg/ModuleChannelInfo | message | message: aimdk_msgs/msg/ModuleChannelInfo |
| aimdk_msgs/msg/ModuleResourceInfo | message | message: aimdk_msgs/msg/ModuleResourceInfo |
| aimdk_msgs/msg/ModuleRpcInfo | message | message: aimdk_msgs/msg/ModuleRpcInfo |
| aimdk_msgs/msg/ProcessInfo | message | message: aimdk_msgs/msg/ProcessInfo |
| aimdk_msgs/msg/ProcessResourceInfo | message | message: aimdk_msgs/msg/ProcessResourceInfo |
| aimdk_msgs/msg/RequestHeader | message | message: aimdk_msgs/msg/RequestHeader |
| aimdk_msgs/msg/ResponseHeader | message | message: aimdk_msgs/msg/ResponseHeader |
| aimdk_msgs/msg/ThreadResourceInfo | message | message: aimdk_msgs/msg/ThreadResourceInfo |
| builtin_interfaces/msg/Time | message | message: builtin_interfaces/msg/Time |
