# elephant: 完整原始 API 索引

下列内容保留每个原始字段及服务、动作组件；原生类型身份仍须独立绑定。

## foxy

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `mecharm_interfaces/msg/MecharmAngles` | `Ros2Mecharm_interfacesMsgMecharmAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_interfaces/msg/MecharmCoords` | `Ros2Mecharm_interfacesMsgMecharmCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_interfaces/msg/MecharmGripperStatus` | `Ros2Mecharm_interfacesMsgMecharmGripperStatus` | 1..1 | status: bool |
| `mecharm_interfaces/msg/MecharmPumpStatus` | `Ros2Mecharm_interfacesMsgMecharmPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mecharm_interfaces/msg/MecharmSetAngles` | `Ros2Mecharm_interfacesMsgMecharmSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_interfaces/msg/MecharmSetCoords` | `Ros2Mecharm_interfacesMsgMecharmSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_interfaces/srv/GetAngles_Request` | `Ros2Mecharm_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mecharm_interfaces/srv/GetAngles_Response` | `Ros2Mecharm_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_interfaces/srv/GetCoords_Request` | `Ros2Mecharm_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mecharm_interfaces/srv/GetCoords_Response` | `Ros2Mecharm_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_interfaces/srv/GripperStatus_Request` | `Ros2Mecharm_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mecharm_interfaces/srv/GripperStatus_Response` | `Ros2Mecharm_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/PumpStatus_Request` | `Ros2Mecharm_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mecharm_interfaces/srv/PumpStatus_Response` | `Ros2Mecharm_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/SetAngles_Request` | `Ros2Mecharm_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_interfaces/srv/SetAngles_Response` | `Ros2Mecharm_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/SetCoords_Request` | `Ros2Mecharm_interfacesSrvSetCoords_Request` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_interfaces/srv/SetCoords_Response` | `Ros2Mecharm_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/msg/MycobotAngles` | `Ros2Mycobot_interfacesMsgMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_interfaces/msg/MycobotCoords` | `Ros2Mycobot_interfacesMsgMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_interfaces/msg/MycobotGripperStatus` | `Ros2Mycobot_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `mycobot_interfaces/msg/MycobotPumpStatus` | `Ros2Mycobot_interfacesMsgMycobotPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mycobot_interfaces/msg/MycobotSetAngles` | `Ros2Mycobot_interfacesMsgMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_interfaces/msg/MycobotSetCoords` | `Ros2Mycobot_interfacesMsgMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_interfaces/srv/GetAngles_Request` | `Ros2Mycobot_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mycobot_interfaces/srv/GetAngles_Response` | `Ros2Mycobot_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_interfaces/srv/GetCoords_Request` | `Ros2Mycobot_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mycobot_interfaces/srv/GetCoords_Response` | `Ros2Mycobot_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_interfaces/srv/GripperStatus_Request` | `Ros2Mycobot_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mycobot_interfaces/srv/GripperStatus_Response` | `Ros2Mycobot_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/PumpStatus_Request` | `Ros2Mycobot_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mycobot_interfaces/srv/PumpStatus_Response` | `Ros2Mycobot_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/SetAngles_Request` | `Ros2Mycobot_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_interfaces/srv/SetAngles_Response` | `Ros2Mycobot_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/SetCoords_Request` | `Ros2Mycobot_interfacesSrvSetCoords_Request` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_interfaces/srv/SetCoords_Response` | `Ros2Mycobot_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/msg/MycobotAngles` | `Ros2Mycobot_pro450_interfacesMsgMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_interfaces/msg/MycobotCoords` | `Ros2Mycobot_pro450_interfacesMsgMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_interfaces/msg/MycobotGripperStatus` | `Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `mycobot_pro450_interfaces/msg/MycobotSetAngles` | `Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_interfaces/msg/MycobotSetCoords` | `Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/GetAngles_Request` | `Ros2Mycobot_pro450_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetAngles_Response` | `Ros2Mycobot_pro450_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_interfaces/srv/GetCoords_Request` | `Ros2Mycobot_pro450_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetCoords_Response` | `Ros2Mycobot_pro450_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_interfaces/srv/GetGripperValue_Request` | `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetGripperValue_Response` | `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response` | 1..1 | gripper_angle: int8 |
| `mycobot_pro450_interfaces/srv/GripperStatus_Request` | `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mycobot_pro450_interfaces/srv/GripperStatus_Response` | `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/srv/SetAngles_Request` | `Ros2Mycobot_pro450_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/SetAngles_Response` | `Ros2Mycobot_pro450_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/srv/SetCoords_Request` | `Ros2Mycobot_pro450_interfacesSrvSetCoords_Request` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/SetCoords_Response` | `Ros2Mycobot_pro450_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/msg/MypalAngles` | `Ros2Mypalletizer_interfacesMsgMypalAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_interfaces/msg/MypalCoords` | `Ros2Mypalletizer_interfacesMsgMypalCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_interfaces/msg/MypalGripperStatus` | `Ros2Mypalletizer_interfacesMsgMypalGripperStatus` | 1..1 | status: bool |
| `mypalletizer_interfaces/msg/MypalPumpStatus` | `Ros2Mypalletizer_interfacesMsgMypalPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mypalletizer_interfaces/msg/MypalSetAngles` | `Ros2Mypalletizer_interfacesMsgMypalSetAngles` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_interfaces/msg/MypalSetCoords` | `Ros2Mypalletizer_interfacesMsgMypalSetCoords` | 17..17 | x: float32; y: float32; z: float32; rx: float32; speed: int8 |
| `mypalletizer_interfaces/srv/GetAngles_Request` | `Ros2Mypalletizer_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mypalletizer_interfaces/srv/GetAngles_Response` | `Ros2Mypalletizer_interfacesSrvGetAngles_Response` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_interfaces/srv/GetCoords_Request` | `Ros2Mypalletizer_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mypalletizer_interfaces/srv/GetCoords_Response` | `Ros2Mypalletizer_interfacesSrvGetCoords_Response` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_interfaces/srv/GripperStatus_Request` | `Ros2Mypalletizer_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mypalletizer_interfaces/srv/GripperStatus_Response` | `Ros2Mypalletizer_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/PumpStatus_Request` | `Ros2Mypalletizer_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mypalletizer_interfaces/srv/PumpStatus_Response` | `Ros2Mypalletizer_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/SetAngles_Request` | `Ros2Mypalletizer_interfacesSrvSetAngles_Request` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_interfaces/srv/SetAngles_Response` | `Ros2Mypalletizer_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/SetCoords_Request` | `Ros2Mypalletizer_interfacesSrvSetCoords_Request` | 17..17 | x: float32; y: float32; z: float32; rx: float32; speed: int8 |
| `mypalletizer_interfaces/srv/SetCoords_Response` | `Ros2Mypalletizer_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |

Interfaces:

