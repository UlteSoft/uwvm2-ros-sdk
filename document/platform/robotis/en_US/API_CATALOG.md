# robotis complete API catalog

This index preserves original declarations, field order, widths, constants, defaults and SDK quotas. A codec identity is separate from a native ROS registry identity. Actual acceptance is recorded in the delivery coverage.json.

## humble

ros2: 34 records, 5 services, 1 actions.

Catalog: `share/platform/robotis/catalogs/humble/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repositories': [{'id': 'common_humble', 'repository': 'ros2/common_interfaces', 'url': 'https://github.com/ros2/common_interfaces', 'branch': 'humble', 'commit': '08434490d3e4abd37ccc5462cdde69b88853b5b8', 'tree_git_sha1': 'c7cb0ba488266ded0627d8b3c96ee19bf5590b46', 'default_authority': [], 'qualification': 'Original standard source capture, no installed ROS or native identity qualification.', 'retained_archive_augmentation': {'files': [{'path': 'diagnostic_msgs/srv/AddDiagnostics.srv', 'bytes': 1458, 'sha256': 'e88df6a6769a9ee85480aa2b1adac052fa368b4a00016f1a9b8422fdacdf1767', 'git_blob_sha1': '413c4019d73e3860dd09c51b5d6a078bf57a7bcb'}, {'path': 'diagnostic_msgs/srv/SelfTest.srv', 'bytes': 52, 'sha256': '3a95f0dfd99d48a34b58608a80443e9bcd343ebd76d8865f58f8b9b312b6d38f', 'git_blob_sha1': 'ee2974d4270d5c37aedd4b2253d0075b91582f74'}, {'path': 'nav_msgs/srv/GetMap.srv', 'bytes': 110, 'sha256': 'b4bdbb1875bfd2b22596e238cb9571f0baec6505032f7df8cc7e5cd47bfd3adc', 'git_blob_sha1': '91be6a7bdf5593b58a1815be2e5f2096f654d68d'}, {'path': 'nav_msgs/srv/GetPlan.srv', 'bytes': 400, 'sha256': '84582c21447bd35286bbf93b9ca80de69e964cad577fa6ac44aabdbba43cba2e', 'git_blob_sha1': '689290a632bef9aff8f5186211b387e03f237b64'}, {'path': 'nav_msgs/srv/LoadMap.srv', 'bytes': 473, 'sha256': '301ea2a2226e8723ae8a421eefc4dfbc0e3ed7819402583bd13c034f0802d3aa', 'git_blob_sha1': '3b9caaad47004e34d800ef84aae0553a8e2e5077'}, {'path': 'nav_msgs/srv/SetMap.srv', 'bytes': 280, 'sha256': '14b58f196f2eafdeb75d2b913af3687665cce880aef970e03e6a6c014cd6fbed', 'git_blob_sha1': '5270d458bd409ad922289e457388af8930afd2f5'}, {'path': 'sensor_msgs/srv/SetCameraInfo.srv', 'bytes': 597, 'sha256': 'd7e720e522387083ff70c0b9e8aacec379c416d8d04f3cdca55de2008beba1f3', 'git_blob_sha1': '98b5b261d409d1b44fd7b50586777d380ed46249'}, {'path': 'std_srvs/srv/Empty.srv', 'bytes': 4, 'sha256': 'f52d711103d50a437830c6fbcd04fb4bab49a0f82f6d26d1c791c6e8488dd090', 'git_blob_sha1': 'ed97d539c095cf1413af30cc23dea272095b97dd'}, {'path': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664', 'git_blob_sha1': '93003477744daee97782eeafe272eccece948b7b'}, {'path': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca', 'git_blob_sha1': '371dfd22e1508994dacdf1fa93290f46d138fcaa'}, {'path': 'visualization_msgs/srv/GetInteractiveMarkers.srv', 'bytes': 287, 'sha256': 'a5291d771d7568d176844b2322c5d91b389370e8c25015a5ae00d63fac4471ea', 'git_blob_sha1': '493e885ec305e7d0beadda281c3297ea341fdfba'}], 'scope': 'Unchanged bodies recovered from the previously verified original archive, not newly downloaded.'}}, {'id': 'driver_humble', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3', 'branch': 'humble', 'commit': '90a68bd2e3c61c12966779da89d8eeaec82730e9', 'tree_git_sha1': 'cdf2659c4c74b1f6868aca21ea099f7daa9e34ae', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3/tar.gz/90a68bd2e3c61c12966779da89d8eeaec82730e9', 'bytes': 8862240, 'sha256': '8f110df576bb5f346e04550061f82edfa67fed0cc2d19a79772315adc92606a9'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'msgs_humble', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3_msgs', 'branch': 'humble', 'commit': 'cdee60f7618b9ed2f85f65259c0f96e3f02b1c55', 'tree_git_sha1': '13ea568ce1203d4ee01a33ab15469c74777f11df', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3_msgs/tar.gz/cdee60f7618b9ed2f85f65259c0f96e3f02b1c55', 'bytes': 9051, 'sha256': '71f82398f49084b041c2bb52c398caea484fe4324aed70405c4df4e718d9153b'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'rcl_humble', 'repository': 'ros2/rcl_interfaces', 'url': 'https://github.com/ros2/rcl_interfaces', 'branch': 'humble', 'commit': '82776fc9068d1e0cd4af11c2e2700195994b2eb1', 'tree_git_sha1': '6baa0af441f3f9b1a1c3f6d118373f3c92f5973e', 'default_authority': [], 'qualification': 'Original standard source capture, no installed ROS or native identity qualification.', 'retained_archive_augmentation': {'files': [{'path': 'action_msgs/srv/CancelGoal.srv', 'bytes': 1453, 'sha256': '5f4dc57f41cab2fd1987a61d5821282ece5075e38e5044f90126ab62c98fac20', 'git_blob_sha1': '86afbdbf4eacb2c55c1faf8da3a17946c5f0fa9b'}, {'path': 'composition_interfaces/srv/ListNodes.srv', 'bytes': 167, 'sha256': '7b01c631b25d12e91315098748bb526f19101c70041613704ac8f09b7482db63', 'git_blob_sha1': '4b1421eb4031b37e38cd90f614cd303e66b5d9e3'}, {'path': 'composition_interfaces/srv/LoadNode.srv', 'bytes': 1253, 'sha256': 'db83f2776f37bf2cbe94ba8d3e8fefb0bca5b3edaa978e2b151c16f41bb47f11', 'git_blob_sha1': 'ffd243f3a518362e11ccf059417b5a6bd037a8d1'}, {'path': 'composition_interfaces/srv/UnloadNode.srv', 'bytes': 221, 'sha256': '6b6106bb2ba8ec9c8fd3812ab57a57775da388d12754bc6b266e1a883618f4d9', 'git_blob_sha1': '0fa36a516759a491a799a7f15a84a54f30ff5189'}, {'path': 'lifecycle_msgs/srv/ChangeState.srv', 'bytes': 217, 'sha256': 'a724c2437f5dc7eda1120f79ac30f945fea1475ac62654936f0d04530b1aef23', 'git_blob_sha1': '1bad3d1012bcd67269d05c893770be9b4dfa48d5'}, {'path': 'lifecycle_msgs/srv/GetAvailableStates.srv', 'bytes': 85, 'sha256': 'ab291560449fc5914c35cb9a9ec14cedfa67f6b643d4b7abb6c98cfb29e76f0d', 'git_blob_sha1': '2faa79b03d1f094781b03ced38e553fe984196e2'}, {'path': 'lifecycle_msgs/srv/GetAvailableTransitions.srv', 'bytes': 112, 'sha256': 'b6081c35e61f405e999e10044e9a68f862347da3c133070fe04dad9b54f2ecea', 'git_blob_sha1': 'a7f4e506626903c8b90d1297415e51004ada8a17'}, {'path': 'lifecycle_msgs/srv/GetState.srv', 'bytes': 71, 'sha256': 'fc5e96531728baa4fcbc78d79b93e4c84e5787e288cc49d8c76ce8fcfef67292', 'git_blob_sha1': 'b2569fa65ba13d3de35c482587332bd8fcb98458'}, {'path': 'rcl_interfaces/srv/DescribeParameters.srv', 'bytes': 278, 'sha256': '6047a59261d6c19a4e8e921f06702cc0672e0e8b6a6854fe601b30edf02e5981', 'git_blob_sha1': 'a8f0b9162c4bb92b0eb003ef9d8248394c53bec7'}, {'path': 'rcl_interfaces/srv/GetParameterTypes.srv', 'bytes': 322, 'sha256': 'e5745ed79201f3ea515c13917f8d28780d16ed53c35f1b8d0f27c89945777bbe', 'git_blob_sha1': 'cdf0e78d8727c6304d0baab30fc3c8ee886046fe'}, {'path': 'rcl_interfaces/srv/GetParameters.srv', 'bytes': 518, 'sha256': '3ae49531812d8813350fad5261905a88939f8352f8a08fd238dcae19a08e59f7', 'git_blob_sha1': '1822479bca1c947446fda9b4a158cfdb723b8e61'}, {'path': 'rcl_interfaces/srv/ListParameters.srv', 'bytes': 369, 'sha256': '8254b67551049b2dc477d2fad286b645588227188482436d1b3bc0041731ed8b', 'git_blob_sha1': 'ee1b7a6ffa6f40d27f59d369e24e4eccca9c378f'}, {'path': 'rcl_interfaces/srv/SetParameters.srv', 'bytes': 158, 'sha256': '6a0dcce330e51f954350e4ca3095fff7a7c0a0fa1c9d986b1dad340afb05f70a', 'git_blob_sha1': '97d11796b67e2c6deb0deafb12dbadc87546cd9e'}, {'path': 'rcl_interfaces/srv/SetParametersAtomically.srv', 'bytes': 238, 'sha256': '8593b435156b70299a4664839dc1b799ff22a7b7c0c27cec7b33bcc336389954', 'git_blob_sha1': '2df928a4fddd5a2accd9363821ca1bf9abe9b956'}, {'path': 'test_msgs/action/NestedMessage.action', 'bytes': 381, 'sha256': 'cb976305a0af5bc92868e74e9d0e9d088285608c668b09195c8e7d53089ae835', 'git_blob_sha1': 'f0c7cf279cfbfe5210212cd3f3297bd605792d16'}], 'scope': 'Unchanged bodies recovered from the previously verified original archive, not newly downloaded.'}}]}`.

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### geometry_msgs/msg/Point

`Ros2Geometry_msgsMsgPoint`; 24..24 canonical bytes. `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | 0.0 |
| y | float64 | scalar | 0 | 0.0 |
| z | float64 | scalar | 0 | 0.0 |
| w | float64 | scalar | 0 | 1.0 |

### geometry_msgs/msg/Pose

`Ros2Geometry_msgsMsgPose`; 56..56 canonical bytes. `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/msg/Point | scalar | 0 | None |
| orientation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### geometry_msgs/msg/PoseWithCovariance

`Ros2Geometry_msgsMsgPoseWithCovariance`; 344..344 canonical bytes. `UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/msg/Pose | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 canonical bytes. `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| translation | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| rotation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### geometry_msgs/msg/TransformStamped

`Ros2Geometry_msgsMsgTransformStamped`; 72..456 canonical bytes. `UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| transform | geometry_msgs/msg/Transform | scalar | 0 | None |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### geometry_msgs/msg/TwistStamped

`Ros2Geometry_msgsMsgTwistStamped`; 60..188 canonical bytes. `UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| twist | geometry_msgs/msg/Twist | scalar | 0 | None |

### geometry_msgs/msg/TwistWithCovariance

`Ros2Geometry_msgsMsgTwistWithCovariance`; 336..336 canonical bytes. `UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| twist | geometry_msgs/msg/Twist | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### nav_msgs/msg/Odometry

`Ros2Nav_msgsMsgOdometry`; 696..1080 canonical bytes. `UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| pose | geometry_msgs/msg/PoseWithCovariance | scalar | 0 | None |
| twist | geometry_msgs/msg/TwistWithCovariance | scalar | 0 | None |

### sensor_msgs/msg/BatteryState

`Ros2Sensor_msgsMsgBatteryState`; 60..828 canonical bytes. `UWVMROS1_6fda2e20edad173e5f8977e1f82f525f36305371e3b1f5e7e628813b5121b11f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| voltage | float32 | scalar | 0 | None |
| temperature | float32 | scalar | 0 | None |
| current | float32 | scalar | 0 | None |
| charge | float32 | scalar | 0 | None |
| capacity | float32 | scalar | 0 | None |
| design_capacity | float32 | scalar | 0 | None |
| percentage | float32 | scalar | 0 | None |
| power_supply_status | uint8 | scalar | 0 | None |
| power_supply_health | uint8 | scalar | 0 | None |
| power_supply_technology | uint8 | scalar | 0 | None |
| present | bool | scalar | 0 | None |
| cell_voltage | float32 | sequence/16 | 0 | None |
| cell_temperature | float32 | sequence/16 | 0 | None |
| location | string | scalar | 256 | None |
| serial_number | string | scalar | 256 | None |

Constants (not part of instance wire bytes):
- `POWER_SUPPLY_STATUS_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_STATUS_CHARGING` (uint8): `1`
- `POWER_SUPPLY_STATUS_DISCHARGING` (uint8): `2`
- `POWER_SUPPLY_STATUS_NOT_CHARGING` (uint8): `3`
- `POWER_SUPPLY_STATUS_FULL` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_HEALTH_GOOD` (uint8): `1`
- `POWER_SUPPLY_HEALTH_OVERHEAT` (uint8): `2`
- `POWER_SUPPLY_HEALTH_DEAD` (uint8): `3`
- `POWER_SUPPLY_HEALTH_OVERVOLTAGE` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNSPEC_FAILURE` (uint8): `5`
- `POWER_SUPPLY_HEALTH_COLD` (uint8): `6`
- `POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE` (uint8): `7`
- `POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE` (uint8): `8`
- `POWER_SUPPLY_TECHNOLOGY_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_TECHNOLOGY_NIMH` (uint8): `1`
- `POWER_SUPPLY_TECHNOLOGY_LION` (uint8): `2`
- `POWER_SUPPLY_TECHNOLOGY_LIPO` (uint8): `3`
- `POWER_SUPPLY_TECHNOLOGY_LIFE` (uint8): `4`
- `POWER_SUPPLY_TECHNOLOGY_NICD` (uint8): `5`
- `POWER_SUPPLY_TECHNOLOGY_LIMN` (uint8): `6`

### sensor_msgs/msg/Imu

`Ros2Sensor_msgsMsgImu`; 308..436 canonical bytes. `UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| orientation | geometry_msgs/msg/Quaternion | scalar | 0 | None |
| orientation_covariance | float64 | array/9 | 0 | None |
| angular_velocity | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular_velocity_covariance | float64 | array/9 | 0 | None |
| linear_acceleration | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| linear_acceleration_covariance | float64 | array/9 | 0 | None |

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..468 canonical bytes. `UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| name | string | sequence/2 | 128 | None |
| position | float64 | sequence/2 | 0 | None |
| velocity | float64 | sequence/2 | 0 | None |
| effort | float64 | sequence/2 | 0 | None |

### sensor_msgs/msg/LaserScan

`Ros2Sensor_msgsMsgLaserScan`; 48..8368 canonical bytes. `UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| angle_min | float32 | scalar | 0 | None |
| angle_max | float32 | scalar | 0 | None |
| angle_increment | float32 | scalar | 0 | None |
| time_increment | float32 | scalar | 0 | None |
| scan_time | float32 | scalar | 0 | None |
| range_min | float32 | scalar | 0 | None |
| range_max | float32 | scalar | 0 | None |
| ranges | float32 | sequence/1024 | 0 | None |
| intensities | float32 | sequence/1024 | 0 | None |

