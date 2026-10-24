# leju：ros1_master_unregistered_dtos

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## kuavo_sdk/qv

Symbol: `Ros1Kuavo_sdkQv`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | float64 | sequence | 16 | - |

## kuavo_sdk/fullBodyTargetTrajectories

Symbol: `Ros1Kuavo_sdkFullBodyTargetTrajectories`. Complete canonical extent: 16..2320 bytes.
Codec identity: `UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timeTrajectory | float64 | sequence | 16 | - |
| footIndexTrajectory | int32 | sequence | 16 | - |
| fullBodyQTrajectory | kuavo_sdk/qv | sequence | 8 | - |
| fullBodyVTrajectory | kuavo_sdk/qv | sequence | 8 | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| kuavo_sdk/fullBodyTargetTrajectories | message | message: kuavo_sdk/fullBodyTargetTrajectories |
| kuavo_sdk/qv | message | message: kuavo_sdk/qv |