- `mecharm_interfaces/msg/MecharmAngles` (message): message → `Ros2Mecharm_interfacesMsgMecharmAngles`
- `mecharm_interfaces/msg/MecharmCoords` (message): message → `Ros2Mecharm_interfacesMsgMecharmCoords`
- `mecharm_interfaces/msg/MecharmGripperStatus` (message): message → `Ros2Mecharm_interfacesMsgMecharmGripperStatus`
- `mecharm_interfaces/msg/MecharmPumpStatus` (message): message → `Ros2Mecharm_interfacesMsgMecharmPumpStatus`
- `mecharm_interfaces/msg/MecharmSetAngles` (message): message → `Ros2Mecharm_interfacesMsgMecharmSetAngles`
- `mecharm_interfaces/msg/MecharmSetCoords` (message): message → `Ros2Mecharm_interfacesMsgMecharmSetCoords`
- `mecharm_interfaces/srv/GetAngles` (service): request → `Ros2Mecharm_interfacesSrvGetAngles_Request`, response → `Ros2Mecharm_interfacesSrvGetAngles_Response`
- `mecharm_interfaces/srv/GetCoords` (service): request → `Ros2Mecharm_interfacesSrvGetCoords_Request`, response → `Ros2Mecharm_interfacesSrvGetCoords_Response`
- `mecharm_interfaces/srv/GripperStatus` (service): request → `Ros2Mecharm_interfacesSrvGripperStatus_Request`, response → `Ros2Mecharm_interfacesSrvGripperStatus_Response`
- `mecharm_interfaces/srv/PumpStatus` (service): request → `Ros2Mecharm_interfacesSrvPumpStatus_Request`, response → `Ros2Mecharm_interfacesSrvPumpStatus_Response`
- `mecharm_interfaces/srv/SetAngles` (service): request → `Ros2Mecharm_interfacesSrvSetAngles_Request`, response → `Ros2Mecharm_interfacesSrvSetAngles_Response`
- `mecharm_interfaces/srv/SetCoords` (service): request → `Ros2Mecharm_interfacesSrvSetCoords_Request`, response → `Ros2Mecharm_interfacesSrvSetCoords_Response`
- `mycobot_interfaces/msg/MycobotAngles` (message): message → `Ros2Mycobot_interfacesMsgMycobotAngles`
- `mycobot_interfaces/msg/MycobotCoords` (message): message → `Ros2Mycobot_interfacesMsgMycobotCoords`
- `mycobot_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Mycobot_interfacesMsgMycobotGripperStatus`
- `mycobot_interfaces/msg/MycobotPumpStatus` (message): message → `Ros2Mycobot_interfacesMsgMycobotPumpStatus`
- `mycobot_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Mycobot_interfacesMsgMycobotSetAngles`
- `mycobot_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Mycobot_interfacesMsgMycobotSetCoords`
- `mycobot_interfaces/srv/GetAngles` (service): request → `Ros2Mycobot_interfacesSrvGetAngles_Request`, response → `Ros2Mycobot_interfacesSrvGetAngles_Response`
- `mycobot_interfaces/srv/GetCoords` (service): request → `Ros2Mycobot_interfacesSrvGetCoords_Request`, response → `Ros2Mycobot_interfacesSrvGetCoords_Response`
- `mycobot_interfaces/srv/GripperStatus` (service): request → `Ros2Mycobot_interfacesSrvGripperStatus_Request`, response → `Ros2Mycobot_interfacesSrvGripperStatus_Response`
- `mycobot_interfaces/srv/PumpStatus` (service): request → `Ros2Mycobot_interfacesSrvPumpStatus_Request`, response → `Ros2Mycobot_interfacesSrvPumpStatus_Response`
- `mycobot_interfaces/srv/SetAngles` (service): request → `Ros2Mycobot_interfacesSrvSetAngles_Request`, response → `Ros2Mycobot_interfacesSrvSetAngles_Response`
- `mycobot_interfaces/srv/SetCoords` (service): request → `Ros2Mycobot_interfacesSrvSetCoords_Request`, response → `Ros2Mycobot_interfacesSrvSetCoords_Response`
- `mycobot_pro450_interfaces/msg/MycobotAngles` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotAngles`
- `mycobot_pro450_interfaces/msg/MycobotCoords` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotCoords`
- `mycobot_pro450_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus`
- `mycobot_pro450_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles`
- `mycobot_pro450_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords`
- `mycobot_pro450_interfaces/srv/GetAngles` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetAngles_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetAngles_Response`
- `mycobot_pro450_interfaces/srv/GetCoords` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetCoords_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetCoords_Response`
- `mycobot_pro450_interfaces/srv/GetGripperValue` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response`
- `mycobot_pro450_interfaces/srv/GripperStatus` (service): request → `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response`
- `mycobot_pro450_interfaces/srv/SetAngles` (service): request → `Ros2Mycobot_pro450_interfacesSrvSetAngles_Request`, response → `Ros2Mycobot_pro450_interfacesSrvSetAngles_Response`
- `mycobot_pro450_interfaces/srv/SetCoords` (service): request → `Ros2Mycobot_pro450_interfacesSrvSetCoords_Request`, response → `Ros2Mycobot_pro450_interfacesSrvSetCoords_Response`
- `mypalletizer_interfaces/msg/MypalAngles` (message): message → `Ros2Mypalletizer_interfacesMsgMypalAngles`
- `mypalletizer_interfaces/msg/MypalCoords` (message): message → `Ros2Mypalletizer_interfacesMsgMypalCoords`
- `mypalletizer_interfaces/msg/MypalGripperStatus` (message): message → `Ros2Mypalletizer_interfacesMsgMypalGripperStatus`
- `mypalletizer_interfaces/msg/MypalPumpStatus` (message): message → `Ros2Mypalletizer_interfacesMsgMypalPumpStatus`
- `mypalletizer_interfaces/msg/MypalSetAngles` (message): message → `Ros2Mypalletizer_interfacesMsgMypalSetAngles`
- `mypalletizer_interfaces/msg/MypalSetCoords` (message): message → `Ros2Mypalletizer_interfacesMsgMypalSetCoords`
- `mypalletizer_interfaces/srv/GetAngles` (service): request → `Ros2Mypalletizer_interfacesSrvGetAngles_Request`, response → `Ros2Mypalletizer_interfacesSrvGetAngles_Response`
- `mypalletizer_interfaces/srv/GetCoords` (service): request → `Ros2Mypalletizer_interfacesSrvGetCoords_Request`, response → `Ros2Mypalletizer_interfacesSrvGetCoords_Response`
- `mypalletizer_interfaces/srv/GripperStatus` (service): request → `Ros2Mypalletizer_interfacesSrvGripperStatus_Request`, response → `Ros2Mypalletizer_interfacesSrvGripperStatus_Response`
- `mypalletizer_interfaces/srv/PumpStatus` (service): request → `Ros2Mypalletizer_interfacesSrvPumpStatus_Request`, response → `Ros2Mypalletizer_interfacesSrvPumpStatus_Response`
- `mypalletizer_interfaces/srv/SetAngles` (service): request → `Ros2Mypalletizer_interfacesSrvSetAngles_Request`, response → `Ros2Mypalletizer_interfacesSrvSetAngles_Response`
- `mypalletizer_interfaces/srv/SetCoords` (service): request → `Ros2Mypalletizer_interfacesSrvSetCoords_Request`, response → `Ros2Mypalletizer_interfacesSrvSetCoords_Response`

Immutable upstream sources:

- [elephantrobotics/mycobot_ros2 @ 98f77f4827dcdd082a3c5037a71aa15698181b34](https://github.com/elephantrobotics/mycobot_ros2/tree/98f77f4827dcdd082a3c5037a71aa15698181b34)

## galactic

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `mecharm_interfaces/msg/MecharmAngles` | `Ros2Mecharm_interfacesMsgMecharmAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_interfaces/msg/MecharmCoords` | `Ros2Mecharm_interfacesMsgMecharmCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_interfaces/msg/MecharmGripperStatus` | `Ros2Mecharm_interfacesMsgMecharmGripperStatus` | 1..1 | status: bool |
| `mecharm_interfaces/msg/MecharmPumpStatus` | `Ros2Mecharm_interfacesMsgMecharmPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mecharm_interfaces/msg/MecharmSetAngles` | `Ros2Mecharm_interfacesMsgMecharmSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_interfaces/msg/MecharmSetCoords` | `Ros2Mecharm_interfacesMsgMecharmSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_interfaces/srv/GetAngles_Request` | `Ros2Mecharm_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mecharm_interfaces/srv/GetAngles_Response` | `Ros2Mecharm_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_interfaces/srv/GetCoords_Request` | `Ros2Mecharm_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mecharm_interfaces/srv/GetCoords_Response` | `Ros2Mecharm_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_interfaces/srv/GripperStatus_Request` | `Ros2Mecharm_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mecharm_interfaces/srv/GripperStatus_Response` | `Ros2Mecharm_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/PumpStatus_Request` | `Ros2Mecharm_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mecharm_interfaces/srv/PumpStatus_Response` | `Ros2Mecharm_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/SetAngles_Request` | `Ros2Mecharm_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_interfaces/srv/SetAngles_Response` | `Ros2Mecharm_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/SetCoords_Request` | `Ros2Mecharm_interfacesSrvSetCoords_Request` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_interfaces/srv/SetCoords_Response` | `Ros2Mecharm_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/msg/MycobotAngles` | `Ros2Mycobot_interfacesMsgMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_interfaces/msg/MycobotCoords` | `Ros2Mycobot_interfacesMsgMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_interfaces/msg/MycobotGripperStatus` | `Ros2Mycobot_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `mycobot_interfaces/msg/MycobotPumpStatus` | `Ros2Mycobot_interfacesMsgMycobotPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mycobot_interfaces/msg/MycobotSetAngles` | `Ros2Mycobot_interfacesMsgMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_interfaces/msg/MycobotSetCoords` | `Ros2Mycobot_interfacesMsgMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_interfaces/srv/GetAngles_Request` | `Ros2Mycobot_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mycobot_interfaces/srv/GetAngles_Response` | `Ros2Mycobot_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_interfaces/srv/GetCoords_Request` | `Ros2Mycobot_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mycobot_interfaces/srv/GetCoords_Response` | `Ros2Mycobot_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_interfaces/srv/GripperStatus_Request` | `Ros2Mycobot_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mycobot_interfaces/srv/GripperStatus_Response` | `Ros2Mycobot_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/PumpStatus_Request` | `Ros2Mycobot_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mycobot_interfaces/srv/PumpStatus_Response` | `Ros2Mycobot_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/SetAngles_Request` | `Ros2Mycobot_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_interfaces/srv/SetAngles_Response` | `Ros2Mycobot_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/SetCoords_Request` | `Ros2Mycobot_interfacesSrvSetCoords_Request` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_interfaces/srv/SetCoords_Response` | `Ros2Mycobot_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/msg/MycobotAngles` | `Ros2Mycobot_pro450_interfacesMsgMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_interfaces/msg/MycobotCoords` | `Ros2Mycobot_pro450_interfacesMsgMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_interfaces/msg/MycobotGripperStatus` | `Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `mycobot_pro450_interfaces/msg/MycobotSetAngles` | `Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_interfaces/msg/MycobotSetCoords` | `Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/GetAngles_Request` | `Ros2Mycobot_pro450_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetAngles_Response` | `Ros2Mycobot_pro450_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_interfaces/srv/GetCoords_Request` | `Ros2Mycobot_pro450_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetCoords_Response` | `Ros2Mycobot_pro450_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_interfaces/srv/GetGripperValue_Request` | `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetGripperValue_Response` | `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response` | 1..1 | gripper_angle: int8 |
| `mycobot_pro450_interfaces/srv/GripperStatus_Request` | `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mycobot_pro450_interfaces/srv/GripperStatus_Response` | `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/srv/SetAngles_Request` | `Ros2Mycobot_pro450_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/SetAngles_Response` | `Ros2Mycobot_pro450_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/srv/SetCoords_Request` | `Ros2Mycobot_pro450_interfacesSrvSetCoords_Request` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/SetCoords_Response` | `Ros2Mycobot_pro450_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/msg/MypalAngles` | `Ros2Mypalletizer_interfacesMsgMypalAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_interfaces/msg/MypalCoords` | `Ros2Mypalletizer_interfacesMsgMypalCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_interfaces/msg/MypalGripperStatus` | `Ros2Mypalletizer_interfacesMsgMypalGripperStatus` | 1..1 | status: bool |
| `mypalletizer_interfaces/msg/MypalPumpStatus` | `Ros2Mypalletizer_interfacesMsgMypalPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mypalletizer_interfaces/msg/MypalSetAngles` | `Ros2Mypalletizer_interfacesMsgMypalSetAngles` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_interfaces/msg/MypalSetCoords` | `Ros2Mypalletizer_interfacesMsgMypalSetCoords` | 17..17 | x: float32; y: float32; z: float32; rx: float32; speed: int8 |
| `mypalletizer_interfaces/srv/GetAngles_Request` | `Ros2Mypalletizer_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mypalletizer_interfaces/srv/GetAngles_Response` | `Ros2Mypalletizer_interfacesSrvGetAngles_Response` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_interfaces/srv/GetCoords_Request` | `Ros2Mypalletizer_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mypalletizer_interfaces/srv/GetCoords_Response` | `Ros2Mypalletizer_interfacesSrvGetCoords_Response` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_interfaces/srv/GripperStatus_Request` | `Ros2Mypalletizer_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mypalletizer_interfaces/srv/GripperStatus_Response` | `Ros2Mypalletizer_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/PumpStatus_Request` | `Ros2Mypalletizer_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mypalletizer_interfaces/srv/PumpStatus_Response` | `Ros2Mypalletizer_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/SetAngles_Request` | `Ros2Mypalletizer_interfacesSrvSetAngles_Request` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_interfaces/srv/SetAngles_Response` | `Ros2Mypalletizer_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/SetCoords_Request` | `Ros2Mypalletizer_interfacesSrvSetCoords_Request` | 17..17 | x: float32; y: float32; z: float32; rx: float32; speed: int8 |
| `mypalletizer_interfaces/srv/SetCoords_Response` | `Ros2Mypalletizer_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |

Interfaces:

- `mecharm_interfaces/msg/MecharmAngles` (message): message → `Ros2Mecharm_interfacesMsgMecharmAngles`
- `mecharm_interfaces/msg/MecharmCoords` (message): message → `Ros2Mecharm_interfacesMsgMecharmCoords`
- `mecharm_interfaces/msg/MecharmGripperStatus` (message): message → `Ros2Mecharm_interfacesMsgMecharmGripperStatus`
- `mecharm_interfaces/msg/MecharmPumpStatus` (message): message → `Ros2Mecharm_interfacesMsgMecharmPumpStatus`
- `mecharm_interfaces/msg/MecharmSetAngles` (message): message → `Ros2Mecharm_interfacesMsgMecharmSetAngles`
- `mecharm_interfaces/msg/MecharmSetCoords` (message): message → `Ros2Mecharm_interfacesMsgMecharmSetCoords`
- `mecharm_interfaces/srv/GetAngles` (service): request → `Ros2Mecharm_interfacesSrvGetAngles_Request`, response → `Ros2Mecharm_interfacesSrvGetAngles_Response`
- `mecharm_interfaces/srv/GetCoords` (service): request → `Ros2Mecharm_interfacesSrvGetCoords_Request`, response → `Ros2Mecharm_interfacesSrvGetCoords_Response`
- `mecharm_interfaces/srv/GripperStatus` (service): request → `Ros2Mecharm_interfacesSrvGripperStatus_Request`, response → `Ros2Mecharm_interfacesSrvGripperStatus_Response`
- `mecharm_interfaces/srv/PumpStatus` (service): request → `Ros2Mecharm_interfacesSrvPumpStatus_Request`, response → `Ros2Mecharm_interfacesSrvPumpStatus_Response`
- `mecharm_interfaces/srv/SetAngles` (service): request → `Ros2Mecharm_interfacesSrvSetAngles_Request`, response → `Ros2Mecharm_interfacesSrvSetAngles_Response`
- `mecharm_interfaces/srv/SetCoords` (service): request → `Ros2Mecharm_interfacesSrvSetCoords_Request`, response → `Ros2Mecharm_interfacesSrvSetCoords_Response`
- `mycobot_interfaces/msg/MycobotAngles` (message): message → `Ros2Mycobot_interfacesMsgMycobotAngles`
- `mycobot_interfaces/msg/MycobotCoords` (message): message → `Ros2Mycobot_interfacesMsgMycobotCoords`
- `mycobot_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Mycobot_interfacesMsgMycobotGripperStatus`
- `mycobot_interfaces/msg/MycobotPumpStatus` (message): message → `Ros2Mycobot_interfacesMsgMycobotPumpStatus`
- `mycobot_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Mycobot_interfacesMsgMycobotSetAngles`
- `mycobot_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Mycobot_interfacesMsgMycobotSetCoords`
- `mycobot_interfaces/srv/GetAngles` (service): request → `Ros2Mycobot_interfacesSrvGetAngles_Request`, response → `Ros2Mycobot_interfacesSrvGetAngles_Response`
- `mycobot_interfaces/srv/GetCoords` (service): request → `Ros2Mycobot_interfacesSrvGetCoords_Request`, response → `Ros2Mycobot_interfacesSrvGetCoords_Response`
- `mycobot_interfaces/srv/GripperStatus` (service): request → `Ros2Mycobot_interfacesSrvGripperStatus_Request`, response → `Ros2Mycobot_interfacesSrvGripperStatus_Response`
- `mycobot_interfaces/srv/PumpStatus` (service): request → `Ros2Mycobot_interfacesSrvPumpStatus_Request`, response → `Ros2Mycobot_interfacesSrvPumpStatus_Response`
- `mycobot_interfaces/srv/SetAngles` (service): request → `Ros2Mycobot_interfacesSrvSetAngles_Request`, response → `Ros2Mycobot_interfacesSrvSetAngles_Response`
- `mycobot_interfaces/srv/SetCoords` (service): request → `Ros2Mycobot_interfacesSrvSetCoords_Request`, response → `Ros2Mycobot_interfacesSrvSetCoords_Response`
- `mycobot_pro450_interfaces/msg/MycobotAngles` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotAngles`
- `mycobot_pro450_interfaces/msg/MycobotCoords` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotCoords`
- `mycobot_pro450_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus`
- `mycobot_pro450_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles`
- `mycobot_pro450_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords`
- `mycobot_pro450_interfaces/srv/GetAngles` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetAngles_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetAngles_Response`
- `mycobot_pro450_interfaces/srv/GetCoords` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetCoords_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetCoords_Response`
- `mycobot_pro450_interfaces/srv/GetGripperValue` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response`
- `mycobot_pro450_interfaces/srv/GripperStatus` (service): request → `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response`
- `mycobot_pro450_interfaces/srv/SetAngles` (service): request → `Ros2Mycobot_pro450_interfacesSrvSetAngles_Request`, response → `Ros2Mycobot_pro450_interfacesSrvSetAngles_Response`
- `mycobot_pro450_interfaces/srv/SetCoords` (service): request → `Ros2Mycobot_pro450_interfacesSrvSetCoords_Request`, response → `Ros2Mycobot_pro450_interfacesSrvSetCoords_Response`
- `mypalletizer_interfaces/msg/MypalAngles` (message): message → `Ros2Mypalletizer_interfacesMsgMypalAngles`
- `mypalletizer_interfaces/msg/MypalCoords` (message): message → `Ros2Mypalletizer_interfacesMsgMypalCoords`
- `mypalletizer_interfaces/msg/MypalGripperStatus` (message): message → `Ros2Mypalletizer_interfacesMsgMypalGripperStatus`
- `mypalletizer_interfaces/msg/MypalPumpStatus` (message): message → `Ros2Mypalletizer_interfacesMsgMypalPumpStatus`
- `mypalletizer_interfaces/msg/MypalSetAngles` (message): message → `Ros2Mypalletizer_interfacesMsgMypalSetAngles`
- `mypalletizer_interfaces/msg/MypalSetCoords` (message): message → `Ros2Mypalletizer_interfacesMsgMypalSetCoords`
- `mypalletizer_interfaces/srv/GetAngles` (service): request → `Ros2Mypalletizer_interfacesSrvGetAngles_Request`, response → `Ros2Mypalletizer_interfacesSrvGetAngles_Response`
- `mypalletizer_interfaces/srv/GetCoords` (service): request → `Ros2Mypalletizer_interfacesSrvGetCoords_Request`, response → `Ros2Mypalletizer_interfacesSrvGetCoords_Response`
- `mypalletizer_interfaces/srv/GripperStatus` (service): request → `Ros2Mypalletizer_interfacesSrvGripperStatus_Request`, response → `Ros2Mypalletizer_interfacesSrvGripperStatus_Response`
- `mypalletizer_interfaces/srv/PumpStatus` (service): request → `Ros2Mypalletizer_interfacesSrvPumpStatus_Request`, response → `Ros2Mypalletizer_interfacesSrvPumpStatus_Response`
- `mypalletizer_interfaces/srv/SetAngles` (service): request → `Ros2Mypalletizer_interfacesSrvSetAngles_Request`, response → `Ros2Mypalletizer_interfacesSrvSetAngles_Response`
- `mypalletizer_interfaces/srv/SetCoords` (service): request → `Ros2Mypalletizer_interfacesSrvSetCoords_Request`, response → `Ros2Mypalletizer_interfacesSrvSetCoords_Response`

Immutable upstream sources:

- [elephantrobotics/mycobot_ros2 @ 83d4d10db552edf8940e4d79bec186aeaa880b4a](https://github.com/elephantrobotics/mycobot_ros2/tree/83d4d10db552edf8940e4d79bec186aeaa880b4a)

## humble

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `mecharm_interfaces/msg/MecharmAngles` | `Ros2Mecharm_interfacesMsgMecharmAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_interfaces/msg/MecharmCoords` | `Ros2Mecharm_interfacesMsgMecharmCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_interfaces/msg/MecharmGripperStatus` | `Ros2Mecharm_interfacesMsgMecharmGripperStatus` | 1..1 | status: bool |
| `mecharm_interfaces/msg/MecharmPumpStatus` | `Ros2Mecharm_interfacesMsgMecharmPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mecharm_interfaces/msg/MecharmSetAngles` | `Ros2Mecharm_interfacesMsgMecharmSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_interfaces/msg/MecharmSetCoords` | `Ros2Mecharm_interfacesMsgMecharmSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_interfaces/srv/GetAngles_Request` | `Ros2Mecharm_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mecharm_interfaces/srv/GetAngles_Response` | `Ros2Mecharm_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_interfaces/srv/GetCoords_Request` | `Ros2Mecharm_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mecharm_interfaces/srv/GetCoords_Response` | `Ros2Mecharm_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_interfaces/srv/GripperStatus_Request` | `Ros2Mecharm_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mecharm_interfaces/srv/GripperStatus_Response` | `Ros2Mecharm_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/PumpStatus_Request` | `Ros2Mecharm_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mecharm_interfaces/srv/PumpStatus_Response` | `Ros2Mecharm_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/SetAngles_Request` | `Ros2Mecharm_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_interfaces/srv/SetAngles_Response` | `Ros2Mecharm_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mecharm_interfaces/srv/SetCoords_Request` | `Ros2Mecharm_interfacesSrvSetCoords_Request` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_interfaces/srv/SetCoords_Response` | `Ros2Mecharm_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/msg/MycobotAngles` | `Ros2Mycobot_interfacesMsgMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_interfaces/msg/MycobotCoords` | `Ros2Mycobot_interfacesMsgMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_interfaces/msg/MycobotGripperStatus` | `Ros2Mycobot_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `mycobot_interfaces/msg/MycobotPumpStatus` | `Ros2Mycobot_interfacesMsgMycobotPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mycobot_interfaces/msg/MycobotSetAngles` | `Ros2Mycobot_interfacesMsgMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_interfaces/msg/MycobotSetCoords` | `Ros2Mycobot_interfacesMsgMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_interfaces/srv/GetAngles_Request` | `Ros2Mycobot_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mycobot_interfaces/srv/GetAngles_Response` | `Ros2Mycobot_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_interfaces/srv/GetCoords_Request` | `Ros2Mycobot_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mycobot_interfaces/srv/GetCoords_Response` | `Ros2Mycobot_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_interfaces/srv/GripperStatus_Request` | `Ros2Mycobot_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mycobot_interfaces/srv/GripperStatus_Response` | `Ros2Mycobot_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/PumpStatus_Request` | `Ros2Mycobot_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mycobot_interfaces/srv/PumpStatus_Response` | `Ros2Mycobot_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/SetAngles_Request` | `Ros2Mycobot_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_interfaces/srv/SetAngles_Response` | `Ros2Mycobot_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mycobot_interfaces/srv/SetCoords_Request` | `Ros2Mycobot_interfacesSrvSetCoords_Request` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_interfaces/srv/SetCoords_Response` | `Ros2Mycobot_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/msg/MycobotAngles` | `Ros2Mycobot_pro450_interfacesMsgMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_interfaces/msg/MycobotCoords` | `Ros2Mycobot_pro450_interfacesMsgMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_interfaces/msg/MycobotGripperStatus` | `Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `mycobot_pro450_interfaces/msg/MycobotSetAngles` | `Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_interfaces/msg/MycobotSetCoords` | `Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/GetAngles_Request` | `Ros2Mycobot_pro450_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetAngles_Response` | `Ros2Mycobot_pro450_interfacesSrvGetAngles_Response` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_interfaces/srv/GetCoords_Request` | `Ros2Mycobot_pro450_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetCoords_Response` | `Ros2Mycobot_pro450_interfacesSrvGetCoords_Response` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_interfaces/srv/GetGripperValue_Request` | `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request` | 0..0 | (empty original component) |
| `mycobot_pro450_interfaces/srv/GetGripperValue_Response` | `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response` | 1..1 | gripper_angle: int8 |
| `mycobot_pro450_interfaces/srv/GripperStatus_Request` | `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mycobot_pro450_interfaces/srv/GripperStatus_Response` | `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/srv/SetAngles_Request` | `Ros2Mycobot_pro450_interfacesSrvSetAngles_Request` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/SetAngles_Response` | `Ros2Mycobot_pro450_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mycobot_pro450_interfaces/srv/SetCoords_Request` | `Ros2Mycobot_pro450_interfacesSrvSetCoords_Request` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_interfaces/srv/SetCoords_Response` | `Ros2Mycobot_pro450_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/msg/MypalAngles` | `Ros2Mypalletizer_interfacesMsgMypalAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_interfaces/msg/MypalCoords` | `Ros2Mypalletizer_interfacesMsgMypalCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_interfaces/msg/MypalGripperStatus` | `Ros2Mypalletizer_interfacesMsgMypalGripperStatus` | 1..1 | status: bool |
| `mypalletizer_interfaces/msg/MypalPumpStatus` | `Ros2Mypalletizer_interfacesMsgMypalPumpStatus` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mypalletizer_interfaces/msg/MypalSetAngles` | `Ros2Mypalletizer_interfacesMsgMypalSetAngles` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_interfaces/msg/MypalSetCoords` | `Ros2Mypalletizer_interfacesMsgMypalSetCoords` | 17..17 | x: float32; y: float32; z: float32; rx: float32; speed: int8 |
| `mypalletizer_interfaces/srv/GetAngles_Request` | `Ros2Mypalletizer_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `mypalletizer_interfaces/srv/GetAngles_Response` | `Ros2Mypalletizer_interfacesSrvGetAngles_Response` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_interfaces/srv/GetCoords_Request` | `Ros2Mypalletizer_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `mypalletizer_interfaces/srv/GetCoords_Response` | `Ros2Mypalletizer_interfacesSrvGetCoords_Response` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_interfaces/srv/GripperStatus_Request` | `Ros2Mypalletizer_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `mypalletizer_interfaces/srv/GripperStatus_Response` | `Ros2Mypalletizer_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/PumpStatus_Request` | `Ros2Mypalletizer_interfacesSrvPumpStatus_Request` | 3..3 | status: bool; pin1: int8; pin2: int8 |
| `mypalletizer_interfaces/srv/PumpStatus_Response` | `Ros2Mypalletizer_interfacesSrvPumpStatus_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/SetAngles_Request` | `Ros2Mypalletizer_interfacesSrvSetAngles_Request` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_interfaces/srv/SetAngles_Response` | `Ros2Mypalletizer_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `mypalletizer_interfaces/srv/SetCoords_Request` | `Ros2Mypalletizer_interfacesSrvSetCoords_Request` | 17..17 | x: float32; y: float32; z: float32; rx: float32; speed: int8 |
| `mypalletizer_interfaces/srv/SetCoords_Response` | `Ros2Mypalletizer_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |
| `ultraarm_p1_interfaces/msg/MycobotAngles` | `Ros2Ultraarm_p1_interfacesMsgMycobotAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `ultraarm_p1_interfaces/msg/MycobotCoords` | `Ros2Ultraarm_p1_interfacesMsgMycobotCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `ultraarm_p1_interfaces/msg/MycobotGripperStatus` | `Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus` | 1..1 | status: bool |
| `ultraarm_p1_interfaces/msg/MycobotSetAngles` | `Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles` | 20..20 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int32 |
| `ultraarm_p1_interfaces/msg/MycobotSetCoords` | `Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords` | 20..20 | x: float32; y: float32; z: float32; rx: float32; speed: int32 |
| `ultraarm_p1_interfaces/srv/GetAngles_Request` | `Ros2Ultraarm_p1_interfacesSrvGetAngles_Request` | 0..0 | (empty original component) |
| `ultraarm_p1_interfaces/srv/GetAngles_Response` | `Ros2Ultraarm_p1_interfacesSrvGetAngles_Response` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `ultraarm_p1_interfaces/srv/GetCoords_Request` | `Ros2Ultraarm_p1_interfacesSrvGetCoords_Request` | 0..0 | (empty original component) |
| `ultraarm_p1_interfaces/srv/GetCoords_Response` | `Ros2Ultraarm_p1_interfacesSrvGetCoords_Response` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `ultraarm_p1_interfaces/srv/GetGripperValue_Request` | `Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request` | 0..0 | (empty original component) |
| `ultraarm_p1_interfaces/srv/GetGripperValue_Response` | `Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response` | 1..1 | gripper_angle: int8 |
| `ultraarm_p1_interfaces/srv/GripperStatus_Request` | `Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request` | 1..1 | status: bool |
| `ultraarm_p1_interfaces/srv/GripperStatus_Response` | `Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response` | 1..1 | flag: bool |
| `ultraarm_p1_interfaces/srv/SetAngles_Request` | `Ros2Ultraarm_p1_interfacesSrvSetAngles_Request` | 20..20 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int32 |
| `ultraarm_p1_interfaces/srv/SetAngles_Response` | `Ros2Ultraarm_p1_interfacesSrvSetAngles_Response` | 1..1 | flag: bool |
| `ultraarm_p1_interfaces/srv/SetCoords_Request` | `Ros2Ultraarm_p1_interfacesSrvSetCoords_Request` | 20..20 | x: float32; y: float32; z: float32; rx: float32; speed: int32 |
| `ultraarm_p1_interfaces/srv/SetCoords_Response` | `Ros2Ultraarm_p1_interfacesSrvSetCoords_Response` | 1..1 | flag: bool |

Interfaces:

- `mecharm_interfaces/msg/MecharmAngles` (message): message → `Ros2Mecharm_interfacesMsgMecharmAngles`
- `mecharm_interfaces/msg/MecharmCoords` (message): message → `Ros2Mecharm_interfacesMsgMecharmCoords`
- `mecharm_interfaces/msg/MecharmGripperStatus` (message): message → `Ros2Mecharm_interfacesMsgMecharmGripperStatus`
- `mecharm_interfaces/msg/MecharmPumpStatus` (message): message → `Ros2Mecharm_interfacesMsgMecharmPumpStatus`
- `mecharm_interfaces/msg/MecharmSetAngles` (message): message → `Ros2Mecharm_interfacesMsgMecharmSetAngles`
- `mecharm_interfaces/msg/MecharmSetCoords` (message): message → `Ros2Mecharm_interfacesMsgMecharmSetCoords`
- `mecharm_interfaces/srv/GetAngles` (service): request → `Ros2Mecharm_interfacesSrvGetAngles_Request`, response → `Ros2Mecharm_interfacesSrvGetAngles_Response`
- `mecharm_interfaces/srv/GetCoords` (service): request → `Ros2Mecharm_interfacesSrvGetCoords_Request`, response → `Ros2Mecharm_interfacesSrvGetCoords_Response`
- `mecharm_interfaces/srv/GripperStatus` (service): request → `Ros2Mecharm_interfacesSrvGripperStatus_Request`, response → `Ros2Mecharm_interfacesSrvGripperStatus_Response`
- `mecharm_interfaces/srv/PumpStatus` (service): request → `Ros2Mecharm_interfacesSrvPumpStatus_Request`, response → `Ros2Mecharm_interfacesSrvPumpStatus_Response`
- `mecharm_interfaces/srv/SetAngles` (service): request → `Ros2Mecharm_interfacesSrvSetAngles_Request`, response → `Ros2Mecharm_interfacesSrvSetAngles_Response`
- `mecharm_interfaces/srv/SetCoords` (service): request → `Ros2Mecharm_interfacesSrvSetCoords_Request`, response → `Ros2Mecharm_interfacesSrvSetCoords_Response`
- `mycobot_interfaces/msg/MycobotAngles` (message): message → `Ros2Mycobot_interfacesMsgMycobotAngles`
- `mycobot_interfaces/msg/MycobotCoords` (message): message → `Ros2Mycobot_interfacesMsgMycobotCoords`
- `mycobot_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Mycobot_interfacesMsgMycobotGripperStatus`
- `mycobot_interfaces/msg/MycobotPumpStatus` (message): message → `Ros2Mycobot_interfacesMsgMycobotPumpStatus`
- `mycobot_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Mycobot_interfacesMsgMycobotSetAngles`
- `mycobot_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Mycobot_interfacesMsgMycobotSetCoords`
- `mycobot_interfaces/srv/GetAngles` (service): request → `Ros2Mycobot_interfacesSrvGetAngles_Request`, response → `Ros2Mycobot_interfacesSrvGetAngles_Response`
- `mycobot_interfaces/srv/GetCoords` (service): request → `Ros2Mycobot_interfacesSrvGetCoords_Request`, response → `Ros2Mycobot_interfacesSrvGetCoords_Response`
- `mycobot_interfaces/srv/GripperStatus` (service): request → `Ros2Mycobot_interfacesSrvGripperStatus_Request`, response → `Ros2Mycobot_interfacesSrvGripperStatus_Response`
- `mycobot_interfaces/srv/PumpStatus` (service): request → `Ros2Mycobot_interfacesSrvPumpStatus_Request`, response → `Ros2Mycobot_interfacesSrvPumpStatus_Response`
- `mycobot_interfaces/srv/SetAngles` (service): request → `Ros2Mycobot_interfacesSrvSetAngles_Request`, response → `Ros2Mycobot_interfacesSrvSetAngles_Response`
- `mycobot_interfaces/srv/SetCoords` (service): request → `Ros2Mycobot_interfacesSrvSetCoords_Request`, response → `Ros2Mycobot_interfacesSrvSetCoords_Response`
- `mycobot_pro450_interfaces/msg/MycobotAngles` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotAngles`
- `mycobot_pro450_interfaces/msg/MycobotCoords` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotCoords`
- `mycobot_pro450_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus`
- `mycobot_pro450_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles`
- `mycobot_pro450_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords`
- `mycobot_pro450_interfaces/srv/GetAngles` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetAngles_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetAngles_Response`
- `mycobot_pro450_interfaces/srv/GetCoords` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetCoords_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetCoords_Response`
- `mycobot_pro450_interfaces/srv/GetGripperValue` (service): request → `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response`
- `mycobot_pro450_interfaces/srv/GripperStatus` (service): request → `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request`, response → `Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response`
- `mycobot_pro450_interfaces/srv/SetAngles` (service): request → `Ros2Mycobot_pro450_interfacesSrvSetAngles_Request`, response → `Ros2Mycobot_pro450_interfacesSrvSetAngles_Response`
- `mycobot_pro450_interfaces/srv/SetCoords` (service): request → `Ros2Mycobot_pro450_interfacesSrvSetCoords_Request`, response → `Ros2Mycobot_pro450_interfacesSrvSetCoords_Response`
- `mypalletizer_interfaces/msg/MypalAngles` (message): message → `Ros2Mypalletizer_interfacesMsgMypalAngles`
- `mypalletizer_interfaces/msg/MypalCoords` (message): message → `Ros2Mypalletizer_interfacesMsgMypalCoords`
- `mypalletizer_interfaces/msg/MypalGripperStatus` (message): message → `Ros2Mypalletizer_interfacesMsgMypalGripperStatus`
- `mypalletizer_interfaces/msg/MypalPumpStatus` (message): message → `Ros2Mypalletizer_interfacesMsgMypalPumpStatus`
- `mypalletizer_interfaces/msg/MypalSetAngles` (message): message → `Ros2Mypalletizer_interfacesMsgMypalSetAngles`
- `mypalletizer_interfaces/msg/MypalSetCoords` (message): message → `Ros2Mypalletizer_interfacesMsgMypalSetCoords`
- `mypalletizer_interfaces/srv/GetAngles` (service): request → `Ros2Mypalletizer_interfacesSrvGetAngles_Request`, response → `Ros2Mypalletizer_interfacesSrvGetAngles_Response`
- `mypalletizer_interfaces/srv/GetCoords` (service): request → `Ros2Mypalletizer_interfacesSrvGetCoords_Request`, response → `Ros2Mypalletizer_interfacesSrvGetCoords_Response`
- `mypalletizer_interfaces/srv/GripperStatus` (service): request → `Ros2Mypalletizer_interfacesSrvGripperStatus_Request`, response → `Ros2Mypalletizer_interfacesSrvGripperStatus_Response`
- `mypalletizer_interfaces/srv/PumpStatus` (service): request → `Ros2Mypalletizer_interfacesSrvPumpStatus_Request`, response → `Ros2Mypalletizer_interfacesSrvPumpStatus_Response`
- `mypalletizer_interfaces/srv/SetAngles` (service): request → `Ros2Mypalletizer_interfacesSrvSetAngles_Request`, response → `Ros2Mypalletizer_interfacesSrvSetAngles_Response`
- `mypalletizer_interfaces/srv/SetCoords` (service): request → `Ros2Mypalletizer_interfacesSrvSetCoords_Request`, response → `Ros2Mypalletizer_interfacesSrvSetCoords_Response`
- `ultraarm_p1_interfaces/msg/MycobotAngles` (message): message → `Ros2Ultraarm_p1_interfacesMsgMycobotAngles`
- `ultraarm_p1_interfaces/msg/MycobotCoords` (message): message → `Ros2Ultraarm_p1_interfacesMsgMycobotCoords`
- `ultraarm_p1_interfaces/msg/MycobotGripperStatus` (message): message → `Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus`
- `ultraarm_p1_interfaces/msg/MycobotSetAngles` (message): message → `Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles`
- `ultraarm_p1_interfaces/msg/MycobotSetCoords` (message): message → `Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords`
- `ultraarm_p1_interfaces/srv/GetAngles` (service): request → `Ros2Ultraarm_p1_interfacesSrvGetAngles_Request`, response → `Ros2Ultraarm_p1_interfacesSrvGetAngles_Response`
- `ultraarm_p1_interfaces/srv/GetCoords` (service): request → `Ros2Ultraarm_p1_interfacesSrvGetCoords_Request`, response → `Ros2Ultraarm_p1_interfacesSrvGetCoords_Response`
- `ultraarm_p1_interfaces/srv/GetGripperValue` (service): request → `Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request`, response → `Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response`
- `ultraarm_p1_interfaces/srv/GripperStatus` (service): request → `Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request`, response → `Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response`
- `ultraarm_p1_interfaces/srv/SetAngles` (service): request → `Ros2Ultraarm_p1_interfacesSrvSetAngles_Request`, response → `Ros2Ultraarm_p1_interfacesSrvSetAngles_Response`
- `ultraarm_p1_interfaces/srv/SetCoords` (service): request → `Ros2Ultraarm_p1_interfacesSrvSetCoords_Request`, response → `Ros2Ultraarm_p1_interfacesSrvSetCoords_Response`

Immutable upstream sources:

- [elephantrobotics/mycobot_ros2 @ d42ff61a78122c79246623391540d75738b03b23](https://github.com/elephantrobotics/mycobot_ros2/tree/d42ff61a78122c79246623391540d75738b03b23)

## kinetic

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `mycobot_communication/MycobotAngles` | `Ros1Mycobot_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_communication/MycobotCoords` | `Ros1Mycobot_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/MycobotGripperStatus` | `Ros1Mycobot_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mycobot_communication/MycobotPumpStatus` | `Ros1Mycobot_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_communication/MycobotSetAngles` | `Ros1Mycobot_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_communication/MycobotSetCoords` | `Ros1Mycobot_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_communication/GetAnglesRequest` | `Ros1Mycobot_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mycobot_communication/GetAnglesResponse` | `Ros1Mycobot_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_communication/GetCoordsRequest` | `Ros1Mycobot_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mycobot_communication/GetCoordsResponse` | `Ros1Mycobot_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/GripperStatusRequest` | `Ros1Mycobot_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mycobot_communication/GripperStatusResponse` | `Ros1Mycobot_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mycobot_communication/PumpStatusRequest` | `Ros1Mycobot_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_communication/PumpStatusResponse` | `Ros1Mycobot_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetAnglesRequest` | `Ros1Mycobot_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_communication/SetAnglesResponse` | `Ros1Mycobot_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetCoordsRequest` | `Ros1Mycobot_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_communication/SetCoordsResponse` | `Ros1Mycobot_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/MypalAngles` | `Ros1Mypalletizer_communicationMypalAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_communication/MypalCoords` | `Ros1Mypalletizer_communicationMypalCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_communication/MypalGripperStatus` | `Ros1Mypalletizer_communicationMypalGripperStatus` | 1..1 | Status: bool |
| `mypalletizer_communication/MypalPumpStatus` | `Ros1Mypalletizer_communicationMypalPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mypalletizer_communication/MypalSetAngles` | `Ros1Mypalletizer_communicationMypalSetAngles` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_communication/MypalSetCoords` | `Ros1Mypalletizer_communicationMypalSetCoords` | 18..18 | x: float32; y: float32; z: float32; rx: float32; speed: int8; model: int8 |
| `mypalletizer_communication/GetAnglesRequest` | `Ros1Mypalletizer_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mypalletizer_communication/GetAnglesResponse` | `Ros1Mypalletizer_communicationGetAnglesResponse` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_communication/GetCoordsRequest` | `Ros1Mypalletizer_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mypalletizer_communication/GetCoordsResponse` | `Ros1Mypalletizer_communicationGetCoordsResponse` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_communication/GripperStatusRequest` | `Ros1Mypalletizer_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mypalletizer_communication/GripperStatusResponse` | `Ros1Mypalletizer_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/PumpStatusRequest` | `Ros1Mypalletizer_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mypalletizer_communication/PumpStatusResponse` | `Ros1Mypalletizer_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/SetAnglesRequest` | `Ros1Mypalletizer_communicationSetAnglesRequest` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_communication/SetAnglesResponse` | `Ros1Mypalletizer_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/SetCoordsRequest` | `Ros1Mypalletizer_communicationSetCoordsRequest` | 18..18 | x: float32; y: float32; z: float32; rx: float32; speed: int8; model: int8 |
| `mypalletizer_communication/SetCoordsResponse` | `Ros1Mypalletizer_communicationSetCoordsResponse` | 1..1 | Flag: bool |

Interfaces:

- `mycobot_communication/MycobotAngles` (message): message → `Ros1Mycobot_communicationMycobotAngles`
- `mycobot_communication/MycobotCoords` (message): message → `Ros1Mycobot_communicationMycobotCoords`
- `mycobot_communication/MycobotGripperStatus` (message): message → `Ros1Mycobot_communicationMycobotGripperStatus`
- `mycobot_communication/MycobotPumpStatus` (message): message → `Ros1Mycobot_communicationMycobotPumpStatus`
- `mycobot_communication/MycobotSetAngles` (message): message → `Ros1Mycobot_communicationMycobotSetAngles`
- `mycobot_communication/MycobotSetCoords` (message): message → `Ros1Mycobot_communicationMycobotSetCoords`
- `mycobot_communication/GetAngles` (service): request → `Ros1Mycobot_communicationGetAnglesRequest`, response → `Ros1Mycobot_communicationGetAnglesResponse`
- `mycobot_communication/GetCoords` (service): request → `Ros1Mycobot_communicationGetCoordsRequest`, response → `Ros1Mycobot_communicationGetCoordsResponse`
- `mycobot_communication/GripperStatus` (service): request → `Ros1Mycobot_communicationGripperStatusRequest`, response → `Ros1Mycobot_communicationGripperStatusResponse`
- `mycobot_communication/PumpStatus` (service): request → `Ros1Mycobot_communicationPumpStatusRequest`, response → `Ros1Mycobot_communicationPumpStatusResponse`
- `mycobot_communication/SetAngles` (service): request → `Ros1Mycobot_communicationSetAnglesRequest`, response → `Ros1Mycobot_communicationSetAnglesResponse`
- `mycobot_communication/SetCoords` (service): request → `Ros1Mycobot_communicationSetCoordsRequest`, response → `Ros1Mycobot_communicationSetCoordsResponse`
- `mypalletizer_communication/MypalAngles` (message): message → `Ros1Mypalletizer_communicationMypalAngles`
- `mypalletizer_communication/MypalCoords` (message): message → `Ros1Mypalletizer_communicationMypalCoords`
- `mypalletizer_communication/MypalGripperStatus` (message): message → `Ros1Mypalletizer_communicationMypalGripperStatus`
- `mypalletizer_communication/MypalPumpStatus` (message): message → `Ros1Mypalletizer_communicationMypalPumpStatus`
- `mypalletizer_communication/MypalSetAngles` (message): message → `Ros1Mypalletizer_communicationMypalSetAngles`
- `mypalletizer_communication/MypalSetCoords` (message): message → `Ros1Mypalletizer_communicationMypalSetCoords`
- `mypalletizer_communication/GetAngles` (service): request → `Ros1Mypalletizer_communicationGetAnglesRequest`, response → `Ros1Mypalletizer_communicationGetAnglesResponse`
- `mypalletizer_communication/GetCoords` (service): request → `Ros1Mypalletizer_communicationGetCoordsRequest`, response → `Ros1Mypalletizer_communicationGetCoordsResponse`
- `mypalletizer_communication/GripperStatus` (service): request → `Ros1Mypalletizer_communicationGripperStatusRequest`, response → `Ros1Mypalletizer_communicationGripperStatusResponse`
- `mypalletizer_communication/PumpStatus` (service): request → `Ros1Mypalletizer_communicationPumpStatusRequest`, response → `Ros1Mypalletizer_communicationPumpStatusResponse`
- `mypalletizer_communication/SetAngles` (service): request → `Ros1Mypalletizer_communicationSetAnglesRequest`, response → `Ros1Mypalletizer_communicationSetAnglesResponse`
- `mypalletizer_communication/SetCoords` (service): request → `Ros1Mypalletizer_communicationSetCoordsRequest`, response → `Ros1Mypalletizer_communicationSetCoordsResponse`

Immutable upstream sources:

- [elephantrobotics/mycobot_ros @ 9ec3e2ec29024a55150e7f3893b3d6e344f1caff](https://github.com/elephantrobotics/mycobot_ros/tree/9ec3e2ec29024a55150e7f3893b3d6e344f1caff)

## melodic

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `mybuddy_communication/MybuddyAngles` | `Ros1Mybuddy_communicationMybuddyAngles` | 52..52 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32 |
| `mybuddy_communication/MybuddyCoords` | `Ros1Mybuddy_communicationMybuddyCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mybuddy_communication/MybuddyGripperStatus` | `Ros1Mybuddy_communicationMybuddyGripperStatus` | 1..1 | Status: bool |
| `mybuddy_communication/MybuddyPumpStatus` | `Ros1Mybuddy_communicationMybuddyPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mybuddy_communication/MybuddySetAngles` | `Ros1Mybuddy_communicationMybuddySetAngles` | 53..53 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32; speed: int8 |
| `mybuddy_communication/MybuddySetCoords` | `Ros1Mybuddy_communicationMybuddySetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mybuddy_communication/GetAnglesRequest` | `Ros1Mybuddy_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mybuddy_communication/GetAnglesResponse` | `Ros1Mybuddy_communicationGetAnglesResponse` | 52..52 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32 |
| `mybuddy_communication/GetCoordsRequest` | `Ros1Mybuddy_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mybuddy_communication/GetCoordsResponse` | `Ros1Mybuddy_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mybuddy_communication/GripperStatusRequest` | `Ros1Mybuddy_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mybuddy_communication/GripperStatusResponse` | `Ros1Mybuddy_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mybuddy_communication/PumpStatusRequest` | `Ros1Mybuddy_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mybuddy_communication/PumpStatusResponse` | `Ros1Mybuddy_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mybuddy_communication/SetAnglesRequest` | `Ros1Mybuddy_communicationSetAnglesRequest` | 53..53 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32; speed: int8 |
| `mybuddy_communication/SetAnglesResponse` | `Ros1Mybuddy_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mybuddy_communication/SetCoordsRequest` | `Ros1Mybuddy_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mybuddy_communication/SetCoordsResponse` | `Ros1Mybuddy_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mecharm_communication/MycobotAngles` | `Ros1Mecharm_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_communication/MycobotCoords` | `Ros1Mecharm_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_communication/MycobotGripperStatus` | `Ros1Mecharm_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mecharm_communication/MycobotPumpStatus` | `Ros1Mecharm_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mecharm_communication/MycobotSetAngles` | `Ros1Mecharm_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_communication/MycobotSetCoords` | `Ros1Mecharm_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_communication/GetAnglesRequest` | `Ros1Mecharm_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mecharm_communication/GetAnglesResponse` | `Ros1Mecharm_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_communication/GetCoordsRequest` | `Ros1Mecharm_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mecharm_communication/GetCoordsResponse` | `Ros1Mecharm_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_communication/GripperStatusRequest` | `Ros1Mecharm_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mecharm_communication/GripperStatusResponse` | `Ros1Mecharm_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mecharm_communication/PumpStatusRequest` | `Ros1Mecharm_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mecharm_communication/PumpStatusResponse` | `Ros1Mecharm_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mecharm_communication/SetAnglesRequest` | `Ros1Mecharm_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_communication/SetAnglesResponse` | `Ros1Mecharm_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mecharm_communication/SetCoordsRequest` | `Ros1Mecharm_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_communication/SetCoordsResponse` | `Ros1Mecharm_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `myarm_communication/MyArmAngles` | `Ros1Myarm_communicationMyArmAngles` | 28..28 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32 |
| `myarm_communication/MyArmCoords` | `Ros1Myarm_communicationMyArmCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `myarm_communication/MyArmGripperStatus` | `Ros1Myarm_communicationMyArmGripperStatus` | 1..1 | Status: bool |
| `myarm_communication/MyArmPumpStatus` | `Ros1Myarm_communicationMyArmPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `myarm_communication/MyArmSetAngles` | `Ros1Myarm_communicationMyArmSetAngles` | 29..29 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; speed: int8 |
| `myarm_communication/MyArmSetCoords` | `Ros1Myarm_communicationMyArmSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `myarm_communication/GetAnglesRequest` | `Ros1Myarm_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `myarm_communication/GetAnglesResponse` | `Ros1Myarm_communicationGetAnglesResponse` | 28..28 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32 |
| `myarm_communication/GetCoordsRequest` | `Ros1Myarm_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `myarm_communication/GetCoordsResponse` | `Ros1Myarm_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `myarm_communication/GripperStatusRequest` | `Ros1Myarm_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `myarm_communication/GripperStatusResponse` | `Ros1Myarm_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `myarm_communication/PumpStatusRequest` | `Ros1Myarm_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `myarm_communication/PumpStatusResponse` | `Ros1Myarm_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `myarm_communication/SetAnglesRequest` | `Ros1Myarm_communicationSetAnglesRequest` | 29..29 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; speed: int8 |
| `myarm_communication/SetAnglesResponse` | `Ros1Myarm_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `myarm_communication/SetCoordsRequest` | `Ros1Myarm_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `myarm_communication/SetCoordsResponse` | `Ros1Myarm_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/MycobotAngles` | `Ros1Mycobot_320_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_320_communication/MycobotCoords` | `Ros1Mycobot_320_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_320_communication/MycobotGripperStatus` | `Ros1Mycobot_320_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mycobot_320_communication/MycobotPumpStatus` | `Ros1Mycobot_320_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_320_communication/MycobotSetAngles` | `Ros1Mycobot_320_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_320_communication/MycobotSetCoords` | `Ros1Mycobot_320_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_320_communication/GetAnglesRequest` | `Ros1Mycobot_320_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mycobot_320_communication/GetAnglesResponse` | `Ros1Mycobot_320_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_320_communication/GetCoordsRequest` | `Ros1Mycobot_320_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mycobot_320_communication/GetCoordsResponse` | `Ros1Mycobot_320_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_320_communication/GripperStatusRequest` | `Ros1Mycobot_320_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mycobot_320_communication/GripperStatusResponse` | `Ros1Mycobot_320_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/PumpStatusRequest` | `Ros1Mycobot_320_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_320_communication/PumpStatusResponse` | `Ros1Mycobot_320_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/SetAnglesRequest` | `Ros1Mycobot_320_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_320_communication/SetAnglesResponse` | `Ros1Mycobot_320_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/SetCoordsRequest` | `Ros1Mycobot_320_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_320_communication/SetCoordsResponse` | `Ros1Mycobot_320_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mycobot_communication/MycobotAngles` | `Ros1Mycobot_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_communication/MycobotCoords` | `Ros1Mycobot_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/MycobotGripperStatus` | `Ros1Mycobot_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mycobot_communication/MycobotPumpStatus` | `Ros1Mycobot_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_communication/MycobotSetAngles` | `Ros1Mycobot_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_communication/MycobotSetCoords` | `Ros1Mycobot_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_communication/GetAnglesRequest` | `Ros1Mycobot_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mycobot_communication/GetAnglesResponse` | `Ros1Mycobot_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_communication/GetCoordsRequest` | `Ros1Mycobot_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mycobot_communication/GetCoordsResponse` | `Ros1Mycobot_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/GripperStatusRequest` | `Ros1Mycobot_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mycobot_communication/GripperStatusResponse` | `Ros1Mycobot_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mycobot_communication/PumpStatusRequest` | `Ros1Mycobot_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_communication/PumpStatusResponse` | `Ros1Mycobot_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetAnglesRequest` | `Ros1Mycobot_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_communication/SetAnglesResponse` | `Ros1Mycobot_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetCoordsRequest` | `Ros1Mycobot_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_communication/SetCoordsResponse` | `Ros1Mycobot_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/MypalAngles` | `Ros1Mypalletizer_communicationMypalAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_communication/MypalCoords` | `Ros1Mypalletizer_communicationMypalCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_communication/MypalGripperStatus` | `Ros1Mypalletizer_communicationMypalGripperStatus` | 1..1 | Status: bool |
| `mypalletizer_communication/MypalPumpStatus` | `Ros1Mypalletizer_communicationMypalPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mypalletizer_communication/MypalSetAngles` | `Ros1Mypalletizer_communicationMypalSetAngles` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_communication/MypalSetCoords` | `Ros1Mypalletizer_communicationMypalSetCoords` | 18..18 | x: float32; y: float32; z: float32; rx: float32; speed: int8; model: int8 |
| `mypalletizer_communication/GetAnglesRequest` | `Ros1Mypalletizer_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mypalletizer_communication/GetAnglesResponse` | `Ros1Mypalletizer_communicationGetAnglesResponse` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_communication/GetCoordsRequest` | `Ros1Mypalletizer_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mypalletizer_communication/GetCoordsResponse` | `Ros1Mypalletizer_communicationGetCoordsResponse` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_communication/GripperStatusRequest` | `Ros1Mypalletizer_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mypalletizer_communication/GripperStatusResponse` | `Ros1Mypalletizer_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/PumpStatusRequest` | `Ros1Mypalletizer_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mypalletizer_communication/PumpStatusResponse` | `Ros1Mypalletizer_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/SetAnglesRequest` | `Ros1Mypalletizer_communicationSetAnglesRequest` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_communication/SetAnglesResponse` | `Ros1Mypalletizer_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/SetCoordsRequest` | `Ros1Mypalletizer_communicationSetCoordsRequest` | 18..18 | x: float32; y: float32; z: float32; rx: float32; speed: int8; model: int8 |
| `mypalletizer_communication/SetCoordsResponse` | `Ros1Mypalletizer_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/ultraArmAngles` | `Ros1Ultraarm_communicationUltraArmAngles` | 12..12 | joint_1: float32; joint_2: float32; joint_3: float32 |
| `ultraarm_communication/ultraArmCoords` | `Ros1Ultraarm_communicationUltraArmCoords` | 12..12 | x: float32; y: float32; z: float32 |
| `ultraarm_communication/ultraArmGripperStatus` | `Ros1Ultraarm_communicationUltraArmGripperStatus` | 1..1 | Status: bool |
| `ultraarm_communication/ultraArmPumpStatus` | `Ros1Ultraarm_communicationUltraArmPumpStatus` | 1..1 | Status: bool |
| `ultraarm_communication/ultraArmSetAngles` | `Ros1Ultraarm_communicationUltraArmSetAngles` | 13..13 | joint_1: float32; joint_2: float32; joint_3: float32; speed: int8 |
| `ultraarm_communication/ultraArmSetCoords` | `Ros1Ultraarm_communicationUltraArmSetCoords` | 13..13 | x: float32; y: float32; z: float32; speed: int8 |
| `ultraarm_communication/GetAnglesRequest` | `Ros1Ultraarm_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `ultraarm_communication/GetAnglesResponse` | `Ros1Ultraarm_communicationGetAnglesResponse` | 12..12 | joint_1: float32; joint_2: float32; joint_3: float32 |
| `ultraarm_communication/GetCoordsRequest` | `Ros1Ultraarm_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `ultraarm_communication/GetCoordsResponse` | `Ros1Ultraarm_communicationGetCoordsResponse` | 12..12 | x: float32; y: float32; z: float32 |
| `ultraarm_communication/GripperStatusRequest` | `Ros1Ultraarm_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `ultraarm_communication/GripperStatusResponse` | `Ros1Ultraarm_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/PumpStatusRequest` | `Ros1Ultraarm_communicationPumpStatusRequest` | 1..1 | Status: bool |
| `ultraarm_communication/PumpStatusResponse` | `Ros1Ultraarm_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/SetAnglesRequest` | `Ros1Ultraarm_communicationSetAnglesRequest` | 13..13 | joint_1: float32; joint_2: float32; joint_3: float32; speed: int8 |
| `ultraarm_communication/SetAnglesResponse` | `Ros1Ultraarm_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/SetCoordsRequest` | `Ros1Ultraarm_communicationSetCoordsRequest` | 13..13 | x: float32; y: float32; z: float32; speed: int8 |
| `ultraarm_communication/SetCoordsResponse` | `Ros1Ultraarm_communicationSetCoordsResponse` | 1..1 | Flag: bool |

Interfaces:

- `mybuddy_communication/MybuddyAngles` (message): message → `Ros1Mybuddy_communicationMybuddyAngles`
- `mybuddy_communication/MybuddyCoords` (message): message → `Ros1Mybuddy_communicationMybuddyCoords`
- `mybuddy_communication/MybuddyGripperStatus` (message): message → `Ros1Mybuddy_communicationMybuddyGripperStatus`
- `mybuddy_communication/MybuddyPumpStatus` (message): message → `Ros1Mybuddy_communicationMybuddyPumpStatus`
- `mybuddy_communication/MybuddySetAngles` (message): message → `Ros1Mybuddy_communicationMybuddySetAngles`
- `mybuddy_communication/MybuddySetCoords` (message): message → `Ros1Mybuddy_communicationMybuddySetCoords`
- `mybuddy_communication/GetAngles` (service): request → `Ros1Mybuddy_communicationGetAnglesRequest`, response → `Ros1Mybuddy_communicationGetAnglesResponse`
- `mybuddy_communication/GetCoords` (service): request → `Ros1Mybuddy_communicationGetCoordsRequest`, response → `Ros1Mybuddy_communicationGetCoordsResponse`
- `mybuddy_communication/GripperStatus` (service): request → `Ros1Mybuddy_communicationGripperStatusRequest`, response → `Ros1Mybuddy_communicationGripperStatusResponse`
- `mybuddy_communication/PumpStatus` (service): request → `Ros1Mybuddy_communicationPumpStatusRequest`, response → `Ros1Mybuddy_communicationPumpStatusResponse`
- `mybuddy_communication/SetAngles` (service): request → `Ros1Mybuddy_communicationSetAnglesRequest`, response → `Ros1Mybuddy_communicationSetAnglesResponse`
- `mybuddy_communication/SetCoords` (service): request → `Ros1Mybuddy_communicationSetCoordsRequest`, response → `Ros1Mybuddy_communicationSetCoordsResponse`
- `mecharm_communication/MycobotAngles` (message): message → `Ros1Mecharm_communicationMycobotAngles`
- `mecharm_communication/MycobotCoords` (message): message → `Ros1Mecharm_communicationMycobotCoords`
- `mecharm_communication/MycobotGripperStatus` (message): message → `Ros1Mecharm_communicationMycobotGripperStatus`
- `mecharm_communication/MycobotPumpStatus` (message): message → `Ros1Mecharm_communicationMycobotPumpStatus`
- `mecharm_communication/MycobotSetAngles` (message): message → `Ros1Mecharm_communicationMycobotSetAngles`
- `mecharm_communication/MycobotSetCoords` (message): message → `Ros1Mecharm_communicationMycobotSetCoords`
- `mecharm_communication/GetAngles` (service): request → `Ros1Mecharm_communicationGetAnglesRequest`, response → `Ros1Mecharm_communicationGetAnglesResponse`
- `mecharm_communication/GetCoords` (service): request → `Ros1Mecharm_communicationGetCoordsRequest`, response → `Ros1Mecharm_communicationGetCoordsResponse`
- `mecharm_communication/GripperStatus` (service): request → `Ros1Mecharm_communicationGripperStatusRequest`, response → `Ros1Mecharm_communicationGripperStatusResponse`
- `mecharm_communication/PumpStatus` (service): request → `Ros1Mecharm_communicationPumpStatusRequest`, response → `Ros1Mecharm_communicationPumpStatusResponse`
- `mecharm_communication/SetAngles` (service): request → `Ros1Mecharm_communicationSetAnglesRequest`, response → `Ros1Mecharm_communicationSetAnglesResponse`
- `mecharm_communication/SetCoords` (service): request → `Ros1Mecharm_communicationSetCoordsRequest`, response → `Ros1Mecharm_communicationSetCoordsResponse`
- `myarm_communication/MyArmAngles` (message): message → `Ros1Myarm_communicationMyArmAngles`
- `myarm_communication/MyArmCoords` (message): message → `Ros1Myarm_communicationMyArmCoords`
- `myarm_communication/MyArmGripperStatus` (message): message → `Ros1Myarm_communicationMyArmGripperStatus`
- `myarm_communication/MyArmPumpStatus` (message): message → `Ros1Myarm_communicationMyArmPumpStatus`
- `myarm_communication/MyArmSetAngles` (message): message → `Ros1Myarm_communicationMyArmSetAngles`
- `myarm_communication/MyArmSetCoords` (message): message → `Ros1Myarm_communicationMyArmSetCoords`
- `myarm_communication/GetAngles` (service): request → `Ros1Myarm_communicationGetAnglesRequest`, response → `Ros1Myarm_communicationGetAnglesResponse`
- `myarm_communication/GetCoords` (service): request → `Ros1Myarm_communicationGetCoordsRequest`, response → `Ros1Myarm_communicationGetCoordsResponse`
- `myarm_communication/GripperStatus` (service): request → `Ros1Myarm_communicationGripperStatusRequest`, response → `Ros1Myarm_communicationGripperStatusResponse`
- `myarm_communication/PumpStatus` (service): request → `Ros1Myarm_communicationPumpStatusRequest`, response → `Ros1Myarm_communicationPumpStatusResponse`
- `myarm_communication/SetAngles` (service): request → `Ros1Myarm_communicationSetAnglesRequest`, response → `Ros1Myarm_communicationSetAnglesResponse`
- `myarm_communication/SetCoords` (service): request → `Ros1Myarm_communicationSetCoordsRequest`, response → `Ros1Myarm_communicationSetCoordsResponse`
- `mycobot_320_communication/MycobotAngles` (message): message → `Ros1Mycobot_320_communicationMycobotAngles`
- `mycobot_320_communication/MycobotCoords` (message): message → `Ros1Mycobot_320_communicationMycobotCoords`
- `mycobot_320_communication/MycobotGripperStatus` (message): message → `Ros1Mycobot_320_communicationMycobotGripperStatus`
- `mycobot_320_communication/MycobotPumpStatus` (message): message → `Ros1Mycobot_320_communicationMycobotPumpStatus`
- `mycobot_320_communication/MycobotSetAngles` (message): message → `Ros1Mycobot_320_communicationMycobotSetAngles`
- `mycobot_320_communication/MycobotSetCoords` (message): message → `Ros1Mycobot_320_communicationMycobotSetCoords`
- `mycobot_320_communication/GetAngles` (service): request → `Ros1Mycobot_320_communicationGetAnglesRequest`, response → `Ros1Mycobot_320_communicationGetAnglesResponse`
- `mycobot_320_communication/GetCoords` (service): request → `Ros1Mycobot_320_communicationGetCoordsRequest`, response → `Ros1Mycobot_320_communicationGetCoordsResponse`
- `mycobot_320_communication/GripperStatus` (service): request → `Ros1Mycobot_320_communicationGripperStatusRequest`, response → `Ros1Mycobot_320_communicationGripperStatusResponse`
- `mycobot_320_communication/PumpStatus` (service): request → `Ros1Mycobot_320_communicationPumpStatusRequest`, response → `Ros1Mycobot_320_communicationPumpStatusResponse`
- `mycobot_320_communication/SetAngles` (service): request → `Ros1Mycobot_320_communicationSetAnglesRequest`, response → `Ros1Mycobot_320_communicationSetAnglesResponse`
- `mycobot_320_communication/SetCoords` (service): request → `Ros1Mycobot_320_communicationSetCoordsRequest`, response → `Ros1Mycobot_320_communicationSetCoordsResponse`
- `mycobot_communication/MycobotAngles` (message): message → `Ros1Mycobot_communicationMycobotAngles`
- `mycobot_communication/MycobotCoords` (message): message → `Ros1Mycobot_communicationMycobotCoords`
- `mycobot_communication/MycobotGripperStatus` (message): message → `Ros1Mycobot_communicationMycobotGripperStatus`
- `mycobot_communication/MycobotPumpStatus` (message): message → `Ros1Mycobot_communicationMycobotPumpStatus`
- `mycobot_communication/MycobotSetAngles` (message): message → `Ros1Mycobot_communicationMycobotSetAngles`
- `mycobot_communication/MycobotSetCoords` (message): message → `Ros1Mycobot_communicationMycobotSetCoords`
- `mycobot_communication/GetAngles` (service): request → `Ros1Mycobot_communicationGetAnglesRequest`, response → `Ros1Mycobot_communicationGetAnglesResponse`
- `mycobot_communication/GetCoords` (service): request → `Ros1Mycobot_communicationGetCoordsRequest`, response → `Ros1Mycobot_communicationGetCoordsResponse`
- `mycobot_communication/GripperStatus` (service): request → `Ros1Mycobot_communicationGripperStatusRequest`, response → `Ros1Mycobot_communicationGripperStatusResponse`
- `mycobot_communication/PumpStatus` (service): request → `Ros1Mycobot_communicationPumpStatusRequest`, response → `Ros1Mycobot_communicationPumpStatusResponse`
- `mycobot_communication/SetAngles` (service): request → `Ros1Mycobot_communicationSetAnglesRequest`, response → `Ros1Mycobot_communicationSetAnglesResponse`
- `mycobot_communication/SetCoords` (service): request → `Ros1Mycobot_communicationSetCoordsRequest`, response → `Ros1Mycobot_communicationSetCoordsResponse`
- `mypalletizer_communication/MypalAngles` (message): message → `Ros1Mypalletizer_communicationMypalAngles`
- `mypalletizer_communication/MypalCoords` (message): message → `Ros1Mypalletizer_communicationMypalCoords`
- `mypalletizer_communication/MypalGripperStatus` (message): message → `Ros1Mypalletizer_communicationMypalGripperStatus`
- `mypalletizer_communication/MypalPumpStatus` (message): message → `Ros1Mypalletizer_communicationMypalPumpStatus`
- `mypalletizer_communication/MypalSetAngles` (message): message → `Ros1Mypalletizer_communicationMypalSetAngles`
- `mypalletizer_communication/MypalSetCoords` (message): message → `Ros1Mypalletizer_communicationMypalSetCoords`
- `mypalletizer_communication/GetAngles` (service): request → `Ros1Mypalletizer_communicationGetAnglesRequest`, response → `Ros1Mypalletizer_communicationGetAnglesResponse`
- `mypalletizer_communication/GetCoords` (service): request → `Ros1Mypalletizer_communicationGetCoordsRequest`, response → `Ros1Mypalletizer_communicationGetCoordsResponse`
- `mypalletizer_communication/GripperStatus` (service): request → `Ros1Mypalletizer_communicationGripperStatusRequest`, response → `Ros1Mypalletizer_communicationGripperStatusResponse`
- `mypalletizer_communication/PumpStatus` (service): request → `Ros1Mypalletizer_communicationPumpStatusRequest`, response → `Ros1Mypalletizer_communicationPumpStatusResponse`
- `mypalletizer_communication/SetAngles` (service): request → `Ros1Mypalletizer_communicationSetAnglesRequest`, response → `Ros1Mypalletizer_communicationSetAnglesResponse`
- `mypalletizer_communication/SetCoords` (service): request → `Ros1Mypalletizer_communicationSetCoordsRequest`, response → `Ros1Mypalletizer_communicationSetCoordsResponse`
- `ultraarm_communication/ultraArmAngles` (message): message → `Ros1Ultraarm_communicationUltraArmAngles`
- `ultraarm_communication/ultraArmCoords` (message): message → `Ros1Ultraarm_communicationUltraArmCoords`
- `ultraarm_communication/ultraArmGripperStatus` (message): message → `Ros1Ultraarm_communicationUltraArmGripperStatus`
- `ultraarm_communication/ultraArmPumpStatus` (message): message → `Ros1Ultraarm_communicationUltraArmPumpStatus`
- `ultraarm_communication/ultraArmSetAngles` (message): message → `Ros1Ultraarm_communicationUltraArmSetAngles`
- `ultraarm_communication/ultraArmSetCoords` (message): message → `Ros1Ultraarm_communicationUltraArmSetCoords`
- `ultraarm_communication/GetAngles` (service): request → `Ros1Ultraarm_communicationGetAnglesRequest`, response → `Ros1Ultraarm_communicationGetAnglesResponse`
- `ultraarm_communication/GetCoords` (service): request → `Ros1Ultraarm_communicationGetCoordsRequest`, response → `Ros1Ultraarm_communicationGetCoordsResponse`
- `ultraarm_communication/GripperStatus` (service): request → `Ros1Ultraarm_communicationGripperStatusRequest`, response → `Ros1Ultraarm_communicationGripperStatusResponse`
- `ultraarm_communication/PumpStatus` (service): request → `Ros1Ultraarm_communicationPumpStatusRequest`, response → `Ros1Ultraarm_communicationPumpStatusResponse`
- `ultraarm_communication/SetAngles` (service): request → `Ros1Ultraarm_communicationSetAnglesRequest`, response → `Ros1Ultraarm_communicationSetAnglesResponse`
- `ultraarm_communication/SetCoords` (service): request → `Ros1Ultraarm_communicationSetCoordsRequest`, response → `Ros1Ultraarm_communicationSetCoordsResponse`

Immutable upstream sources:

- [elephantrobotics/mycobot_ros @ 3a0357d2afec2706c299f6d51ac46b6b128067f8](https://github.com/elephantrobotics/mycobot_ros/tree/3a0357d2afec2706c299f6d51ac46b6b128067f8)

## noetic

| Original type/component | Symbol | Canonical bytes | Complete original fields |
| --- | --- | --- | --- |
| `mybuddy_communication/MybuddyAngles` | `Ros1Mybuddy_communicationMybuddyAngles` | 52..52 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32 |
| `mybuddy_communication/MybuddyCoords` | `Ros1Mybuddy_communicationMybuddyCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mybuddy_communication/MybuddyGripperStatus` | `Ros1Mybuddy_communicationMybuddyGripperStatus` | 1..1 | Status: bool |
| `mybuddy_communication/MybuddyPumpStatus` | `Ros1Mybuddy_communicationMybuddyPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mybuddy_communication/MybuddySetAngles` | `Ros1Mybuddy_communicationMybuddySetAngles` | 53..53 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32; speed: int8 |
| `mybuddy_communication/MybuddySetCoords` | `Ros1Mybuddy_communicationMybuddySetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mybuddy_communication/GetAnglesRequest` | `Ros1Mybuddy_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mybuddy_communication/GetAnglesResponse` | `Ros1Mybuddy_communicationGetAnglesResponse` | 52..52 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32 |
| `mybuddy_communication/GetCoordsRequest` | `Ros1Mybuddy_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mybuddy_communication/GetCoordsResponse` | `Ros1Mybuddy_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mybuddy_communication/GripperStatusRequest` | `Ros1Mybuddy_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mybuddy_communication/GripperStatusResponse` | `Ros1Mybuddy_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mybuddy_communication/PumpStatusRequest` | `Ros1Mybuddy_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mybuddy_communication/PumpStatusResponse` | `Ros1Mybuddy_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mybuddy_communication/SetAnglesRequest` | `Ros1Mybuddy_communicationSetAnglesRequest` | 53..53 | joint_0: float32; joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; joint_8: float32; joint_9: float32; joint_10: float32; joint_11: float32; joint_12: float32; speed: int8 |
| `mybuddy_communication/SetAnglesResponse` | `Ros1Mybuddy_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mybuddy_communication/SetCoordsRequest` | `Ros1Mybuddy_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mybuddy_communication/SetCoordsResponse` | `Ros1Mybuddy_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mecharm_communication/MycobotAngles` | `Ros1Mecharm_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_communication/MycobotCoords` | `Ros1Mecharm_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_communication/MycobotGripperStatus` | `Ros1Mecharm_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mecharm_communication/MycobotPumpStatus` | `Ros1Mecharm_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mecharm_communication/MycobotSetAngles` | `Ros1Mecharm_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_communication/MycobotSetCoords` | `Ros1Mecharm_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_communication/GetAnglesRequest` | `Ros1Mecharm_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mecharm_communication/GetAnglesResponse` | `Ros1Mecharm_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mecharm_communication/GetCoordsRequest` | `Ros1Mecharm_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mecharm_communication/GetCoordsResponse` | `Ros1Mecharm_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mecharm_communication/GripperStatusRequest` | `Ros1Mecharm_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mecharm_communication/GripperStatusResponse` | `Ros1Mecharm_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mecharm_communication/PumpStatusRequest` | `Ros1Mecharm_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mecharm_communication/PumpStatusResponse` | `Ros1Mecharm_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mecharm_communication/SetAnglesRequest` | `Ros1Mecharm_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mecharm_communication/SetAnglesResponse` | `Ros1Mecharm_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mecharm_communication/SetCoordsRequest` | `Ros1Mecharm_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mecharm_communication/SetCoordsResponse` | `Ros1Mecharm_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `myarm_communication/MyArmAngles` | `Ros1Myarm_communicationMyArmAngles` | 28..28 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32 |
| `myarm_communication/MyArmCoords` | `Ros1Myarm_communicationMyArmCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `myarm_communication/MyArmGripperStatus` | `Ros1Myarm_communicationMyArmGripperStatus` | 1..1 | Status: bool |
| `myarm_communication/MyArmPumpStatus` | `Ros1Myarm_communicationMyArmPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `myarm_communication/MyArmSetAngles` | `Ros1Myarm_communicationMyArmSetAngles` | 29..29 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; speed: int8 |
| `myarm_communication/MyArmSetCoords` | `Ros1Myarm_communicationMyArmSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `myarm_communication/GetAnglesRequest` | `Ros1Myarm_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `myarm_communication/GetAnglesResponse` | `Ros1Myarm_communicationGetAnglesResponse` | 28..28 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32 |
| `myarm_communication/GetCoordsRequest` | `Ros1Myarm_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `myarm_communication/GetCoordsResponse` | `Ros1Myarm_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `myarm_communication/GripperStatusRequest` | `Ros1Myarm_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `myarm_communication/GripperStatusResponse` | `Ros1Myarm_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `myarm_communication/PumpStatusRequest` | `Ros1Myarm_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `myarm_communication/PumpStatusResponse` | `Ros1Myarm_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `myarm_communication/SetAnglesRequest` | `Ros1Myarm_communicationSetAnglesRequest` | 29..29 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; joint_7: float32; speed: int8 |
| `myarm_communication/SetAnglesResponse` | `Ros1Myarm_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `myarm_communication/SetCoordsRequest` | `Ros1Myarm_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `myarm_communication/SetCoordsResponse` | `Ros1Myarm_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/MycobotAngles` | `Ros1Mycobot_320_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_320_communication/MycobotCoords` | `Ros1Mycobot_320_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_320_communication/MycobotGripperStatus` | `Ros1Mycobot_320_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mycobot_320_communication/MycobotPumpStatus` | `Ros1Mycobot_320_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_320_communication/MycobotSetAngles` | `Ros1Mycobot_320_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_320_communication/MycobotSetCoords` | `Ros1Mycobot_320_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_320_communication/GetAnglesRequest` | `Ros1Mycobot_320_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mycobot_320_communication/GetAnglesResponse` | `Ros1Mycobot_320_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_320_communication/GetCoordsRequest` | `Ros1Mycobot_320_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mycobot_320_communication/GetCoordsResponse` | `Ros1Mycobot_320_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_320_communication/GripperStatusRequest` | `Ros1Mycobot_320_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mycobot_320_communication/GripperStatusResponse` | `Ros1Mycobot_320_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/PumpStatusRequest` | `Ros1Mycobot_320_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_320_communication/PumpStatusResponse` | `Ros1Mycobot_320_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/SetAnglesRequest` | `Ros1Mycobot_320_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_320_communication/SetAnglesResponse` | `Ros1Mycobot_320_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mycobot_320_communication/SetCoordsRequest` | `Ros1Mycobot_320_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_320_communication/SetCoordsResponse` | `Ros1Mycobot_320_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mycobot_communication/MycobotAngles` | `Ros1Mycobot_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_communication/MycobotCoords` | `Ros1Mycobot_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/MycobotGetGripperValue` | `Ros1Mycobot_communicationMycobotGetGripperValue` | 4..4 | gripper_angle: int32 |
| `mycobot_communication/MycobotGripperStatus` | `Ros1Mycobot_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mycobot_communication/MycobotPumpStatus` | `Ros1Mycobot_communicationMycobotPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_communication/MycobotSetAngles` | `Ros1Mycobot_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_communication/MycobotSetCoords` | `Ros1Mycobot_communicationMycobotSetCoords` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_communication/MycobotSetEndType` | `Ros1Mycobot_communicationMycobotSetEndType` | 1..1 | Status: uint8 |
| `mycobot_communication/MycobotSetFreshMode` | `Ros1Mycobot_communicationMycobotSetFreshMode` | 1..1 | Status: uint8 |
| `mycobot_communication/MycobotSetToolReference` | `Ros1Mycobot_communicationMycobotSetToolReference` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/MycobotSetVisionMode` | `Ros1Mycobot_communicationMycobotSetVisionMode` | 1..1 | Status: uint8 |
| `mycobot_communication/GetAnglesRequest` | `Ros1Mycobot_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mycobot_communication/GetAnglesResponse` | `Ros1Mycobot_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_communication/GetCoordsRequest` | `Ros1Mycobot_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mycobot_communication/GetCoordsResponse` | `Ros1Mycobot_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/GripperStatusRequest` | `Ros1Mycobot_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mycobot_communication/GripperStatusResponse` | `Ros1Mycobot_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mycobot_communication/PumpStatusRequest` | `Ros1Mycobot_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mycobot_communication/PumpStatusResponse` | `Ros1Mycobot_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetAnglesRequest` | `Ros1Mycobot_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_communication/SetAnglesResponse` | `Ros1Mycobot_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetCoordsRequest` | `Ros1Mycobot_communicationSetCoordsRequest` | 26..26 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8; model: int8 |
| `mycobot_communication/SetCoordsResponse` | `Ros1Mycobot_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetEndTypeRequest` | `Ros1Mycobot_communicationSetEndTypeRequest` | 1..1 | Status: uint8 |
| `mycobot_communication/SetEndTypeResponse` | `Ros1Mycobot_communicationSetEndTypeResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetFreshModeRequest` | `Ros1Mycobot_communicationSetFreshModeRequest` | 1..1 | Status: uint8 |
| `mycobot_communication/SetFreshModeResponse` | `Ros1Mycobot_communicationSetFreshModeResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetToolReferenceRequest` | `Ros1Mycobot_communicationSetToolReferenceRequest` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_communication/SetToolReferenceResponse` | `Ros1Mycobot_communicationSetToolReferenceResponse` | 1..1 | Flag: bool |
| `mycobot_communication/SetVisionModeRequest` | `Ros1Mycobot_communicationSetVisionModeRequest` | 1..1 | Status: uint8 |
| `mycobot_communication/SetVisionModeResponse` | `Ros1Mycobot_communicationSetVisionModeResponse` | 1..1 | Flag: bool |
| `mycobot_pro450_communication/MycobotAngles` | `Ros1Mycobot_pro450_communicationMycobotAngles` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_communication/MycobotCoords` | `Ros1Mycobot_pro450_communicationMycobotCoords` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_communication/MycobotGetGripperValue` | `Ros1Mycobot_pro450_communicationMycobotGetGripperValue` | 4..4 | gripper_angle: int32 |
| `mycobot_pro450_communication/MycobotGripperStatus` | `Ros1Mycobot_pro450_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `mycobot_pro450_communication/MycobotSetAngles` | `Ros1Mycobot_pro450_communicationMycobotSetAngles` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_communication/MycobotSetCoords` | `Ros1Mycobot_pro450_communicationMycobotSetCoords` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_communication/MycobotSetFreshMode` | `Ros1Mycobot_pro450_communicationMycobotSetFreshMode` | 1..1 | Status: uint8 |
| `mycobot_pro450_communication/GetAnglesRequest` | `Ros1Mycobot_pro450_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mycobot_pro450_communication/GetAnglesResponse` | `Ros1Mycobot_pro450_communicationGetAnglesResponse` | 24..24 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32 |
| `mycobot_pro450_communication/GetCoordsRequest` | `Ros1Mycobot_pro450_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mycobot_pro450_communication/GetCoordsResponse` | `Ros1Mycobot_pro450_communicationGetCoordsResponse` | 24..24 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32 |
| `mycobot_pro450_communication/GetGripperValueRequest` | `Ros1Mycobot_pro450_communicationGetGripperValueRequest` | 0..0 | (empty original component) |
| `mycobot_pro450_communication/GetGripperValueResponse` | `Ros1Mycobot_pro450_communicationGetGripperValueResponse` | 4..4 | gripper_angle: int32 |
| `mycobot_pro450_communication/GripperStatusRequest` | `Ros1Mycobot_pro450_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mycobot_pro450_communication/GripperStatusResponse` | `Ros1Mycobot_pro450_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mycobot_pro450_communication/SetAnglesRequest` | `Ros1Mycobot_pro450_communicationSetAnglesRequest` | 25..25 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; joint_5: float32; joint_6: float32; speed: int8 |
| `mycobot_pro450_communication/SetAnglesResponse` | `Ros1Mycobot_pro450_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mycobot_pro450_communication/SetCoordsRequest` | `Ros1Mycobot_pro450_communicationSetCoordsRequest` | 25..25 | x: float32; y: float32; z: float32; rx: float32; ry: float32; rz: float32; speed: int8 |
| `mycobot_pro450_communication/SetCoordsResponse` | `Ros1Mycobot_pro450_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `mycobot_pro450_communication/SetFreshModeRequest` | `Ros1Mycobot_pro450_communicationSetFreshModeRequest` | 1..1 | Status: uint8 |
| `mycobot_pro450_communication/SetFreshModeResponse` | `Ros1Mycobot_pro450_communicationSetFreshModeResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/MypalAngles` | `Ros1Mypalletizer_communicationMypalAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_communication/MypalCoords` | `Ros1Mypalletizer_communicationMypalCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_communication/MypalGripperStatus` | `Ros1Mypalletizer_communicationMypalGripperStatus` | 1..1 | Status: bool |
| `mypalletizer_communication/MypalPumpStatus` | `Ros1Mypalletizer_communicationMypalPumpStatus` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mypalletizer_communication/MypalSetAngles` | `Ros1Mypalletizer_communicationMypalSetAngles` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_communication/MypalSetCoords` | `Ros1Mypalletizer_communicationMypalSetCoords` | 18..18 | x: float32; y: float32; z: float32; rx: float32; speed: int8; model: int8 |
| `mypalletizer_communication/GetAnglesRequest` | `Ros1Mypalletizer_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `mypalletizer_communication/GetAnglesResponse` | `Ros1Mypalletizer_communicationGetAnglesResponse` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `mypalletizer_communication/GetCoordsRequest` | `Ros1Mypalletizer_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `mypalletizer_communication/GetCoordsResponse` | `Ros1Mypalletizer_communicationGetCoordsResponse` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `mypalletizer_communication/GripperStatusRequest` | `Ros1Mypalletizer_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `mypalletizer_communication/GripperStatusResponse` | `Ros1Mypalletizer_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/PumpStatusRequest` | `Ros1Mypalletizer_communicationPumpStatusRequest` | 3..3 | Status: bool; Pin1: int8; Pin2: int8 |
| `mypalletizer_communication/PumpStatusResponse` | `Ros1Mypalletizer_communicationPumpStatusResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/SetAnglesRequest` | `Ros1Mypalletizer_communicationSetAnglesRequest` | 17..17 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int8 |
| `mypalletizer_communication/SetAnglesResponse` | `Ros1Mypalletizer_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `mypalletizer_communication/SetCoordsRequest` | `Ros1Mypalletizer_communicationSetCoordsRequest` | 18..18 | x: float32; y: float32; z: float32; rx: float32; speed: int8; model: int8 |
| `mypalletizer_communication/SetCoordsResponse` | `Ros1Mypalletizer_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/MycobotAngles` | `Ros1Ultraarm_communicationMycobotAngles` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `ultraarm_communication/MycobotCoords` | `Ros1Ultraarm_communicationMycobotCoords` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `ultraarm_communication/MycobotGetGripperValue` | `Ros1Ultraarm_communicationMycobotGetGripperValue` | 4..4 | gripper_angle: int32 |
| `ultraarm_communication/MycobotGripperStatus` | `Ros1Ultraarm_communicationMycobotGripperStatus` | 1..1 | Status: bool |
| `ultraarm_communication/MycobotSetAngles` | `Ros1Ultraarm_communicationMycobotSetAngles` | 20..20 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int32 |
| `ultraarm_communication/MycobotSetCoords` | `Ros1Ultraarm_communicationMycobotSetCoords` | 20..20 | x: float32; y: float32; z: float32; rx: float32; speed: int32 |
| `ultraarm_communication/MycobotSetFreshMode` | `Ros1Ultraarm_communicationMycobotSetFreshMode` | 1..1 | Status: uint8 |
| `ultraarm_communication/GetAnglesRequest` | `Ros1Ultraarm_communicationGetAnglesRequest` | 0..0 | (empty original component) |
| `ultraarm_communication/GetAnglesResponse` | `Ros1Ultraarm_communicationGetAnglesResponse` | 16..16 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32 |
| `ultraarm_communication/GetCoordsRequest` | `Ros1Ultraarm_communicationGetCoordsRequest` | 0..0 | (empty original component) |
| `ultraarm_communication/GetCoordsResponse` | `Ros1Ultraarm_communicationGetCoordsResponse` | 16..16 | x: float32; y: float32; z: float32; rx: float32 |
| `ultraarm_communication/GetGripperValueRequest` | `Ros1Ultraarm_communicationGetGripperValueRequest` | 0..0 | (empty original component) |
| `ultraarm_communication/GetGripperValueResponse` | `Ros1Ultraarm_communicationGetGripperValueResponse` | 4..4 | gripper_angle: int32 |
| `ultraarm_communication/GripperStatusRequest` | `Ros1Ultraarm_communicationGripperStatusRequest` | 1..1 | Status: bool |
| `ultraarm_communication/GripperStatusResponse` | `Ros1Ultraarm_communicationGripperStatusResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/SetAnglesRequest` | `Ros1Ultraarm_communicationSetAnglesRequest` | 20..20 | joint_1: float32; joint_2: float32; joint_3: float32; joint_4: float32; speed: int32 |
| `ultraarm_communication/SetAnglesResponse` | `Ros1Ultraarm_communicationSetAnglesResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/SetCoordsRequest` | `Ros1Ultraarm_communicationSetCoordsRequest` | 20..20 | x: float32; y: float32; z: float32; rx: float32; speed: int32 |
| `ultraarm_communication/SetCoordsResponse` | `Ros1Ultraarm_communicationSetCoordsResponse` | 1..1 | Flag: bool |
| `ultraarm_communication/SetFreshModeRequest` | `Ros1Ultraarm_communicationSetFreshModeRequest` | 1..1 | Status: uint8 |
| `ultraarm_communication/SetFreshModeResponse` | `Ros1Ultraarm_communicationSetFreshModeResponse` | 1..1 | Flag: bool |

Interfaces:

- `mybuddy_communication/MybuddyAngles` (message): message → `Ros1Mybuddy_communicationMybuddyAngles`
- `mybuddy_communication/MybuddyCoords` (message): message → `Ros1Mybuddy_communicationMybuddyCoords`
- `mybuddy_communication/MybuddyGripperStatus` (message): message → `Ros1Mybuddy_communicationMybuddyGripperStatus`
- `mybuddy_communication/MybuddyPumpStatus` (message): message → `Ros1Mybuddy_communicationMybuddyPumpStatus`
- `mybuddy_communication/MybuddySetAngles` (message): message → `Ros1Mybuddy_communicationMybuddySetAngles`
- `mybuddy_communication/MybuddySetCoords` (message): message → `Ros1Mybuddy_communicationMybuddySetCoords`
- `mybuddy_communication/GetAngles` (service): request → `Ros1Mybuddy_communicationGetAnglesRequest`, response → `Ros1Mybuddy_communicationGetAnglesResponse`
- `mybuddy_communication/GetCoords` (service): request → `Ros1Mybuddy_communicationGetCoordsRequest`, response → `Ros1Mybuddy_communicationGetCoordsResponse`
- `mybuddy_communication/GripperStatus` (service): request → `Ros1Mybuddy_communicationGripperStatusRequest`, response → `Ros1Mybuddy_communicationGripperStatusResponse`
- `mybuddy_communication/PumpStatus` (service): request → `Ros1Mybuddy_communicationPumpStatusRequest`, response → `Ros1Mybuddy_communicationPumpStatusResponse`
- `mybuddy_communication/SetAngles` (service): request → `Ros1Mybuddy_communicationSetAnglesRequest`, response → `Ros1Mybuddy_communicationSetAnglesResponse`
- `mybuddy_communication/SetCoords` (service): request → `Ros1Mybuddy_communicationSetCoordsRequest`, response → `Ros1Mybuddy_communicationSetCoordsResponse`
- `mecharm_communication/MycobotAngles` (message): message → `Ros1Mecharm_communicationMycobotAngles`
- `mecharm_communication/MycobotCoords` (message): message → `Ros1Mecharm_communicationMycobotCoords`
- `mecharm_communication/MycobotGripperStatus` (message): message → `Ros1Mecharm_communicationMycobotGripperStatus`
- `mecharm_communication/MycobotPumpStatus` (message): message → `Ros1Mecharm_communicationMycobotPumpStatus`
- `mecharm_communication/MycobotSetAngles` (message): message → `Ros1Mecharm_communicationMycobotSetAngles`
- `mecharm_communication/MycobotSetCoords` (message): message → `Ros1Mecharm_communicationMycobotSetCoords`
- `mecharm_communication/GetAngles` (service): request → `Ros1Mecharm_communicationGetAnglesRequest`, response → `Ros1Mecharm_communicationGetAnglesResponse`
- `mecharm_communication/GetCoords` (service): request → `Ros1Mecharm_communicationGetCoordsRequest`, response → `Ros1Mecharm_communicationGetCoordsResponse`
- `mecharm_communication/GripperStatus` (service): request → `Ros1Mecharm_communicationGripperStatusRequest`, response → `Ros1Mecharm_communicationGripperStatusResponse`
- `mecharm_communication/PumpStatus` (service): request → `Ros1Mecharm_communicationPumpStatusRequest`, response → `Ros1Mecharm_communicationPumpStatusResponse`
- `mecharm_communication/SetAngles` (service): request → `Ros1Mecharm_communicationSetAnglesRequest`, response → `Ros1Mecharm_communicationSetAnglesResponse`
- `mecharm_communication/SetCoords` (service): request → `Ros1Mecharm_communicationSetCoordsRequest`, response → `Ros1Mecharm_communicationSetCoordsResponse`
- `myarm_communication/MyArmAngles` (message): message → `Ros1Myarm_communicationMyArmAngles`
- `myarm_communication/MyArmCoords` (message): message → `Ros1Myarm_communicationMyArmCoords`
- `myarm_communication/MyArmGripperStatus` (message): message → `Ros1Myarm_communicationMyArmGripperStatus`
- `myarm_communication/MyArmPumpStatus` (message): message → `Ros1Myarm_communicationMyArmPumpStatus`
- `myarm_communication/MyArmSetAngles` (message): message → `Ros1Myarm_communicationMyArmSetAngles`
- `myarm_communication/MyArmSetCoords` (message): message → `Ros1Myarm_communicationMyArmSetCoords`
- `myarm_communication/GetAngles` (service): request → `Ros1Myarm_communicationGetAnglesRequest`, response → `Ros1Myarm_communicationGetAnglesResponse`
- `myarm_communication/GetCoords` (service): request → `Ros1Myarm_communicationGetCoordsRequest`, response → `Ros1Myarm_communicationGetCoordsResponse`
- `myarm_communication/GripperStatus` (service): request → `Ros1Myarm_communicationGripperStatusRequest`, response → `Ros1Myarm_communicationGripperStatusResponse`
- `myarm_communication/PumpStatus` (service): request → `Ros1Myarm_communicationPumpStatusRequest`, response → `Ros1Myarm_communicationPumpStatusResponse`
- `myarm_communication/SetAngles` (service): request → `Ros1Myarm_communicationSetAnglesRequest`, response → `Ros1Myarm_communicationSetAnglesResponse`
- `myarm_communication/SetCoords` (service): request → `Ros1Myarm_communicationSetCoordsRequest`, response → `Ros1Myarm_communicationSetCoordsResponse`
- `mycobot_320_communication/MycobotAngles` (message): message → `Ros1Mycobot_320_communicationMycobotAngles`
- `mycobot_320_communication/MycobotCoords` (message): message → `Ros1Mycobot_320_communicationMycobotCoords`
- `mycobot_320_communication/MycobotGripperStatus` (message): message → `Ros1Mycobot_320_communicationMycobotGripperStatus`
- `mycobot_320_communication/MycobotPumpStatus` (message): message → `Ros1Mycobot_320_communicationMycobotPumpStatus`
- `mycobot_320_communication/MycobotSetAngles` (message): message → `Ros1Mycobot_320_communicationMycobotSetAngles`
- `mycobot_320_communication/MycobotSetCoords` (message): message → `Ros1Mycobot_320_communicationMycobotSetCoords`
- `mycobot_320_communication/GetAngles` (service): request → `Ros1Mycobot_320_communicationGetAnglesRequest`, response → `Ros1Mycobot_320_communicationGetAnglesResponse`
- `mycobot_320_communication/GetCoords` (service): request → `Ros1Mycobot_320_communicationGetCoordsRequest`, response → `Ros1Mycobot_320_communicationGetCoordsResponse`
- `mycobot_320_communication/GripperStatus` (service): request → `Ros1Mycobot_320_communicationGripperStatusRequest`, response → `Ros1Mycobot_320_communicationGripperStatusResponse`
- `mycobot_320_communication/PumpStatus` (service): request → `Ros1Mycobot_320_communicationPumpStatusRequest`, response → `Ros1Mycobot_320_communicationPumpStatusResponse`
- `mycobot_320_communication/SetAngles` (service): request → `Ros1Mycobot_320_communicationSetAnglesRequest`, response → `Ros1Mycobot_320_communicationSetAnglesResponse`
- `mycobot_320_communication/SetCoords` (service): request → `Ros1Mycobot_320_communicationSetCoordsRequest`, response → `Ros1Mycobot_320_communicationSetCoordsResponse`
- `mycobot_communication/MycobotAngles` (message): message → `Ros1Mycobot_communicationMycobotAngles`
- `mycobot_communication/MycobotCoords` (message): message → `Ros1Mycobot_communicationMycobotCoords`
- `mycobot_communication/MycobotGetGripperValue` (message): message → `Ros1Mycobot_communicationMycobotGetGripperValue`
- `mycobot_communication/MycobotGripperStatus` (message): message → `Ros1Mycobot_communicationMycobotGripperStatus`
- `mycobot_communication/MycobotPumpStatus` (message): message → `Ros1Mycobot_communicationMycobotPumpStatus`
- `mycobot_communication/MycobotSetAngles` (message): message → `Ros1Mycobot_communicationMycobotSetAngles`
- `mycobot_communication/MycobotSetCoords` (message): message → `Ros1Mycobot_communicationMycobotSetCoords`
- `mycobot_communication/MycobotSetEndType` (message): message → `Ros1Mycobot_communicationMycobotSetEndType`
- `mycobot_communication/MycobotSetFreshMode` (message): message → `Ros1Mycobot_communicationMycobotSetFreshMode`
- `mycobot_communication/MycobotSetToolReference` (message): message → `Ros1Mycobot_communicationMycobotSetToolReference`
- `mycobot_communication/MycobotSetVisionMode` (message): message → `Ros1Mycobot_communicationMycobotSetVisionMode`
- `mycobot_communication/GetAngles` (service): request → `Ros1Mycobot_communicationGetAnglesRequest`, response → `Ros1Mycobot_communicationGetAnglesResponse`
- `mycobot_communication/GetCoords` (service): request → `Ros1Mycobot_communicationGetCoordsRequest`, response → `Ros1Mycobot_communicationGetCoordsResponse`
- `mycobot_communication/GripperStatus` (service): request → `Ros1Mycobot_communicationGripperStatusRequest`, response → `Ros1Mycobot_communicationGripperStatusResponse`
- `mycobot_communication/PumpStatus` (service): request → `Ros1Mycobot_communicationPumpStatusRequest`, response → `Ros1Mycobot_communicationPumpStatusResponse`
- `mycobot_communication/SetAngles` (service): request → `Ros1Mycobot_communicationSetAnglesRequest`, response → `Ros1Mycobot_communicationSetAnglesResponse`
- `mycobot_communication/SetCoords` (service): request → `Ros1Mycobot_communicationSetCoordsRequest`, response → `Ros1Mycobot_communicationSetCoordsResponse`
- `mycobot_communication/SetEndType` (service): request → `Ros1Mycobot_communicationSetEndTypeRequest`, response → `Ros1Mycobot_communicationSetEndTypeResponse`
- `mycobot_communication/SetFreshMode` (service): request → `Ros1Mycobot_communicationSetFreshModeRequest`, response → `Ros1Mycobot_communicationSetFreshModeResponse`
- `mycobot_communication/SetToolReference` (service): request → `Ros1Mycobot_communicationSetToolReferenceRequest`, response → `Ros1Mycobot_communicationSetToolReferenceResponse`
- `mycobot_communication/SetVisionMode` (service): request → `Ros1Mycobot_communicationSetVisionModeRequest`, response → `Ros1Mycobot_communicationSetVisionModeResponse`
- `mycobot_pro450_communication/MycobotAngles` (message): message → `Ros1Mycobot_pro450_communicationMycobotAngles`
- `mycobot_pro450_communication/MycobotCoords` (message): message → `Ros1Mycobot_pro450_communicationMycobotCoords`
- `mycobot_pro450_communication/MycobotGetGripperValue` (message): message → `Ros1Mycobot_pro450_communicationMycobotGetGripperValue`
- `mycobot_pro450_communication/MycobotGripperStatus` (message): message → `Ros1Mycobot_pro450_communicationMycobotGripperStatus`
- `mycobot_pro450_communication/MycobotSetAngles` (message): message → `Ros1Mycobot_pro450_communicationMycobotSetAngles`
- `mycobot_pro450_communication/MycobotSetCoords` (message): message → `Ros1Mycobot_pro450_communicationMycobotSetCoords`
- `mycobot_pro450_communication/MycobotSetFreshMode` (message): message → `Ros1Mycobot_pro450_communicationMycobotSetFreshMode`
- `mycobot_pro450_communication/GetAngles` (service): request → `Ros1Mycobot_pro450_communicationGetAnglesRequest`, response → `Ros1Mycobot_pro450_communicationGetAnglesResponse`
- `mycobot_pro450_communication/GetCoords` (service): request → `Ros1Mycobot_pro450_communicationGetCoordsRequest`, response → `Ros1Mycobot_pro450_communicationGetCoordsResponse`
- `mycobot_pro450_communication/GetGripperValue` (service): request → `Ros1Mycobot_pro450_communicationGetGripperValueRequest`, response → `Ros1Mycobot_pro450_communicationGetGripperValueResponse`
- `mycobot_pro450_communication/GripperStatus` (service): request → `Ros1Mycobot_pro450_communicationGripperStatusRequest`, response → `Ros1Mycobot_pro450_communicationGripperStatusResponse`
- `mycobot_pro450_communication/SetAngles` (service): request → `Ros1Mycobot_pro450_communicationSetAnglesRequest`, response → `Ros1Mycobot_pro450_communicationSetAnglesResponse`
- `mycobot_pro450_communication/SetCoords` (service): request → `Ros1Mycobot_pro450_communicationSetCoordsRequest`, response → `Ros1Mycobot_pro450_communicationSetCoordsResponse`
- `mycobot_pro450_communication/SetFreshMode` (service): request → `Ros1Mycobot_pro450_communicationSetFreshModeRequest`, response → `Ros1Mycobot_pro450_communicationSetFreshModeResponse`
- `mypalletizer_communication/MypalAngles` (message): message → `Ros1Mypalletizer_communicationMypalAngles`
- `mypalletizer_communication/MypalCoords` (message): message → `Ros1Mypalletizer_communicationMypalCoords`
- `mypalletizer_communication/MypalGripperStatus` (message): message → `Ros1Mypalletizer_communicationMypalGripperStatus`
- `mypalletizer_communication/MypalPumpStatus` (message): message → `Ros1Mypalletizer_communicationMypalPumpStatus`
- `mypalletizer_communication/MypalSetAngles` (message): message → `Ros1Mypalletizer_communicationMypalSetAngles`
- `mypalletizer_communication/MypalSetCoords` (message): message → `Ros1Mypalletizer_communicationMypalSetCoords`
- `mypalletizer_communication/GetAngles` (service): request → `Ros1Mypalletizer_communicationGetAnglesRequest`, response → `Ros1Mypalletizer_communicationGetAnglesResponse`
- `mypalletizer_communication/GetCoords` (service): request → `Ros1Mypalletizer_communicationGetCoordsRequest`, response → `Ros1Mypalletizer_communicationGetCoordsResponse`
- `mypalletizer_communication/GripperStatus` (service): request → `Ros1Mypalletizer_communicationGripperStatusRequest`, response → `Ros1Mypalletizer_communicationGripperStatusResponse`
- `mypalletizer_communication/PumpStatus` (service): request → `Ros1Mypalletizer_communicationPumpStatusRequest`, response → `Ros1Mypalletizer_communicationPumpStatusResponse`
- `mypalletizer_communication/SetAngles` (service): request → `Ros1Mypalletizer_communicationSetAnglesRequest`, response → `Ros1Mypalletizer_communicationSetAnglesResponse`
- `mypalletizer_communication/SetCoords` (service): request → `Ros1Mypalletizer_communicationSetCoordsRequest`, response → `Ros1Mypalletizer_communicationSetCoordsResponse`
- `ultraarm_communication/MycobotAngles` (message): message → `Ros1Ultraarm_communicationMycobotAngles`
- `ultraarm_communication/MycobotCoords` (message): message → `Ros1Ultraarm_communicationMycobotCoords`
- `ultraarm_communication/MycobotGetGripperValue` (message): message → `Ros1Ultraarm_communicationMycobotGetGripperValue`
- `ultraarm_communication/MycobotGripperStatus` (message): message → `Ros1Ultraarm_communicationMycobotGripperStatus`
- `ultraarm_communication/MycobotSetAngles` (message): message → `Ros1Ultraarm_communicationMycobotSetAngles`
- `ultraarm_communication/MycobotSetCoords` (message): message → `Ros1Ultraarm_communicationMycobotSetCoords`
- `ultraarm_communication/MycobotSetFreshMode` (message): message → `Ros1Ultraarm_communicationMycobotSetFreshMode`
- `ultraarm_communication/GetAngles` (service): request → `Ros1Ultraarm_communicationGetAnglesRequest`, response → `Ros1Ultraarm_communicationGetAnglesResponse`
- `ultraarm_communication/GetCoords` (service): request → `Ros1Ultraarm_communicationGetCoordsRequest`, response → `Ros1Ultraarm_communicationGetCoordsResponse`
- `ultraarm_communication/GetGripperValue` (service): request → `Ros1Ultraarm_communicationGetGripperValueRequest`, response → `Ros1Ultraarm_communicationGetGripperValueResponse`
- `ultraarm_communication/GripperStatus` (service): request → `Ros1Ultraarm_communicationGripperStatusRequest`, response → `Ros1Ultraarm_communicationGripperStatusResponse`
- `ultraarm_communication/SetAngles` (service): request → `Ros1Ultraarm_communicationSetAnglesRequest`, response → `Ros1Ultraarm_communicationSetAnglesResponse`
- `ultraarm_communication/SetCoords` (service): request → `Ros1Ultraarm_communicationSetCoordsRequest`, response → `Ros1Ultraarm_communicationSetCoordsResponse`
- `ultraarm_communication/SetFreshMode` (service): request → `Ros1Ultraarm_communicationSetFreshModeRequest`, response → `Ros1Ultraarm_communicationSetFreshModeResponse`

Immutable upstream sources:

- [elephantrobotics/mycobot_ros @ c0d6fbe8f7d9b18b46a9fcb0b041e5bc2d66196b](https://github.com/elephantrobotics/mycobot_ros/tree/c0d6fbe8f7d9b18b46a9fcb0b041e5bc2d66196b)