### sensor_msgs/msg/MagneticField

`Ros2Sensor_msgsMsgMagneticField`; 108..236 canonical bytes. `UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| magnetic_field | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| magnetic_field_covariance | float64 | array/9 | 0 | None |

### std_srvs/srv/SetBool_Request

`Ros2Std_srvsSrvSetBool_Request`; 1..1 canonical bytes. `UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | bool | scalar | 0 | None |

### std_srvs/srv/SetBool_Response

`Ros2Std_srvsSrvSetBool_Response`; 5..261 canonical bytes. `UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### std_srvs/srv/Trigger_Request

`Ros2Std_srvsSrvTrigger_Request`; 0..0 canonical bytes. `UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### std_srvs/srv/Trigger_Response

`Ros2Std_srvsSrvTrigger_Response`; 5..261 canonical bytes. `UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### turtlebot3_msgs/action/Patrol_Goal

`Ros2Turtlebot3_msgsActionPatrol_Goal`; 24..24 canonical bytes. `UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| goal | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### turtlebot3_msgs/action/Patrol_Result

`Ros2Turtlebot3_msgsActionPatrol_Result`; 4..260 canonical bytes. `UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| result | string | scalar | 256 | None |

### turtlebot3_msgs/action/Patrol_Feedback

`Ros2Turtlebot3_msgsActionPatrol_Feedback`; 4..260 canonical bytes. `UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | string | scalar | 256 | None |

### turtlebot3_msgs/msg/SensorState

`Ros2Turtlebot3_msgsMsgSensorState`; 40..168 canonical bytes. `UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| bumper | uint8 | scalar | 0 | None |
| cliff | float32 | scalar | 0 | None |
| sonar | float32 | scalar | 0 | None |
| illumination | float32 | scalar | 0 | None |
| led | uint8 | scalar | 0 | None |
| button | uint8 | scalar | 0 | None |
| torque | bool | scalar | 0 | None |
| left_encoder | int32 | scalar | 0 | None |
| right_encoder | int32 | scalar | 0 | None |
| battery | float32 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `BUMPER_FORWARD` (uint8): `1`
- `BUMPER_BACKWARD` (uint8): `2`
- `CLIFF` (uint8): `1`
- `SONAR` (uint8): `1`
- `ILLUMINATION` (uint8): `1`
- `BUTTON0` (uint8): `1`
- `BUTTON1` (uint8): `2`
- `ERROR_LEFT_MOTOR` (uint8): `1`
- `ERROR_RIGHT_MOTOR` (uint8): `2`
- `TORQUE_ON` (uint8): `1`
- `TORQUE_OFF` (uint8): `2`

### turtlebot3_msgs/msg/Sound

`Ros2Turtlebot3_msgsMsgSound`; 1..1 canonical bytes. `UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `OFF` (uint8): `0`
- `ON` (uint8): `1`
- `LOW_BATTERY` (uint8): `2`
- `ERROR` (uint8): `3`
- `BUTTON1` (uint8): `4`
- `BUTTON2` (uint8): `5`

### turtlebot3_msgs/msg/VersionInfo

`Ros2Turtlebot3_msgsMsgVersionInfo`; 12..780 canonical bytes. `UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| hardware | string | scalar | 256 | None |
| firmware | string | scalar | 256 | None |
| software | string | scalar | 256 | None |

### turtlebot3_msgs/srv/Dqn_Request

`Ros2Turtlebot3_msgsSrvDqn_Request`; 2..2 canonical bytes. `UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| action | uint8 | scalar | 0 | None |
| init | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Dqn_Response

`Ros2Turtlebot3_msgsSrvDqn_Response`; 9..521 canonical bytes. `UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | float32 | sequence/128 | 0 | None |
| reward | float32 | scalar | 0 | None |
| done | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Goal_Request

`Ros2Turtlebot3_msgsSrvGoal_Request`; 0..0 canonical bytes. `UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### turtlebot3_msgs/srv/Goal_Response

`Ros2Turtlebot3_msgsSrvGoal_Response`; 9..9 canonical bytes. `UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose_x | float32 | scalar | 0 | None |
| pose_y | float32 | scalar | 0 | None |
| success | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Sound_Request

`Ros2Turtlebot3_msgsSrvSound_Request`; 1..1 canonical bytes. `UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

### turtlebot3_msgs/srv/Sound_Response

