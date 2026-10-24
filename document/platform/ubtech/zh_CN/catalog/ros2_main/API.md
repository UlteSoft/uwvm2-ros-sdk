# ubtech：ros2_main

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## builtin_interfaces/msg/Time

Symbol: `Ros2Builtin_interfacesMsgTime`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | - | - |
| nanosec | uint32 | scalar | - | - |

## geometry_msgs/msg/Point

Symbol: `Ros2Geometry_msgsMsgPoint`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |

## geometry_msgs/msg/Quaternion

Symbol: `Ros2Geometry_msgsMsgQuaternion`. Complete canonical extent: 32..32 bytes.
Codec identity: `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | 0.0 |
| y | float64 | scalar | - | 0.0 |
| z | float64 | scalar | - | 0.0 |
| w | float64 | scalar | - | 1.0 |

## geometry_msgs/msg/Pose

Symbol: `Ros2Geometry_msgsMsgPose`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/msg/Point | scalar | - | - |
| orientation | geometry_msgs/msg/Quaternion | scalar | - | - |

## std_msgs/msg/Header

Symbol: `Ros2Std_msgsMsgHeader`. Complete canonical extent: 12..140 bytes.
Codec identity: `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | - | - |
| frame_id | string | scalar | 128 | - |

## geometry_msgs/msg/PoseStamped

Symbol: `Ros2Geometry_msgsMsgPoseStamped`. Complete canonical extent: 68..196 bytes.
Codec identity: `UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | - | - |
| pose | geometry_msgs/msg/Pose | scalar | - | - |

## grab_demo_msgs/msg/GraspCandidate

Symbol: `Ros2Grab_demo_msgsMsgGraspCandidate`. Complete canonical extent: 92..604 bytes.
Codec identity: `UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | - | - |
| pose | geometry_msgs/msg/PoseStamped | scalar | - | - |
| group_name | string | scalar | 128 | - |
| confidence | float32 | scalar | - | - |
| object_class | string | scalar | 128 | - |

## grab_demo_msgs/msg/IKRequest

Symbol: `Ros2Grab_demo_msgsMsgIKRequest`. Complete canonical extent: 64..320 bytes.
Codec identity: `UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| group_name | string | scalar | 128 | - |
| frame_id | string | scalar | 128 | - |
| position | geometry_msgs/msg/Point | scalar | - | - |
| orientation | geometry_msgs/msg/Quaternion | scalar | - | - |

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| builtin_interfaces/msg/Time | message | message: builtin_interfaces/msg/Time |
| geometry_msgs/msg/Point | message | message: geometry_msgs/msg/Point |
| geometry_msgs/msg/Pose | message | message: geometry_msgs/msg/Pose |
| geometry_msgs/msg/PoseStamped | message | message: geometry_msgs/msg/PoseStamped |
| geometry_msgs/msg/Quaternion | message | message: geometry_msgs/msg/Quaternion |
| grab_demo_msgs/msg/GraspCandidate | message | message: grab_demo_msgs/msg/GraspCandidate |
| grab_demo_msgs/msg/IKRequest | message | message: grab_demo_msgs/msg/IKRequest |
| std_msgs/msg/Header | message | message: std_msgs/msg/Header |
