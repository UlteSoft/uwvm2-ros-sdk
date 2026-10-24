# boston_dynamics lua 完整 API 目录

## ros2

### `uwvm_spot_bridge/srv/State_Request`

符号：`Ros2Uwvm_spot_bridgeSrvState_Request`; 24..24 bytes.

Codec identity：`UWVMROS1_9becf278bc168ed6d5b15fe7f1ec35b83e274de8a5173cb2335948306bc7a47e`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `budget_ns`: `uint64`.

### `uwvm_spot_bridge/srv/State_Response`

符号：`Ros2Uwvm_spot_bridgeSrvState_Response`; 57..21433 bytes.

Codec identity：`UWVMROS1_ab07340e952c2ff63f35dad37e9d4837a280eee9ce477ac5be4a05f82408ce0a`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `error`: `uint32`.
- `unknown`: `bool`.
- `acquisition_sec`: `int64`.
- `acquisition_nsec`: `uint32`.
- `joint_names`: `string`; sequence 32; text 128 bytes.
- `joint_position`: `float64`; sequence 32.
- `joint_velocity`: `float64`; sequence 32.
- `joint_load`: `float64`; sequence 32.
- `motor_power_state`: `uint32`.
- `native_proto`: `uint8`; sequence 16384.

### `uwvm_spot_bridge/srv/Lease_Request`

符号：`Ros2Uwvm_spot_bridgeSrvLease_Request`; 24..24 bytes.

Codec identity：`UWVMROS1_a9aacd78dc6ae9d18fb6bb0d185797c6463c882edadf251eb5c21e3aa3c538a1`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `budget_ns`: `uint64`.

### `uwvm_spot_bridge/srv/Lease_Response`

符号：`Ros2Uwvm_spot_bridgeSrvLease_Response`; 22..22 bytes.

Codec identity：`UWVMROS1_ce875eb701b607c01f8a19dc8fcff607829824ad99276f906c7fc8fc5567f6d3`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `error`: `uint32`.
- `unknown`: `bool`.
- `provider_holds_body_lease`: `bool`.

### `uwvm_spot_bridge/srv/Command_Request`

符号：`Ros2Uwvm_spot_bridgeSrvCommand_Request`; 24..24 bytes.

Codec identity：`UWVMROS1_29996d4dacb4ea847c5d629cb634d4aa5e2451627d2469d6cdf301cc007968f8`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `budget_ns`: `uint64`.

### `uwvm_spot_bridge/srv/Command_Response`

符号：`Ros2Uwvm_spot_bridgeSrvCommand_Response`; 26..26 bytes.

Codec identity：`UWVMROS1_e35556e7439c8d5ca79cb0f4ad23cf73c85a8a79d1382cde398dd85082dd1733`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `error`: `uint32`.
- `unknown`: `bool`.
- `native_accepted`: `bool`.
- `native_command_id`: `uint32`.

### `uwvm_spot_bridge/srv/Velocity_Request`

符号：`Ros2Uwvm_spot_bridgeSrvVelocity_Request`; 56..56 bytes.

Codec identity：`UWVMROS1_ffe3b1dec91a25cd84d221ba4ebeae576bd7d6b96f258579c0b3d280cad79f8d`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `budget_ns`: `uint64`.
- `x_mps`: `float64`.
- `y_mps`: `float64`.
- `yaw_rps`: `float64`.
- `duration_ns`: `uint64`.

### `uwvm_spot_bridge/srv/Velocity_Response`

符号：`Ros2Uwvm_spot_bridgeSrvVelocity_Response`; 26..26 bytes.

Codec identity：`UWVMROS1_031f37beeb5a03c4e65d4be8fd70bc680408d110a020e066bea593d86498401a`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `error`: `uint32`.
- `unknown`: `bool`.
- `native_accepted`: `bool`.
- `native_command_id`: `uint32`.

### `uwvm_spot_bridge/srv/Feedback_Request`

符号：`Ros2Uwvm_spot_bridgeSrvFeedback_Request`; 32..32 bytes.

Codec identity：`UWVMROS1_de64ce283f49f5c324912ec262f7d15b6fd828879c01039d455c765743c45ba3`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `budget_ns`: `uint64`.
- `command_token`: `uint64`.

### `uwvm_spot_bridge/srv/Feedback_Response`

符号：`Ros2Uwvm_spot_bridgeSrvFeedback_Response`; 45..16429 bytes.

Codec identity：`UWVMROS1_4a19efe7f64fe0d7f6f13abe8980fb55503d3b897af64abc73bbd236587adfe8`.

- `token`: `uint64`.
- `nonce`: `uint64`.
- `error`: `uint32`.
- `unknown`: `bool`.
- `native_command_id`: `uint32`.
- `has_full_body_feedback`: `bool`.
- `full_body_status`: `uint32`.
- `has_mobility_feedback`: `bool`.
- `mobility_status`: `uint32`.
- `feedback_kind`: `uint8`.
- `has_subcommand_status`: `bool`.
- `subcommand_status`: `uint32`.
- `native_proto`: `uint8`; sequence 16384.

## 接口组件

- `uwvm_spot_bridge/srv/State` (service): request → `uwvm_spot_bridge/srv/State_Request`, response → `uwvm_spot_bridge/srv/State_Response`.
- `uwvm_spot_bridge/srv/Lease` (service): request → `uwvm_spot_bridge/srv/Lease_Request`, response → `uwvm_spot_bridge/srv/Lease_Response`.
- `uwvm_spot_bridge/srv/Command` (service): request → `uwvm_spot_bridge/srv/Command_Request`, response → `uwvm_spot_bridge/srv/Command_Response`.
- `uwvm_spot_bridge/srv/Velocity` (service): request → `uwvm_spot_bridge/srv/Velocity_Request`, response → `uwvm_spot_bridge/srv/Velocity_Response`.
- `uwvm_spot_bridge/srv/Feedback` (service): request → `uwvm_spot_bridge/srv/Feedback_Request`, response → `uwvm_spot_bridge/srv/Feedback_Response`.