`Ros2Turtlebot3_msgsSrvSound_Response`; 5..261 canonical bytes. `UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### Complete protocol components

- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 420, 'sha256': '0e6f429967a29ba34b224c5c0236c938084e82ee1279deeaf0666768cba220ae'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `geometry_msgs/msg/Point` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Point', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Point.msg', 'bytes': 84, 'sha256': 'eb4c07e591cf0269ccb17245dcd4f998162feb09cc8add85fa082c8a30bfc91d'}, 'component': '', 'owner': 'geometry_msgs/msg/Point', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `geometry_msgs/msg/Pose` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Pose', 'members': [{'name': 'position', 'type': 'geometry_msgs/msg/Point', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Pose.msg', 'bytes': 119, 'sha256': '3eceb77c63ebbb544c11d7f991e475e9819e0cf534deb1a879392c1b3dc997de'}, 'component': '', 'owner': 'geometry_msgs/msg/Pose', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/PoseWithCovariance` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/PoseWithCovariance', 'members': [{'name': 'pose', 'type': 'geometry_msgs/msg/Pose', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/PoseWithCovariance.msg', 'bytes': 323, 'sha256': 'a22f234e91b9fcd4ba0c5b533496b43c62d7f6ade39082212ac9835679d29f94'}, 'component': '', 'owner': 'geometry_msgs/msg/PoseWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 344, 'maximum': 344, 'nodes': 48, 'depth': 4, 'codec_identity': 'UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 344, 'constants': []}}`.
- `geometry_msgs/msg/Quaternion` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Quaternion', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'w', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '1.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Quaternion.msg', 'bytes': 116, 'sha256': '298495eb67a139642ffd37cc9029eae085e6c39a8789828b7517868a487939ed'}, 'component': '', 'owner': 'geometry_msgs/msg/Quaternion', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 32, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 32, 'constants': []}}`.
- `geometry_msgs/msg/Transform` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Transform', 'members': [{'name': 'translation', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'rotation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Transform.msg', 'bytes': 118, 'sha256': 'c8916279f0a429dd9561158bd2133bc4e2d780277c3c594116b240a27e7a2993'}, 'component': '', 'owner': 'geometry_msgs/msg/Transform', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/TransformStamped` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TransformStamped', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'transform', 'type': 'geometry_msgs/msg/Transform', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TransformStamped.msg', 'bytes': 738, 'sha256': '7597a8f00c93041c86f91ee3a91ea79d726d6913e2e63ffd6b338eed6fca8de6'}, 'component': '', 'owner': 'geometry_msgs/msg/TransformStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 72, 'maximum': 456, 'nodes': 17, 'depth': 4, 'codec_identity': 'UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 456, 'constants': []}}`.
- `geometry_msgs/msg/Twist` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Twist', 'members': [{'name': 'linear', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Twist.msg', 'bytes': 116, 'sha256': 'ed471ef861f65af991b1f64d66ef941dd41dd4c0702f6222512b1a16c62d58b0'}, 'component': '', 'owner': 'geometry_msgs/msg/Twist', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 48, 'nodes': 9, 'depth': 3, 'codec_identity': 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 48, 'constants': []}}`.
- `geometry_msgs/msg/TwistStamped` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TwistStamped', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/msg/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistStamped.msg', 'bytes': 92, 'sha256': 'ffc9d5925412410b28d601c55cf386a0b3e4d5dba00920fbafb98d7201f582ca'}, 'component': '', 'owner': 'geometry_msgs/msg/TwistStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 60, 'maximum': 188, 'nodes': 15, 'depth': 4, 'codec_identity': 'UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 188, 'constants': []}}`.
- `geometry_msgs/msg/TwistWithCovariance` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TwistWithCovariance', 'members': [{'name': 'twist', 'type': 'geometry_msgs/msg/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistWithCovariance.msg', 'bytes': 326, 'sha256': '5690a1f109d4962c73b5ca7f3673c48052d02f37b6a38fe2fb37c899cf555c45'}, 'component': '', 'owner': 'geometry_msgs/msg/TwistWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 336, 'maximum': 336, 'nodes': 47, 'depth': 4, 'codec_identity': 'UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 336, 'constants': []}}`.
- `geometry_msgs/msg/Vector3` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Vector3', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Vector3.msg', 'bytes': 251, 'sha256': 'd8b9ea9aad1f424faf4d2b94dae1e1368af1e5d59de11aeed019399cff7f9e1d'}, 'component': '', 'owner': 'geometry_msgs/msg/Vector3', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `nav_msgs/msg/Odometry` (message): `{'message': {'version': 2, 'name': 'nav_msgs/msg/Odometry', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'geometry_msgs/msg/PoseWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/msg/TwistWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'nav_msgs/msg/Odometry.msg', 'bytes': 645, 'sha256': 'bb00547ddf498cdbae46fd991d9d85a59f507e12e7cf01fb18a86f1111524f4f'}, 'component': '', 'owner': 'nav_msgs/msg/Odometry', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 696, 'maximum': 1080, 'nodes': 102, 'depth': 5, 'codec_identity': 'UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1080, 'constants': []}}`.
- `sensor_msgs/msg/BatteryState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/BatteryState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'voltage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temperature', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'current', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'charge', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'design_capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'percentage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_status', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_health', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_technology', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'present', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_voltage', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_temperature', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'location', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'serial_number', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/BatteryState.msg', 'bytes': 2603, 'sha256': 'b3631bd76ed2718928e2b61831e73fae772992bb4bbfe473c8749521258283e6'}, 'component': '', 'owner': 'sensor_msgs/msg/BatteryState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 60, 'maximum': 828, 'nodes': 53, 'depth': 4, 'codec_identity': 'UWVMROS1_6fda2e20edad173e5f8977e1f82f525f36305371e3b1f5e7e628813b5121b11f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 828, 'constants': [{'name': 'POWER_SUPPLY_STATUS_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_STATUS_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_STATUS_DISCHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_STATUS_NOT_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_STATUS_FULL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_HEALTH_GOOD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_HEALTH_OVERHEAT', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_HEALTH_DEAD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_HEALTH_OVERVOLTAGE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNSPEC_FAILURE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_HEALTH_COLD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}, {'name': 'POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '7', 'value': '7'}, {'name': 'POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NIMH', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIPO', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIFE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NICD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIMN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}]}}`.
- `sensor_msgs/msg/Imu` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/Imu', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/Imu.msg', 'bytes': 1211, 'sha256': '5800b7c2e6d3afed966ae229b1559f6e762c792ad34a88e55ad4288d8bbbd34b'}, 'component': '', 'owner': 'sensor_msgs/msg/Imu', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 308, 'maximum': 436, 'nodes': 49, 'depth': 4, 'codec_identity': 'UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 436, 'constants': []}}`.
- `sensor_msgs/msg/JointState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/JointState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 2, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/JointState.msg', 'bytes': 999, 'sha256': '711d1771a002c7190e5bbe746a163a67477c1e2a45482a64f1fe339815ca6f5d'}, 'component': '', 'owner': 'sensor_msgs/msg/JointState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 468, 'nodes': 18, 'depth': 4, 'codec_identity': 'UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 468, 'constants': []}}`.
- `sensor_msgs/msg/LaserScan` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/LaserScan', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'scan_time', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ranges', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'intensities', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/LaserScan.msg', 'bytes': 1593, 'sha256': 'bb688599d8787fa1b48393e50064013e58449055eb60e501eb01a07e8bc03357'}, 'component': '', 'owner': 'sensor_msgs/msg/LaserScan', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 8368, 'nodes': 2063, 'depth': 4, 'codec_identity': 'UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8368, 'constants': []}}`.
- `sensor_msgs/msg/MagneticField` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/MagneticField', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/MagneticField.msg', 'bytes': 1183, 'sha256': 'b1bf534a4175055d85ee4630788c67a960733c383a458b86f6dfdfa27786be64'}, 'component': '', 'owner': 'sensor_msgs/msg/MagneticField', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 108, 'maximum': 236, 'nodes': 20, 'depth': 4, 'codec_identity': 'UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 236, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `std_srvs/srv/SetBool` (service): `{'request': {'version': 2, 'name': 'std_srvs/srv/SetBool_Request', 'members': [{'name': 'data', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'request', 'owner': 'std_srvs/srv/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 2, 'name': 'std_srvs/srv/SetBool_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'response', 'owner': 'std_srvs/srv/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `std_srvs/srv/Trigger` (service): `{'request': {'version': 2, 'name': 'std_srvs/srv/Trigger_Request', 'members': [], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'request', 'owner': 'std_srvs/srv/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 2, 'name': 'std_srvs/srv/Trigger_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'response', 'owner': 'std_srvs/srv/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `turtlebot3_msgs/action/Patrol` (action): `{'goal': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Goal', 'members': [{'name': 'goal', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'goal', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'result': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Result', 'members': [{'name': 'result', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'result', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}, 'feedback': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Feedback', 'members': [{'name': 'state', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'feedback', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}}`.
- `turtlebot3_msgs/msg/SensorState` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/SensorState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'bumper', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cliff', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'sonar', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'illumination', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'led', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'button', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'left_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'right_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'battery', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/SensorState.msg', 'bytes': 1141, 'sha256': 'e121d9df6a438a533942236506ee75f71086ecfeaafa6256391638f373962601'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/SensorState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 40, 'maximum': 168, 'nodes': 16, 'depth': 4, 'codec_identity': 'UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 168, 'constants': [{'name': 'BUMPER_FORWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUMPER_BACKWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'CLIFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'SONAR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ILLUMINATION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON0', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR_LEFT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ERROR_RIGHT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'TORQUE_ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'TORQUE_OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]}}`.
- `turtlebot3_msgs/msg/Sound` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/Sound', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/Sound.msg', 'bytes': 344, 'sha256': 'eb4861a35e75b7b4a04baf8beb171b527e0d7a382c0db969f5b32a2cb97b8bdf'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/Sound', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': [{'name': 'OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'LOW_BATTERY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'BUTTON2', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}]}}`.
- `turtlebot3_msgs/msg/VersionInfo` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/VersionInfo', 'members': [{'name': 'hardware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'firmware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'software', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/VersionInfo.msg', 'bytes': 350, 'sha256': '27497e6e84c079319860ad6444ff2b738a2d75243f46b637559d7c297f38ef68'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/VersionInfo', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 780, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 780, 'constants': []}}`.
- `turtlebot3_msgs/srv/Dqn` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Dqn_Request', 'members': [{'name': 'action', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'init', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Dqn.srv', 'bytes': 68, 'sha256': '163b4fa05097b87400ff94a3925450000665d3f04e4e3db8afbd743bc82cef8b'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Dqn', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Dqn_Response', 'members': [{'name': 'state', 'type': 'float32', 'array': 'sequence', 'count': 128, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reward', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'done', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Dqn.srv', 'bytes': 68, 'sha256': '163b4fa05097b87400ff94a3925450000665d3f04e4e3db8afbd743bc82cef8b'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Dqn', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 521, 'nodes': 132, 'depth': 3, 'codec_identity': 'UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 521, 'constants': []}}`.
- `turtlebot3_msgs/srv/Goal` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Goal_Request', 'members': [], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Goal.srv', 'bytes': 47, 'sha256': '2ee2d8023fd1c3ae99c80250770ddd0b6ea81ca92d4111a20d1026bd4f5e1e0a'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Goal', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Goal_Response', 'members': [{'name': 'pose_x', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_y', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Goal.srv', 'bytes': 47, 'sha256': '2ee2d8023fd1c3ae99c80250770ddd0b6ea81ca92d4111a20d1026bd4f5e1e0a'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Goal', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 9, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 9, 'constants': []}}`.
- `turtlebot3_msgs/srv/Sound` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Sound_Request', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Sound.srv', 'bytes': 295, 'sha256': '5c98b373291a8270e783e9224be89d1160efa4f9310e617603a079640d01f663'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Sound', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Sound_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Sound.srv', 'bytes': 295, 'sha256': '5c98b373291a8270e783e9224be89d1160efa4f9310e617603a079640d01f663'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Sound', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.

## jazzy

ros2: 34 records, 5 services, 1 actions.

Catalog: `share/platform/robotis/catalogs/jazzy/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repositories': [{'id': 'common_jazzy', 'url': 'https://github.com/ros2/common_interfaces', 'branch': 'jazzy', 'commit': 'a941f14bb318d8d904505ed935ccbb97f24a70a4', 'tree_git_sha1': 'bbd609d90753abf6e10bdc94f594f36b75921677', 'archive': {'url': 'https://codeload.github.com/ros2/common_interfaces/tar.gz/a941f14bb318d8d904505ed935ccbb97f24a70a4', 'bytes': 150460, 'sha256': '4140cc780aec296bcd88c3049ba541783d40fbb7dd0e5919e621a85e314416ba'}, 'default_authority': [], 'scope': 'Unchanged selected original interfaces/source and complete original acquisition archive; no compilation, native or robot execution.', 'retained_archive_augmentation': {'files': [{'path': 'diagnostic_msgs/srv/AddDiagnostics.srv', 'bytes': 1458, 'sha256': 'e88df6a6769a9ee85480aa2b1adac052fa368b4a00016f1a9b8422fdacdf1767', 'git_blob_sha1': '413c4019d73e3860dd09c51b5d6a078bf57a7bcb'}, {'path': 'diagnostic_msgs/srv/SelfTest.srv', 'bytes': 52, 'sha256': '3a95f0dfd99d48a34b58608a80443e9bcd343ebd76d8865f58f8b9b312b6d38f', 'git_blob_sha1': 'ee2974d4270d5c37aedd4b2253d0075b91582f74'}, {'path': 'nav_msgs/srv/GetMap.srv', 'bytes': 110, 'sha256': 'b4bdbb1875bfd2b22596e238cb9571f0baec6505032f7df8cc7e5cd47bfd3adc', 'git_blob_sha1': '91be6a7bdf5593b58a1815be2e5f2096f654d68d'}, {'path': 'nav_msgs/srv/GetPlan.srv', 'bytes': 400, 'sha256': '84582c21447bd35286bbf93b9ca80de69e964cad577fa6ac44aabdbba43cba2e', 'git_blob_sha1': '689290a632bef9aff8f5186211b387e03f237b64'}, {'path': 'nav_msgs/srv/LoadMap.srv', 'bytes': 473, 'sha256': '301ea2a2226e8723ae8a421eefc4dfbc0e3ed7819402583bd13c034f0802d3aa', 'git_blob_sha1': '3b9caaad47004e34d800ef84aae0553a8e2e5077'}, {'path': 'nav_msgs/srv/SetMap.srv', 'bytes': 280, 'sha256': '14b58f196f2eafdeb75d2b913af3687665cce880aef970e03e6a6c014cd6fbed', 'git_blob_sha1': '5270d458bd409ad922289e457388af8930afd2f5'}, {'path': 'sensor_msgs/srv/SetCameraInfo.srv', 'bytes': 597, 'sha256': 'd7e720e522387083ff70c0b9e8aacec379c416d8d04f3cdca55de2008beba1f3', 'git_blob_sha1': '98b5b261d409d1b44fd7b50586777d380ed46249'}, {'path': 'std_srvs/srv/Empty.srv', 'bytes': 4, 'sha256': 'f52d711103d50a437830c6fbcd04fb4bab49a0f82f6d26d1c791c6e8488dd090', 'git_blob_sha1': 'ed97d539c095cf1413af30cc23dea272095b97dd'}, {'path': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664', 'git_blob_sha1': '93003477744daee97782eeafe272eccece948b7b'}, {'path': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca', 'git_blob_sha1': '371dfd22e1508994dacdf1fa93290f46d138fcaa'}, {'path': 'visualization_msgs/srv/GetInteractiveMarkers.srv', 'bytes': 287, 'sha256': 'a5291d771d7568d176844b2322c5d91b389370e8c25015a5ae00d63fac4471ea', 'git_blob_sha1': '493e885ec305e7d0beadda281c3297ea341fdfba'}], 'scope': 'Unchanged bodies recovered from the previously verified original archive, not newly downloaded.'}}, {'id': 'driver_jazzy', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3', 'branch': 'jazzy', 'commit': '0c0be84e3f5c3194fb2adea8426a58a96060eab5', 'tree_git_sha1': 'cdf2659c4c74b1f6868aca21ea099f7daa9e34ae', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3/tar.gz/0c0be84e3f5c3194fb2adea8426a58a96060eab5', 'bytes': 8862258, 'sha256': '3fdda60f779a8bbe3bc9698b56a9b70207196a2dca6c2e07f2f89477b60f0ab9'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'msgs_jazzy', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3_msgs', 'branch': 'jazzy', 'commit': '9209e01b4708cf3ca5610b01dfc9586d3c7889d8', 'tree_git_sha1': '13ea568ce1203d4ee01a33ab15469c74777f11df', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3_msgs/tar.gz/9209e01b4708cf3ca5610b01dfc9586d3c7889d8', 'bytes': 9045, 'sha256': 'f3130dc98b11cc4f616e04daa80c886ab22cd20f9b824d8002d2f9818fc6743e'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'rcl_jazzy', 'url': 'https://github.com/ros2/rcl_interfaces', 'branch': 'jazzy', 'commit': '7aa3caf43377ea6ad615bc1040832e2c7566bfbe', 'tree_git_sha1': '4515d6d00cf6209db404352534818e4199fe33c9', 'archive': {'url': 'https://codeload.github.com/ros2/rcl_interfaces/tar.gz/7aa3caf43377ea6ad615bc1040832e2c7566bfbe', 'bytes': 48039, 'sha256': 'd984942035cd4df4f60c92d6038cecbfc3f5a01a1977c1b3199cee45cd67281c'}, 'default_authority': [], 'scope': 'Unchanged selected original interfaces/source and complete original acquisition archive; no compilation, native or robot execution.', 'retained_archive_augmentation': {'files': [{'path': 'action_msgs/srv/CancelGoal.srv', 'bytes': 1453, 'sha256': '5f4dc57f41cab2fd1987a61d5821282ece5075e38e5044f90126ab62c98fac20', 'git_blob_sha1': '86afbdbf4eacb2c55c1faf8da3a17946c5f0fa9b'}, {'path': 'composition_interfaces/srv/ListNodes.srv', 'bytes': 167, 'sha256': '7b01c631b25d12e91315098748bb526f19101c70041613704ac8f09b7482db63', 'git_blob_sha1': '4b1421eb4031b37e38cd90f614cd303e66b5d9e3'}, {'path': 'composition_interfaces/srv/LoadNode.srv', 'bytes': 1253, 'sha256': 'db83f2776f37bf2cbe94ba8d3e8fefb0bca5b3edaa978e2b151c16f41bb47f11', 'git_blob_sha1': 'ffd243f3a518362e11ccf059417b5a6bd037a8d1'}, {'path': 'composition_interfaces/srv/UnloadNode.srv', 'bytes': 221, 'sha256': '6b6106bb2ba8ec9c8fd3812ab57a57775da388d12754bc6b266e1a883618f4d9', 'git_blob_sha1': '0fa36a516759a491a799a7f15a84a54f30ff5189'}, {'path': 'lifecycle_msgs/srv/ChangeState.srv', 'bytes': 217, 'sha256': 'a724c2437f5dc7eda1120f79ac30f945fea1475ac62654936f0d04530b1aef23', 'git_blob_sha1': '1bad3d1012bcd67269d05c893770be9b4dfa48d5'}, {'path': 'lifecycle_msgs/srv/GetAvailableStates.srv', 'bytes': 85, 'sha256': 'ab291560449fc5914c35cb9a9ec14cedfa67f6b643d4b7abb6c98cfb29e76f0d', 'git_blob_sha1': '2faa79b03d1f094781b03ced38e553fe984196e2'}, {'path': 'lifecycle_msgs/srv/GetAvailableTransitions.srv', 'bytes': 112, 'sha256': 'b6081c35e61f405e999e10044e9a68f862347da3c133070fe04dad9b54f2ecea', 'git_blob_sha1': 'a7f4e506626903c8b90d1297415e51004ada8a17'}, {'path': 'lifecycle_msgs/srv/GetState.srv', 'bytes': 71, 'sha256': 'fc5e96531728baa4fcbc78d79b93e4c84e5787e288cc49d8c76ce8fcfef67292', 'git_blob_sha1': 'b2569fa65ba13d3de35c482587332bd8fcb98458'}, {'path': 'rcl_interfaces/srv/DescribeParameters.srv', 'bytes': 278, 'sha256': '6047a59261d6c19a4e8e921f06702cc0672e0e8b6a6854fe601b30edf02e5981', 'git_blob_sha1': 'a8f0b9162c4bb92b0eb003ef9d8248394c53bec7'}, {'path': 'rcl_interfaces/srv/GetLoggerLevels.srv', 'bytes': 220, 'sha256': '80d7c2ffe896e3b8d0ee228b78a5783d544887bbd3bd4549ef9d2a83403bae3c', 'git_blob_sha1': '3c0884e53b8f19bb7a67357ec172f0f6fa31085a'}, {'path': 'rcl_interfaces/srv/GetParameterTypes.srv', 'bytes': 322, 'sha256': 'e5745ed79201f3ea515c13917f8d28780d16ed53c35f1b8d0f27c89945777bbe', 'git_blob_sha1': 'cdf0e78d8727c6304d0baab30fc3c8ee886046fe'}, {'path': 'rcl_interfaces/srv/GetParameters.srv', 'bytes': 518, 'sha256': '3ae49531812d8813350fad5261905a88939f8352f8a08fd238dcae19a08e59f7', 'git_blob_sha1': '1822479bca1c947446fda9b4a158cfdb723b8e61'}, {'path': 'rcl_interfaces/srv/ListParameters.srv', 'bytes': 369, 'sha256': '8254b67551049b2dc477d2fad286b645588227188482436d1b3bc0041731ed8b', 'git_blob_sha1': 'ee1b7a6ffa6f40d27f59d369e24e4eccca9c378f'}, {'path': 'rcl_interfaces/srv/SetLoggerLevels.srv', 'bytes': 152, 'sha256': 'f418e17d4db720944d1edae8073ae6df1499677c8f1a11ca19b0bcba6a19d44d', 'git_blob_sha1': '7a83b1b01c605bf6906449c1741d68de0926907d'}, {'path': 'rcl_interfaces/srv/SetParameters.srv', 'bytes': 158, 'sha256': '6a0dcce330e51f954350e4ca3095fff7a7c0a0fa1c9d986b1dad340afb05f70a', 'git_blob_sha1': '97d11796b67e2c6deb0deafb12dbadc87546cd9e'}, {'path': 'rcl_interfaces/srv/SetParametersAtomically.srv', 'bytes': 238, 'sha256': '8593b435156b70299a4664839dc1b799ff22a7b7c0c27cec7b33bcc336389954', 'git_blob_sha1': '2df928a4fddd5a2accd9363821ca1bf9abe9b956'}, {'path': 'test_msgs/action/NestedMessage.action', 'bytes': 381, 'sha256': 'cb976305a0af5bc92868e74e9d0e9d088285608c668b09195c8e7d53089ae835', 'git_blob_sha1': 'f0c7cf279cfbfe5210212cd3f3297bd605792d16'}, {'path': 'type_description_interfaces/srv/GetTypeDescription.srv', 'bytes': 1182, 'sha256': '3e26a2ac0c055cc8c1b6bd50c4b5c9cdd750a5604027c20cc23519a1905b4f5f', 'git_blob_sha1': '9d34d0d0b4139a85499793c83aa7fb102f68e8c3'}], 'scope': 'Unchanged bodies recovered from the previously verified original archive, not newly downloaded.'}}]}`.

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### geometry_msgs/msg/Point

`Ros2Geometry_msgsMsgPoint`; 24..24 canonical bytes. `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | 0.0 |
| y | float64 | scalar | 0 | 0.0 |
| z | float64 | scalar | 0 | 0.0 |
| w | float64 | scalar | 0 | 1.0 |

### geometry_msgs/msg/Pose

`Ros2Geometry_msgsMsgPose`; 56..56 canonical bytes. `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/msg/Point | scalar | 0 | None |
| orientation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### geometry_msgs/msg/PoseWithCovariance

`Ros2Geometry_msgsMsgPoseWithCovariance`; 344..344 canonical bytes. `UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/msg/Pose | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 canonical bytes. `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| translation | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| rotation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### geometry_msgs/msg/TransformStamped

`Ros2Geometry_msgsMsgTransformStamped`; 72..456 canonical bytes. `UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| transform | geometry_msgs/msg/Transform | scalar | 0 | None |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### geometry_msgs/msg/TwistStamped

`Ros2Geometry_msgsMsgTwistStamped`; 60..188 canonical bytes. `UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| twist | geometry_msgs/msg/Twist | scalar | 0 | None |

### geometry_msgs/msg/TwistWithCovariance

`Ros2Geometry_msgsMsgTwistWithCovariance`; 336..336 canonical bytes. `UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| twist | geometry_msgs/msg/Twist | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### nav_msgs/msg/Odometry

`Ros2Nav_msgsMsgOdometry`; 696..1080 canonical bytes. `UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| pose | geometry_msgs/msg/PoseWithCovariance | scalar | 0 | None |
| twist | geometry_msgs/msg/TwistWithCovariance | scalar | 0 | None |

### sensor_msgs/msg/BatteryState

`Ros2Sensor_msgsMsgBatteryState`; 60..828 canonical bytes. `UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| voltage | float32 | scalar | 0 | None |
| temperature | float32 | scalar | 0 | None |
| current | float32 | scalar | 0 | None |
| charge | float32 | scalar | 0 | None |
| capacity | float32 | scalar | 0 | None |
| design_capacity | float32 | scalar | 0 | None |
| percentage | float32 | scalar | 0 | None |
| power_supply_status | uint8 | scalar | 0 | None |
| power_supply_health | uint8 | scalar | 0 | None |
| power_supply_technology | uint8 | scalar | 0 | None |
| present | bool | scalar | 0 | None |
| cell_voltage | float32 | sequence/16 | 0 | None |
| cell_temperature | float32 | sequence/16 | 0 | None |
| location | string | scalar | 256 | None |
| serial_number | string | scalar | 256 | None |

Constants (not part of instance wire bytes):
- `POWER_SUPPLY_STATUS_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_STATUS_CHARGING` (uint8): `1`
- `POWER_SUPPLY_STATUS_DISCHARGING` (uint8): `2`
- `POWER_SUPPLY_STATUS_NOT_CHARGING` (uint8): `3`
- `POWER_SUPPLY_STATUS_FULL` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_HEALTH_GOOD` (uint8): `1`
- `POWER_SUPPLY_HEALTH_OVERHEAT` (uint8): `2`
- `POWER_SUPPLY_HEALTH_DEAD` (uint8): `3`
- `POWER_SUPPLY_HEALTH_OVERVOLTAGE` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNSPEC_FAILURE` (uint8): `5`
- `POWER_SUPPLY_HEALTH_COLD` (uint8): `6`
- `POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE` (uint8): `7`
- `POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE` (uint8): `8`
- `POWER_SUPPLY_TECHNOLOGY_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_TECHNOLOGY_NIMH` (uint8): `1`
- `POWER_SUPPLY_TECHNOLOGY_LION` (uint8): `2`
- `POWER_SUPPLY_TECHNOLOGY_LIPO` (uint8): `3`
- `POWER_SUPPLY_TECHNOLOGY_LIFE` (uint8): `4`
- `POWER_SUPPLY_TECHNOLOGY_NICD` (uint8): `5`
- `POWER_SUPPLY_TECHNOLOGY_LIMN` (uint8): `6`
- `POWER_SUPPLY_TECHNOLOGY_TERNARY` (uint8): `7`
- `POWER_SUPPLY_TECHNOLOGY_VRLA` (uint8): `8`

### sensor_msgs/msg/Imu

`Ros2Sensor_msgsMsgImu`; 308..436 canonical bytes. `UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| orientation | geometry_msgs/msg/Quaternion | scalar | 0 | None |
| orientation_covariance | float64 | array/9 | 0 | None |
| angular_velocity | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular_velocity_covariance | float64 | array/9 | 0 | None |
| linear_acceleration | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| linear_acceleration_covariance | float64 | array/9 | 0 | None |

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..468 canonical bytes. `UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| name | string | sequence/2 | 128 | None |
| position | float64 | sequence/2 | 0 | None |
| velocity | float64 | sequence/2 | 0 | None |
| effort | float64 | sequence/2 | 0 | None |

### sensor_msgs/msg/LaserScan

`Ros2Sensor_msgsMsgLaserScan`; 48..8368 canonical bytes. `UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| angle_min | float32 | scalar | 0 | None |
| angle_max | float32 | scalar | 0 | None |
| angle_increment | float32 | scalar | 0 | None |
| time_increment | float32 | scalar | 0 | None |
| scan_time | float32 | scalar | 0 | None |
| range_min | float32 | scalar | 0 | None |
| range_max | float32 | scalar | 0 | None |
| ranges | float32 | sequence/1024 | 0 | None |
| intensities | float32 | sequence/1024 | 0 | None |

### sensor_msgs/msg/MagneticField

`Ros2Sensor_msgsMsgMagneticField`; 108..236 canonical bytes. `UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| magnetic_field | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| magnetic_field_covariance | float64 | array/9 | 0 | None |

### std_srvs/srv/SetBool_Request

`Ros2Std_srvsSrvSetBool_Request`; 1..1 canonical bytes. `UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | bool | scalar | 0 | None |

### std_srvs/srv/SetBool_Response

`Ros2Std_srvsSrvSetBool_Response`; 5..261 canonical bytes. `UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### std_srvs/srv/Trigger_Request

`Ros2Std_srvsSrvTrigger_Request`; 0..0 canonical bytes. `UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### std_srvs/srv/Trigger_Response

`Ros2Std_srvsSrvTrigger_Response`; 5..261 canonical bytes. `UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### turtlebot3_msgs/action/Patrol_Goal

`Ros2Turtlebot3_msgsActionPatrol_Goal`; 24..24 canonical bytes. `UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| goal | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### turtlebot3_msgs/action/Patrol_Result

`Ros2Turtlebot3_msgsActionPatrol_Result`; 4..260 canonical bytes. `UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| result | string | scalar | 256 | None |

### turtlebot3_msgs/action/Patrol_Feedback

`Ros2Turtlebot3_msgsActionPatrol_Feedback`; 4..260 canonical bytes. `UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | string | scalar | 256 | None |

### turtlebot3_msgs/msg/SensorState

`Ros2Turtlebot3_msgsMsgSensorState`; 40..168 canonical bytes. `UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| bumper | uint8 | scalar | 0 | None |
| cliff | float32 | scalar | 0 | None |
| sonar | float32 | scalar | 0 | None |
| illumination | float32 | scalar | 0 | None |
| led | uint8 | scalar | 0 | None |
| button | uint8 | scalar | 0 | None |
| torque | bool | scalar | 0 | None |
| left_encoder | int32 | scalar | 0 | None |
| right_encoder | int32 | scalar | 0 | None |
| battery | float32 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `BUMPER_FORWARD` (uint8): `1`
- `BUMPER_BACKWARD` (uint8): `2`
- `CLIFF` (uint8): `1`
- `SONAR` (uint8): `1`
- `ILLUMINATION` (uint8): `1`
- `BUTTON0` (uint8): `1`
- `BUTTON1` (uint8): `2`
- `ERROR_LEFT_MOTOR` (uint8): `1`
- `ERROR_RIGHT_MOTOR` (uint8): `2`
- `TORQUE_ON` (uint8): `1`
- `TORQUE_OFF` (uint8): `2`

### turtlebot3_msgs/msg/Sound

`Ros2Turtlebot3_msgsMsgSound`; 1..1 canonical bytes. `UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `OFF` (uint8): `0`
- `ON` (uint8): `1`
- `LOW_BATTERY` (uint8): `2`
- `ERROR` (uint8): `3`
- `BUTTON1` (uint8): `4`
- `BUTTON2` (uint8): `5`

### turtlebot3_msgs/msg/VersionInfo

`Ros2Turtlebot3_msgsMsgVersionInfo`; 12..780 canonical bytes. `UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| hardware | string | scalar | 256 | None |
| firmware | string | scalar | 256 | None |
| software | string | scalar | 256 | None |

### turtlebot3_msgs/srv/Dqn_Request

`Ros2Turtlebot3_msgsSrvDqn_Request`; 2..2 canonical bytes. `UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| action | uint8 | scalar | 0 | None |
| init | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Dqn_Response

`Ros2Turtlebot3_msgsSrvDqn_Response`; 9..521 canonical bytes. `UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | float32 | sequence/128 | 0 | None |
| reward | float32 | scalar | 0 | None |
| done | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Goal_Request

`Ros2Turtlebot3_msgsSrvGoal_Request`; 0..0 canonical bytes. `UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### turtlebot3_msgs/srv/Goal_Response

`Ros2Turtlebot3_msgsSrvGoal_Response`; 9..9 canonical bytes. `UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose_x | float32 | scalar | 0 | None |
| pose_y | float32 | scalar | 0 | None |
| success | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Sound_Request

`Ros2Turtlebot3_msgsSrvSound_Request`; 1..1 canonical bytes. `UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

### turtlebot3_msgs/srv/Sound_Response

`Ros2Turtlebot3_msgsSrvSound_Response`; 5..261 canonical bytes. `UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### Complete protocol components

- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 421, 'sha256': 'dc5a01ddde3aecffee21eb24974fe77cc969f873218a2b1811aa0ac8a456b8bd'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `geometry_msgs/msg/Point` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Point', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Point.msg', 'bytes': 84, 'sha256': 'eb4c07e591cf0269ccb17245dcd4f998162feb09cc8add85fa082c8a30bfc91d'}, 'component': '', 'owner': 'geometry_msgs/msg/Point', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `geometry_msgs/msg/Pose` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Pose', 'members': [{'name': 'position', 'type': 'geometry_msgs/msg/Point', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Pose.msg', 'bytes': 119, 'sha256': '3eceb77c63ebbb544c11d7f991e475e9819e0cf534deb1a879392c1b3dc997de'}, 'component': '', 'owner': 'geometry_msgs/msg/Pose', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/PoseWithCovariance` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/PoseWithCovariance', 'members': [{'name': 'pose', 'type': 'geometry_msgs/msg/Pose', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/PoseWithCovariance.msg', 'bytes': 323, 'sha256': 'a22f234e91b9fcd4ba0c5b533496b43c62d7f6ade39082212ac9835679d29f94'}, 'component': '', 'owner': 'geometry_msgs/msg/PoseWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 344, 'maximum': 344, 'nodes': 48, 'depth': 4, 'codec_identity': 'UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 344, 'constants': []}}`.
- `geometry_msgs/msg/Quaternion` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Quaternion', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'w', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '1.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Quaternion.msg', 'bytes': 116, 'sha256': '298495eb67a139642ffd37cc9029eae085e6c39a8789828b7517868a487939ed'}, 'component': '', 'owner': 'geometry_msgs/msg/Quaternion', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 32, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 32, 'constants': []}}`.
- `geometry_msgs/msg/Transform` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Transform', 'members': [{'name': 'translation', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'rotation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Transform.msg', 'bytes': 118, 'sha256': 'c8916279f0a429dd9561158bd2133bc4e2d780277c3c594116b240a27e7a2993'}, 'component': '', 'owner': 'geometry_msgs/msg/Transform', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/TransformStamped` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TransformStamped', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'transform', 'type': 'geometry_msgs/msg/Transform', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TransformStamped.msg', 'bytes': 748, 'sha256': 'f6e137c205e9187ac1dafdfbace7435de58bb3779a55e9c6b52c2cb513785c42'}, 'component': '', 'owner': 'geometry_msgs/msg/TransformStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 72, 'maximum': 456, 'nodes': 17, 'depth': 4, 'codec_identity': 'UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 456, 'constants': []}}`.
- `geometry_msgs/msg/Twist` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Twist', 'members': [{'name': 'linear', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Twist.msg', 'bytes': 116, 'sha256': 'ed471ef861f65af991b1f64d66ef941dd41dd4c0702f6222512b1a16c62d58b0'}, 'component': '', 'owner': 'geometry_msgs/msg/Twist', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 48, 'nodes': 9, 'depth': 3, 'codec_identity': 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 48, 'constants': []}}`.
- `geometry_msgs/msg/TwistStamped` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TwistStamped', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/msg/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistStamped.msg', 'bytes': 92, 'sha256': 'ffc9d5925412410b28d601c55cf386a0b3e4d5dba00920fbafb98d7201f582ca'}, 'component': '', 'owner': 'geometry_msgs/msg/TwistStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 60, 'maximum': 188, 'nodes': 15, 'depth': 4, 'codec_identity': 'UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 188, 'constants': []}}`.
- `geometry_msgs/msg/TwistWithCovariance` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TwistWithCovariance', 'members': [{'name': 'twist', 'type': 'geometry_msgs/msg/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistWithCovariance.msg', 'bytes': 326, 'sha256': '5690a1f109d4962c73b5ca7f3673c48052d02f37b6a38fe2fb37c899cf555c45'}, 'component': '', 'owner': 'geometry_msgs/msg/TwistWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 336, 'maximum': 336, 'nodes': 47, 'depth': 4, 'codec_identity': 'UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 336, 'constants': []}}`.
- `geometry_msgs/msg/Vector3` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Vector3', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Vector3.msg', 'bytes': 251, 'sha256': 'd8b9ea9aad1f424faf4d2b94dae1e1368af1e5d59de11aeed019399cff7f9e1d'}, 'component': '', 'owner': 'geometry_msgs/msg/Vector3', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `nav_msgs/msg/Odometry` (message): `{'message': {'version': 2, 'name': 'nav_msgs/msg/Odometry', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'geometry_msgs/msg/PoseWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/msg/TwistWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'nav_msgs/msg/Odometry.msg', 'bytes': 645, 'sha256': 'bb00547ddf498cdbae46fd991d9d85a59f507e12e7cf01fb18a86f1111524f4f'}, 'component': '', 'owner': 'nav_msgs/msg/Odometry', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 696, 'maximum': 1080, 'nodes': 102, 'depth': 5, 'codec_identity': 'UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1080, 'constants': []}}`.
- `sensor_msgs/msg/BatteryState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/BatteryState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'voltage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temperature', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'current', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'charge', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'design_capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'percentage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_status', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_health', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_technology', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'present', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_voltage', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_temperature', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'location', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'serial_number', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/BatteryState.msg', 'bytes': 2969, 'sha256': 'ce13430f3c107274fb7123a6d1e79a9f83974d78cb0be1721695129e49240b25'}, 'component': '', 'owner': 'sensor_msgs/msg/BatteryState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 60, 'maximum': 828, 'nodes': 53, 'depth': 4, 'codec_identity': 'UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 828, 'constants': [{'name': 'POWER_SUPPLY_STATUS_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_STATUS_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_STATUS_DISCHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_STATUS_NOT_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_STATUS_FULL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_HEALTH_GOOD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_HEALTH_OVERHEAT', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_HEALTH_DEAD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_HEALTH_OVERVOLTAGE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNSPEC_FAILURE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_HEALTH_COLD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}, {'name': 'POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '7', 'value': '7'}, {'name': 'POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NIMH', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIPO', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIFE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NICD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIMN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_TERNARY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '7', 'value': '7'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_VRLA', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}]}}`.
- `sensor_msgs/msg/Imu` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/Imu', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/Imu.msg', 'bytes': 1211, 'sha256': '5800b7c2e6d3afed966ae229b1559f6e762c792ad34a88e55ad4288d8bbbd34b'}, 'component': '', 'owner': 'sensor_msgs/msg/Imu', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 308, 'maximum': 436, 'nodes': 49, 'depth': 4, 'codec_identity': 'UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 436, 'constants': []}}`.
- `sensor_msgs/msg/JointState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/JointState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 2, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/JointState.msg', 'bytes': 999, 'sha256': '711d1771a002c7190e5bbe746a163a67477c1e2a45482a64f1fe339815ca6f5d'}, 'component': '', 'owner': 'sensor_msgs/msg/JointState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 468, 'nodes': 18, 'depth': 4, 'codec_identity': 'UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 468, 'constants': []}}`.
- `sensor_msgs/msg/LaserScan` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/LaserScan', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'scan_time', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ranges', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'intensities', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/LaserScan.msg', 'bytes': 1593, 'sha256': 'bb688599d8787fa1b48393e50064013e58449055eb60e501eb01a07e8bc03357'}, 'component': '', 'owner': 'sensor_msgs/msg/LaserScan', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 8368, 'nodes': 2063, 'depth': 4, 'codec_identity': 'UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8368, 'constants': []}}`.
- `sensor_msgs/msg/MagneticField` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/MagneticField', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/MagneticField.msg', 'bytes': 1183, 'sha256': 'b1bf534a4175055d85ee4630788c67a960733c383a458b86f6dfdfa27786be64'}, 'component': '', 'owner': 'sensor_msgs/msg/MagneticField', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 108, 'maximum': 236, 'nodes': 20, 'depth': 4, 'codec_identity': 'UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 236, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `std_srvs/srv/SetBool` (service): `{'request': {'version': 2, 'name': 'std_srvs/srv/SetBool_Request', 'members': [{'name': 'data', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'request', 'owner': 'std_srvs/srv/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 2, 'name': 'std_srvs/srv/SetBool_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'response', 'owner': 'std_srvs/srv/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `std_srvs/srv/Trigger` (service): `{'request': {'version': 2, 'name': 'std_srvs/srv/Trigger_Request', 'members': [], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'request', 'owner': 'std_srvs/srv/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 2, 'name': 'std_srvs/srv/Trigger_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'response', 'owner': 'std_srvs/srv/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `turtlebot3_msgs/action/Patrol` (action): `{'goal': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Goal', 'members': [{'name': 'goal', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'goal', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'result': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Result', 'members': [{'name': 'result', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'result', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}, 'feedback': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Feedback', 'members': [{'name': 'state', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'feedback', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}}`.
- `turtlebot3_msgs/msg/SensorState` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/SensorState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'bumper', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cliff', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'sonar', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'illumination', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'led', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'button', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'left_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'right_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'battery', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/SensorState.msg', 'bytes': 1141, 'sha256': 'e121d9df6a438a533942236506ee75f71086ecfeaafa6256391638f373962601'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/SensorState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 40, 'maximum': 168, 'nodes': 16, 'depth': 4, 'codec_identity': 'UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 168, 'constants': [{'name': 'BUMPER_FORWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUMPER_BACKWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'CLIFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'SONAR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ILLUMINATION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON0', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR_LEFT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ERROR_RIGHT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'TORQUE_ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'TORQUE_OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]}}`.
- `turtlebot3_msgs/msg/Sound` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/Sound', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/Sound.msg', 'bytes': 344, 'sha256': 'eb4861a35e75b7b4a04baf8beb171b527e0d7a382c0db969f5b32a2cb97b8bdf'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/Sound', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': [{'name': 'OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'LOW_BATTERY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'BUTTON2', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}]}}`.
- `turtlebot3_msgs/msg/VersionInfo` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/VersionInfo', 'members': [{'name': 'hardware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'firmware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'software', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/VersionInfo.msg', 'bytes': 350, 'sha256': '27497e6e84c079319860ad6444ff2b738a2d75243f46b637559d7c297f38ef68'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/VersionInfo', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 780, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 780, 'constants': []}}`.
- `turtlebot3_msgs/srv/Dqn` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Dqn_Request', 'members': [{'name': 'action', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'init', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Dqn.srv', 'bytes': 68, 'sha256': '163b4fa05097b87400ff94a3925450000665d3f04e4e3db8afbd743bc82cef8b'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Dqn', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Dqn_Response', 'members': [{'name': 'state', 'type': 'float32', 'array': 'sequence', 'count': 128, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reward', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'done', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Dqn.srv', 'bytes': 68, 'sha256': '163b4fa05097b87400ff94a3925450000665d3f04e4e3db8afbd743bc82cef8b'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Dqn', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 521, 'nodes': 132, 'depth': 3, 'codec_identity': 'UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 521, 'constants': []}}`.
- `turtlebot3_msgs/srv/Goal` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Goal_Request', 'members': [], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Goal.srv', 'bytes': 47, 'sha256': '2ee2d8023fd1c3ae99c80250770ddd0b6ea81ca92d4111a20d1026bd4f5e1e0a'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Goal', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Goal_Response', 'members': [{'name': 'pose_x', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_y', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Goal.srv', 'bytes': 47, 'sha256': '2ee2d8023fd1c3ae99c80250770ddd0b6ea81ca92d4111a20d1026bd4f5e1e0a'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Goal', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 9, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 9, 'constants': []}}`.
- `turtlebot3_msgs/srv/Sound` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Sound_Request', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Sound.srv', 'bytes': 295, 'sha256': '5c98b373291a8270e783e9224be89d1160efa4f9310e617603a079640d01f663'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Sound', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Sound_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Sound.srv', 'bytes': 295, 'sha256': '5c98b373291a8270e783e9224be89d1160efa4f9310e617603a079640d01f663'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Sound', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.

## main

ros2: 34 records, 5 services, 1 actions.

Catalog: `share/platform/robotis/catalogs/main/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repositories': [{'id': 'common_rolling', 'url': 'https://github.com/ros2/common_interfaces', 'branch': 'rolling', 'commit': '56be9f336d3ed54d18b3821d3b2b183123ec17d8', 'tree_git_sha1': '0371125c5a3b409d8ae32fff3e66ce9b8f3a6961', 'archive': {'url': 'https://codeload.github.com/ros2/common_interfaces/tar.gz/56be9f336d3ed54d18b3821d3b2b183123ec17d8', 'bytes': 151445, 'sha256': '5fc6947ff1fcdedc73d3a454b21e827d2a4a2233a900c15e8bdc78ddc95e2c85'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'driver_main', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3', 'branch': 'main', 'commit': 'fc817ce3073af1d6032397c64504134882af5e9a', 'tree_git_sha1': 'cdf2659c4c74b1f6868aca21ea099f7daa9e34ae', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3/tar.gz/fc817ce3073af1d6032397c64504134882af5e9a', 'bytes': 8862242, 'sha256': '9b214b265ba17fe7f85d41b25ee26a93bc4820cf0505ebfc2a18261c1f9a772b'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'msgs_main', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3_msgs', 'branch': 'main', 'commit': 'b60833d0224ca9a9136a8581d6b5f18122edef9b', 'tree_git_sha1': 'c3bb8d19b2af751dd665db6be1aca057ad37abc3', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3_msgs/tar.gz/b60833d0224ca9a9136a8581d6b5f18122edef9b', 'bytes': 9258, 'sha256': 'b29755384dcf52f72720188c53089a61ec2675e3c25315334c5b70a5213fe9bb'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'rcl_rolling', 'url': 'https://github.com/ros2/rcl_interfaces', 'branch': 'rolling', 'commit': '614f3c4942e1a67a568546cb805ff3e0ff7777f5', 'tree_git_sha1': '1fc8125d7a10587a81e083994142d313ad1903db', 'archive': {'url': 'https://codeload.github.com/ros2/rcl_interfaces/tar.gz/614f3c4942e1a67a568546cb805ff3e0ff7777f5', 'bytes': 49809, 'sha256': '42c8ecac42e99b2a68f3eda231a99be0e8511cb690be84a94e64e99959081bb2'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}]}`.

### builtin_interfaces/msg/Time

`Ros2Builtin_interfacesMsgTime`; 8..8 canonical bytes. `UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | 0 | None |
| nanosec | uint32 | scalar | 0 | None |

### geometry_msgs/msg/Point

`Ros2Geometry_msgsMsgPoint`; 24..24 canonical bytes. `UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Quaternion

`Ros2Geometry_msgsMsgQuaternion`; 32..32 canonical bytes. `UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | 0.0 |
| y | float64 | scalar | 0 | 0.0 |
| z | float64 | scalar | 0 | 0.0 |
| w | float64 | scalar | 0 | 1.0 |

### geometry_msgs/msg/Pose

`Ros2Geometry_msgsMsgPose`; 56..56 canonical bytes. `UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/msg/Point | scalar | 0 | None |
| orientation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### geometry_msgs/msg/PoseWithCovariance

`Ros2Geometry_msgsMsgPoseWithCovariance`; 344..344 canonical bytes. `UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/msg/Pose | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### geometry_msgs/msg/Vector3

`Ros2Geometry_msgsMsgVector3`; 24..24 canonical bytes. `UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/msg/Transform

`Ros2Geometry_msgsMsgTransform`; 56..56 canonical bytes. `UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| translation | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| rotation | geometry_msgs/msg/Quaternion | scalar | 0 | None |

### std_msgs/msg/Header

`Ros2Std_msgsMsgHeader`; 12..140 canonical bytes. `UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| stamp | builtin_interfaces/msg/Time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### geometry_msgs/msg/TransformStamped

`Ros2Geometry_msgsMsgTransformStamped`; 72..456 canonical bytes. `UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| transform | geometry_msgs/msg/Transform | scalar | 0 | None |

### geometry_msgs/msg/Twist

`Ros2Geometry_msgsMsgTwist`; 48..48 canonical bytes. `UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### geometry_msgs/msg/TwistStamped

`Ros2Geometry_msgsMsgTwistStamped`; 60..188 canonical bytes. `UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| twist | geometry_msgs/msg/Twist | scalar | 0 | None |

### geometry_msgs/msg/TwistWithCovariance

`Ros2Geometry_msgsMsgTwistWithCovariance`; 336..336 canonical bytes. `UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| twist | geometry_msgs/msg/Twist | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### nav_msgs/msg/Odometry

`Ros2Nav_msgsMsgOdometry`; 696..1080 canonical bytes. `UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| pose | geometry_msgs/msg/PoseWithCovariance | scalar | 0 | None |
| twist | geometry_msgs/msg/TwistWithCovariance | scalar | 0 | None |

### sensor_msgs/msg/BatteryState

`Ros2Sensor_msgsMsgBatteryState`; 60..828 canonical bytes. `UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| voltage | float32 | scalar | 0 | None |
| temperature | float32 | scalar | 0 | None |
| current | float32 | scalar | 0 | None |
| charge | float32 | scalar | 0 | None |
| capacity | float32 | scalar | 0 | None |
| design_capacity | float32 | scalar | 0 | None |
| percentage | float32 | scalar | 0 | None |
| power_supply_status | uint8 | scalar | 0 | None |
| power_supply_health | uint8 | scalar | 0 | None |
| power_supply_technology | uint8 | scalar | 0 | None |
| present | bool | scalar | 0 | None |
| cell_voltage | float32 | sequence/16 | 0 | None |
| cell_temperature | float32 | sequence/16 | 0 | None |
| location | string | scalar | 256 | None |
| serial_number | string | scalar | 256 | None |

Constants (not part of instance wire bytes):
- `POWER_SUPPLY_STATUS_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_STATUS_CHARGING` (uint8): `1`
- `POWER_SUPPLY_STATUS_DISCHARGING` (uint8): `2`
- `POWER_SUPPLY_STATUS_NOT_CHARGING` (uint8): `3`
- `POWER_SUPPLY_STATUS_FULL` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_HEALTH_GOOD` (uint8): `1`
- `POWER_SUPPLY_HEALTH_OVERHEAT` (uint8): `2`
- `POWER_SUPPLY_HEALTH_DEAD` (uint8): `3`
- `POWER_SUPPLY_HEALTH_OVERVOLTAGE` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNSPEC_FAILURE` (uint8): `5`
- `POWER_SUPPLY_HEALTH_COLD` (uint8): `6`
- `POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE` (uint8): `7`
- `POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE` (uint8): `8`
- `POWER_SUPPLY_TECHNOLOGY_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_TECHNOLOGY_NIMH` (uint8): `1`
- `POWER_SUPPLY_TECHNOLOGY_LION` (uint8): `2`
- `POWER_SUPPLY_TECHNOLOGY_LIPO` (uint8): `3`
- `POWER_SUPPLY_TECHNOLOGY_LIFE` (uint8): `4`
- `POWER_SUPPLY_TECHNOLOGY_NICD` (uint8): `5`
- `POWER_SUPPLY_TECHNOLOGY_LIMN` (uint8): `6`
- `POWER_SUPPLY_TECHNOLOGY_TERNARY` (uint8): `7`
- `POWER_SUPPLY_TECHNOLOGY_VRLA` (uint8): `8`

### sensor_msgs/msg/Imu

`Ros2Sensor_msgsMsgImu`; 308..436 canonical bytes. `UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| orientation | geometry_msgs/msg/Quaternion | scalar | 0 | None |
| orientation_covariance | float64 | array/9 | 0 | None |
| angular_velocity | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| angular_velocity_covariance | float64 | array/9 | 0 | None |
| linear_acceleration | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| linear_acceleration_covariance | float64 | array/9 | 0 | None |

### sensor_msgs/msg/JointState

`Ros2Sensor_msgsMsgJointState`; 28..468 canonical bytes. `UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| name | string | sequence/2 | 128 | None |
| position | float64 | sequence/2 | 0 | None |
| velocity | float64 | sequence/2 | 0 | None |
| effort | float64 | sequence/2 | 0 | None |

### sensor_msgs/msg/LaserScan

`Ros2Sensor_msgsMsgLaserScan`; 48..8368 canonical bytes. `UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| angle_min | float32 | scalar | 0 | None |
| angle_max | float32 | scalar | 0 | None |
| angle_increment | float32 | scalar | 0 | None |
| time_increment | float32 | scalar | 0 | None |
| scan_time | float32 | scalar | 0 | None |
| range_min | float32 | scalar | 0 | None |
| range_max | float32 | scalar | 0 | None |
| ranges | float32 | sequence/1024 | 0 | None |
| intensities | float32 | sequence/1024 | 0 | None |

### sensor_msgs/msg/MagneticField

`Ros2Sensor_msgsMsgMagneticField`; 108..236 canonical bytes. `UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| magnetic_field | geometry_msgs/msg/Vector3 | scalar | 0 | None |
| magnetic_field_covariance | float64 | array/9 | 0 | None |

### std_srvs/srv/SetBool_Request

`Ros2Std_srvsSrvSetBool_Request`; 1..1 canonical bytes. `UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | bool | scalar | 0 | None |

### std_srvs/srv/SetBool_Response

`Ros2Std_srvsSrvSetBool_Response`; 5..261 canonical bytes. `UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### std_srvs/srv/Trigger_Request

`Ros2Std_srvsSrvTrigger_Request`; 0..0 canonical bytes. `UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### std_srvs/srv/Trigger_Response

`Ros2Std_srvsSrvTrigger_Response`; 5..261 canonical bytes. `UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### turtlebot3_msgs/action/Patrol_Goal

`Ros2Turtlebot3_msgsActionPatrol_Goal`; 24..24 canonical bytes. `UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| goal | geometry_msgs/msg/Vector3 | scalar | 0 | None |

### turtlebot3_msgs/action/Patrol_Result

`Ros2Turtlebot3_msgsActionPatrol_Result`; 4..260 canonical bytes. `UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| result | string | scalar | 256 | None |

### turtlebot3_msgs/action/Patrol_Feedback

`Ros2Turtlebot3_msgsActionPatrol_Feedback`; 4..260 canonical bytes. `UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | string | scalar | 256 | None |

### turtlebot3_msgs/msg/SensorState

`Ros2Turtlebot3_msgsMsgSensorState`; 40..168 canonical bytes. `UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/msg/Header | scalar | 0 | None |
| bumper | uint8 | scalar | 0 | None |
| cliff | float32 | scalar | 0 | None |
| sonar | float32 | scalar | 0 | None |
| illumination | float32 | scalar | 0 | None |
| led | uint8 | scalar | 0 | None |
| button | uint8 | scalar | 0 | None |
| torque | bool | scalar | 0 | None |
| left_encoder | int32 | scalar | 0 | None |
| right_encoder | int32 | scalar | 0 | None |
| battery | float32 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `BUMPER_FORWARD` (uint8): `1`
- `BUMPER_BACKWARD` (uint8): `2`
- `CLIFF` (uint8): `1`
- `SONAR` (uint8): `1`
- `ILLUMINATION` (uint8): `1`
- `BUTTON0` (uint8): `1`
- `BUTTON1` (uint8): `2`
- `ERROR_LEFT_MOTOR` (uint8): `1`
- `ERROR_RIGHT_MOTOR` (uint8): `2`
- `TORQUE_ON` (uint8): `1`
- `TORQUE_OFF` (uint8): `2`

### turtlebot3_msgs/msg/Sound

`Ros2Turtlebot3_msgsMsgSound`; 1..1 canonical bytes. `UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `OFF` (uint8): `0`
- `ON` (uint8): `1`
- `LOW_BATTERY` (uint8): `2`
- `ERROR` (uint8): `3`
- `BUTTON1` (uint8): `4`
- `BUTTON2` (uint8): `5`

### turtlebot3_msgs/msg/VersionInfo

`Ros2Turtlebot3_msgsMsgVersionInfo`; 12..780 canonical bytes. `UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| hardware | string | scalar | 256 | None |
| firmware | string | scalar | 256 | None |
| software | string | scalar | 256 | None |

### turtlebot3_msgs/srv/Dqn_Request

`Ros2Turtlebot3_msgsSrvDqn_Request`; 2..2 canonical bytes. `UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| action | uint8 | scalar | 0 | None |
| init | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Dqn_Response

`Ros2Turtlebot3_msgsSrvDqn_Response`; 9..521 canonical bytes. `UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | float32 | sequence/128 | 0 | None |
| reward | float32 | scalar | 0 | None |
| done | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Goal_Request

`Ros2Turtlebot3_msgsSrvGoal_Request`; 0..0 canonical bytes. `UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### turtlebot3_msgs/srv/Goal_Response

`Ros2Turtlebot3_msgsSrvGoal_Response`; 9..9 canonical bytes. `UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose_x | float32 | scalar | 0 | None |
| pose_y | float32 | scalar | 0 | None |
| success | bool | scalar | 0 | None |

### turtlebot3_msgs/srv/Sound_Request

`Ros2Turtlebot3_msgsSrvSound_Request`; 1..1 canonical bytes. `UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

### turtlebot3_msgs/srv/Sound_Response

`Ros2Turtlebot3_msgsSrvSound_Response`; 5..261 canonical bytes. `UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### Complete protocol components

- `builtin_interfaces/msg/Time` (message): `{'message': {'version': 2, 'name': 'builtin_interfaces/msg/Time', 'members': [{'name': 'sec', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'nanosec', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'builtin_interfaces/msg/Time.msg', 'bytes': 421, 'sha256': 'dc5a01ddde3aecffee21eb24974fe77cc969f873218a2b1811aa0ac8a456b8bd'}, 'component': '', 'owner': 'builtin_interfaces/msg/Time', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 8, 'maximum': 8, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8, 'constants': []}}`.
- `geometry_msgs/msg/Point` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Point', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Point.msg', 'bytes': 84, 'sha256': 'eb4c07e591cf0269ccb17245dcd4f998162feb09cc8add85fa082c8a30bfc91d'}, 'component': '', 'owner': 'geometry_msgs/msg/Point', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `geometry_msgs/msg/Pose` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Pose', 'members': [{'name': 'position', 'type': 'geometry_msgs/msg/Point', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Pose.msg', 'bytes': 119, 'sha256': '3eceb77c63ebbb544c11d7f991e475e9819e0cf534deb1a879392c1b3dc997de'}, 'component': '', 'owner': 'geometry_msgs/msg/Pose', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/PoseWithCovariance` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/PoseWithCovariance', 'members': [{'name': 'pose', 'type': 'geometry_msgs/msg/Pose', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/PoseWithCovariance.msg', 'bytes': 323, 'sha256': 'a22f234e91b9fcd4ba0c5b533496b43c62d7f6ade39082212ac9835679d29f94'}, 'component': '', 'owner': 'geometry_msgs/msg/PoseWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 344, 'maximum': 344, 'nodes': 48, 'depth': 4, 'codec_identity': 'UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 344, 'constants': []}}`.
- `geometry_msgs/msg/Quaternion` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Quaternion', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '0.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'w', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': '1.0', 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Quaternion.msg', 'bytes': 116, 'sha256': '298495eb67a139642ffd37cc9029eae085e6c39a8789828b7517868a487939ed'}, 'component': '', 'owner': 'geometry_msgs/msg/Quaternion', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 32, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 32, 'constants': []}}`.
- `geometry_msgs/msg/Transform` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Transform', 'members': [{'name': 'translation', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'rotation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Transform.msg', 'bytes': 118, 'sha256': 'c8916279f0a429dd9561158bd2133bc4e2d780277c3c594116b240a27e7a2993'}, 'component': '', 'owner': 'geometry_msgs/msg/Transform', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/msg/TransformStamped` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TransformStamped', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'transform', 'type': 'geometry_msgs/msg/Transform', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TransformStamped.msg', 'bytes': 748, 'sha256': 'f6e137c205e9187ac1dafdfbace7435de58bb3779a55e9c6b52c2cb513785c42'}, 'component': '', 'owner': 'geometry_msgs/msg/TransformStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 72, 'maximum': 456, 'nodes': 17, 'depth': 4, 'codec_identity': 'UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 456, 'constants': []}}`.
- `geometry_msgs/msg/Twist` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Twist', 'members': [{'name': 'linear', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Twist.msg', 'bytes': 116, 'sha256': 'ed471ef861f65af991b1f64d66ef941dd41dd4c0702f6222512b1a16c62d58b0'}, 'component': '', 'owner': 'geometry_msgs/msg/Twist', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 48, 'nodes': 9, 'depth': 3, 'codec_identity': 'UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 48, 'constants': []}}`.
- `geometry_msgs/msg/TwistStamped` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TwistStamped', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/msg/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistStamped.msg', 'bytes': 92, 'sha256': 'ffc9d5925412410b28d601c55cf386a0b3e4d5dba00920fbafb98d7201f582ca'}, 'component': '', 'owner': 'geometry_msgs/msg/TwistStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 60, 'maximum': 188, 'nodes': 15, 'depth': 4, 'codec_identity': 'UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 188, 'constants': []}}`.
- `geometry_msgs/msg/TwistWithCovariance` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/TwistWithCovariance', 'members': [{'name': 'twist', 'type': 'geometry_msgs/msg/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistWithCovariance.msg', 'bytes': 326, 'sha256': '5690a1f109d4962c73b5ca7f3673c48052d02f37b6a38fe2fb37c899cf555c45'}, 'component': '', 'owner': 'geometry_msgs/msg/TwistWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 336, 'maximum': 336, 'nodes': 47, 'depth': 4, 'codec_identity': 'UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 336, 'constants': []}}`.
- `geometry_msgs/msg/Vector3` (message): `{'message': {'version': 2, 'name': 'geometry_msgs/msg/Vector3', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Vector3.msg', 'bytes': 251, 'sha256': 'd8b9ea9aad1f424faf4d2b94dae1e1368af1e5d59de11aeed019399cff7f9e1d'}, 'component': '', 'owner': 'geometry_msgs/msg/Vector3', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `nav_msgs/msg/Odometry` (message): `{'message': {'version': 2, 'name': 'nav_msgs/msg/Odometry', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'geometry_msgs/msg/PoseWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/msg/TwistWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'nav_msgs/msg/Odometry.msg', 'bytes': 645, 'sha256': 'bb00547ddf498cdbae46fd991d9d85a59f507e12e7cf01fb18a86f1111524f4f'}, 'component': '', 'owner': 'nav_msgs/msg/Odometry', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 696, 'maximum': 1080, 'nodes': 102, 'depth': 5, 'codec_identity': 'UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1080, 'constants': []}}`.
- `sensor_msgs/msg/BatteryState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/BatteryState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'voltage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temperature', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'current', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'charge', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'design_capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'percentage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_status', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_health', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_technology', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'present', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_voltage', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_temperature', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'location', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'serial_number', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/BatteryState.msg', 'bytes': 2969, 'sha256': 'ce13430f3c107274fb7123a6d1e79a9f83974d78cb0be1721695129e49240b25'}, 'component': '', 'owner': 'sensor_msgs/msg/BatteryState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 60, 'maximum': 828, 'nodes': 53, 'depth': 4, 'codec_identity': 'UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 828, 'constants': [{'name': 'POWER_SUPPLY_STATUS_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_STATUS_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_STATUS_DISCHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_STATUS_NOT_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_STATUS_FULL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_HEALTH_GOOD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_HEALTH_OVERHEAT', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_HEALTH_DEAD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_HEALTH_OVERVOLTAGE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNSPEC_FAILURE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_HEALTH_COLD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}, {'name': 'POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '7', 'value': '7'}, {'name': 'POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NIMH', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIPO', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIFE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NICD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIMN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_TERNARY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '7', 'value': '7'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_VRLA', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}]}}`.
- `sensor_msgs/msg/Imu` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/Imu', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/msg/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/Imu.msg', 'bytes': 1211, 'sha256': '5800b7c2e6d3afed966ae229b1559f6e762c792ad34a88e55ad4288d8bbbd34b'}, 'component': '', 'owner': 'sensor_msgs/msg/Imu', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 308, 'maximum': 436, 'nodes': 49, 'depth': 4, 'codec_identity': 'UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b', 'has_native_defaults': True, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 436, 'constants': []}}`.
- `sensor_msgs/msg/JointState` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/JointState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 2, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/JointState.msg', 'bytes': 999, 'sha256': '711d1771a002c7190e5bbe746a163a67477c1e2a45482a64f1fe339815ca6f5d'}, 'component': '', 'owner': 'sensor_msgs/msg/JointState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 28, 'maximum': 468, 'nodes': 18, 'depth': 4, 'codec_identity': 'UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 468, 'constants': []}}`.
- `sensor_msgs/msg/LaserScan` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/LaserScan', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'scan_time', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ranges', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'intensities', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/LaserScan.msg', 'bytes': 1593, 'sha256': 'bb688599d8787fa1b48393e50064013e58449055eb60e501eb01a07e8bc03357'}, 'component': '', 'owner': 'sensor_msgs/msg/LaserScan', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 8368, 'nodes': 2063, 'depth': 4, 'codec_identity': 'UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8368, 'constants': []}}`.
- `sensor_msgs/msg/MagneticField` (message): `{'message': {'version': 2, 'name': 'sensor_msgs/msg/MagneticField', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/MagneticField.msg', 'bytes': 1183, 'sha256': 'b1bf534a4175055d85ee4630788c67a960733c383a458b86f6dfdfa27786be64'}, 'component': '', 'owner': 'sensor_msgs/msg/MagneticField', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 108, 'maximum': 236, 'nodes': 20, 'depth': 4, 'codec_identity': 'UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 236, 'constants': []}}`.
- `std_msgs/msg/Header` (message): `{'message': {'version': 2, 'name': 'std_msgs/msg/Header', 'members': [{'name': 'stamp', 'type': 'builtin_interfaces/msg/Time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 322, 'sha256': 'd2cea14630e39ed0fa5b432ba9160a7c38855b9427d3344f99e83e83facb53c2'}, 'component': '', 'owner': 'std_msgs/msg/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 140, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 140, 'constants': []}}`.
- `std_srvs/srv/SetBool` (service): `{'request': {'version': 2, 'name': 'std_srvs/srv/SetBool_Request', 'members': [{'name': 'data', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'request', 'owner': 'std_srvs/srv/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 2, 'name': 'std_srvs/srv/SetBool_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'response', 'owner': 'std_srvs/srv/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `std_srvs/srv/Trigger` (service): `{'request': {'version': 2, 'name': 'std_srvs/srv/Trigger_Request', 'members': [], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'request', 'owner': 'std_srvs/srv/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 2, 'name': 'std_srvs/srv/Trigger_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'response', 'owner': 'std_srvs/srv/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `turtlebot3_msgs/action/Patrol` (action): `{'goal': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Goal', 'members': [{'name': 'goal', 'type': 'geometry_msgs/msg/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'goal', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'result': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Result', 'members': [{'name': 'result', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'result', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}, 'feedback': {'version': 2, 'name': 'turtlebot3_msgs/action/Patrol_Feedback', 'members': [{'name': 'state', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/action/Patrol.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'feedback', 'owner': 'turtlebot3_msgs/action/Patrol', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}}`.
- `turtlebot3_msgs/msg/SensorState` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/SensorState', 'members': [{'name': 'header', 'type': 'std_msgs/msg/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'bumper', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cliff', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'sonar', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'illumination', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'led', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'button', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'left_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'right_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'battery', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/SensorState.msg', 'bytes': 1141, 'sha256': 'e121d9df6a438a533942236506ee75f71086ecfeaafa6256391638f373962601'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/SensorState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 40, 'maximum': 168, 'nodes': 16, 'depth': 4, 'codec_identity': 'UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 168, 'constants': [{'name': 'BUMPER_FORWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUMPER_BACKWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'CLIFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'SONAR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ILLUMINATION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON0', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR_LEFT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ERROR_RIGHT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'TORQUE_ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'TORQUE_OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]}}`.
- `turtlebot3_msgs/msg/Sound` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/Sound', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/Sound.msg', 'bytes': 344, 'sha256': 'eb4861a35e75b7b4a04baf8beb171b527e0d7a382c0db969f5b32a2cb97b8bdf'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/Sound', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': [{'name': 'OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'LOW_BATTERY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'BUTTON2', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}]}}`.
- `turtlebot3_msgs/msg/VersionInfo` (message): `{'message': {'version': 2, 'name': 'turtlebot3_msgs/msg/VersionInfo', 'members': [{'name': 'hardware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'firmware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'software', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/VersionInfo.msg', 'bytes': 350, 'sha256': '27497e6e84c079319860ad6444ff2b738a2d75243f46b637559d7c297f38ef68'}, 'component': '', 'owner': 'turtlebot3_msgs/msg/VersionInfo', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 780, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 780, 'constants': []}}`.
- `turtlebot3_msgs/srv/Dqn` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Dqn_Request', 'members': [{'name': 'action', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'init', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Dqn.srv', 'bytes': 68, 'sha256': '163b4fa05097b87400ff94a3925450000665d3f04e4e3db8afbd743bc82cef8b'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Dqn', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 2, 'maximum': 2, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 2, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Dqn_Response', 'members': [{'name': 'state', 'type': 'float32', 'array': 'sequence', 'count': 128, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'reward', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'done', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Dqn.srv', 'bytes': 68, 'sha256': '163b4fa05097b87400ff94a3925450000665d3f04e4e3db8afbd743bc82cef8b'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Dqn', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 521, 'nodes': 132, 'depth': 3, 'codec_identity': 'UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 521, 'constants': []}}`.
- `turtlebot3_msgs/srv/Goal` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Goal_Request', 'members': [], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Goal.srv', 'bytes': 47, 'sha256': '2ee2d8023fd1c3ae99c80250770ddd0b6ea81ca92d4111a20d1026bd4f5e1e0a'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Goal', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Goal_Response', 'members': [{'name': 'pose_x', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose_y', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Goal.srv', 'bytes': 47, 'sha256': '2ee2d8023fd1c3ae99c80250770ddd0b6ea81ca92d4111a20d1026bd4f5e1e0a'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Goal', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 9, 'maximum': 9, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 9, 'constants': []}}`.
- `turtlebot3_msgs/srv/Sound` (service): `{'request': {'version': 2, 'name': 'turtlebot3_msgs/srv/Sound_Request', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Sound.srv', 'bytes': 295, 'sha256': '5c98b373291a8270e783e9224be89d1160efa4f9310e617603a079640d01f663'}, 'component': 'request', 'owner': 'turtlebot3_msgs/srv/Sound', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 2, 'name': 'turtlebot3_msgs/srv/Sound_Response', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/srv/Sound.srv', 'bytes': 295, 'sha256': '5c98b373291a8270e783e9224be89d1160efa4f9310e617603a079640d01f663'}, 'component': 'response', 'owner': 'turtlebot3_msgs/srv/Sound', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.

## noetic

ros1: 28 records, 2 services, 1 actions.

Catalog: `share/platform/robotis/catalogs/noetic/catalog.json`. Source pins: `source-lock.json`.

Upstream witnesses: `{'repositories': [{'id': 'comm_ros1', 'url': 'https://github.com/ros/ros_comm_msgs', 'branch': 'noetic-devel', 'commit': 'cdfe7c1761c42126e738d3b26722ff2a4a739d6a', 'tree_git_sha1': 'b4f158b45a56bef3c86009f1fa9065a4cdbff1f1', 'archive': {'url': 'https://codeload.github.com/ros/ros_comm_msgs/tar.gz/cdfe7c1761c42126e738d3b26722ff2a4a739d6a', 'bytes': 2708, 'sha256': '5ae65d09e37283f77b8bb990e59658ed149e1961ab3c20da95d2ae1563b69541'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'common_ros1', 'repository': 'ros/common_msgs', 'url': 'https://github.com/ros/common_msgs', 'branch': 'noetic-devel', 'commit': '092bc230c8153dd4cfee0c84c9796cc7e6b09fdb', 'tree_git_sha1': 'dd72cef60b6f589b398d37934be2971382d4340f', 'default_authority': [], 'qualification': 'Original standard source capture, no installed ROS or native identity qualification.'}, {'id': 'driver_noetic', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3', 'branch': 'noetic', 'commit': '4ae959ea6a52415c90bf752d2b76e3e28f8a87e2', 'tree_git_sha1': '3b3dc8f051fdff0e8689ecc10f33ffac31a99cbd', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3/tar.gz/4ae959ea6a52415c90bf752d2b76e3e28f8a87e2', 'bytes': 6848301, 'sha256': '0885f90cead4c876b3e79959189bf4ac28f8def2cddac3d4cb7a42faea5bd15c'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'msgs_noetic', 'url': 'https://github.com/ROBOTIS-GIT/turtlebot3_msgs', 'branch': 'noetic', 'commit': '76e78b0a34e07cf1dd16dafdc54c44f35c5b83eb', 'tree_git_sha1': 'fe24193f29cd1059779395fb17354d8f11fb8fef', 'archive': {'url': 'https://codeload.github.com/ROBOTIS-GIT/turtlebot3_msgs/tar.gz/76e78b0a34e07cf1dd16dafdc54c44f35c5b83eb', 'bytes': 7641, 'sha256': 'dd1f4b78c0efdbaf48caf41e882504994cd98958a9b85b1ce85749b1dfef7405'}, 'default_authority': [], 'scope': 'Original source and complete acquisition archive only; no compatibility, compiler, Guest, native or physical robot result.'}, {'id': 'std_ros1', 'repository': 'ros/std_msgs', 'url': 'https://github.com/ros/std_msgs', 'branch': 'noetic-devel', 'commit': '34198520757d1aab358118a0ef294fe2609fde33', 'tree_git_sha1': 'c6ce9f1fbbbe6a4310f237726df491359c874519', 'default_authority': [], 'qualification': 'Original standard source capture, no installed ROS or native identity qualification.'}]}`.

### geometry_msgs/Point

`Ros1Geometry_msgsPoint`; 24..24 canonical bytes. `UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/Quaternion

`Ros1Geometry_msgsQuaternion`; 32..32 canonical bytes. `UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |
| w | float64 | scalar | 0 | None |

### geometry_msgs/Pose

`Ros1Geometry_msgsPose`; 56..56 canonical bytes. `UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/Point | scalar | 0 | None |
| orientation | geometry_msgs/Quaternion | scalar | 0 | None |

### geometry_msgs/PoseWithCovariance

`Ros1Geometry_msgsPoseWithCovariance`; 344..344 canonical bytes. `UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/Pose | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### geometry_msgs/Vector3

`Ros1Geometry_msgsVector3`; 24..24 canonical bytes. `UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | 0 | None |
| y | float64 | scalar | 0 | None |
| z | float64 | scalar | 0 | None |

### geometry_msgs/Transform

`Ros1Geometry_msgsTransform`; 56..56 canonical bytes. `UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| translation | geometry_msgs/Vector3 | scalar | 0 | None |
| rotation | geometry_msgs/Quaternion | scalar | 0 | None |

### time

`Ros1Time`; 8..8 canonical bytes. `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| sec | uint32 | scalar | 0 | None |
| nsec | uint32 | scalar | 0 | None |

### std_msgs/Header

`Ros1Std_msgsHeader`; 16..144 canonical bytes. `UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| seq | uint32 | scalar | 0 | None |
| stamp | time | scalar | 0 | None |
| frame_id | string | scalar | 128 | None |

### geometry_msgs/TransformStamped

`Ros1Geometry_msgsTransformStamped`; 76..460 canonical bytes. `UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| transform | geometry_msgs/Transform | scalar | 0 | None |

### geometry_msgs/Twist

`Ros1Geometry_msgsTwist`; 48..48 canonical bytes. `UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/Vector3 | scalar | 0 | None |
| angular | geometry_msgs/Vector3 | scalar | 0 | None |

### geometry_msgs/TwistStamped

`Ros1Geometry_msgsTwistStamped`; 64..192 canonical bytes. `UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| twist | geometry_msgs/Twist | scalar | 0 | None |

### geometry_msgs/TwistWithCovariance

`Ros1Geometry_msgsTwistWithCovariance`; 336..336 canonical bytes. `UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| twist | geometry_msgs/Twist | scalar | 0 | None |
| covariance | float64 | array/36 | 0 | None |

### nav_msgs/Odometry

`Ros1Nav_msgsOdometry`; 700..1084 canonical bytes. `UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| child_frame_id | string | scalar | 256 | None |
| pose | geometry_msgs/PoseWithCovariance | scalar | 0 | None |
| twist | geometry_msgs/TwistWithCovariance | scalar | 0 | None |

### sensor_msgs/BatteryState

`Ros1Sensor_msgsBatteryState`; 64..832 canonical bytes. `UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| voltage | float32 | scalar | 0 | None |
| temperature | float32 | scalar | 0 | None |
| current | float32 | scalar | 0 | None |
| charge | float32 | scalar | 0 | None |
| capacity | float32 | scalar | 0 | None |
| design_capacity | float32 | scalar | 0 | None |
| percentage | float32 | scalar | 0 | None |
| power_supply_status | uint8 | scalar | 0 | None |
| power_supply_health | uint8 | scalar | 0 | None |
| power_supply_technology | uint8 | scalar | 0 | None |
| present | bool | scalar | 0 | None |
| cell_voltage | float32 | sequence/16 | 0 | None |
| cell_temperature | float32 | sequence/16 | 0 | None |
| location | string | scalar | 256 | None |
| serial_number | string | scalar | 256 | None |

Constants (not part of instance wire bytes):
- `POWER_SUPPLY_STATUS_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_STATUS_CHARGING` (uint8): `1`
- `POWER_SUPPLY_STATUS_DISCHARGING` (uint8): `2`
- `POWER_SUPPLY_STATUS_NOT_CHARGING` (uint8): `3`
- `POWER_SUPPLY_STATUS_FULL` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_HEALTH_GOOD` (uint8): `1`
- `POWER_SUPPLY_HEALTH_OVERHEAT` (uint8): `2`
- `POWER_SUPPLY_HEALTH_DEAD` (uint8): `3`
- `POWER_SUPPLY_HEALTH_OVERVOLTAGE` (uint8): `4`
- `POWER_SUPPLY_HEALTH_UNSPEC_FAILURE` (uint8): `5`
- `POWER_SUPPLY_HEALTH_COLD` (uint8): `6`
- `POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE` (uint8): `7`
- `POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE` (uint8): `8`
- `POWER_SUPPLY_TECHNOLOGY_UNKNOWN` (uint8): `0`
- `POWER_SUPPLY_TECHNOLOGY_NIMH` (uint8): `1`
- `POWER_SUPPLY_TECHNOLOGY_LION` (uint8): `2`
- `POWER_SUPPLY_TECHNOLOGY_LIPO` (uint8): `3`
- `POWER_SUPPLY_TECHNOLOGY_LIFE` (uint8): `4`
- `POWER_SUPPLY_TECHNOLOGY_NICD` (uint8): `5`
- `POWER_SUPPLY_TECHNOLOGY_LIMN` (uint8): `6`

### sensor_msgs/Imu

`Ros1Sensor_msgsImu`; 312..440 canonical bytes. `UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| orientation | geometry_msgs/Quaternion | scalar | 0 | None |
| orientation_covariance | float64 | array/9 | 0 | None |
| angular_velocity | geometry_msgs/Vector3 | scalar | 0 | None |
| angular_velocity_covariance | float64 | array/9 | 0 | None |
| linear_acceleration | geometry_msgs/Vector3 | scalar | 0 | None |
| linear_acceleration_covariance | float64 | array/9 | 0 | None |

### sensor_msgs/JointState

`Ros1Sensor_msgsJointState`; 32..472 canonical bytes. `UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| name | string | sequence/2 | 128 | None |
| position | float64 | sequence/2 | 0 | None |
| velocity | float64 | sequence/2 | 0 | None |
| effort | float64 | sequence/2 | 0 | None |

### sensor_msgs/LaserScan

`Ros1Sensor_msgsLaserScan`; 52..8372 canonical bytes. `UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| angle_min | float32 | scalar | 0 | None |
| angle_max | float32 | scalar | 0 | None |
| angle_increment | float32 | scalar | 0 | None |
| time_increment | float32 | scalar | 0 | None |
| scan_time | float32 | scalar | 0 | None |
| range_min | float32 | scalar | 0 | None |
| range_max | float32 | scalar | 0 | None |
| ranges | float32 | sequence/1024 | 0 | None |
| intensities | float32 | sequence/1024 | 0 | None |

### sensor_msgs/MagneticField

`Ros1Sensor_msgsMagneticField`; 112..240 canonical bytes. `UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| magnetic_field | geometry_msgs/Vector3 | scalar | 0 | None |
| magnetic_field_covariance | float64 | array/9 | 0 | None |

### std_srvs/SetBoolRequest

`Ros1Std_srvsSetBoolRequest`; 1..1 canonical bytes. `UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| data | bool | scalar | 0 | None |

### std_srvs/SetBoolResponse

`Ros1Std_srvsSetBoolResponse`; 5..261 canonical bytes. `UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### std_srvs/TriggerRequest

`Ros1Std_srvsTriggerRequest`; 0..0 canonical bytes. `UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |

### std_srvs/TriggerResponse

`Ros1Std_srvsTriggerResponse`; 5..261 canonical bytes. `UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | 0 | None |
| message | string | scalar | 256 | None |

### turtlebot3_example/Turtlebot3Goal

`Ros1Turtlebot3_exampleTurtlebot3Goal`; 24..24 canonical bytes. `UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| goal | geometry_msgs/Vector3 | scalar | 0 | None |

### turtlebot3_example/Turtlebot3Result

`Ros1Turtlebot3_exampleTurtlebot3Result`; 4..260 canonical bytes. `UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| result | string | scalar | 256 | None |

### turtlebot3_example/Turtlebot3Feedback

`Ros1Turtlebot3_exampleTurtlebot3Feedback`; 4..260 canonical bytes. `UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| state | string | scalar | 256 | None |

### turtlebot3_msgs/SensorState

`Ros1Turtlebot3_msgsSensorState`; 44..172 canonical bytes. `UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | 0 | None |
| bumper | uint8 | scalar | 0 | None |
| cliff | float32 | scalar | 0 | None |
| sonar | float32 | scalar | 0 | None |
| illumination | float32 | scalar | 0 | None |
| led | uint8 | scalar | 0 | None |
| button | uint8 | scalar | 0 | None |
| torque | bool | scalar | 0 | None |
| left_encoder | int32 | scalar | 0 | None |
| right_encoder | int32 | scalar | 0 | None |
| battery | float32 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `BUMPER_FORWARD` (uint8): `1`
- `BUMPER_BACKWARD` (uint8): `2`
- `CLIFF` (uint8): `1`
- `SONAR` (uint8): `1`
- `ILLUMINATION` (uint8): `1`
- `BUTTON0` (uint8): `1`
- `BUTTON1` (uint8): `2`
- `ERROR_LEFT_MOTOR` (uint8): `1`
- `ERROR_RIGHT_MOTOR` (uint8): `2`
- `TORQUE_ON` (uint8): `1`
- `TORQUE_OFF` (uint8): `2`

### turtlebot3_msgs/Sound

`Ros1Turtlebot3_msgsSound`; 1..1 canonical bytes. `UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| value | uint8 | scalar | 0 | None |

Constants (not part of instance wire bytes):
- `OFF` (uint8): `0`
- `ON` (uint8): `1`
- `LOW_BATTERY` (uint8): `2`
- `ERROR` (uint8): `3`
- `BUTTON1` (uint8): `4`
- `BUTTON2` (uint8): `5`

### turtlebot3_msgs/VersionInfo

`Ros1Turtlebot3_msgsVersionInfo`; 12..780 canonical bytes. `UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a`.

| Field | Type | Shape / capacity | Text byte bound | Original default |
| --- | --- | --- | --- | --- |
| hardware | string | scalar | 256 | None |
| firmware | string | scalar | 256 | None |
| software | string | scalar | 256 | None |

### Complete protocol components

- `geometry_msgs/Point` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/Point', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Point.msg', 'bytes': 84, 'sha256': 'eb4c07e591cf0269ccb17245dcd4f998162feb09cc8add85fa082c8a30bfc91d'}, 'component': '', 'owner': 'geometry_msgs/Point', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `geometry_msgs/Pose` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/Pose', 'members': [{'name': 'position', 'type': 'geometry_msgs/Point', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Pose.msg', 'bytes': 119, 'sha256': '8a700245088b5f3184699d8963e3c62f73bd92e46acc00cfaca491c1ceea35e5'}, 'component': '', 'owner': 'geometry_msgs/Pose', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/PoseWithCovariance` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/PoseWithCovariance', 'members': [{'name': 'pose', 'type': 'geometry_msgs/Pose', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/PoseWithCovariance.msg', 'bytes': 323, 'sha256': 'a22f234e91b9fcd4ba0c5b533496b43c62d7f6ade39082212ac9835679d29f94'}, 'component': '', 'owner': 'geometry_msgs/PoseWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 344, 'maximum': 344, 'nodes': 48, 'depth': 4, 'codec_identity': 'UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 344, 'constants': []}}`.
- `geometry_msgs/Quaternion` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/Quaternion', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'w', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Quaternion.msg', 'bytes': 108, 'sha256': '84f92e899c4d40fe49e7f823a8a73e5024bcf129d4aa97200a27ae4f9ff9ec6e'}, 'component': '', 'owner': 'geometry_msgs/Quaternion', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 32, 'nodes': 5, 'depth': 2, 'codec_identity': 'UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 32, 'constants': []}}`.
- `geometry_msgs/Transform` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/Transform', 'members': [{'name': 'translation', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'rotation', 'type': 'geometry_msgs/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Transform.msg', 'bytes': 118, 'sha256': 'c8916279f0a429dd9561158bd2133bc4e2d780277c3c594116b240a27e7a2993'}, 'component': '', 'owner': 'geometry_msgs/Transform', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 56, 'maximum': 56, 'nodes': 10, 'depth': 3, 'codec_identity': 'UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 56, 'constants': []}}`.
- `geometry_msgs/TransformStamped` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/TransformStamped', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'transform', 'type': 'geometry_msgs/Transform', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TransformStamped.msg', 'bytes': 337, 'sha256': '63432c40ac19428894910e7a43b4209c347d4c0b5d07b8ea545dc00192b5c16a'}, 'component': '', 'owner': 'geometry_msgs/TransformStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 76, 'maximum': 460, 'nodes': 18, 'depth': 4, 'codec_identity': 'UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 460, 'constants': []}}`.
- `geometry_msgs/Twist` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/Twist', 'members': [{'name': 'linear', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Twist.msg', 'bytes': 113, 'sha256': '623b98db7d37911a50ef002a97973709c20441426c68d1134de352a2d022767b'}, 'component': '', 'owner': 'geometry_msgs/Twist', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 48, 'maximum': 48, 'nodes': 9, 'depth': 3, 'codec_identity': 'UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 48, 'constants': []}}`.
- `geometry_msgs/TwistStamped` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/TwistStamped', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistStamped.msg', 'bytes': 82, 'sha256': '4ebc9ceb4303e7b552aaf72fffbdb5cd2f71a321d09198dbe8de5de4de381484'}, 'component': '', 'owner': 'geometry_msgs/TwistStamped', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 64, 'maximum': 192, 'nodes': 16, 'depth': 4, 'codec_identity': 'UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 192, 'constants': []}}`.
- `geometry_msgs/TwistWithCovariance` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/TwistWithCovariance', 'members': [{'name': 'twist', 'type': 'geometry_msgs/Twist', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'covariance', 'type': 'float64', 'array': 'array', 'count': 36, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/TwistWithCovariance.msg', 'bytes': 326, 'sha256': '5690a1f109d4962c73b5ca7f3673c48052d02f37b6a38fe2fb37c899cf555c45'}, 'component': '', 'owner': 'geometry_msgs/TwistWithCovariance', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 336, 'maximum': 336, 'nodes': 47, 'depth': 4, 'codec_identity': 'UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 336, 'constants': []}}`.
- `geometry_msgs/Vector3` (message): `{'message': {'version': 1, 'name': 'geometry_msgs/Vector3', 'members': [{'name': 'x', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'y', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'z', 'type': 'float64', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'geometry_msgs/msg/Vector3.msg', 'bytes': 382, 'sha256': 'fa1d5b56a10a940afcfd312936dde90864a398aa2a35598f36943c570d391296'}, 'component': '', 'owner': 'geometry_msgs/Vector3', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}}`.
- `nav_msgs/Odometry` (message): `{'message': {'version': 1, 'name': 'nav_msgs/Odometry', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'child_frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'pose', 'type': 'geometry_msgs/PoseWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'twist', 'type': 'geometry_msgs/TwistWithCovariance', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'nav_msgs/msg/Odometry.msg', 'bytes': 385, 'sha256': '26f7566bb04ed1ad1e729679fc334a4deff1048b7b7198f38ddd0ec1df9ffef6'}, 'component': '', 'owner': 'nav_msgs/Odometry', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 700, 'maximum': 1084, 'nodes': 103, 'depth': 5, 'codec_identity': 'UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1084, 'constants': []}}`.
- `sensor_msgs/BatteryState` (message): `{'message': {'version': 1, 'name': 'sensor_msgs/BatteryState', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'voltage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'temperature', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'current', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'charge', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'design_capacity', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'percentage', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_status', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_health', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'power_supply_technology', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'present', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_voltage', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cell_temperature', 'type': 'float32', 'array': 'sequence', 'count': 16, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'location', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'serial_number', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/BatteryState.msg', 'bytes': 2596, 'sha256': 'ec32ca2e356648bc3b1e128b5ad320241a5c3a7202cdfa671354e5fb6e475e80'}, 'component': '', 'owner': 'sensor_msgs/BatteryState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 64, 'maximum': 832, 'nodes': 54, 'depth': 4, 'codec_identity': 'UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 832, 'constants': [{'name': 'POWER_SUPPLY_STATUS_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_STATUS_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_STATUS_DISCHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_STATUS_NOT_CHARGING', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_STATUS_FULL', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_HEALTH_GOOD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_HEALTH_OVERHEAT', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_HEALTH_DEAD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_HEALTH_OVERVOLTAGE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_HEALTH_UNSPEC_FAILURE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_HEALTH_COLD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}, {'name': 'POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '7', 'value': '7'}, {'name': 'POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '8', 'value': '8'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_UNKNOWN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NIMH', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIPO', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIFE', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_NICD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}, {'name': 'POWER_SUPPLY_TECHNOLOGY_LIMN', 'type': 'uint8', 'native_type': 'uint8', 'literal': '6', 'value': '6'}]}}`.
- `sensor_msgs/Imu` (message): `{'message': {'version': 1, 'name': 'sensor_msgs/Imu', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation', 'type': 'geometry_msgs/Quaternion', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'orientation_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angular_velocity_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'linear_acceleration_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/Imu.msg', 'bytes': 1206, 'sha256': '50f2420308c7ca63f2f8e18ff1a03166fc7c922b00c7bf33a40c203902242ed9'}, 'component': '', 'owner': 'sensor_msgs/Imu', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 312, 'maximum': 440, 'nodes': 50, 'depth': 4, 'codec_identity': 'UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 440, 'constants': []}}`.
- `sensor_msgs/JointState` (message): `{'message': {'version': 1, 'name': 'sensor_msgs/JointState', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'name', 'type': 'string', 'array': 'sequence', 'count': 2, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'position', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'velocity', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'effort', 'type': 'float64', 'array': 'sequence', 'count': 2, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/JointState.msg', 'bytes': 995, 'sha256': '31e0c7daefc83de1da036d7c346394d65efe0239591ac718ad0b8f5caa97187a'}, 'component': '', 'owner': 'sensor_msgs/JointState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 32, 'maximum': 472, 'nodes': 19, 'depth': 4, 'codec_identity': 'UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 472, 'constants': []}}`.
- `sensor_msgs/LaserScan` (message): `{'message': {'version': 1, 'name': 'sensor_msgs/LaserScan', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'angle_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'time_increment', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'scan_time', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_min', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'range_max', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'ranges', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'intensities', 'type': 'float32', 'array': 'sequence', 'count': 1024, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/LaserScan.msg', 'bytes': 1519, 'sha256': '856d8888b44aab13da8fab5549922722f806dee07587f96f2d480c5d6a47eb2e'}, 'component': '', 'owner': 'sensor_msgs/LaserScan', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 52, 'maximum': 8372, 'nodes': 2064, 'depth': 4, 'codec_identity': 'UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 8372, 'constants': []}}`.
- `sensor_msgs/MagneticField` (message): `{'message': {'version': 1, 'name': 'sensor_msgs/MagneticField', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'magnetic_field_covariance', 'type': 'float64', 'array': 'array', 'count': 9, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'sensor_msgs/msg/MagneticField.msg', 'bytes': 1150, 'sha256': '2b6b0c0d512a18970e49b2b2617c75a20627f2da5acad5e4c83648373aebe393'}, 'component': '', 'owner': 'sensor_msgs/MagneticField', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 112, 'maximum': 240, 'nodes': 21, 'depth': 4, 'codec_identity': 'UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 240, 'constants': []}}`.
- `std_msgs/Header` (message): `{'message': {'version': 1, 'name': 'std_msgs/Header', 'members': [{'name': 'seq', 'type': 'uint32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'stamp', 'type': 'time', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'frame_id', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 128, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_msgs/msg/Header.msg', 'bytes': 551, 'sha256': '5e64e71bb8d9d47019367f6a621934aab7e6ffedc6cfdcc912486aa5576ed693'}, 'component': '', 'owner': 'std_msgs/Header', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 16, 'maximum': 144, 'nodes': 6, 'depth': 3, 'codec_identity': 'UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 144, 'constants': []}}`.
- `std_srvs/SetBool` (service): `{'request': {'version': 1, 'name': 'std_srvs/SetBoolRequest', 'members': [{'name': 'data', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'request', 'owner': 'std_srvs/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': []}, 'response': {'version': 1, 'name': 'std_srvs/SetBoolResponse', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/SetBool.srv', 'bytes': 173, 'sha256': 'a36d99cd5f0467a58a5b06b1443e9ffc0fcb59977190def5ef677fd16f05a664'}, 'component': 'response', 'owner': 'std_srvs/SetBool', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `std_srvs/Trigger` (service): `{'request': {'version': 1, 'name': 'std_srvs/TriggerRequest', 'members': [], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'request', 'owner': 'std_srvs/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 0, 'maximum': 0, 'nodes': 1, 'depth': 1, 'codec_identity': 'UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 0, 'constants': []}, 'response': {'version': 1, 'name': 'std_srvs/TriggerResponse', 'members': [{'name': 'success', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'message', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'std_srvs/srv/Trigger.srv', 'bytes': 122, 'sha256': '81e80d26771d0c0af8783938720c763cacc429e68d9d6b9c1f912474db0d8dca'}, 'component': 'response', 'owner': 'std_srvs/Trigger', 'kind': 'service', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 5, 'maximum': 261, 'nodes': 3, 'depth': 2, 'codec_identity': 'UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 261, 'constants': []}}`.
- `turtlebot3_example/Turtlebot3` (action): `{'goal': {'version': 1, 'name': 'turtlebot3_example/Turtlebot3Goal', 'members': [{'name': 'goal', 'type': 'geometry_msgs/Vector3', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_example/action/Turtlebot3.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'goal', 'owner': 'turtlebot3_example/Turtlebot3', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 24, 'maximum': 24, 'nodes': 5, 'depth': 3, 'codec_identity': 'UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 24, 'constants': []}, 'result': {'version': 1, 'name': 'turtlebot3_example/Turtlebot3Result', 'members': [{'name': 'result', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_example/action/Turtlebot3.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'result', 'owner': 'turtlebot3_example/Turtlebot3', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}, 'feedback': {'version': 1, 'name': 'turtlebot3_example/Turtlebot3Feedback', 'members': [{'name': 'state', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_example/action/Turtlebot3.action', 'bytes': 128, 'sha256': '239de7579be911d34379064c6a5bb53da4beb40dc7371328e3e49d6c5662a82f'}, 'component': 'feedback', 'owner': 'turtlebot3_example/Turtlebot3', 'kind': 'action', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 4, 'maximum': 260, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 260, 'constants': []}}`.
- `turtlebot3_msgs/SensorState` (message): `{'message': {'version': 1, 'name': 'turtlebot3_msgs/SensorState', 'members': [{'name': 'header', 'type': 'std_msgs/Header', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'bumper', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'cliff', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'sonar', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'illumination', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'led', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'button', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'torque', 'type': 'bool', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'left_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'right_encoder', 'type': 'int32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'battery', 'type': 'float32', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/SensorState.msg', 'bytes': 1132, 'sha256': '1a9e0c633878fbe28695f1a5490a5655acbfaf871df3d58d197b7f2d51ded8c1'}, 'component': '', 'owner': 'turtlebot3_msgs/SensorState', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 44, 'maximum': 172, 'nodes': 17, 'depth': 4, 'codec_identity': 'UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 172, 'constants': [{'name': 'BUMPER_FORWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUMPER_BACKWARD', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'CLIFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'SONAR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ILLUMINATION', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON0', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR_LEFT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'ERROR_RIGHT_MOTOR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'TORQUE_ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'TORQUE_OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}]}}`.
- `turtlebot3_msgs/Sound` (message): `{'message': {'version': 1, 'name': 'turtlebot3_msgs/Sound', 'members': [{'name': 'value', 'type': 'uint8', 'array': '', 'count': 0, 'string_bound': 0, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/Sound.msg', 'bytes': 344, 'sha256': 'eb4861a35e75b7b4a04baf8beb171b527e0d7a382c0db969f5b32a2cb97b8bdf'}, 'component': '', 'owner': 'turtlebot3_msgs/Sound', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 1, 'maximum': 1, 'nodes': 2, 'depth': 2, 'codec_identity': 'UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 1, 'constants': [{'name': 'OFF', 'type': 'uint8', 'native_type': 'uint8', 'literal': '0', 'value': '0'}, {'name': 'ON', 'type': 'uint8', 'native_type': 'uint8', 'literal': '1', 'value': '1'}, {'name': 'LOW_BATTERY', 'type': 'uint8', 'native_type': 'uint8', 'literal': '2', 'value': '2'}, {'name': 'ERROR', 'type': 'uint8', 'native_type': 'uint8', 'literal': '3', 'value': '3'}, {'name': 'BUTTON1', 'type': 'uint8', 'native_type': 'uint8', 'literal': '4', 'value': '4'}, {'name': 'BUTTON2', 'type': 'uint8', 'native_type': 'uint8', 'literal': '5', 'value': '5'}]}}`.
- `turtlebot3_msgs/VersionInfo` (message): `{'message': {'version': 1, 'name': 'turtlebot3_msgs/VersionInfo', 'members': [{'name': 'hardware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'firmware', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}, {'name': 'software', 'type': 'string', 'array': '', 'count': 0, 'string_bound': 256, 'native_string_bound': 0, 'native_sequence_bound': 0, 'native_default': None, 'native_scalar': '', 'string_encoding': 'utf8', 'float_policy': 'finite'}], 'identity': None, 'source': {'file': 'turtlebot3_msgs/msg/VersionInfo.msg', 'bytes': 350, 'sha256': '27497e6e84c079319860ad6444ff2b738a2d75243f46b637559d7c297f38ef68'}, 'component': '', 'owner': 'turtlebot3_msgs/VersionInfo', 'kind': 'message', 'profile': 'uwvm-ros-vendor-complete-bounded-v1', 'minimum': 12, 'maximum': 780, 'nodes': 4, 'depth': 2, 'codec_identity': 'UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a', 'has_native_defaults': False, 'aggregate_wire_bytes': 0, 'cartesian_maximum': 780, 'constants': []}}`.

