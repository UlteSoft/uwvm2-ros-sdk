# clearpath csharp 完整 API 目录

## ros1

### `clearpath_camera_msgs/InspectPOIGoal`

符号：`Ros1Clearpath_camera_msgsInspectPOIGoal`; 8..264 bytes.

Codec identity：`UWVMROS1_565be10d97c4c60912d396cfb44121df60bc367458a8907d0dbccb48df3a35db`.

- `poi_uuid`: `string`; text 256 bytes.
- `zoom`: `float32`.

### `clearpath_camera_msgs/InspectPOIResult`

符号：`Ros1Clearpath_camera_msgsInspectPOIResult`; 5..261 bytes.

Codec identity：`UWVMROS1_6e3fb05c4e74fb8dd7de685bc0f774506921e3b4cf060721b2a756771403e156`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_camera_msgs/InspectPOIFeedback`

符号：`Ros1Clearpath_camera_msgsInspectPOIFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_27296847f85ab4f22770912227596b59886335e35a4c3b0313fee5bf5b386777`.

- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/LocalDockGoal`

符号：`Ros1Clearpath_dock_msgsLocalDockGoal`; 0..0 bytes.

Codec identity：`UWVMROS1_45a53e58200f1fae57933c2414443a3ee7c0c80dfe5d849d59f5085030abab81`.

空语义值，不添加虚构字段。


### `clearpath_dock_msgs/LocalDockResult`

符号：`Ros1Clearpath_dock_msgsLocalDockResult`; 5..261 bytes.

Codec identity：`UWVMROS1_eb485112962a291a8ab4d789f8d36a96e9dd45b54c35ecd070ffefcef510310b`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/LocalDockFeedback`

符号：`Ros1Clearpath_dock_msgsLocalDockFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_242011c30d8e33482c33e2d379c7d70a021236a000ecf3f6df4941980cfe10e1`.

- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/LocalUndockGoal`

符号：`Ros1Clearpath_dock_msgsLocalUndockGoal`; 4..4 bytes.

Codec identity：`UWVMROS1_9ae8cdbd777755af0f8d92e93b3a45438af4b1b02af9fedfedf97ea45a0d81fc`.

- `undock_distance`: `float32`.

### `clearpath_dock_msgs/LocalUndockResult`

符号：`Ros1Clearpath_dock_msgsLocalUndockResult`; 5..261 bytes.

Codec identity：`UWVMROS1_e6f44748c15f5653f3f79ac5ebbcb8067a52736c1905aeb76a8646d4d0caf6c2`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/LocalUndockFeedback`

符号：`Ros1Clearpath_dock_msgsLocalUndockFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_f3d6f32b8f1735c612aba8c5bfc6bc4d45f59b80b3ed75e6fc64f20b821d534f`.

- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/NetworkDockGoal`

符号：`Ros1Clearpath_dock_msgsNetworkDockGoal`; 8..520 bytes.

Codec identity：`UWVMROS1_d4b9ecb8f25cbbb6b0db567d93de10a739e9d4f5b5cc9a9744a45bd515de45ec`.

- `dock_uuid`: `string`; text 256 bytes.
- `network_uuid`: `string`; text 256 bytes.

### `clearpath_dock_msgs/NetworkDockResult`

符号：`Ros1Clearpath_dock_msgsNetworkDockResult`; 5..261 bytes.

Codec identity：`UWVMROS1_7f7886646fa1c9792d2ded3033e67f6476d5401a5d67536365d7b97b9318a913`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `time`

符号：`Ros1Time`; 8..8 bytes.

Codec identity：`UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`.

- `sec`: `uint32`.
- `nsec`: `uint32`.

### `std_msgs/Header`

符号：`Ros1Std_msgsHeader`; 16..144 bytes.

Codec identity：`UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435`.

- `seq`: `uint32`.
- `stamp`: `time`.
- `frame_id`: `string`; text 128 bytes.

### `clearpath_navigation_msgs/Task`

符号：`Ros1Clearpath_navigation_msgsTask`; 25..1457 bytes.

Codec identity：`UWVMROS1_9800265a8c633618cc26019c169871c8f2cb53c56aebba1567b1de52f15ac658`.

- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `action_server_name`: `string`; text 256 bytes.
- `version`: `string`; text 256 bytes.
- `floats`: `float64`; sequence 2.
- `strings`: `string`; sequence 2; text 256 bytes.
- `allow_failure`: `bool`.

### `clearpath_navigation_msgs/Waypoint`

符号：`Ros1Clearpath_navigation_msgsWaypoint`; 52..3350 bytes.

Codec identity：`UWVMROS1_68f7d2e826789aad21d6f15bd06060b6e0fb0bdac40bdc7de685c935afc93c30`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `heading`: `float64`.
- `position_tolerance`: `float64`.
- `yaw_tolerance`: `float64`.
- `tasks`: `clearpath_navigation_msgs/Task`; sequence 2.

### `geometry_msgs/Point`

符号：`Ros1Geometry_msgsPoint`; 24..24 bytes.

Codec identity：`UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.

### `clearpath_navigation_msgs/NetworkMissionSegment`

符号：`Ros1Clearpath_navigation_msgsNetworkMissionSegment`; 72..3546 bytes.

Codec identity：`UWVMROS1_63c55d82f410637d740a5a5c93fe4f1e0d1539bdbce947eac474bb2472355877`.

- `header`: `std_msgs/Header`.
- `goal`: `clearpath_navigation_msgs/Waypoint`.
- `points`: `geometry_msgs/Point`; sequence 2.

### `clearpath_dock_msgs/NetworkDockFeedback`

符号：`Ros1Clearpath_dock_msgsNetworkDockFeedback`; 76..3806 bytes.

Codec identity：`UWVMROS1_5b1b091da1ad18a3686cd6b3c57b2c181539a5b94e0f31dd2ddb89aa297bd6f6`.

- `message`: `string`; text 256 bytes.
- `network_plan`: `clearpath_navigation_msgs/NetworkMissionSegment`.

### `clearpath_dock_msgs/RadiusDockGoal`

符号：`Ros1Clearpath_dock_msgsRadiusDockGoal`; 4..260 bytes.

Codec identity：`UWVMROS1_078d5852eab50c98283fcb512c9b9161ea1a710b5827b5738fbe0199323230a9`.

- `dock_uuid`: `string`; text 256 bytes.

### `clearpath_dock_msgs/RadiusDockResult`

符号：`Ros1Clearpath_dock_msgsRadiusDockResult`; 5..261 bytes.

Codec identity：`UWVMROS1_e4b1757e3b129f7de6427334ea3ad10d6bd7df27a0558af6130b20ab37a5c30a`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/RadiusDockFeedback`

符号：`Ros1Clearpath_dock_msgsRadiusDockFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_1a3467aced8c46a9d3c1146d69d9af4b1ec04849b52c2fb971ed12e6c587c048`.

- `message`: `string`; text 256 bytes.

### `clearpath_localization_msgs/SurveyBaseStationGoal`

符号：`Ros1Clearpath_localization_msgsSurveyBaseStationGoal`; 4..4 bytes.

Codec identity：`UWVMROS1_0cc3ffd35550c179c2cc3a7a40a6c0976ff2749c5405473d8b0504ff1bd2e904`.

- `number_of_desired_fixes`: `uint32`.

### `clearpath_localization_msgs/SurveyBaseStationResult`

符号：`Ros1Clearpath_localization_msgsSurveyBaseStationResult`; 1..1 bytes.

Codec identity：`UWVMROS1_80e92d291c46cd247b66d76aef498a69a9a1289d55442d2fc170092728a1b466`.

- `success`: `bool`.

### `clearpath_localization_msgs/SurveyBaseStationFeedback`

符号：`Ros1Clearpath_localization_msgsSurveyBaseStationFeedback`; 4..4 bytes.

Codec identity：`UWVMROS1_d90857766b78e69fe9ccd7fcc4fc234e8411fcd162ef0d1912b3d11465ba3d72`.

- `percent_complete`: `float32`.

### `duration`

符号：`Ros1Duration`; 8..8 bytes.

Codec identity：`UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`.

- `sec`: `int32`.
- `nsec`: `int32`.

### `clearpath_mission_scheduler_msgs/RunScheduleByUuidGoal`

符号：`Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidGoal`; 12..268 bytes.

Codec identity：`UWVMROS1_cbe7e0318b365563a448441b29166d798a20ef92c0c65415f80c1a71a00cbf72`.

- `uuid`: `string`; text 256 bytes.
- `delay`: `duration`.

### `clearpath_mission_scheduler_msgs/RunScheduleByUuidResult`

符号：`Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidResult`; 1..1 bytes.

Codec identity：`UWVMROS1_01288b98deab00397457f14ea6817e320bff6448f839acfad0047654facb91d4`.

- `success`: `bool`.

### `clearpath_mission_scheduler_msgs/RunScheduleByUuidFeedback`

符号：`Ros1Clearpath_mission_scheduler_msgsRunScheduleByUuidFeedback`; 8..520 bytes.

Codec identity：`UWVMROS1_8b075ffb1cdf13580f5a4ddec2cb3d6edbeb88a9ba1e038d85a82a6029ec0f32`.

- `current_mission_uuid`: `string`; text 256 bytes.
- `state`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/ExecuteMissionByUuidGoal`

符号：`Ros1Clearpath_navigation_msgsExecuteMissionByUuidGoal`; 9..521 bytes.

Codec identity：`UWVMROS1_2026328374c75acb27d33669d0e8a4aa7aa9527b90607c23e5aae986b2be7801`.

- `uuid`: `string`; text 256 bytes.
- `from_start`: `bool`.
- `start_waypoint_uuid`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/ExecuteMissionByUuidResult`

符号：`Ros1Clearpath_navigation_msgsExecuteMissionByUuidResult`; 5..261 bytes.

Codec identity：`UWVMROS1_5b93894ac84b85948b10ebe884bd74c1c0bc90031a86f407516badb1940a12f8`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/ExecuteMissionByUuidFeedback`

符号：`Ros1Clearpath_navigation_msgsExecuteMissionByUuidFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_f86df88585d2f804900f3d362f53bcb1552c3981c806b9d5a3eb83be6023b8fb`.

- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/ExecuteNetworkGoToGoal`

符号：`Ros1Clearpath_navigation_msgsExecuteNetworkGoToGoal`; 56..3610 bytes.

Codec identity：`UWVMROS1_0877cd8087712f31f6f7d6461f9a12eb23c62b0369b02b1363be5367e6bbe9a5`.

- `map_uuid`: `string`; text 256 bytes.
- `waypoint`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_navigation_msgs/ExecuteNetworkGoToResult`

符号：`Ros1Clearpath_navigation_msgsExecuteNetworkGoToResult`; 6..262 bytes.

Codec identity：`UWVMROS1_2b2841163f46c7b7debb7cfe15df2b60f32e103396455f68ed328a1a11cddeda`.

- `code`: `uint8`.
- `success`: `bool`.
- `message`: `string`; text 256 bytes.

- Constant `UNKNOWN`: `uint8 = 0`.
- Constant `CANCELLED`: `uint8 = 1`.
- Constant `COLLISION`: `uint8 = 2`.
- Constant `PLANNING`: `uint8 = 3`.
- Constant `START_TASKS`: `uint8 = 4`.
- Constant `END_TASKS`: `uint8 = 5`.
- Constant `MISSION_TASKS`: `uint8 = 6`.

### `clearpath_navigation_msgs/ExecuteNetworkGoToFeedback`

符号：`Ros1Clearpath_navigation_msgsExecuteNetworkGoToFeedback`; 76..3806 bytes.

Codec identity：`UWVMROS1_fe1de33d922bd1483c747ede295e8383a18848ae5911e66fb947fd110a196067`.

- `message`: `string`; text 256 bytes.
- `network_plan`: `clearpath_navigation_msgs/NetworkMissionSegment`.

### `clearpath_navigation_msgs/ExecuteNetworkMissionByUuidGoal`

符号：`Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidGoal`; 8..520 bytes.

Codec identity：`UWVMROS1_f75615051b84d90d373e7a16785d6cfaf7c48465ea3a644dc54711172a13be65`.

- `mission_uuid`: `string`; text 256 bytes.
- `map_uuid`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/NetworkGoalState`

符号：`Ros1Clearpath_navigation_msgsNetworkGoalState`; 53..3351 bytes.

Codec identity：`UWVMROS1_2a039023aed39c0b8b3e91c1938a6b9b41c94e698639bc4b27fb377e9e5dde01`.

- `state`: `uint8`.
- `waypoint`: `clearpath_navigation_msgs/Waypoint`.

- Constant `PENDING`: `uint8 = 0`.
- Constant `ACTIVE`: `uint8 = 1`.
- Constant `SUCCEEDED`: `uint8 = 2`.
- Constant `NAV_FAILURE`: `uint8 = 3`.
- Constant `TASK_WARNING`: `uint8 = 4`.
- Constant `TASK_FAILURE`: `uint8 = 5`.

### `clearpath_navigation_msgs/ExecuteNetworkMissionByUuidResult`

符号：`Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidResult`; 10..6968 bytes.

Codec identity：`UWVMROS1_5bdab4569bc5bb4f94910b294acf04708f4677f6a1adcc326ee0420edf6de856`.

- `code`: `uint8`.
- `success`: `bool`.
- `message`: `string`; text 256 bytes.
- `goal_states`: `clearpath_navigation_msgs/NetworkGoalState`; sequence 2.

- Constant `UNKNOWN`: `uint8 = 0`.
- Constant `CANCELLED`: `uint8 = 1`.
- Constant `COLLISION`: `uint8 = 2`.
- Constant `PLANNING`: `uint8 = 3`.
- Constant `START_TASKS`: `uint8 = 4`.
- Constant `END_TASKS`: `uint8 = 5`.
- Constant `MISSION_TASKS`: `uint8 = 6`.

### `clearpath_navigation_msgs/ExecuteNetworkMissionByUuidFeedback`

符号：`Ros1Clearpath_navigation_msgsExecuteNetworkMissionByUuidFeedback`; 80..10512 bytes.

Codec identity：`UWVMROS1_f36146854331b1ff188708a23717889180d6bda4fed7ae6c6e758782372d0927`.

- `message`: `string`; text 256 bytes.
- `goal_states`: `clearpath_navigation_msgs/NetworkGoalState`; sequence 2.
- `network_plan`: `clearpath_navigation_msgs/NetworkMissionSegment`.

### `geometry_msgs/Quaternion`

符号：`Ros1Geometry_msgsQuaternion`; 32..32 bytes.

Codec identity：`UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.
- `w`: `float64`.

### `geometry_msgs/Pose`

符号：`Ros1Geometry_msgsPose`; 56..56 bytes.

Codec identity：`UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`.

- `position`: `geometry_msgs/Point`.
- `orientation`: `geometry_msgs/Quaternion`.

### `geometry_msgs/PoseStamped`

符号：`Ros1Geometry_msgsPoseStamped`; 72..200 bytes.

Codec identity：`UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95`.

- `header`: `std_msgs/Header`.
- `pose`: `geometry_msgs/Pose`.

### `clearpath_navigation_msgs/GetWaypointPathGoal`

符号：`Ros1Clearpath_navigation_msgsGetWaypointPathGoal`; 90..874 bytes.

Codec identity：`UWVMROS1_9f4e55ff8c5c423e58bc206b5ba8cf40f2dce89fe6b6194e3f274f33915c8373`.

- `waypoints`: `geometry_msgs/PoseStamped`; sequence 2.
- `use_start_pose`: `bool`.
- `start_pose`: `geometry_msgs/PoseStamped`.
- `tolerance`: `float64`.
- `planner`: `string`; text 256 bytes.
- `concurrency_slot`: `uint8`.

### `nav_msgs/Path`

符号：`Ros1Nav_msgsPath`; 20..548 bytes.

Codec identity：`UWVMROS1_4451806e82167229ab44f7a8f9f3de7bdcec2e8b7c98e8765b029c7e76af7f60`.

- `header`: `std_msgs/Header`.
- `poses`: `geometry_msgs/PoseStamped`; sequence 2.

### `std_msgs/Duration`

符号：`Ros1Std_msgsDuration`; 8..8 bytes.

Codec identity：`UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175`.

- `data`: `duration`.

### `clearpath_navigation_msgs/GetWaypointPathResult`

符号：`Ros1Clearpath_navigation_msgsGetWaypointPathResult`; 44..828 bytes.

Codec identity：`UWVMROS1_e380ef98ced5ac0bb2edff0accf0df86828cc9d9a8d17c73d7b236b8f660c396`.

- `outcome`: `uint32`.
- `message`: `string`; text 256 bytes.
- `path`: `nav_msgs/Path`.
- `cost`: `float64`.
- `planning_time`: `std_msgs/Duration`.

- Constant `SUCCESS`: `uint8 = 0`.
- Constant `FAILURE`: `uint8 = 50`.
- Constant `CANCELED`: `uint8 = 51`.
- Constant `INVALID_START`: `uint8 = 52`.
- Constant `INVALID_GOAL`: `uint8 = 53`.
- Constant `NO_PATH_FOUND`: `uint8 = 54`.
- Constant `PAT_EXCEEDED`: `uint8 = 55`.
- Constant `EMPTY_PATH`: `uint8 = 56`.
- Constant `TF_ERROR`: `uint8 = 57`.
- Constant `NOT_INITIALIZED`: `uint8 = 58`.
- Constant `INVALID_PLUGIN`: `uint8 = 59`.
- Constant `INTERNAL_ERROR`: `uint8 = 60`.
- Constant `OUT_OF_MAP`: `uint8 = 61`.
- Constant `MAP_ERROR`: `uint8 = 62`.
- Constant `STOPPED`: `uint8 = 63`.

### `clearpath_navigation_msgs/GetWaypointPathFeedback`

符号：`Ros1Clearpath_navigation_msgsGetWaypointPathFeedback`; 0..0 bytes.

Codec identity：`UWVMROS1_d1e0f84cfd174723eaae1a46d298702562ce42b19875146e18bf58ac6a1c9cec`.

空语义值，不添加虚构字段。


### `clearpath_navigation_msgs/Mission`

符号：`Ros1Clearpath_navigation_msgsMission`; 40..13336 bytes.

Codec identity：`UWVMROS1_7a2e7409a879989eedd02009b13a33cc775188ee2af9409a3a47ed8fd38d4490`.

- `header`: `std_msgs/Header`.
- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `waypoints`: `clearpath_navigation_msgs/Waypoint`; sequence 2.
- `on_start`: `clearpath_navigation_msgs/Task`; sequence 2.
- `on_stop`: `clearpath_navigation_msgs/Task`; sequence 2.
- `onav_config`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/MissionGoal`

符号：`Ros1Clearpath_navigation_msgsMissionGoal`; 93..16687 bytes.

Codec identity：`UWVMROS1_d763e90ea09778c5cf9d16bb789eaec779b81a3527fec14fa556b2a2fbfe41bc`.

- `mission`: `clearpath_navigation_msgs/Mission`.
- `from_start`: `bool`.
- `start_waypoint`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_navigation_msgs/MissionResult`

符号：`Ros1Clearpath_navigation_msgsMissionResult`; 5..261 bytes.

Codec identity：`UWVMROS1_9f8dcc6b43b368957630f5dd039ec3a7e3bc1091a04a3acd639a9571293628a2`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/MissionFeedback`

符号：`Ros1Clearpath_navigation_msgsMissionFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_dfb40538ac8673b076a60565a1bca3b9805b7cf6a0ab5b50a46cbc6cdd59f2ef`.

- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/NetworkGoToPOIGoal`

符号：`Ros1Clearpath_navigation_msgsNetworkGoToPOIGoal`; 8..520 bytes.

Codec identity：`UWVMROS1_f8c1dddcecc439487e6811465240e02f26291fe68ae773d9cbf2a61a976de4bd`.

- `poi_uuid`: `string`; text 256 bytes.
- `map_uuid`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/NetworkGoToPOIResult`

符号：`Ros1Clearpath_navigation_msgsNetworkGoToPOIResult`; 5..261 bytes.

Codec identity：`UWVMROS1_402e95779afd664798a412dbebce299c4a4cc332c5d01bda4b19f2c24023c548`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/NetworkGoToPOIFeedback`

符号：`Ros1Clearpath_navigation_msgsNetworkGoToPOIFeedback`; 76..3806 bytes.

Codec identity：`UWVMROS1_77676f75545d6eb58b93904be926923f749a6ddc7332476dd23e635ed0e072e8`.

- `message`: `string`; text 256 bytes.
- `network_plan`: `clearpath_navigation_msgs/NetworkMissionSegment`.

### `clearpath_navigation_msgs/RecordPathGoal`

符号：`Ros1Clearpath_navigation_msgsRecordPathGoal`; 16..16 bytes.

Codec identity：`UWVMROS1_64cc3f4f8c7cd725d8a5a1a7286cacafd7a41ab74e8d664dc10149ac92b0cf68`.

- `max_deviation`: `float64`.
- `min_distance`: `float64`.

### `clearpath_navigation_msgs/Vector2D64`

符号：`Ros1Clearpath_navigation_msgsVector2D64`; 16..16 bytes.

Codec identity：`UWVMROS1_13edfb447d3fdb131755cd00318a6ce89fc45096b9e41440b021231b324caee9`.

- `point`: `float64`; array 2.

### `clearpath_navigation_msgs/RecordPathResult`

符号：`Ros1Clearpath_navigation_msgsRecordPathResult`; 4..36 bytes.

Codec identity：`UWVMROS1_e2b420a2149b030f0aac9bba36797abfcb705d6478679dfe85b00e83be0ebe98`.

- `points`: `clearpath_navigation_msgs/Vector2D64`; sequence 2.

### `clearpath_navigation_msgs/RecordPathFeedback`

符号：`Ros1Clearpath_navigation_msgsRecordPathFeedback`; 4..36 bytes.

Codec identity：`UWVMROS1_3d12790afde54b03439f03f1fd1453d746fbfeddf8a8cfd2cf0af0f2a4e8ee7a`.

- `points`: `clearpath_navigation_msgs/Vector2D64`; sequence 2.

### `clearpath_navigation_msgs/RunNetworkGoToPlannerGoal`

符号：`Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerGoal`; 56..3610 bytes.

Codec identity：`UWVMROS1_95c219ff4985d097b9bd8e24f7811fb1090ce3d0d977f6d53f7ad8191cfeb4dc`.

- `map_uuid`: `string`; text 256 bytes.
- `waypoint`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_navigation_msgs/RunNetworkGoToPlannerResult`

符号：`Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerResult`; 1..1 bytes.

Codec identity：`UWVMROS1_74a36e238244de86de447c97874d3b22a8cea29c61c0000a38cb97981bd0ffad`.

- `success`: `bool`.

### `clearpath_navigation_msgs/RunNetworkGoToPlannerFeedback`

符号：`Ros1Clearpath_navigation_msgsRunNetworkGoToPlannerFeedback`; 20..196 bytes.

Codec identity：`UWVMROS1_0a0c6aa1c129a3c64ab4fc70915d8d4fe2c320b24d0a127f61b09b55c091f0be`.

- `header`: `std_msgs/Header`.
- `points`: `geometry_msgs/Point`; sequence 2.

### `clearpath_navigation_msgs/RunNetworkMissionPreviewerGoal`

符号：`Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerGoal`; 8..520 bytes.

Codec identity：`UWVMROS1_80e350b2bcb3fe42a76d2a717ca07e57f7d9a31ba2f21066d5f2b59822ec8966`.

- `map_uuid`: `string`; text 256 bytes.
- `mission_uuid`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/RunNetworkMissionPreviewerResult`

符号：`Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerResult`; 1..1 bytes.

Codec identity：`UWVMROS1_57d1973b7ae42cf0dbba42920caf934cb9ce1dee9c934e11b7044e52b4fc7b10`.

- `success`: `bool`.

### `clearpath_navigation_msgs/RunNetworkMissionPreviewerFeedback`

符号：`Ros1Clearpath_navigation_msgsRunNetworkMissionPreviewerFeedback`; 4..7096 bytes.

Codec identity：`UWVMROS1_5e2c543ebca10579806d00dd9b7cc5c302e31a2fcf54321ff07f55fa58ec8e89`.

- `segments`: `clearpath_navigation_msgs/NetworkMissionSegment`; sequence 2.

### `clearpath_navigation_msgs/SmoothPathGoal`

符号：`Ros1Clearpath_navigation_msgsSmoothPathGoal`; 52..580 bytes.

Codec identity：`UWVMROS1_bed6cefe852634fd4fa352eb0413c69583559346cc66772514345d4c71ae8a05`.

- `path`: `nav_msgs/Path`.
- `type`: `uint8`.
- `spline_points_per_unit`: `int32`.
- `spline_skip_points`: `int32`.
- `spline_use_end_conditions`: `bool`.
- `spline_use_middle_conditions`: `bool`.
- `dubins_turning_radius`: `float64`.
- `dubins_step_size`: `float64`.
- `generic_enable_refinement`: `bool`.
- `generic_refinement_iterations`: `int32`.

- Constant `CUBIC_SPLINE_SMOOTHER`: `uint8 = 1`.
- Constant `DUBINS_SMOOTHER`: `uint8 = 2`.
- Constant `GENERIC_SMOOTHER`: `uint8 = 3`.

### `clearpath_navigation_msgs/SmoothPathResult`

符号：`Ros1Clearpath_navigation_msgsSmoothPathResult`; 28..556 bytes.

Codec identity：`UWVMROS1_f42205bb1dad95ed43d6d8f9159ea3803a944050dcfc5b840309e9fd104bf5f9`.

- `smoothed_path`: `nav_msgs/Path`.
- `time`: `float64`.

### `clearpath_navigation_msgs/SmoothPathFeedback`

符号：`Ros1Clearpath_navigation_msgsSmoothPathFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_f5ab7d56fd2811fd4caac7fe44c6a1c7a4f6b5593ee1903251bf312a979c09d1`.

- `sequence`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/UITaskGoal`

符号：`Ros1Clearpath_navigation_msgsUITaskGoal`; 12..804 bytes.

Codec identity：`UWVMROS1_29c35437efebdb8c8c42b2ab4ed29f81e6f8e91c300380ba7099dd68a862ef9b`.

- `version`: `string`; text 256 bytes.
- `floats`: `float64`; sequence 2.
- `strings`: `string`; sequence 2; text 256 bytes.

### `clearpath_navigation_msgs/UITaskResult`

符号：`Ros1Clearpath_navigation_msgsUITaskResult`; 1..1 bytes.

Codec identity：`UWVMROS1_f88d16093a93f26c60a09ed08a0944ba8b3da03fda60d514dce4a8e48533b3ad`.

- `success`: `bool`.

### `clearpath_navigation_msgs/UITaskFeedback`

符号：`Ros1Clearpath_navigation_msgsUITaskFeedback`; 4..260 bytes.

Codec identity：`UWVMROS1_bb14cbf36189f1bc9759c168619ab4cd6be5d68147658ac54535f16d36f2960f`.

- `state`: `string`; text 256 bytes.

### `clearpath_configuration_msgs/AutonomyConfig`

符号：`Ros1Clearpath_configuration_msgsAutonomyConfig`; 12..268 bytes.

Codec identity：`UWVMROS1_94bd6352cf4c46adffcfffd54ad5ac5e1b0cb4aadc98ea00eeb9c62a8ec5be2c`.

- `version`: `string`; text 256 bytes.
- `uptime`: `float64`.

### `clearpath_configuration_msgs/PlatformConfig`

符号：`Ros1Clearpath_configuration_msgsPlatformConfig`; 0..0 bytes.

Codec identity：`UWVMROS1_8ec6a196a91bd5d6cd4d4ea2af14b5c549d8efe82c1da95ec08903bb4cbc5407`.

空语义值，不添加虚构字段。


### `clearpath_control_msgs/AutonomySync`

符号：`Ros1Clearpath_control_msgsAutonomySync`; 5..7 bytes.

Codec identity：`UWVMROS1_55bd50b3af5341d9a4793156e250a75451dfc293f5b18036d493c22cc23ca7a4`.

- `status`: `uint8`.
- `missionType`: `uint8`; sequence 2.

- Constant `EMPTY`: `uint8 = 0`.
- Constant `PROCESSING`: `uint8 = 1`.
- Constant `PENDING_PAUSE`: `uint8 = 2`.
- Constant `PAUSED`: `uint8 = 3`.
- Constant `IDLE`: `uint8 = 4`.
- Constant `TEACH`: `uint8 = 5`.
- Constant `REPEAT`: `uint8 = 6`.
- Constant `MANNED`: `uint8 = 7`.
- Constant `UNMANNED`: `uint8 = 8`.

### `clearpath_control_msgs/ControlMode`

符号：`Ros1Clearpath_control_msgsControlMode`; 1..1 bytes.

Codec identity：`UWVMROS1_654f836cb5e86bdc3c861109e4c976683f6368e8d856c7145642c6b2c7260cfc`.

- `mode`: `int8`.

- Constant `NEUTRAL`: `int8 = 0`.
- Constant `MANUAL`: `int8 = 1`.
- Constant `AUTONOMY`: `int8 = 2`.

### `clearpath_control_msgs/ControlState`

符号：`Ros1Clearpath_control_msgsControlState`; 2..2 bytes.

Codec identity：`UWVMROS1_3553232b4b685317bcb311ee342d756f535155d72b33a58b1346eb036badd860`.

- `enabled`: `bool`.
- `paused`: `bool`.

### `clearpath_control_msgs/ControlSelectionState`

符号：`Ros1Clearpath_control_msgsControlSelectionState`; 3..3 bytes.

Codec identity：`UWVMROS1_1dff74daa9b8550504ebab354d18f2a40a143fcb3cfd721e3d04aab79546f994`.

- `autonomy`: `clearpath_control_msgs/ControlState`.
- `mode`: `clearpath_control_msgs/ControlMode`.

### `clearpath_dock_msgs/DockInfo`

符号：`Ros1Clearpath_dock_msgsDockInfo`; 52..1204 bytes.

Codec identity：`UWVMROS1_d4c6b31ecbec7e01340e6693718db5de0429a897dda5caea9ee49b58a77649c7`.

- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `frame`: `string`; text 256 bytes.
- `target_template`: `string`; text 256 bytes.
- `last_location_set_time`: `string`; text 256 bytes.
- `max_predock_distance`: `float32`.
- `predock_distance`: `float32`.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `heading`: `float64`.

### `clearpath_dock_msgs/DockProperties`

符号：`Ros1Clearpath_dock_msgsDockProperties`; 4..2412 bytes.

Codec identity：`UWVMROS1_842af6b3b69fb6e2dfe1fdaabed4e45d6a39410456960dd7a4422eb491d19a76`.

- `docks`: `clearpath_dock_msgs/DockInfo`; sequence 2.

### `clearpath_dock_msgs/DockState`

符号：`Ros1Clearpath_dock_msgsDockState`; 1..1 bytes.

Codec identity：`UWVMROS1_18f6c0addce5321932de99e4b80127dc1ac69f545778938e39b293be4c5e7a53`.

- `state`: `uint8`.

- Constant `UNDOCKED`: `uint8 = 0`.
- Constant `DOCKED`: `uint8 = 1`.
- Constant `IN_PROGRESS`: `uint8 = 2`.
- Constant `FAILED`: `uint8 = 3`.
- Constant `CANCELLED`: `uint8 = 4`.

### `geometry_msgs/PoseWithCovariance`

符号：`Ros1Geometry_msgsPoseWithCovariance`; 344..344 bytes.

Codec identity：`UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf`.

- `pose`: `geometry_msgs/Pose`.
- `covariance`: `float64`; array 36.

### `geometry_msgs/PoseWithCovarianceStamped`

符号：`Ros1Geometry_msgsPoseWithCovarianceStamped`; 360..488 bytes.

Codec identity：`UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9`.

- `header`: `std_msgs/Header`.
- `pose`: `geometry_msgs/PoseWithCovariance`.

### `clearpath_dock_msgs/TargetTrackerState`

符号：`Ros1Clearpath_dock_msgsTargetTrackerState`; 374..502 bytes.

Codec identity：`UWVMROS1_22cddfc9827c9b576e8baf843379e8856efd0b22c309ae700c619945c45274a8`.

- `active`: `bool`.
- `target_locked`: `bool`.
- `target_pose`: `geometry_msgs/PoseWithCovarianceStamped`.
- `score`: `float32`.
- `distance_to_target`: `float64`.

### `clearpath_localization_msgs/GNSSStatus`

符号：`Ros1Clearpath_localization_msgsGNSSStatus`; 17..273 bytes.

Codec identity：`UWVMROS1_4bda462d76cea809faf3fad93446de6db661c1379d743f829f7bcf64ef7959f3`.

- `receiver_type`: `uint8`.
- `position_fix_type`: `uint8`.
- `heading_fix_type`: `uint8`.
- `num_connected_sats`: `uint8`.
- `num_sats_solution`: `uint8`.
- `cn0`: `float32`; sequence 64.
- `correction_age`: `float64`.

- Constant `POSITION_RECEIVER`: `uint8 = 0`.
- Constant `HEADING_RECEIVER`: `uint8 = 1`.
- Constant `BASE_STATION_RECEIVER`: `uint8 = 2`.
- Constant `POSITION_NO_FIX`: `uint8 = 0`.
- Constant `POSITION_SPP`: `uint8 = 1`.
- Constant `POSITION_SBAS`: `uint8 = 2`.
- Constant `POSITION_RTK_FLOAT`: `uint8 = 3`.
- Constant `POSITION_RTK_FIXED`: `uint8 = 4`.
- Constant `HEADING_NOT_APPLICABLE`: `uint8 = 0`.
- Constant `HEADING_NO_SOLUTION`: `uint8 = 1`.
- Constant `HEADING_RTK_FLOAT`: `uint8 = 2`.
- Constant `HEADING_RTK_FIXED`: `uint8 = 3`.

### `clearpath_localization_msgs/LocalizationStatus`

符号：`Ros1Clearpath_localization_msgsLocalizationStatus`; 72..968 bytes.

Codec identity：`UWVMROS1_2dcb14d889fb5ccc69ad66860b3495b7c3eadd94fb9d814b9f475ff0f6dffc74`.

- `header`: `std_msgs/Header`.
- `accuracy`: `float32`.
- `position_gnss`: `clearpath_localization_msgs/GNSSStatus`.
- `heading_gnss`: `clearpath_localization_msgs/GNSSStatus`.
- `base_station_gnss`: `clearpath_localization_msgs/GNSSStatus`.
- `dead_reckoning`: `bool`.

### `sensor_msgs/NavSatStatus`

符号：`Ros1Sensor_msgsNavSatStatus`; 3..3 bytes.

Codec identity：`UWVMROS1_a44d99b9b113b546b2f45c991925ea62a8e28ffceed7de4da2dbc81936fd2453`.

- `status`: `int8`.
- `service`: `uint16`.

- Constant `STATUS_NO_FIX`: `int8 = -1`.
- Constant `STATUS_FIX`: `int8 = 0`.
- Constant `STATUS_SBAS_FIX`: `int8 = 1`.
- Constant `STATUS_GBAS_FIX`: `int8 = 2`.
- Constant `SERVICE_GPS`: `uint16 = 1`.
- Constant `SERVICE_GLONASS`: `uint16 = 2`.
- Constant `SERVICE_COMPASS`: `uint16 = 4`.
- Constant `SERVICE_GALILEO`: `uint16 = 8`.

### `sensor_msgs/NavSatFix`

符号：`Ros1Sensor_msgsNavSatFix`; 116..244 bytes.

Codec identity：`UWVMROS1_40bcafbbd6e6fed3086df74b5bd06aea5c2b6bf3244fcee92ab8cfab9c3c4d4d`.

- `header`: `std_msgs/Header`.
- `status`: `sensor_msgs/NavSatStatus`.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `altitude`: `float64`.
- `position_covariance`: `float64`; array 9.
- `position_covariance_type`: `uint8`.

- Constant `COVARIANCE_TYPE_UNKNOWN`: `uint8 = 0`.
- Constant `COVARIANCE_TYPE_APPROXIMATED`: `uint8 = 1`.
- Constant `COVARIANCE_TYPE_DIAGONAL_KNOWN`: `uint8 = 2`.
- Constant `COVARIANCE_TYPE_KNOWN`: `uint8 = 3`.

### `clearpath_localization_msgs/SurveyProperties`

符号：`Ros1Clearpath_localization_msgsSurveyProperties`; 125..509 bytes.

Codec identity：`UWVMROS1_91f7b0f79ca81b76885c2a05a5de907620de7b5420f71e1ca08166bdb320c393`.

- `last_survey_time`: `string`; text 256 bytes.
- `num_samples`: `uint32`.
- `base_location`: `sensor_msgs/NavSatFix`.
- `success`: `bool`.

### `clearpath_localization_msgs/XvnStatus`

符号：`Ros1Clearpath_localization_msgsXvnStatus`; 54..182 bytes.

Codec identity：`UWVMROS1_16bffc785ac0a8da2af278aefa77478e1ecc986d6a505b306e6df5f9db6e7def`.

- `header`: `std_msgs/Header`.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `yaw`: `float32`.
- `stddev_x`: `float32`.
- `stddev_y`: `float32`.
- `stddev_yaw`: `float32`.
- `fusion_status`: `uint8`.
- `imu_status`: `uint8`.
- `wheelspeed_status`: `int8`.
- `gnss1_status`: `uint8`.
- `gnss2_status`: `uint8`.
- `rtk_status`: `uint8`.

- Constant `UNKNOWN`: `uint8 = 0`.
- Constant `VISION`: `uint8 = 1`.
- Constant `VISUAL_INERTIAL`: `uint8 = 2`.
- Constant `INERTIAL_GNSS`: `uint8 = 3`.
- Constant `VI_GNSS`: `uint8 = 4`.
- Constant `IMU_NOT_CONVERGED`: `uint8 = 0`.
- Constant `IMU_CONVERGED`: `uint8 = 1`.
- Constant `WS_NOT_USED`: `int8 = -1`.
- Constant `WS_NOT_CONVERGED`: `int8 = 0`.
- Constant `WS_CONVERGED`: `int8 = 1`.
- Constant `GNSS_UNKNOWN`: `uint8 = 0`.
- Constant `GNSS_NO_FIX`: `uint8 = 1`.
- Constant `GNSS_DEAD_RECKONING`: `uint8 = 2`.
- Constant `GNSS_TIME_FIX`: `uint8 = 3`.
- Constant `GNSS_2D_FIX`: `uint8 = 4`.
- Constant `GNSS_3D_FIX`: `uint8 = 5`.
- Constant `GNSS_3D_WITH_DR`: `uint8 = 6`.
- Constant `GNSS_RTK_FLOAT`: `uint8 = 7`.
- Constant `GNSS_RTK_FIX`: `uint8 = 8`.
- Constant `RTK_ERROR`: `uint8 = 0`.
- Constant `RTK_WARNING`: `uint8 = 1`.
- Constant `RTK_CONNECTING`: `uint8 = 2`.
- Constant `RTK_CONNECTED`: `uint8 = 3`.

### `geometry_msgs/Vector3`

符号：`Ros1Geometry_msgsVector3`; 24..24 bytes.

Codec identity：`UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`.

- `x`: `float64`.
- `y`: `float64`.
- `z`: `float64`.

### `geometry_msgs/Twist`

符号：`Ros1Geometry_msgsTwist`; 48..48 bytes.

Codec identity：`UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921`.

- `linear`: `geometry_msgs/Vector3`.
- `angular`: `geometry_msgs/Vector3`.

### `geometry_msgs/TwistWithCovariance`

符号：`Ros1Geometry_msgsTwistWithCovariance`; 336..336 bytes.

Codec identity：`UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf`.

- `twist`: `geometry_msgs/Twist`.
- `covariance`: `float64`; array 36.

### `nav_msgs/Odometry`

符号：`Ros1Nav_msgsOdometry`; 700..1084 bytes.

Codec identity：`UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0`.

- `header`: `std_msgs/Header`.
- `child_frame_id`: `string`; text 256 bytes.
- `pose`: `geometry_msgs/PoseWithCovariance`.
- `twist`: `geometry_msgs/TwistWithCovariance`.

### `clearpath_logger_msgs/Event`

符号：`Ros1Clearpath_logger_msgsEvent`; 878..3190 bytes.

Codec identity：`UWVMROS1_3ab8dbb5d488cb1c0789bbb96076f531b245703045330fb6f9b01079d78177ca`.

- `header`: `std_msgs/Header`.
- `media_path`: `string`; text 256 bytes.
- `media_mime_type`: `string`; text 256 bytes.
- `frame_pose`: `geometry_msgs/Pose`.
- `lat_lon_heading`: `geometry_msgs/Point`.
- `odometry`: `nav_msgs/Odometry`.
- `velocity`: `geometry_msgs/Twist`.
- `battery_percent`: `float32`.
- `charging`: `bool`.
- `power_saver`: `bool`.
- `error_code`: `int32`.
- `error_msg`: `string`; text 256 bytes.
- `error_component`: `string`; text 256 bytes.
- `tags`: `string`; sequence 2; text 256 bytes.
- `custom_fields_json`: `string`; text 256 bytes.

- Constant `TAG_MEDIA`: `string = media`.
- Constant `TAG_POWER`: `string = power`.
- Constant `TAG_LOCATION`: `string = location`.
- Constant `TAG_ODOMETRY`: `string = odom`.
- Constant `TAG_VELOCITY`: `string = vel`.
- Constant `TAG_ERROR`: `string = error`.
- Constant `TAG_AUTO_TELEMETRY`: `string = auto_telemetry`.

### `clearpath_logger_msgs/EventLog`

符号：`Ros1Clearpath_logger_msgsEventLog`; 44..7064 bytes.

Codec identity：`UWVMROS1_ff2b4c89394c5f796204cf33e19c125c1affe603a96e22fd18268d75becd9c98`.

- `state`: `int32`.
- `start_time`: `time`.
- `end_time`: `time`.
- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `battery_percent_used`: `float32`.
- `distance_driven`: `float32`.
- `custom_fields_json`: `string`; text 256 bytes.
- `events`: `clearpath_logger_msgs/Event`; sequence 2.

- Constant `STATE_ACTIVE`: `int32 = 0`.
- Constant `STATE_CLOSED`: `int32 = 1`.
- Constant `STATE_DELETED`: `int32 = 2`.

### `clearpath_logger_msgs/EventLogs`

符号：`Ros1Clearpath_logger_msgsEventLogs`; 4..14132 bytes.

Codec identity：`UWVMROS1_0bd7c8adb2807c9a4273f01efb36309685301550a6e201f76865c6b5becabd61`.

- `logs`: `clearpath_logger_msgs/EventLog`; sequence 2.

### `clearpath_mission_manager_msgs/NetworkEdgeReq`

符号：`Ros1Clearpath_mission_manager_msgsNetworkEdgeReq`; 16..528 bytes.

Codec identity：`UWVMROS1_134bc2836c26c258057ae81465e06ba1f52307895c8016da1bab139a8efb9d62`.

- `start_point_id`: `string`; text 256 bytes.
- `end_point_id`: `string`; text 256 bytes.
- `speed_limit`: `float32`.
- `radius`: `float32`.

### `clearpath_mission_manager_msgs/NetworkMapState`

符号：`Ros1Clearpath_mission_manager_msgsNetworkMapState`; 14..790 bytes.

Codec identity：`UWVMROS1_c87392fb395b63731581dec3a3b199c830a7ed5001c53949c3002f9062d4958c`.

- `uuid`: `string`; text 256 bytes.
- `exists`: `bool`.
- `num_subgraphs`: `int32`.
- `disconnected_point_ids`: `string`; sequence 2; text 256 bytes.
- `size_exceeded`: `bool`.

### `clearpath_mission_manager_msgs/NetworkMapValidityState`

符号：`Ros1Clearpath_mission_manager_msgsNetworkMapValidityState`; 4..1584 bytes.

Codec identity：`UWVMROS1_12fe0cef6a55971defedc37a35a87257b71c7e3bb103b91cbbeb6bfbd30e850a`.

- `map_states`: `clearpath_mission_manager_msgs/NetworkMapState`; sequence 2.

### `clearpath_navigation_msgs/NetworkMission`

符号：`Ros1Clearpath_navigation_msgsNetworkMission`; 54..13606 bytes.

Codec identity：`UWVMROS1_8dff81532124b3498e9e9e82252f2ba06804a29c6ccfadb7e75b04483d850c2e`.

- `header`: `std_msgs/Header`.
- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `waypoints`: `clearpath_navigation_msgs/Waypoint`; sequence 2.
- `on_start`: `clearpath_navigation_msgs/Task`; sequence 2.
- `on_stop`: `clearpath_navigation_msgs/Task`; sequence 2.
- `return_to_dock_enabled`: `bool`.
- `return_to_dock_id`: `string`; text 256 bytes.
- `return_to_dock_battery_level`: `float32`.
- `resume_mission_battery_level`: `float32`.
- `network_replan_enabled`: `bool`.
- `onav_config`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/NetworkPoint`

符号：`Ros1Clearpath_navigation_msgsNetworkPoint`; 20..276 bytes.

Codec identity：`UWVMROS1_d64f71c07c2c73314a1e23969620110e52e225f9d46a745413f84e2030855014`.

- `uuid`: `string`; text 256 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.

### `clearpath_navigation_msgs/NetworkEdge`

符号：`Ros1Clearpath_navigation_msgsNetworkEdge`; 56..824 bytes.

Codec identity：`UWVMROS1_2d67f3d8176b117f6f00334633385aee6b1fd23a24a2c8b214e40793fc1c2943`.

- `uuid`: `string`; text 256 bytes.
- `start_point`: `clearpath_navigation_msgs/NetworkPoint`.
- `end_point`: `clearpath_navigation_msgs/NetworkPoint`.
- `radius`: `float32`.
- `speed_limit`: `float32`.
- `cost_factor`: `float32`.

- Constant `MIN_COST_FACTOR`: `float32 = 0.0`.
- Constant `MAX_COST_FACTOR`: `float32 = 100.0`.
- Constant `DEFAULT_COST_FACTOR`: `float32 = 1.0`.

### `clearpath_navigation_msgs/NetworkMap`

符号：`Ros1Clearpath_navigation_msgsNetworkMap`; 24..2608 bytes.

Codec identity：`UWVMROS1_3b14eff4b520d1eaeb357959f984142dcfcc1039cb1434469247f32fb16f06fe`.

- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `default_radius`: `float32`.
- `default_speed_limit`: `float32`.
- `points`: `clearpath_navigation_msgs/NetworkPoint`; sequence 2.
- `connections`: `clearpath_navigation_msgs/NetworkEdge`; sequence 2.

### `clearpath_navigation_msgs/PointOfInterest`

符号：`Ros1Clearpath_navigation_msgsPointOfInterest`; 49..1209 bytes.

Codec identity：`UWVMROS1_8d302ade38f6b9c0046c577a1cb4fce0dad418fc4b1aa9de496409fac4632d2c`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `elevation`: `float64`.
- `enable_heading`: `bool`.
- `heading`: `float64`.
- `tags`: `string`; sequence 2; text 256 bytes.
- `custom_fields_json`: `string`; text 256 bytes.

- Constant `TAG_GOTO`: `string = goto`.
- Constant `TAG_INSPECT`: `string = inspect`.

### `clearpath_mission_manager_msgs/StorageState`

符号：`Ros1Clearpath_mission_manager_msgsStorageState`; 24..32768 bytes.

Codec identity：`UWVMROS1_3f23f2e49c54f2e0c5b3302d299dace8b15bcb205530b7b0f040125ed8b6e189`.

- `missions`: `clearpath_navigation_msgs/Mission`; sequence 2.
- `waypoints`: `clearpath_navigation_msgs/Waypoint`; sequence 2.
- `tasks`: `clearpath_navigation_msgs/Task`; sequence 2.
- `network_missions`: `clearpath_navigation_msgs/NetworkMission`; sequence 2.
- `network_maps`: `clearpath_navigation_msgs/NetworkMap`; sequence 2.
- `points_of_interest`: `clearpath_navigation_msgs/PointOfInterest`; sequence 2.

### `clearpath_mission_scheduler_msgs/NextSchedule`

符号：`Ros1Clearpath_mission_scheduler_msgsNextSchedule`; 12..268 bytes.

Codec identity：`UWVMROS1_a2be03201266ebf80af5587b59ff48514b3e97a536078c6b235c434e6dc80f3a`.

- `uuid`: `string`; text 256 bytes.
- `time_to_start`: `duration`.

### `clearpath_mission_scheduler_msgs/UtcTime`

符号：`Ros1Clearpath_mission_scheduler_msgsUtcTime`; 5..5 bytes.

Codec identity：`UWVMROS1_5d8b0173e89fb44a2c6444028d65232a492255e596b8a535d2aea714fca0ab49`.

- `hour`: `uint8`.
- `minute`: `uint8`.
- `second`: `uint8`.
- `millisecond`: `uint16`.

### `clearpath_mission_scheduler_msgs/Schedule`

符号：`Ros1Clearpath_mission_scheduler_msgsSchedule`; 40..944 bytes.

Codec identity：`UWVMROS1_552fe3494bad6517edf7d69e98021b0ebc373bf084de7335d57d1e074caa1465`.

- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `start_time`: `clearpath_mission_scheduler_msgs/UtcTime`.
- `mode`: `uint8`.
- `loop_repeats`: `uint8`.
- `loop_interval`: `duration`.
- `mission_ids`: `string`; sequence 2; text 256 bytes.
- `min_battery`: `float32`.
- `timeout`: `duration`.
- `enabled`: `bool`.

- Constant `MODE_ONCE`: `uint8 = 0`.
- Constant `MODE_LOOP`: `uint8 = 1`.
- Constant `MODE_TRANSIENT`: `uint8 = 2`.

### `clearpath_mission_scheduler_msgs/StorageState`

符号：`Ros1Clearpath_mission_scheduler_msgsStorageState`; 4..1892 bytes.

Codec identity：`UWVMROS1_e2993af302bafec841a18f71a54d104c34b9c7ce91c84e3e4ee3be7f643a4f9a`.

- `schedules`: `clearpath_mission_scheduler_msgs/Schedule`; sequence 2.

### `std_msgs/Time`

符号：`Ros1Std_msgsTime`; 8..8 bytes.

Codec identity：`UWVMROS1_64c147e5ad9757a29f19692f4f933be0b2079e1b8ae40566bb3c20841734a7d1`.

- `data`: `time`.

### `std_msgs/String`

符号：`Ros1Std_msgsString`; 4..260 bytes.

Codec identity：`UWVMROS1_2e8d1356eb6d39d2456dc2744c3aab174c093deebb56384704976f0a9aae5413`.

- `data`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/AutonomyStatus`

符号：`Ros1Clearpath_navigation_msgsAutonomyStatus`; 33..673 bytes.

Codec identity：`UWVMROS1_69ab909d6efdf65bcd36d0f8c159047b0dc3ecd5e9f03015936b69c6397dfdaf`.

- `header`: `std_msgs/Header`.
- `last_start`: `std_msgs/Time`.
- `mission_uuid`: `std_msgs/String`.
- `map_uuid`: `std_msgs/String`.
- `state`: `uint8`.

- Constant `IDLE`: `uint8 = 0`.
- Constant `MISSION_DIRECT`: `uint8 = 1`.
- Constant `MISSION_BY_ID`: `uint8 = 2`.
- Constant `NETWORK_MISSION`: `uint8 = 3`.
- Constant `NETWORK_GOTO`: `uint8 = 4`.
- Constant `NETWORK_GOTO_POI`: `uint8 = 5`.
- Constant `LOCAL_DOCKING`: `uint8 = 6`.
- Constant `LOCAL_UNDOCKING`: `uint8 = 7`.
- Constant `RADIUS_DOCKING`: `uint8 = 8`.
- Constant `NETWORK_DOCKING`: `uint8 = 9`.

### `clearpath_navigation_msgs/DistanceToGoal`

符号：`Ros1Clearpath_navigation_msgsDistanceToGoal`; 8..8 bytes.

Codec identity：`UWVMROS1_d1dec9c2784feaf6a70c2a5291ed9cb407145d6f42e2132ad71a141f5993a519`.

- `euclidean`: `float32`.
- `path`: `float32`.

### `clearpath_navigation_msgs/Metrics`

符号：`Ros1Clearpath_navigation_msgsMetrics`; 56..56 bytes.

Codec identity：`UWVMROS1_6e28edfbea9de8f1e0e52e200560b25b0f636160461f1bd99d353595906d7c19`.

- `total_distance_travelled`: `float64`.
- `total_duration`: `float64`.
- `num_missions_sent`: `uint64`.
- `num_missions_completed`: `uint64`.
- `num_replans`: `uint64`.
- `num_recoveries`: `uint64`.
- `num_tasks_executed`: `uint64`.

### `clearpath_navigation_msgs/WaypointStatus`

符号：`Ros1Clearpath_navigation_msgsWaypointStatus`; 54..3352 bytes.

Codec identity：`UWVMROS1_8a69049422ce8a2ef23a319f2d3ed7783455381a91b7083fca402a3ca59c6644`.

- `waypoint`: `clearpath_navigation_msgs/Waypoint`.
- `visited`: `bool`.
- `skipped`: `bool`.

### `clearpath_navigation_msgs/MissionStatus`

符号：`Ros1Clearpath_navigation_msgsMissionStatus`; 28..7244 bytes.

Codec identity：`UWVMROS1_e1ecf20b0466f7bda1f41537b80304e5c93cd0d7e599a4164da047a653edd9e4`.

- `header`: `std_msgs/Header`.
- `name`: `string`; text 128 bytes.
- `uuid`: `string`; text 256 bytes.
- `waypoints`: `clearpath_navigation_msgs/WaypointStatus`; sequence 2.

### `clearpath_navigation_msgs/MotionState`

符号：`Ros1Clearpath_navigation_msgsMotionState`; 3..3 bytes.

Codec identity：`UWVMROS1_04e1a2cc31ea5b08b7f385b305b8e89acc31a7c6675b36a473930116076a1efa`.

- `motion`: `uint8`.
- `indicator`: `uint8`.
- `direction`: `uint8`.

- Constant `MOTION_NORMAL`: `uint8 = 10`.
- Constant `MOTION_STOPPED`: `uint8 = 11`.
- Constant `MOTION_REVERSE`: `uint8 = 12`.
- Constant `MOTION_SLOWING`: `uint8 = 13`.
- Constant `INDICATOR_NORMAL`: `uint8 = 20`.
- Constant `INDICATOR_LEFT_TURN`: `uint8 = 21`.
- Constant `INDICATOR_RIGHT_TURN`: `uint8 = 22`.
- Constant `INDICATOR_CLOCKWISE`: `uint8 = 23`.
- Constant `INDICATOR_COUNTERCLOCKWISE`: `uint8 = 24`.
- Constant `INDICATOR_HAZARD`: `uint8 = 25`.
- Constant `DIRECTION_FORWARD`: `uint8 = 30`.
- Constant `DIRECTION_REVERSE`: `uint8 = 31`.

### `clearpath_navigation_msgs/NavigationState`

符号：`Ros1Clearpath_navigation_msgsNavigationState`; 4..6 bytes.

Codec identity：`UWVMROS1_59723baf8c5871ea7bff969a09fe753455ef07d0cbc982ef23c1f55b984a7d2a`.

- `states`: `uint8`; sequence 2.

- Constant `STATE_IDLE`: `uint8 = 0`.
- Constant `STATE_COMPUTE_PATH`: `uint8 = 1`.
- Constant `STATE_EXECUTE_PATH`: `uint8 = 2`.
- Constant `STATE_REPLAN`: `uint8 = 3`.
- Constant `STATE_NAVIGATING_AROUND_OBSTACLE`: `uint8 = 4`.
- Constant `STATE_RECOVERY`: `uint8 = 5`.
- Constant `STATE_LOST`: `uint8 = 6`.
- Constant `STATE_DONE`: `uint8 = 7`.
- Constant `STATE_SAFETY_STOP`: `uint8 = 8`.
- Constant `STATE_PAUSE`: `uint8 = 9`.
- Constant `STATE_DISABLE`: `uint8 = 10`.

### `clearpath_navigation_msgs/OdomIntent`

符号：`Ros1Clearpath_navigation_msgsOdomIntent`; 1420..2316 bytes.

Codec identity：`UWVMROS1_84aa6a07039ac3402c2762cdf89f217053c0f7e2448f535e12282c1184635f69`.

- `header`: `std_msgs/Header`.
- `odom`: `nav_msgs/Odometry`.
- `predicted_odom`: `nav_msgs/Odometry`.
- `dt`: `float32`.

### `clearpath_navigation_msgs/Vector2D`

符号：`Ros1Clearpath_navigation_msgsVector2D`; 8..8 bytes.

Codec identity：`UWVMROS1_fab839d4e160f8dca805b36fd2d93362ea5929238c33f34f0695f8edaed15047`.

- `point`: `float32`; array 2.

### `clearpath_navigation_msgs/PointVector`

符号：`Ros1Clearpath_navigation_msgsPointVector`; 20..164 bytes.

Codec identity：`UWVMROS1_4372dc043aaa0a9b16845e53db15405ec5dd98c4b5bc314319d185ba4557c9b8`.

- `header`: `std_msgs/Header`.
- `cloud`: `clearpath_navigation_msgs/Vector2D`; sequence 2.

### `clearpath_navigation_msgs/Progress`

符号：`Ros1Clearpath_navigation_msgsProgress`; 12..12 bytes.

Codec identity：`UWVMROS1_a85be472664da59faec23030269b688f4afd1d071c0f8d9d02d5c10d6f7649d7`.

- `path_progress`: `float32`.
- `goal_progress`: `float32`.
- `mission_progress`: `float32`.

### `clearpath_navigation_msgs/ScanPoints`

符号：`Ros1Clearpath_navigation_msgsScanPoints`; 24..1000 bytes.

Codec identity：`UWVMROS1_99d632501402a495a9337dee91bda1c0078fa379b9dbf872b45ad29af85a25b5`.

- `header`: `std_msgs/Header`.
- `frames_vector`: `string`; sequence 2; text 256 bytes.
- `cloud_vector`: `clearpath_navigation_msgs/PointVector`; sequence 2.

### `clearpath_navigation_msgs/TrackError`

符号：`Ros1Clearpath_navigation_msgsTrackError`; 24..152 bytes.

Codec identity：`UWVMROS1_ddaf051241e0ae7ffa19ed965cbaf65bb7c11a0b7feaa2e0530ca6068a633323`.

- `header`: `std_msgs/Header`.
- `cross_track_error`: `float32`.
- `heading_error`: `float32`.

### `clearpath_platform_msgs/Drive`

符号：`Ros1Clearpath_platform_msgsDrive`; 9..9 bytes.

Codec identity：`UWVMROS1_5189b2de776409879f0b7baa8687b3c59663b886de4a9038a9bff5b7da962ea6`.

- `mode`: `int8`.
- `drivers`: `float32`; array 2.

- Constant `MODE_VELOCITY`: `int8 = 0`.
- Constant `MODE_PWM`: `int8 = 1`.
- Constant `MODE_NONE`: `int8 = -1`.
- Constant `LEFT`: `int8 = 0`.
- Constant `RIGHT`: `int8 = 1`.

### `clearpath_platform_msgs/DriveFeedback`

符号：`Ros1Clearpath_platform_msgsDriveFeedback`; 25..25 bytes.

Codec identity：`UWVMROS1_07cc1a72329f8ef223455d21ed1ac6398ea48b87c5be0b78aec5513791172c16`.

- `current`: `float32`.
- `duty_cycle`: `float32`.
- `bridge_temperature`: `float32`.
- `motor_temperature`: `float32`.
- `measured_velocity`: `float32`.
- `measured_travel`: `float32`.
- `driver_fault`: `bool`.

### `clearpath_platform_msgs/Fans`

符号：`Ros1Clearpath_platform_msgsFans`; 4..6 bytes.

Codec identity：`UWVMROS1_5ce5485623fa8b07de5f3094110877bf5741c94e90a508fb0bb66a9552a13fb5`.

- `fans`: `uint8`; sequence 2.

- Constant `RIDGEBACK_EQUIPMENT_BAY_INTAKE`: `uint8 = 0`.
- Constant `RIDGEBACK_EQUIPMENT_BAY_EXHAUST`: `uint8 = 1`.
- Constant `RIDGEBACK_CHARGER_BAY_INTAKE`: `uint8 = 2`.
- Constant `RIDGEBACK_CHARGER_BAY_EXHAUST`: `uint8 = 3`.
- Constant `RIDGEBACK_USER_BAY_INTAKE`: `uint8 = 4`.
- Constant `RIDGEBACK_USER_BAY_EXHAUST`: `uint8 = 5`.
- Constant `FAN_OFF`: `uint8 = 0`.
- Constant `FAN_ON_HIGH`: `uint8 = 1`.
- Constant `FAN_ON_LOW`: `uint8 = 2`.

### `clearpath_platform_msgs/Feedback`

符号：`Ros1Clearpath_platform_msgsFeedback`; 68..196 bytes.

Codec identity：`UWVMROS1_38f073bad8f592e143e0a60cb123a652bf00b72b160dd9e0a356bfc73eb0312a`.

- `header`: `std_msgs/Header`.
- `drivers`: `clearpath_platform_msgs/DriveFeedback`; array 2.
- `commanded_mode`: `int8`.
- `actual_mode`: `int8`.

### `clearpath_platform_msgs/RGB`

符号：`Ros1Clearpath_platform_msgsRGB`; 3..3 bytes.

Codec identity：`UWVMROS1_8c848638975b7775b8ce0ff10d07c7d79c856f800745d30af6051c574c019056`.

- `red`: `uint8`.
- `green`: `uint8`.
- `blue`: `uint8`.

### `clearpath_platform_msgs/Lights`

符号：`Ros1Clearpath_platform_msgsLights`; 4..10 bytes.

Codec identity：`UWVMROS1_21d6dc7f4b57ae3468a7ee08945ee60f8d6bc9cbf24217f5ff48e55a4ce33c4b`.

- `lights`: `clearpath_platform_msgs/RGB`; sequence 2.

- Constant `DINGO_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `DINGO_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `DINGO_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `DINGO_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `RIDGEBACK_LIGHTS_FRONT_PORT_UPPER`: `uint8 = 0`.
- Constant `RIDGEBACK_LIGHTS_FRONT_PORT_LOWER`: `uint8 = 1`.
- Constant `RIDGEBACK_LIGHTS_FRONT_STARBOARD_UPPER`: `uint8 = 2`.
- Constant `RIDGEBACK_LIGHTS_FRONT_STARBOARD_LOWER`: `uint8 = 3`.
- Constant `RIDGEBACK_LIGHTS_REAR_PORT_UPPER`: `uint8 = 4`.
- Constant `RIDGEBACK_LIGHTS_REAR_PORT_LOWER`: `uint8 = 5`.
- Constant `RIDGEBACK_LIGHTS_REAR_STARBOARD_UPPER`: `uint8 = 6`.
- Constant `RIDGEBACK_LIGHTS_REAR_STARBOARD_LOWER`: `uint8 = 7`.
- Constant `WARTHOG_LIGHTS_FRONT_LEFT`: `uint8 = 0`.
- Constant `WARTHOG_LIGHTS_FRONT_RIGHT`: `uint8 = 1`.
- Constant `WARTHOG_LIGHTS_REAR_LEFT`: `uint8 = 2`.
- Constant `WARTHOG_LIGHTS_REAR_RIGHT`: `uint8 = 3`.

### `clearpath_platform_msgs/PlatformID`

符号：`Ros1Clearpath_platform_msgsPlatformID`; 16..1040 bytes.

Codec identity：`UWVMROS1_dc63cb65c84ae77ef0a36e938c77beeb234ad1e63acf11270ea4de337d5b2b07`.

- `model`: `string`; text 256 bytes.
- `serial_id`: `string`; text 256 bytes.
- `hardware_revision`: `string`; text 256 bytes.
- `firmware_revision`: `string`; text 256 bytes.

### `clearpath_platform_msgs/Power`

符号：`Ros1Clearpath_platform_msgsPower`; 28..172 bytes.

Codec identity：`UWVMROS1_59c3c92a37e301e2fdfc43e0d1585138e26cda4c7821dab3085869c1c9115efc`.

- `header`: `std_msgs/Header`.
- `shore_power_connected`: `int8`.
- `battery_connected`: `int8`.
- `power_12v_user_nominal`: `int8`.
- `charging_complete`: `int8`.
- `measured_voltages`: `float32`; sequence 2.
- `measured_currents`: `float32`; sequence 2.

- Constant `NOT_APPLICABLE`: `int8 = -1`.
- Constant `JACKAL_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `JACKAL_MEASURED_5V`: `uint8 = 1`.
- Constant `JACKAL_MEASURED_12V`: `uint8 = 2`.
- Constant `DINGO_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `DINGO_MEASURED_5V`: `uint8 = 1`.
- Constant `DINGO_MEASURED_12V`: `uint8 = 2`.
- Constant `WARTHOG_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `WARTHOG_MEASURED_12V`: `uint8 = 1`.
- Constant `WARTHOG_MEASURED_24V`: `uint8 = 2`.
- Constant `WARTHOG_MEASURED_48V`: `uint8 = 3`.
- Constant `RIDGEBACK_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `RIDGEBACK_MEASURED_5V`: `uint8 = 1`.
- Constant `RIDGEBACK_MEASURED_12V`: `uint8 = 2`.
- Constant `RIDGEBACK_MEASURED_INVERTER`: `uint8 = 3`.
- Constant `RIDGEBACK_MEASURED_FRONT_AXLE`: `uint8 = 4`.
- Constant `RIDGEBACK_MEASURED_REAR_AXLE`: `uint8 = 5`.
- Constant `RIDGEBACK_MEASURED_LIGHT`: `uint8 = 6`.
- Constant `JACKAL_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `JACKAL_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `JACKAL_DRIVE_CURRENT`: `uint8 = 2`.
- Constant `JACKAL_USER_CURRENT`: `uint8 = 3`.
- Constant `DINGO_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `DINGO_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `WARTHOG_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `WARTHOG_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `WARTHOG_12V_CURRENT`: `uint8 = 2`.
- Constant `WARTHOG_24V_CURRENT`: `uint8 = 3`.
- Constant `WARTHOG_48V_CURRENT`: `uint8 = 4`.
- Constant `RIDGEBACK_TOTAL_CURRENT`: `uint8 = 0`.

### `clearpath_platform_msgs/RYG`

符号：`Ros1Clearpath_platform_msgsRYG`; 3..3 bytes.

Codec identity：`UWVMROS1_7a5c0869aad03d552e5029582d0a63d70723954f84b63ab459f45121ea1da8df`.

- `red`: `uint8`.
- `yellow`: `uint8`.
- `green`: `uint8`.

### `clearpath_platform_msgs/StackLightState`

符号：`Ros1Clearpath_platform_msgsStackLightState`; 8..264 bytes.

Codec identity：`UWVMROS1_508b54b7050d7598a79aa238e96f210280796c177de357d9b969df4437d969e1`.

- `color`: `clearpath_platform_msgs/RYG`.
- `strobe_on`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_platform_msgs/Status`

符号：`Ros1Clearpath_platform_msgsStatus`; 48..688 bytes.

Codec identity：`UWVMROS1_9db960375fb63d011c0c038266421414c4c5f4ce1909ff5105e63dd2e1289a33`.

- `header`: `std_msgs/Header`.
- `hardware_id`: `string`; text 256 bytes.
- `firmware_commit`: `string`; text 256 bytes.
- `mcu_uptime`: `std_msgs/Duration`.
- `connection_uptime`: `std_msgs/Duration`.
- `pcb_temperature`: `float32`.
- `mcu_temperature`: `float32`.

### `clearpath_platform_msgs/StopStatus`

符号：`Ros1Clearpath_platform_msgsStopStatus`; 18..146 bytes.

Codec identity：`UWVMROS1_e16505686f22cd4183a6eb89e53c3b4184ccd58a15b1bc46efa656d50b0b3a18`.

- `header`: `std_msgs/Header`.
- `stop_power_status`: `bool`.
- `external_stop_present`: `bool`.

### `clearpath_safety_msgs/AssistedTeleopState`

符号：`Ros1Clearpath_safety_msgsAssistedTeleopState`; 6..262 bytes.

Codec identity：`UWVMROS1_e502d2181d51f1de7976b35a95ea2463644d374becce390d668a81e549fad82e`.

- `state`: `uint8`.
- `assist_off_trigger`: `uint8`.
- `error_message`: `string`; text 256 bytes.

- Constant `STATE_ACTIVE`: `uint8 = 0`.
- Constant `STATE_DISABLED`: `uint8 = 1`.
- Constant `STATE_COLLISION_IMMINENT`: `uint8 = 2`.
- Constant `STATE_STOPPED`: `uint8 = 3`.
- Constant `STATE_COLLISION`: `uint8 = 4`.
- Constant `STATE_ERROR`: `uint8 = 5`.
- Constant `ASSIST_ON`: `uint8 = 100`.
- Constant `ASSIST_OFF_SERVICE`: `uint8 = 101`.
- Constant `ASSIST_OFF_JOYSTICK_OVERRIDE`: `uint8 = 102`.
- Constant `ASSIST_OFF_SENSOR_TIMEOUT`: `uint8 = 103`.
- Constant `ASSIST_OFF_REMOTE_CONTROLLER_OVERRIDE`: `uint8 = 104`.

### `clearpath_safety_msgs/ObstacleMap`

符号：`Ros1Clearpath_safety_msgsObstacleMap`; 4..12 bytes.

Codec identity：`UWVMROS1_e137bca7b7ac8e14451792df0b9347910c5ff236087eb0f5db872c5a0f3e0f93`.

- `threat_level`: `float32`; sequence 2.

### `clearpath_safety_msgs/Safety`

符号：`Ros1Clearpath_safety_msgsSafety`; 6..262 bytes.

Codec identity：`UWVMROS1_033ee9ca48e803538ac663cdd476b65fdc5e29359be86b8ea6251cfaaa85e9ce`.

- `safety_monitor_triggered`: `bool`.
- `trigger_type`: `uint8`.
- `message`: `string`; text 256 bytes.

- Constant `SAFETY_ESTOP`: `uint8 = 0`.
- Constant `SAFETY_SENSOR_TIMEOUT`: `uint8 = 1`.

### `clearpath_safety_msgs/WatchdogConfigCommon`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigCommon`; 17..1177 bytes.

Codec identity：`UWVMROS1_508d2bd15b0b42a056f3ef82fd04799bd2b6d8d4d6d03dc571e151f5c30c8844`.

- `name`: `string`; text 128 bytes.
- `type`: `string`; text 256 bytes.
- `enabled`: `bool`.
- `components`: `string`; sequence 2; text 256 bytes.
- `on_trigger_action`: `string`; text 256 bytes.

### `clearpath_safety_msgs/WatchdogConfigCommunication`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigCommunication`; 33..1961 bytes.

Codec identity：`UWVMROS1_be40239142afe7ffedef0d13cc13f093e1c6c5f49b73074cfa5c9ccaa0106446`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `protocol`: `string`; text 256 bytes.
- `ip`: `string`; text 256 bytes.
- `interface`: `string`; text 256 bytes.
- `timeout`: `float32`.

### `clearpath_safety_msgs/WatchdogConfigHeartbeat`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigHeartbeat`; 25..1441 bytes.

Codec identity：`UWVMROS1_66f859db1405ce185c91bd0e04b20901c12cb4e66deb3c2fff3a7085647a2cc2`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `topic`: `string`; text 256 bytes.
- `timeout`: `float32`.

### `clearpath_safety_msgs/WatchdogConfigInclination`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigInclination`; 33..1449 bytes.

Codec identity：`UWVMROS1_55022d7e5888b670bce29de4cc9c54da784e26b21d8843770de5a9db75f78d77`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `roll_limit`: `float32`.
- `pitch_limit`: `float32`.
- `delay`: `float32`.
- `topic`: `string`; text 256 bytes.

### `clearpath_safety_msgs/WatchdogConfigNodeStatus`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigNodeStatus`; 22..1438 bytes.

Codec identity：`UWVMROS1_b8efb3fe844ee27f21c9f77dcb71be6e818931c2d927b163c70fd988c371f0f9`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `node_name`: `string`; text 256 bytes.
- `num_requests`: `uint8`.

### `clearpath_safety_msgs/WatchdogConfigNodeletStatus`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigNodeletStatus`; 26..1698 bytes.

Codec identity：`UWVMROS1_170ba32f5c32e65fd02acf9aee6715014a6e3ed471fc416f1181e2759182ba5f`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `manager`: `string`; text 256 bytes.
- `nodelet`: `string`; text 256 bytes.
- `num_requests`: `uint8`.

### `clearpath_safety_msgs/WatchdogConfigNumPoints`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigNumPoints`; 25..1441 bytes.

Codec identity：`UWVMROS1_ea9a231a5a1f6471b20965acd6b2ec11ece3d76dd510649ac2e93b33c5235b85`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `topic`: `string`; text 256 bytes.
- `threshold`: `int32`.

### `clearpath_safety_msgs/WatchdogConfigOdomCovariance`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigOdomCovariance`; 33..1449 bytes.

Codec identity：`UWVMROS1_16d77772c5fed2351e0d79f6ab3d2e80bd2ac3c8d96fa16234d6148baa66c813`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `topic`: `string`; text 256 bytes.
- `xy_threshold`: `float32`.
- `yaw_threshold`: `float32`.
- `timeout`: `float32`.

### `clearpath_safety_msgs/WatchdogConfigRtkFix`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigRtkFix`; 27..1443 bytes.

Codec identity：`UWVMROS1_c73d2db18765570053184bef37ec0519c43d8265f73dae48a18e209577190bc2`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `rtk_heading_required`: `bool`.
- `rtk_position_required`: `bool`.
- `timeout`: `float32`.
- `gnss_type`: `string`; text 256 bytes.

### `clearpath_safety_msgs/WatchdogConfigTopicData`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigTopicData`; 25..1441 bytes.

Codec identity：`UWVMROS1_1bf0a230aef86f09014852b1be0cf0d5998d4e8a69e4630a9e387b10b470ad8f`.

- `base_config`: `clearpath_safety_msgs/WatchdogConfigCommon`.
- `topic`: `string`; text 256 bytes.
- `timeout`: `float32`.

### `clearpath_safety_msgs/WatchdogConfigArray`

符号：`Ros1Clearpath_safety_msgsWatchdogConfigArray`; 36..27558 bytes.

Codec identity：`UWVMROS1_5395da95a24a49234ff91d9149558ae13d621524f233b286744dcc28e6a558d3`.

- `communication_config`: `clearpath_safety_msgs/WatchdogConfigCommunication`; sequence 2.
- `heartbeat_config`: `clearpath_safety_msgs/WatchdogConfigHeartbeat`; sequence 2.
- `inclination_config`: `clearpath_safety_msgs/WatchdogConfigInclination`; sequence 2.
- `node_status_config`: `clearpath_safety_msgs/WatchdogConfigNodeStatus`; sequence 2.
- `nodelet_status_config`: `clearpath_safety_msgs/WatchdogConfigNodeletStatus`; sequence 2.
- `num_points_config`: `clearpath_safety_msgs/WatchdogConfigNumPoints`; sequence 2.
- `odom_covariance_config`: `clearpath_safety_msgs/WatchdogConfigOdomCovariance`; sequence 2.
- `rtk_fix_config`: `clearpath_safety_msgs/WatchdogConfigRtkFix`; sequence 2.
- `topic_data_config`: `clearpath_safety_msgs/WatchdogConfigTopicData`; sequence 2.

### `clearpath_safety_msgs/WatchdogStatus`

符号：`Ros1Clearpath_safety_msgsWatchdogStatus`; 13..653 bytes.

Codec identity：`UWVMROS1_823af4aa5da6787f2014faecb325f5c78d28f593409fc73f3237eb43ed01b5cc`.

- `name`: `string`; text 128 bytes.
- `triggered`: `bool`.
- `trigger_message`: `string`; text 256 bytes.
- `action`: `string`; text 256 bytes.

### `clearpath_safety_msgs/WatchdogStatusArray`

符号：`Ros1Clearpath_safety_msgsWatchdogStatusArray`; 20..1454 bytes.

Codec identity：`UWVMROS1_744df181cbf598672b82290fc5bac35af5fb6c4e62b55e5afed820a7cf270f96`.

- `header`: `std_msgs/Header`.
- `statuses`: `clearpath_safety_msgs/WatchdogStatus`; sequence 2.

### `husky_msgs/HuskyStatus`

符号：`Ros1Husky_msgsHuskyStatus`; 124..252 bytes.

Codec identity：`UWVMROS1_4aaed6c015314bd743406086571c12760cb41e446d5248d26537e6fc22c40a86`.

- `header`: `std_msgs/Header`.
- `uptime`: `uint32`.
- `ros_control_loop_freq`: `float64`.
- `mcu_and_user_port_current`: `float64`.
- `left_driver_current`: `float64`.
- `right_driver_current`: `float64`.
- `battery_voltage`: `float64`.
- `left_driver_voltage`: `float64`.
- `right_driver_voltage`: `float64`.
- `left_driver_temp`: `float64`.
- `right_driver_temp`: `float64`.
- `left_motor_temp`: `float64`.
- `right_motor_temp`: `float64`.
- `capacity_estimate`: `uint16`.
- `charge_estimate`: `float64`.
- `timeout`: `bool`.
- `lockout`: `bool`.
- `e_stop`: `bool`.
- `ros_pause`: `bool`.
- `no_battery`: `bool`.
- `current_limit`: `bool`.

### `jackal_msgs/Drive`

符号：`Ros1Jackal_msgsDrive`; 9..9 bytes.

Codec identity：`UWVMROS1_a1991d124f321c1aaa7e02647dfdd7114d5c389197d621ddc8213b240b3541e6`.

- `mode`: `int8`.
- `drivers`: `float32`; array 2.

- Constant `MODE_VELOCITY`: `int8 = 0`.
- Constant `MODE_PWM`: `int8 = 1`.
- Constant `MODE_EFFORT`: `int8 = 2`.
- Constant `MODE_NONE`: `int8 = -1`.
- Constant `LEFT`: `int8 = 0`.
- Constant `RIGHT`: `int8 = 1`.

### `jackal_msgs/DriveFeedback`

符号：`Ros1Jackal_msgsDriveFeedback`; 25..25 bytes.

Codec identity：`UWVMROS1_491d1150e13f8a9985582d3d80ccaadfb11feb4686624beb32689b1ff4b096d1`.

- `current`: `float32`.
- `duty_cycle`: `float32`.
- `bridge_temperature`: `float32`.
- `motor_temperature`: `float32`.
- `measured_velocity`: `float32`.
- `measured_travel`: `float32`.
- `driver_fault`: `bool`.

### `jackal_msgs/Feedback`

符号：`Ros1Jackal_msgsFeedback`; 76..204 bytes.

Codec identity：`UWVMROS1_5d574303e5854771234ad6b215d5923df4319cb597acc70ff00a6c73c27ccb89`.

- `header`: `std_msgs/Header`.
- `drivers`: `jackal_msgs/DriveFeedback`; array 2.
- `pcb_temperature`: `float32`.
- `mcu_temperature`: `float32`.
- `commanded_mode`: `int8`.
- `actual_mode`: `int8`.

### `jackal_msgs/Status`

符号：`Ros1Jackal_msgsStatus`; 79..463 bytes.

Codec identity：`UWVMROS1_e340e68eb138003c1a4f99aa0defbe651fe573681fda03dff451e1c5d73d48af`.

- `header`: `std_msgs/Header`.
- `hardware_id`: `string`; text 256 bytes.
- `mcu_uptime`: `duration`.
- `connection_uptime`: `duration`.
- `drivers_active`: `bool`.
- `driver_external_stop_present`: `bool`.
- `driver_external_stop_stopped`: `bool`.
- `measured_battery`: `float32`.
- `measured_12v`: `float32`.
- `measured_5v`: `float32`.
- `drive_current`: `float32`.
- `user_current`: `float32`.
- `computer_current`: `float32`.
- `total_current`: `float32`.
- `total_current_peak`: `float32`.
- `total_power_consumed`: `float64`.

### `clearpath_camera_msgs/q62AreaZoomRequest`

符号：`Ros1Clearpath_camera_msgsQ62AreaZoomRequest`; 12..12 bytes.

Codec identity：`UWVMROS1_f1c8e9c75b7792b47733669fc00a61bbb2340e058450e72fcbaab9211b33362f`.

- `x`: `float32`.
- `y`: `float32`.
- `zoom_factor`: `float32`.

### `clearpath_camera_msgs/q62AreaZoomResponse`

符号：`Ros1Clearpath_camera_msgsQ62AreaZoomResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_af1389573cb858990ad84dde13231fba6e758b46629c100bb8ae30fbf141ae3b`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_control_msgs/SetControlModeRequest`

符号：`Ros1Clearpath_control_msgsSetControlModeRequest`; 1..1 bytes.

Codec identity：`UWVMROS1_80b29d151ddf41bb49d6deffc3b119e278ad7893d3a63f976f21f86ffc21a23f`.

- `mode`: `clearpath_control_msgs/ControlMode`.

### `clearpath_control_msgs/SetControlModeResponse`

符号：`Ros1Clearpath_control_msgsSetControlModeResponse`; 0..0 bytes.

Codec identity：`UWVMROS1_9aeb21dcef1fa6b6c12300e9c93cb7859090a5a96e58c9d2dd6ed00af3049734`.

空语义值，不添加虚构字段。


### `clearpath_dock_msgs/AddDockRequest`

符号：`Ros1Clearpath_dock_msgsAddDockRequest`; 52..1204 bytes.

Codec identity：`UWVMROS1_d779d320a6f98a81388a91a74c0199608b11f794ded24f3863a42b38b9a2d340`.

- `dock`: `clearpath_dock_msgs/DockInfo`.

### `clearpath_dock_msgs/AddDockResponse`

符号：`Ros1Clearpath_dock_msgsAddDockResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_ba1e0ca5cef0dbfbc42d0a22fc241f044fd90ad8d5fff3f8b94be57dae26d08f`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/ExportDataRequest`

符号：`Ros1Clearpath_dock_msgsExportDataRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_5921228fb0be54a809ad2ca87d1a56293cd455f080d90800880d147617044827`.

空语义值，不添加虚构字段。


### `clearpath_dock_msgs/ExportDataResponse`

符号：`Ros1Clearpath_dock_msgsExportDataResponse`; 4..260 bytes.

Codec identity：`UWVMROS1_6fc247ff50ba6c24159cd8f308df22b541e86ebc56f8aa27207d5fcdfaf9cb2c`.

- `data`: `string`; text 256 bytes.

### `clearpath_dock_msgs/GetDockByUuidRequest`

符号：`Ros1Clearpath_dock_msgsGetDockByUuidRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_a54abd75f8db68630e6964a3f5f7ea520f5ef37103e2ba07c44ba85f519b339c`.

- `dock_uuid`: `string`; text 256 bytes.

### `clearpath_dock_msgs/GetDockByUuidResponse`

符号：`Ros1Clearpath_dock_msgsGetDockByUuidResponse`; 164..1316 bytes.

Codec identity：`UWVMROS1_e574e53eca717e5855217d0829d238a7604133fa944db368b39a2660acdeef54`.

- `dock_pose`: `geometry_msgs/Pose`.
- `predock_pose`: `geometry_msgs/Pose`.
- `info`: `clearpath_dock_msgs/DockInfo`.

### `clearpath_dock_msgs/ImportDataRequest`

符号：`Ros1Clearpath_dock_msgsImportDataRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_a9ffc12e91eac79296a09b8a795b665e0bb176380d9ec48b598c2bffde5ad9ae`.

- `data`: `string`; text 256 bytes.

### `clearpath_dock_msgs/ImportDataResponse`

符号：`Ros1Clearpath_dock_msgsImportDataResponse`; 4..2412 bytes.

Codec identity：`UWVMROS1_582614b533e6d2f79eb08cdd1f8f7786a98428d13ca197c967b87a169f847e5d`.

- `docks`: `clearpath_dock_msgs/DockInfo`; sequence 2.

### `clearpath_dock_msgs/RemoveDockRequest`

符号：`Ros1Clearpath_dock_msgsRemoveDockRequest`; 8..392 bytes.

Codec identity：`UWVMROS1_eac82f7b602d69a732174a7a43c45550e91e299973d0d6de9a8d5a58d261058e`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.

### `clearpath_dock_msgs/RemoveDockResponse`

符号：`Ros1Clearpath_dock_msgsRemoveDockResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_64707a9a3b2ad309850d39b89a8ae0f0f26a5f823dc142f2ee3e4ccb4769574f`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/SetDockLocationByIdRequest`

符号：`Ros1Clearpath_dock_msgsSetDockLocationByIdRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_581419b14cf665be4a9d3dda8ba2c4233ebf084576d8c9a659158c3dc63d3c6b`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_dock_msgs/SetDockLocationByIdResponse`

符号：`Ros1Clearpath_dock_msgsSetDockLocationByIdResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_c3a384f22b47a30e4ca35aff300960108f5feced16af4bffeee342fcd3b07b12`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_dock_msgs/SetDockLocationByNameRequest`

符号：`Ros1Clearpath_dock_msgsSetDockLocationByNameRequest`; 4..132 bytes.

Codec identity：`UWVMROS1_4751614c464a74f577b3da7c8224def643d79dfcdfdb250deb6aa4dd5ffd3773`.

- `name`: `string`; text 128 bytes.

### `clearpath_dock_msgs/SetDockLocationByNameResponse`

符号：`Ros1Clearpath_dock_msgsSetDockLocationByNameResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_596351bd90396d0cfd1f195b82dcae64edc481f8e9fba25dc9548942df2aca6e`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_localization_msgs/ConvertCartesianToLatLonRequest`

符号：`Ros1Clearpath_localization_msgsConvertCartesianToLatLonRequest`; 72..200 bytes.

Codec identity：`UWVMROS1_c2cd021cd86fca2e45b47022987f7de44d14d010abf5fcf31c326310abd19305`.

- `pose`: `geometry_msgs/PoseStamped`.

### `clearpath_localization_msgs/ConvertCartesianToLatLonResponse`

符号：`Ros1Clearpath_localization_msgsConvertCartesianToLatLonResponse`; 116..244 bytes.

Codec identity：`UWVMROS1_4de91da28a53ef701e8d063d74fb527d296118d5b7bb9255ee027057f7f35312`.

- `msg`: `sensor_msgs/NavSatFix`.

### `clearpath_localization_msgs/ConvertCartesianToLatLonArrayRequest`

符号：`Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayRequest`; 4..404 bytes.

Codec identity：`UWVMROS1_03e1cf82239cc5336b5b7b54c69c267afc70318c1e221ef30913f9add2a0aa70`.

- `pose`: `geometry_msgs/PoseStamped`; sequence 2.

### `clearpath_localization_msgs/ConvertCartesianToLatLonArrayResponse`

符号：`Ros1Clearpath_localization_msgsConvertCartesianToLatLonArrayResponse`; 4..492 bytes.

Codec identity：`UWVMROS1_403b1732b1772db7eee605e8e7560f923756d1d43c9ed036705455bd0f33498b`.

- `msg`: `sensor_msgs/NavSatFix`; sequence 2.

### `clearpath_localization_msgs/ConvertLatLonToCartesianRequest`

符号：`Ros1Clearpath_localization_msgsConvertLatLonToCartesianRequest`; 116..244 bytes.

Codec identity：`UWVMROS1_e1aed3afdc81e8fb0a2539f2b46971fe70f67bafaf6660dcc96e575bcb92d95b`.

- `msg`: `sensor_msgs/NavSatFix`.

### `clearpath_localization_msgs/ConvertLatLonToCartesianResponse`

符号：`Ros1Clearpath_localization_msgsConvertLatLonToCartesianResponse`; 72..200 bytes.

Codec identity：`UWVMROS1_252d8d183faa2f20cfa6b10d35deeee44a2c2b2ae04ef01e20e556426a63ce76`.

- `pose`: `geometry_msgs/PoseStamped`.

### `clearpath_localization_msgs/ConvertLatLonToCartesianArrayRequest`

符号：`Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayRequest`; 4..492 bytes.

Codec identity：`UWVMROS1_20251e11541b312f114d6a6c0c007086369ed272952a4144e459af9d37472e9a`.

- `msg`: `sensor_msgs/NavSatFix`; sequence 2.

### `clearpath_localization_msgs/ConvertLatLonToCartesianArrayResponse`

符号：`Ros1Clearpath_localization_msgsConvertLatLonToCartesianArrayResponse`; 4..404 bytes.

Codec identity：`UWVMROS1_b2b9af859bba03c260b29eea8953b0a1c232e8c482353188a19db61a40480ae3`.

- `pose`: `geometry_msgs/PoseStamped`; sequence 2.

### `clearpath_localization_msgs/ResetLocalizationRequest`

符号：`Ros1Clearpath_localization_msgsResetLocalizationRequest`; 5..5 bytes.

Codec identity：`UWVMROS1_22fbc4612b0b68bd20e0018476f5ed22276b22cc677fbfdb7645f6e242a8c707`.

- `require_gnss`: `bool`.
- `gnss_samples`: `uint32`.

### `clearpath_localization_msgs/ResetLocalizationResponse`

符号：`Ros1Clearpath_localization_msgsResetLocalizationResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_6c613160101b7598e26b7243f7e756c3f55aecad15725e5d68f64540ef5f28ab`.

- `success`: `bool`.

### `clearpath_localization_msgs/SetDatumRequest`

符号：`Ros1Clearpath_localization_msgsSetDatumRequest`; 8..8 bytes.

Codec identity：`UWVMROS1_c1e4818a01522e1c73da13bf605db0464c245908182f728b016d436fdf4a6574`.

- `lat`: `float32`.
- `lon`: `float32`.

### `clearpath_localization_msgs/SetDatumResponse`

符号：`Ros1Clearpath_localization_msgsSetDatumResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_db90d1e0168fb29d9563692c1b5d86c1a30b2cf4bb1186b370ed177842acc6f2`.

- `success`: `bool`.

### `clearpath_logger_msgs/DeleteLogRequest`

符号：`Ros1Clearpath_logger_msgsDeleteLogRequest`; 6..262 bytes.

Codec identity：`UWVMROS1_b54559708072a689b0944885be1d6627b37bbee14845982890968cb51be523da`.

- `uuid`: `string`; text 256 bytes.
- `delete_media`: `bool`.
- `purge_record`: `bool`.

### `clearpath_logger_msgs/DeleteLogResponse`

符号：`Ros1Clearpath_logger_msgsDeleteLogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_d78cf7d455fda53e3ab5882e1990e75da7f93546f9e59e6e3b2325c738cabc49`.

- `success`: `bool`.

### `clearpath_logger_msgs/DownloadLogRequest`

符号：`Ros1Clearpath_logger_msgsDownloadLogRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_92e66dfc586d2444e0314d6eb77604c23354c0f1922b50f88b84d970217d5e64`.

- `log_uuid`: `string`; text 256 bytes.

### `clearpath_logger_msgs/DownloadLogResponse`

符号：`Ros1Clearpath_logger_msgsDownloadLogResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_02df348a428fed4659fff462c547d41fa0aaa1daa0101a2eee25d0634924bcf8`.

- `path`: `string`; text 256 bytes.
- `media_missing`: `bool`.

### `clearpath_logger_msgs/GetAllLogsRequest`

符号：`Ros1Clearpath_logger_msgsGetAllLogsRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_68d786f935d2fd1912ac01f0196841b491f5c6d1b6e319ab22bdca371993fbb6`.

空语义值，不添加虚构字段。


### `clearpath_logger_msgs/GetAllLogsResponse`

符号：`Ros1Clearpath_logger_msgsGetAllLogsResponse`; 4..14132 bytes.

Codec identity：`UWVMROS1_3c4c4948dd5425a9ca6a1042f07aa926138e21ce73c01ead9fe7471f27690149`.

- `logs`: `clearpath_logger_msgs/EventLog`; sequence 2.

### `clearpath_logger_msgs/RecordCustomEventRequest`

符号：`Ros1Clearpath_logger_msgsRecordCustomEventRequest`; 12..916 bytes.

Codec identity：`UWVMROS1_63b69b7bad4a34c168013248ed6c6e7dede8c588750a66d78e174f13ed0f89c5`.

- `custom_fields_json`: `string`; text 256 bytes.
- `tags`: `string`; sequence 2; text 256 bytes.
- `frame_id`: `string`; text 128 bytes.

### `clearpath_logger_msgs/RecordCustomEventResponse`

符号：`Ros1Clearpath_logger_msgsRecordCustomEventResponse`; 878..3190 bytes.

Codec identity：`UWVMROS1_2c722c562ef52b0eea7c7888b494cc98bb79947cde164074b4cbed645caa93cd`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/RecordErrorEventRequest`

符号：`Ros1Clearpath_logger_msgsRecordErrorEventRequest`; 12..524 bytes.

Codec identity：`UWVMROS1_a9cdf939aa39c10e714f29245790b1ec112d2e0ee5ec7629ee81df1effbfbc78`.

- `error_code`: `int32`.
- `error_msg`: `string`; text 256 bytes.
- `error_component`: `string`; text 256 bytes.

### `clearpath_logger_msgs/RecordErrorEventResponse`

符号：`Ros1Clearpath_logger_msgsRecordErrorEventResponse`; 878..3190 bytes.

Codec identity：`UWVMROS1_d8134e572a44c305c69f2ae1da4f37a6d9920cd762bbe9a90dc15e9ef7981b54`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/RecordEventRequest`

符号：`Ros1Clearpath_logger_msgsRecordEventRequest`; 878..3190 bytes.

Codec identity：`UWVMROS1_05f725bbe2f4fbd2976bf766a0e60e6a5566326b27dd09f774a096c0864f677e`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/RecordEventResponse`

符号：`Ros1Clearpath_logger_msgsRecordEventResponse`; 878..3190 bytes.

Codec identity：`UWVMROS1_5b1e7fb4032c38c3b4a7ab8477019fc0290c643e9f1cff449d007d33c9a22961`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/RecordLocationEventRequest`

符号：`Ros1Clearpath_logger_msgsRecordLocationEventRequest`; 776..1680 bytes.

Codec identity：`UWVMROS1_066b7fbb43be3ddb476c6542478e70c253dad5bb6930d5b757f2e578a9a8e884`.

- `latitude`: `float64`.
- `longitude`: `float64`.
- `heading`: `float64`.
- `velocity`: `geometry_msgs/Twist`.
- `odometry`: `nav_msgs/Odometry`.
- `tags`: `string`; sequence 2; text 256 bytes.

### `clearpath_logger_msgs/RecordLocationEventResponse`

符号：`Ros1Clearpath_logger_msgsRecordLocationEventResponse`; 878..3190 bytes.

Codec identity：`UWVMROS1_707fdc02afa7c63796a952af43697c371d530d5976661c42e1867e3fe5c75e3d`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/RecordMediaEventRequest`

符号：`Ros1Clearpath_logger_msgsRecordMediaEventRequest`; 12..652 bytes.

Codec identity：`UWVMROS1_df1b4ba70aa6a687d2be8935aaed1ccadade1ac77a148db72a563a74b300bda5`.

- `media_path`: `string`; text 256 bytes.
- `mime_type`: `string`; text 256 bytes.
- `frame_id`: `string`; text 128 bytes.

### `clearpath_logger_msgs/RecordMediaEventResponse`

符号：`Ros1Clearpath_logger_msgsRecordMediaEventResponse`; 878..3190 bytes.

Codec identity：`UWVMROS1_7f8ccc45f90b3c2df031bb6aef4c00e7e35ddf620bbc899a9c229d453eb275ae`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/RecordPowerEventRequest`

符号：`Ros1Clearpath_logger_msgsRecordPowerEventRequest`; 5..5 bytes.

Codec identity：`UWVMROS1_82706bac64cc379346fc004d2c86b8d466e976a3bb676dea2e8ae7ed1947d974`.

- `battery_percent`: `float32`.
- `charging`: `bool`.

### `clearpath_logger_msgs/RecordPowerEventResponse`

符号：`Ros1Clearpath_logger_msgsRecordPowerEventResponse`; 878..3190 bytes.

Codec identity：`UWVMROS1_4d15a62946c8e9941fc9760d43e8eebcc7e9125561e01e646c6fb6edf7aaf866`.

- `event`: `clearpath_logger_msgs/Event`.

### `clearpath_logger_msgs/StartRecordingRequest`

符号：`Ros1Clearpath_logger_msgsStartRecordingRequest`; 4..132 bytes.

Codec identity：`UWVMROS1_eb42cefac21b32710fd09c9fb1629f55a334eabc10cc958e0d98911e786ca42f`.

- `name`: `string`; text 128 bytes.

### `clearpath_logger_msgs/StartRecordingResponse`

符号：`Ros1Clearpath_logger_msgsStartRecordingResponse`; 44..7064 bytes.

Codec identity：`UWVMROS1_2220536f6a937fb7bb198bfdbd288855bf294a4b3404e702349f9ff83428af31`.

- `log`: `clearpath_logger_msgs/EventLog`.

### `clearpath_logger_msgs/StopRecordingRequest`

符号：`Ros1Clearpath_logger_msgsStopRecordingRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_ece885864f4cc93062aec96411096358e1d2c4885f30431b762b4732d3ff44b5`.

- `custom_fields_json`: `string`; text 256 bytes.

### `clearpath_logger_msgs/StopRecordingResponse`

符号：`Ros1Clearpath_logger_msgsStopRecordingResponse`; 44..7064 bytes.

Codec identity：`UWVMROS1_bc3f620603442ee53fa1b62618eb73ca1fa68347be928b6b38acc65d63295eca`.

- `log`: `clearpath_logger_msgs/EventLog`.

### `clearpath_mission_manager_msgs/AddNetworkEdgeRequest`

符号：`Ros1Clearpath_mission_manager_msgsAddNetworkEdgeRequest`; 25..793 bytes.

Codec identity：`UWVMROS1_c2ad8aa1d5988fb0397e85e15aa37211b7041a2ecdc67e5c89b53a38431e56f3`.

- `map_id`: `string`; text 256 bytes.
- `start_point_id`: `string`; text 256 bytes.
- `end_point_id`: `string`; text 256 bytes.
- `radius`: `float32`.
- `speed_limit`: `float32`.
- `cost_factor`: `float32`.
- `symmetrical`: `bool`.

### `clearpath_mission_manager_msgs/AddNetworkEdgeResponse`

符号：`Ros1Clearpath_mission_manager_msgsAddNetworkEdgeResponse`; 4..1652 bytes.

Codec identity：`UWVMROS1_2e14500e273e2a953389948d0c7533b096e7559f41d17e518f9eec6e93b7df4f`.

- `edges`: `clearpath_navigation_msgs/NetworkEdge`; sequence 2.

### `clearpath_mission_manager_msgs/AddNetworkPathRequest`

符号：`Ros1Clearpath_mission_manager_msgsAddNetworkPathRequest`; 13..301 bytes.

Codec identity：`UWVMROS1_0c8717a0058d4fbdf9927579f6bb29d84e32cadcaa811b2d3aa02464807c55d0`.

- `latitudes`: `float64`; sequence 2.
- `longitudes`: `float64`; sequence 2.
- `map_id`: `string`; text 256 bytes.
- `symmetrical`: `bool`.

### `clearpath_mission_manager_msgs/AddNetworkPathResponse`

符号：`Ros1Clearpath_mission_manager_msgsAddNetworkPathResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_ec9794b231eb22dfd44263164562c393069793f34f603bc35181ef358f26782c`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/AddNetworkPointRequest`

符号：`Ros1Clearpath_mission_manager_msgsAddNetworkPointRequest`; 29..1325 bytes.

Codec identity：`UWVMROS1_c1eb740c2558280db5b6fbe8be5cb67ba3c1538d2e9dd19d7fb5b38df316f909`.

- `latitude`: `float64`.
- `longitude`: `float64`.
- `map_id`: `string`; text 256 bytes.
- `connect_from`: `string`; sequence 2; text 256 bytes.
- `connect_to`: `string`; sequence 2; text 256 bytes.
- `symmetrical`: `bool`.

### `clearpath_mission_manager_msgs/AddNetworkPointResponse`

符号：`Ros1Clearpath_mission_manager_msgsAddNetworkPointResponse`; 20..276 bytes.

Codec identity：`UWVMROS1_adf7216e0cef0cf515203d17726e6c5acf46c03601cd931a4a1e59cdeca313be`.

- `point`: `clearpath_navigation_msgs/NetworkPoint`.

### `clearpath_mission_manager_msgs/AddRemoveByIdRequest`

符号：`Ros1Clearpath_mission_manager_msgsAddRemoveByIdRequest`; 12..524 bytes.

Codec identity：`UWVMROS1_3eb2a9e36f226c731491dcb174d1af9bf5bcfe131206dcea36d0d2b42cfc028e`.

- `uuid`: `string`; text 256 bytes.
- `parent_uuid`: `string`; text 256 bytes.
- `position`: `int32`.

### `clearpath_mission_manager_msgs/AddRemoveByIdResponse`

符号：`Ros1Clearpath_mission_manager_msgsAddRemoveByIdResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_a81b57d98295b7ad37f1bcf070b016e40ea73d802ae5c113822b8341891c12ea`.

- `ok`: `bool`.

### `clearpath_mission_manager_msgs/AddRemoveTagRequest`

符号：`Ros1Clearpath_mission_manager_msgsAddRemoveTagRequest`; 8..520 bytes.

Codec identity：`UWVMROS1_23ac2c4784aae50c56d78d68ee369ee365113dad9331c6224673b9c53576f2f6`.

- `uuid`: `string`; text 256 bytes.
- `tag`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/AddRemoveTagResponse`

符号：`Ros1Clearpath_mission_manager_msgsAddRemoveTagResponse`; 4..524 bytes.

Codec identity：`UWVMROS1_f2514cde45093626fc3ec068327521d1e077279df21ca36f3812abc6bcd316c6`.

- `tags`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/CloneMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsCloneMissionRequest`; 9..521 bytes.

Codec identity：`UWVMROS1_7c3d4053b272033a901c1fbe5c7eecaf16cd7bd7e28e2d5c6369183a7b6d62d4`.

- `uuid`: `string`; text 256 bytes.
- `new_name`: `string`; text 256 bytes.
- `reverse`: `bool`.

### `clearpath_mission_manager_msgs/CloneMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsCloneMissionResponse`; 40..13336 bytes.

Codec identity：`UWVMROS1_88894721fb1457e6aafd8b131c6a3b26af8d96ee27a8224e3bb1277bc0f987cc`.

- `mission`: `clearpath_navigation_msgs/Mission`.

### `clearpath_mission_manager_msgs/CloneNetworkMapRequest`

符号：`Ros1Clearpath_mission_manager_msgsCloneNetworkMapRequest`; 8..520 bytes.

Codec identity：`UWVMROS1_2f74e78c9bc6bff2eb44665cdb4b516c6fdafa209addd1a4d4f3fa3c1976a5f5`.

- `uuid`: `string`; text 256 bytes.
- `new_name`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/CloneNetworkMapResponse`

符号：`Ros1Clearpath_mission_manager_msgsCloneNetworkMapResponse`; 24..2608 bytes.

Codec identity：`UWVMROS1_1143b6aaee73251732ae77f676ba29ca561a47c11d5443d56e74326689a38ffb`.

- `map`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/CloneNetworkMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsCloneNetworkMissionRequest`; 9..521 bytes.

Codec identity：`UWVMROS1_46048ce502c1e4aa8629826444bf77de18318f16c9398768ea75283549b802b4`.

- `uuid`: `string`; text 256 bytes.
- `new_name`: `string`; text 256 bytes.
- `reverse`: `bool`.

### `clearpath_mission_manager_msgs/CloneNetworkMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsCloneNetworkMissionResponse`; 54..13606 bytes.

Codec identity：`UWVMROS1_7aa5c1e17efce3523e3c751e6900a63eacea43b47b6c1e8987fce3d98462b63d`.

- `mission`: `clearpath_navigation_msgs/NetworkMission`.

### `clearpath_mission_manager_msgs/ClonePointOfInterestRequest`

符号：`Ros1Clearpath_mission_manager_msgsClonePointOfInterestRequest`; 8..520 bytes.

Codec identity：`UWVMROS1_ffa35600ea2a044f4ef3388627f8f34323407b6dfdf314d5e68e8a997f95cc69`.

- `uuid`: `string`; text 256 bytes.
- `new_name`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/ClonePointOfInterestResponse`

符号：`Ros1Clearpath_mission_manager_msgsClonePointOfInterestResponse`; 49..1209 bytes.

Codec identity：`UWVMROS1_97edd93b8afb8681c2c0755f0313129e0ea8bea5384235a03b3b48c39e6438d0`.

- `result`: `clearpath_navigation_msgs/PointOfInterest`.

### `clearpath_mission_manager_msgs/CreateMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreateMissionRequest`; 20..1964 bytes.

Codec identity：`UWVMROS1_caa700efafa4dbdb056e78e08af082f2f4d985f1b431b5bfb2ae019542f3925f`.

- `name`: `string`; text 128 bytes.
- `onav_config`: `string`; text 256 bytes.
- `waypoint_ids`: `string`; sequence 2; text 256 bytes.
- `on_start_ids`: `string`; sequence 2; text 256 bytes.
- `on_stop_ids`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/CreateMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreateMissionResponse`; 40..13336 bytes.

Codec identity：`UWVMROS1_ce4a3a3cc959015bffb0a98373399a9d1063d5dee0baa4b4e685c6fde879bc01`.

- `result`: `clearpath_navigation_msgs/Mission`.

### `clearpath_mission_manager_msgs/CreateNetworkMapRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreateNetworkMapRequest`; 20..1756 bytes.

Codec identity：`UWVMROS1_339dba93c2db9e3f5280805772411b26292f0587a465f95a6369828c556d9f3a`.

- `name`: `string`; text 128 bytes.
- `default_radius`: `float32`.
- `default_speed_limit`: `float32`.
- `points`: `clearpath_navigation_msgs/NetworkPoint`; sequence 2.
- `connections`: `clearpath_mission_manager_msgs/NetworkEdgeReq`; sequence 2.

### `clearpath_mission_manager_msgs/CreateNetworkMapResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreateNetworkMapResponse`; 24..2608 bytes.

Codec identity：`UWVMROS1_cc887ebcf4ab3232cff47e7c47c90a3458fd83ca6c252d6942d4d7e2b9a4b5cb`.

- `result`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/CreateNetworkMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreateNetworkMissionRequest`; 34..2234 bytes.

Codec identity：`UWVMROS1_7f681e1a88063ba1d41a6e6156a499e7dc0cc68f656c09931589b8a1532e95bf`.

- `name`: `string`; text 128 bytes.
- `onav_config`: `string`; text 256 bytes.
- `waypoint_ids`: `string`; sequence 2; text 256 bytes.
- `on_start_ids`: `string`; sequence 2; text 256 bytes.
- `on_stop_ids`: `string`; sequence 2; text 256 bytes.
- `return_to_dock_enabled`: `bool`.
- `return_to_dock_id`: `string`; text 256 bytes.
- `return_to_dock_battery_level`: `float32`.
- `resume_mission_battery_level`: `float32`.
- `network_replan_enabled`: `bool`.

### `clearpath_mission_manager_msgs/CreateNetworkMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreateNetworkMissionResponse`; 54..13606 bytes.

Codec identity：`UWVMROS1_7795dd8fd48439f93f4ff545ed7ecdb4948692d973e4d688d197c7a2c8afb374`.

- `result`: `clearpath_navigation_msgs/NetworkMission`.

### `clearpath_mission_manager_msgs/CreatePointOfInterestRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreatePointOfInterestRequest`; 45..949 bytes.

Codec identity：`UWVMROS1_46db8c6cd151bb2b514dbbb6ca3c5638186e78ed8c0a5b587c63d263dbf4e707`.

- `name`: `string`; text 128 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `elevation`: `float64`.
- `enable_heading`: `bool`.
- `heading`: `float64`.
- `tags`: `string`; sequence 2; text 256 bytes.
- `custom_fields_json`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/CreatePointOfInterestResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreatePointOfInterestResponse`; 49..1209 bytes.

Codec identity：`UWVMROS1_0a515e14a911f9bbb05e1b44fccbe91b8ae9c5d83e6bf3b3055bdd46c95ab82e`.

- `result`: `clearpath_navigation_msgs/PointOfInterest`.

### `clearpath_mission_manager_msgs/CreateTaskRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreateTaskRequest`; 33..2769 bytes.

Codec identity：`UWVMROS1_b6d1b102bd25c79e40c1c8f009688a8a183d7fbebb3983b97ab8ecb219e4eab3`.

- `name`: `string`; text 128 bytes.
- `action_server_name`: `string`; text 256 bytes.
- `version`: `string`; text 256 bytes.
- `floats`: `float64`; sequence 2.
- `strings`: `string`; sequence 2; text 256 bytes.
- `allow_failure`: `bool`.
- `assign_to_wp`: `string`; sequence 2; text 256 bytes.
- `assign_on_start`: `string`; sequence 2; text 256 bytes.
- `assign_on_stop`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/CreateTaskResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreateTaskResponse`; 25..1457 bytes.

Codec identity：`UWVMROS1_1fab04f16b13985ec3cffd38cace15e459fbb8de05d7283917df6ac0e7e30c8a`.

- `result`: `clearpath_navigation_msgs/Task`.

### `clearpath_mission_manager_msgs/CreateWaypointRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreateWaypointRequest`; 52..1220 bytes.

Codec identity：`UWVMROS1_0779feb60308617994f391072eba0fb734890defcf0b05974cf4a54485586188`.

- `name`: `string`; text 128 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `heading`: `float64`.
- `position_tolerance`: `float64`.
- `yaw_tolerance`: `float64`.
- `task_ids`: `string`; sequence 2; text 256 bytes.
- `assign_to`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/CreateWaypointResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreateWaypointResponse`; 52..3350 bytes.

Codec identity：`UWVMROS1_ecf69fcfa5288295555651d9e8215b75b0b368a019447a7f50f25390eaf73a37`.

- `result`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_mission_manager_msgs/CreateWaypointFromPoiRequest`

符号：`Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiRequest`; 49..1209 bytes.

Codec identity：`UWVMROS1_792f6ca7e821aa73a48aafcec57ba7b6c729115e7d2fbd4b4ac25412e1d76522`.

- `point_of_interest`: `clearpath_navigation_msgs/PointOfInterest`.

### `clearpath_mission_manager_msgs/CreateWaypointFromPoiResponse`

符号：`Ros1Clearpath_mission_manager_msgsCreateWaypointFromPoiResponse`; 52..3350 bytes.

Codec identity：`UWVMROS1_39d1b867f9aa0a0fa17ceb11ab8b301a42a96c3156a97a8258d2a775853549ac`.

- `waypoint`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_mission_manager_msgs/DeleteByIdRequest`

符号：`Ros1Clearpath_mission_manager_msgsDeleteByIdRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_489c2a214ef86b4b1b60e32ee19f71e11e7d000a3293ae747d48c20b746527f2`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/DeleteByIdResponse`

符号：`Ros1Clearpath_mission_manager_msgsDeleteByIdResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_a93b6bdc62702c29ed1db507504586a1b651ba32f98725326faf10b14e5abfcf`.

- `ok`: `bool`.

### `clearpath_mission_manager_msgs/DeleteEverythingRequest`

符号：`Ros1Clearpath_mission_manager_msgsDeleteEverythingRequest`; 1..1 bytes.

Codec identity：`UWVMROS1_a0b2722e0ba476021308ba2d3dc2a6ef9843dbcf607c0e6ca18d8c4de60256f8`.

- `yes_i_am_absolutely_sure_i_want_to_do_this`: `bool`.

### `clearpath_mission_manager_msgs/DeleteEverythingResponse`

符号：`Ros1Clearpath_mission_manager_msgsDeleteEverythingResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_cd73a92e3a56214ea6fd445e5f7b20aab1a91945875774af4db25426f4a67a4d`.

- `ok`: `bool`.

### `clearpath_mission_manager_msgs/DeleteMultipleRequest`

符号：`Ros1Clearpath_mission_manager_msgsDeleteMultipleRequest`; 8..784 bytes.

Codec identity：`UWVMROS1_93d59bed5a06ad0d5d7c19f7c2881255ab70f4136e8d9633c6619e7060d2c2df`.

- `uuids`: `string`; sequence 2; text 256 bytes.
- `parent_id`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/DeleteMultipleResponse`

符号：`Ros1Clearpath_mission_manager_msgsDeleteMultipleResponse`; 4..524 bytes.

Codec identity：`UWVMROS1_ddfebd2869fb25d1e6d51221ab483db5d1015d44607cfbf7d45fb2c28cd4cb60`.

- `failed_uuids`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/ExportDataRequest`

符号：`Ros1Clearpath_mission_manager_msgsExportDataRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_273ca86bcaa10fda29a72290dd5b605569d6c59562e935e4779deee94249e5f4`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/ExportDataResponse`

符号：`Ros1Clearpath_mission_manager_msgsExportDataResponse`; 4..260 bytes.

Codec identity：`UWVMROS1_497c67643bdb2dfb03f415e5af67a58b3dcfe439842441973fece1df28e56dbb`.

- `data`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetAllMissionsRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetAllMissionsRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_9b2758f137a20a5a8d0c798befe715f0d834c3fa912fddd5005a88c95340fb45`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetAllMissionsResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetAllMissionsResponse`; 4..26676 bytes.

Codec identity：`UWVMROS1_b3936fa567f9f915b83d8933633c280b42684da025f096333fd133772642649b`.

- `missions`: `clearpath_navigation_msgs/Mission`; sequence 2.

### `clearpath_mission_manager_msgs/GetAllNetworkMapsRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_b366fcf604486b90ff0de6d4cdf601f179509337b308b423d51a941857b964ed`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetAllNetworkMapsResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetAllNetworkMapsResponse`; 4..5220 bytes.

Codec identity：`UWVMROS1_ac5719469bbfc8fbc6f0dd9a897cea857ecde83b65f7d2d6b19ac1b2c3905f3d`.

- `maps`: `clearpath_navigation_msgs/NetworkMap`; sequence 2.

### `clearpath_mission_manager_msgs/GetAllNetworkMissionsRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_a1aed2728f1c66328d9c6f15d5866d67b379abfe7afd71b03c02ce69ef4fd11f`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetAllNetworkMissionsResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetAllNetworkMissionsResponse`; 4..27216 bytes.

Codec identity：`UWVMROS1_e0f273f3e31d98804e84ffe011f5060be89d009d790fb34992de6aaa346ef0e2`.

- `missions`: `clearpath_navigation_msgs/NetworkMission`; sequence 2.

### `clearpath_mission_manager_msgs/GetAllPointsOfInterestRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_1774ba572ac91b4246b91b9e006829ff4f38a195ae67b23f5ed461574d72ccc9`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetAllPointsOfInterestResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetAllPointsOfInterestResponse`; 4..2422 bytes.

Codec identity：`UWVMROS1_8105af95e78f446b3f73eb05379d4633513a51c29ea157adf3fb24ebed014fe4`.

- `points_of_interest`: `clearpath_navigation_msgs/PointOfInterest`; sequence 2.

### `clearpath_mission_manager_msgs/GetAllTasksRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetAllTasksRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_e345153b30f5709bffaea462092527b89285ab0902c8b7c78f759f92d823c74e`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetAllTasksResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetAllTasksResponse`; 4..2918 bytes.

Codec identity：`UWVMROS1_fed546c0b2b8ea2db1ca9e8e13e918144b436e4a2a818e724fadfe5a3775c148`.

- `tasks`: `clearpath_navigation_msgs/Task`; sequence 2.

### `clearpath_mission_manager_msgs/GetAllWaypointsRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetAllWaypointsRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_d5a22af162ba215c95bddbd955eac6aba558134ee4a5c988a13b6819fc5e22c7`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetAllWaypointsResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetAllWaypointsResponse`; 4..6704 bytes.

Codec identity：`UWVMROS1_daacee9b652bc78820380eaf5d515c8813f8387fc7d2a3b934d7961fd1f46208`.

- `waypoints`: `clearpath_navigation_msgs/Waypoint`; sequence 2.

### `clearpath_mission_manager_msgs/GetEverythingRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetEverythingRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_6be79503b5553344dcbc97ef60843035d672883c3431f33b86a6e367bff35783`.

空语义值，不添加虚构字段。


### `clearpath_mission_manager_msgs/GetEverythingResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetEverythingResponse`; 24..32768 bytes.

Codec identity：`UWVMROS1_135f1c7e2aea6353167ae048ae6afdc57fb6614c64a1a135321015734fc79069`.

- `state`: `clearpath_mission_manager_msgs/StorageState`.

### `clearpath_mission_manager_msgs/GetMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetMissionRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_c1587963d27ada2cb3d8fbb4ccad1faa2f7bdbe2cb88081b76e573843f51051f`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetMissionResponse`; 40..13336 bytes.

Codec identity：`UWVMROS1_ed24abebf6a3316c8583a2d6d9e62f7eca8ea493607c7772130b057468aa483f`.

- `mission`: `clearpath_navigation_msgs/Mission`.

### `clearpath_mission_manager_msgs/GetNetworkMapRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetNetworkMapRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_67930348022f20b977b129f0a583130b9664cf9c45d26bcfaf5a5af087e185b7`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetNetworkMapResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetNetworkMapResponse`; 24..2608 bytes.

Codec identity：`UWVMROS1_0a25742662a313fe30697c86f1463304d54a7bfc06e86b6e6a2c9881c09dc775`.

- `map`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/GetNetworkMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetNetworkMissionRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_a69493f449f860b33c6c6c510b7a23b015ce5c3566ac13aae7d2d42b4a0652b7`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetNetworkMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetNetworkMissionResponse`; 54..13606 bytes.

Codec identity：`UWVMROS1_9ec509115489f3011105522578f549180057312e652eb9bf1a1c3f1dbee2025a`.

- `mission`: `clearpath_navigation_msgs/NetworkMission`.

### `clearpath_mission_manager_msgs/GetPointOfInterestRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetPointOfInterestRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_a6b60dbc44cf3fdfc7deea9ce5d8826b9bfb17cfe3bdf6e5a82ae485d51fa9a7`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetPointOfInterestResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetPointOfInterestResponse`; 49..1209 bytes.

Codec identity：`UWVMROS1_711a556a81c17e244578495cac6e6721c5e7b81dadf505784ea191cc1f0b9a13`.

- `point_of_interest`: `clearpath_navigation_msgs/PointOfInterest`.

### `clearpath_mission_manager_msgs/GetTaskRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetTaskRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_854685ce6f5dc28caf2c8e11d82813aa8f0611945d5c76d29bb2ca11461a94dc`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetTaskResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetTaskResponse`; 25..1457 bytes.

Codec identity：`UWVMROS1_7ddc2f1b761f344a7765b4f54d9a15a91a4097e715f0610c741fc2a16dba947f`.

- `task`: `clearpath_navigation_msgs/Task`.

### `clearpath_mission_manager_msgs/GetWaypointRequest`

符号：`Ros1Clearpath_mission_manager_msgsGetWaypointRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_d3530712135cd3a80f746e233124cb3e79ef8d8ef69ca6fe1f26c750a3314539`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/GetWaypointResponse`

符号：`Ros1Clearpath_mission_manager_msgsGetWaypointResponse`; 52..3350 bytes.

Codec identity：`UWVMROS1_8226d0597a337e9b43babecca8bf4ba09274c53802cd87ece58feea9c0954c66`.

- `waypoint`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_mission_manager_msgs/ImportDataRequest`

符号：`Ros1Clearpath_mission_manager_msgsImportDataRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_5e0a54e52dea50a99d18f8e82ded58dafd203c692fd467c0123e0fb057e37d25`.

- `data`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/ImportDataResponse`

符号：`Ros1Clearpath_mission_manager_msgsImportDataResponse`; 24..32768 bytes.

Codec identity：`UWVMROS1_16cd6e810a8c986454949c165ec577118481f2557bf2d1620fc098108b806488`.

- `state`: `clearpath_mission_manager_msgs/StorageState`.

### `clearpath_mission_manager_msgs/ImportMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsImportMissionRequest`; 40..13336 bytes.

Codec identity：`UWVMROS1_4eb653a68629b1c4461091d9ab12f90d26ed5e8b063d13b3cbbe1a2944f3fb53`.

- `mission`: `clearpath_navigation_msgs/Mission`.

### `clearpath_mission_manager_msgs/ImportMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsImportMissionResponse`; 40..13336 bytes.

Codec identity：`UWVMROS1_8881f8b70cb092d74936eb93345036049e07cc11cd5c55e52b2b3f7f36d07e7d`.

- `mission`: `clearpath_navigation_msgs/Mission`.

### `clearpath_mission_manager_msgs/ImportNetworkMapRequest`

符号：`Ros1Clearpath_mission_manager_msgsImportNetworkMapRequest`; 24..2608 bytes.

Codec identity：`UWVMROS1_ca063451548e0a85552a3069cccf7b86524d6cb30c5dd6c788d44ba0fc508978`.

- `map`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/ImportNetworkMapResponse`

符号：`Ros1Clearpath_mission_manager_msgsImportNetworkMapResponse`; 24..2608 bytes.

Codec identity：`UWVMROS1_b53c8f06e58b7dde2c5127df98451db37c1825fe667cf8eb816c0cacf93ecf3f`.

- `map`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/ImportNetworkMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsImportNetworkMissionRequest`; 54..13606 bytes.

Codec identity：`UWVMROS1_03140f9073798b8de77e3ba9b8fc8f048b0ab43fa5d17c17bb767c23dfcf1a39`.

- `mission`: `clearpath_navigation_msgs/NetworkMission`.

### `clearpath_mission_manager_msgs/ImportNetworkMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsImportNetworkMissionResponse`; 54..13606 bytes.

Codec identity：`UWVMROS1_2f4b00981cea86beab4c6872e8184ad90257612396bb44d0a120290b8404c7d8`.

- `mission`: `clearpath_navigation_msgs/NetworkMission`.

### `clearpath_mission_manager_msgs/SplitNetworkEdgeRequest`

符号：`Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeRequest`; 25..537 bytes.

Codec identity：`UWVMROS1_6d083d95fc9720932b330979fdf997abeaa7e463265226bf7ae09fec1bb97be5`.

- `map_id`: `string`; text 256 bytes.
- `edge_id`: `string`; text 256 bytes.
- `new_point_latitude`: `float64`.
- `new_point_longitude`: `float64`.
- `symmetrical`: `bool`.

### `clearpath_mission_manager_msgs/SplitNetworkEdgeResponse`

符号：`Ros1Clearpath_mission_manager_msgsSplitNetworkEdgeResponse`; 24..2608 bytes.

Codec identity：`UWVMROS1_55fdb27f06984817af8a20e3e0bcc8dd85c33db0fbc65f1881822eabc6ab14b3`.

- `result`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/UpdateMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateMissionRequest`; 24..2224 bytes.

Codec identity：`UWVMROS1_3320e01dc2228359832eb75a54c3df011870d017f0f8f862fe2a68d2cb56a3d3`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `onav_config`: `string`; text 256 bytes.
- `waypoint_ids`: `string`; sequence 2; text 256 bytes.
- `on_start_ids`: `string`; sequence 2; text 256 bytes.
- `on_stop_ids`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/UpdateMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateMissionResponse`; 40..13336 bytes.

Codec identity：`UWVMROS1_1d43fee27013957863e01990de9010ebb6b8a7a8668cf6b3916835aaa92e18a9`.

- `result`: `clearpath_navigation_msgs/Mission`.

### `clearpath_mission_manager_msgs/UpdateNetworkEdgeRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeRequest`; 28..1052 bytes.

Codec identity：`UWVMROS1_6f6eb31133df261e82cf165b1e93ae4d853c4a9de1a928a612ac35115d0bd563`.

- `map_id`: `string`; text 256 bytes.
- `uuid`: `string`; text 256 bytes.
- `start_point_id`: `string`; text 256 bytes.
- `end_point_id`: `string`; text 256 bytes.
- `radius`: `float32`.
- `speed_limit`: `float32`.
- `cost_factor`: `float32`.

### `clearpath_mission_manager_msgs/UpdateNetworkEdgeResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgeResponse`; 56..824 bytes.

Codec identity：`UWVMROS1_4534230375b42cc0956c57d587baac63882da426edfe851fccc4b95a42d59c01`.

- `result`: `clearpath_navigation_msgs/NetworkEdge`.

### `clearpath_mission_manager_msgs/UpdateNetworkEdgesRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesRequest`; 20..820 bytes.

Codec identity：`UWVMROS1_9126cc96d7840c27a84dbb4144580cb9a76a7c77aa1fefea23b6b965e6d2d7f4`.

- `map_id`: `string`; text 256 bytes.
- `uuids`: `string`; sequence 2; text 256 bytes.
- `radii`: `float32`; sequence 2.
- `speed_limits`: `float32`; sequence 2.
- `cost_factors`: `float32`; sequence 2.

### `clearpath_mission_manager_msgs/UpdateNetworkEdgesResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkEdgesResponse`; 4..1652 bytes.

Codec identity：`UWVMROS1_0a5fee23a1ef3a75299f92c499ef73bc22f39f15932a9c383d7406445cb89b0c`.

- `result`: `clearpath_navigation_msgs/NetworkEdge`; sequence 2.

### `clearpath_mission_manager_msgs/UpdateNetworkMapRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkMapRequest`; 16..400 bytes.

Codec identity：`UWVMROS1_527641cfaf5b2283be483c5fceb31d82cdcbe01dd9199343033b910c1864e012`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `default_radius`: `float32`.
- `default_speed_limit`: `float32`.

### `clearpath_mission_manager_msgs/UpdateNetworkMapResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkMapResponse`; 24..2608 bytes.

Codec identity：`UWVMROS1_1ea078b7625f7a8593ddbd8df3f158972cfcc973bb956f041d36e66734a03924`.

- `result`: `clearpath_navigation_msgs/NetworkMap`.

### `clearpath_mission_manager_msgs/UpdateNetworkMissionRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionRequest`; 38..2494 bytes.

Codec identity：`UWVMROS1_e3f246a1753021aee8ab1d6a7792a878fda832ee63d797b52ecabff917a41d95`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `onav_config`: `string`; text 256 bytes.
- `waypoint_ids`: `string`; sequence 2; text 256 bytes.
- `on_start_ids`: `string`; sequence 2; text 256 bytes.
- `on_stop_ids`: `string`; sequence 2; text 256 bytes.
- `return_to_dock_enabled`: `bool`.
- `return_to_dock_id`: `string`; text 256 bytes.
- `return_to_dock_battery_level`: `float32`.
- `resume_mission_battery_level`: `float32`.
- `network_replan_enabled`: `bool`.

### `clearpath_mission_manager_msgs/UpdateNetworkMissionResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkMissionResponse`; 54..13606 bytes.

Codec identity：`UWVMROS1_223f3be41c5e6b365f0aed33952e2b53619fdb700b6249cd79cdb835a66317f3`.

- `result`: `clearpath_navigation_msgs/NetworkMission`.

### `clearpath_mission_manager_msgs/UpdateNetworkPointRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkPointRequest`; 24..536 bytes.

Codec identity：`UWVMROS1_ced6a1449a9a8f8c92cec59f865adbb3563e6840d992c977ca124e018668fd85`.

- `map_id`: `string`; text 256 bytes.
- `uuid`: `string`; text 256 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.

### `clearpath_mission_manager_msgs/UpdateNetworkPointResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkPointResponse`; 20..276 bytes.

Codec identity：`UWVMROS1_7015a36b6124bdbb162c38c33a1a107431c3b2050cdd48d33707d4a27317d2ee`.

- `result`: `clearpath_navigation_msgs/NetworkPoint`.

### `clearpath_mission_manager_msgs/UpdateNetworkPointsRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsRequest`; 16..824 bytes.

Codec identity：`UWVMROS1_cd684b3f95616f37e2620228a24e41609f3c102f286797d0d49069ad6f8fb7d9`.

- `map_id`: `string`; text 256 bytes.
- `uuids`: `string`; sequence 2; text 256 bytes.
- `latitudes`: `float64`; sequence 2.
- `longitudes`: `float64`; sequence 2.

### `clearpath_mission_manager_msgs/UpdateNetworkPointsResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateNetworkPointsResponse`; 4..556 bytes.

Codec identity：`UWVMROS1_867e62ceec9cffd73f6bc697994998578c0d848b489c7fb1536ff29cc2ed740d`.

- `result`: `clearpath_navigation_msgs/NetworkPoint`; sequence 2.

### `clearpath_mission_manager_msgs/UpdatePointOfInterestRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestRequest`; 49..1209 bytes.

Codec identity：`UWVMROS1_e1dc3af1f989ce0787973a31ea9f5fc4e4be8c2a23cc73e258ceb5f5e503ff51`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `elevation`: `float64`.
- `enable_heading`: `bool`.
- `heading`: `float64`.
- `tags`: `string`; sequence 2; text 256 bytes.
- `custom_fields_json`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/UpdatePointOfInterestResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdatePointOfInterestResponse`; 49..1209 bytes.

Codec identity：`UWVMROS1_4bfcd0f85d450d766dc190745d8abdddb2320a4b8990e02cf1fce80aff304e05`.

- `result`: `clearpath_navigation_msgs/PointOfInterest`.

### `clearpath_mission_manager_msgs/UpdateTaskRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateTaskRequest`; 25..1457 bytes.

Codec identity：`UWVMROS1_a5844fedb72c67d92446e533cd49d4e18fb1cec1aecc522646fc0fb5834fde15`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `action_server_name`: `string`; text 256 bytes.
- `version`: `string`; text 256 bytes.
- `floats`: `float64`; sequence 2.
- `strings`: `string`; sequence 2; text 256 bytes.
- `allow_failure`: `bool`.

### `clearpath_mission_manager_msgs/UpdateTaskResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateTaskResponse`; 25..1457 bytes.

Codec identity：`UWVMROS1_9e2be799a216403d720d9aac572b8faf20a4cb81abd299fa6f845798cb64e86d`.

- `result`: `clearpath_navigation_msgs/Task`.

### `clearpath_mission_manager_msgs/UpdateWaypointRequest`

符号：`Ros1Clearpath_mission_manager_msgsUpdateWaypointRequest`; 52..956 bytes.

Codec identity：`UWVMROS1_79fb82878e0bc290e0975c281962165c5ea99dd8cf550607896633a9a2a3215a`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `latitude`: `float64`.
- `longitude`: `float64`.
- `heading`: `float64`.
- `position_tolerance`: `float64`.
- `yaw_tolerance`: `float64`.
- `task_ids`: `string`; sequence 2; text 256 bytes.

### `clearpath_mission_manager_msgs/UpdateWaypointResponse`

符号：`Ros1Clearpath_mission_manager_msgsUpdateWaypointResponse`; 52..3350 bytes.

Codec identity：`UWVMROS1_7488513078df8a3a9b1b3bfcca432aee912b3f7bf028f9d772c67f91e26c850c`.

- `result`: `clearpath_navigation_msgs/Waypoint`.

### `clearpath_mission_manager_msgs/ValidateNetworkMapRequest`

符号：`Ros1Clearpath_mission_manager_msgsValidateNetworkMapRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_6924bb2508845236c9ef6c5ef4d71881eed30960550df58105c3b9e91fa45041`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_manager_msgs/ValidateNetworkMapResponse`

符号：`Ros1Clearpath_mission_manager_msgsValidateNetworkMapResponse`; 14..790 bytes.

Codec identity：`UWVMROS1_c213df6efac189646a82ff69eb42d36321e72356308da44743cce592910c4bd8`.

- `state`: `clearpath_mission_manager_msgs/NetworkMapState`.

### `clearpath_mission_scheduler_msgs/CloneScheduleRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsCloneScheduleRequest`; 8..520 bytes.

Codec identity：`UWVMROS1_8387bc2882c59ffb6124127d6a5dd54bc7e2685fd5a0aa3453389612e50b3216`.

- `uuid`: `string`; text 256 bytes.
- `new_name`: `string`; text 256 bytes.

### `clearpath_mission_scheduler_msgs/CloneScheduleResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsCloneScheduleResponse`; 40..944 bytes.

Codec identity：`UWVMROS1_2245dcf9c323b09f914e5ff952fadd117c5ae6a3c62e31d2b7faa4b723be27a0`.

- `schedule`: `clearpath_mission_scheduler_msgs/Schedule`.

### `clearpath_mission_scheduler_msgs/CreateScheduleRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsCreateScheduleRequest`; 36..684 bytes.

Codec identity：`UWVMROS1_5c2188fde6641a0d1d38f8c03f09f2feef33a0c6938310fb2233adef32719b53`.

- `name`: `string`; text 128 bytes.
- `start_time`: `clearpath_mission_scheduler_msgs/UtcTime`.
- `mode`: `uint8`.
- `loop_repeats`: `uint8`.
- `loop_interval`: `duration`.
- `mission_ids`: `string`; sequence 2; text 256 bytes.
- `min_battery`: `float32`.
- `timeout`: `duration`.
- `enabled`: `bool`.

### `clearpath_mission_scheduler_msgs/CreateScheduleResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsCreateScheduleResponse`; 40..944 bytes.

Codec identity：`UWVMROS1_9859bffd0fb72f93e6692c733cf9160af07d648b317f8bf9fdc34f6a7dc7b24c`.

- `result`: `clearpath_mission_scheduler_msgs/Schedule`.

### `clearpath_mission_scheduler_msgs/EnableScheduleRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsEnableScheduleRequest`; 5..261 bytes.

Codec identity：`UWVMROS1_26ad79f2ef123281877514e3bc65268a180f01441229ccc08c907bc76f16e953`.

- `uuid`: `string`; text 256 bytes.
- `enable`: `bool`.

### `clearpath_mission_scheduler_msgs/EnableScheduleResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsEnableScheduleResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_4ca5afdf4ac83e2d03d94b02e3bd156bfaec1835922a6f3d719ea700251324b2`.

- `ok`: `bool`.

### `clearpath_mission_scheduler_msgs/ExportDataRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsExportDataRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_8ad06898b5c892ea73d57aa1db2f7b8b0a8e435d05c8a614c6d76d08ac598c54`.

空语义值，不添加虚构字段。


### `clearpath_mission_scheduler_msgs/ExportDataResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsExportDataResponse`; 4..260 bytes.

Codec identity：`UWVMROS1_b3ee9c9b3c93a5e1c1df96c51d33fc883713fc6dc1657e6c9c8a567be368847b`.

- `data`: `string`; text 256 bytes.

### `clearpath_mission_scheduler_msgs/GetAllSchedulesRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_cdf67fd2aa2ebffb723416c55f3aff5700dfad53b2464ba446fd115342da54c1`.

空语义值，不添加虚构字段。


### `clearpath_mission_scheduler_msgs/GetAllSchedulesResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsGetAllSchedulesResponse`; 4..1892 bytes.

Codec identity：`UWVMROS1_79b76d2badd9a5a0ab76421b3f992b0c90552d8c879c2a4727966ca749014834`.

- `schedules`: `clearpath_mission_scheduler_msgs/Schedule`; sequence 2.

### `clearpath_mission_scheduler_msgs/GetNextScheduleRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsGetNextScheduleRequest`; 0..0 bytes.

Codec identity：`UWVMROS1_3c10499a950f4c7431e738bf8e1d56a6407f06eec6b570b10ef5532f67ad0e31`.

空语义值，不添加虚构字段。


### `clearpath_mission_scheduler_msgs/GetNextScheduleResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsGetNextScheduleResponse`; 12..268 bytes.

Codec identity：`UWVMROS1_eb0d25c6d02bf163d55bf197402c0818a96089948b79be7747bdb4a9d97089fa`.

- `uuid`: `string`; text 256 bytes.
- `time_to_start`: `duration`.

### `clearpath_mission_scheduler_msgs/GetScheduleRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsGetScheduleRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_631d2966a939673a63824e4aab11b1dc1b7f6df6446e64307151b9826264800a`.

- `uuid`: `string`; text 256 bytes.

### `clearpath_mission_scheduler_msgs/GetScheduleResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsGetScheduleResponse`; 40..944 bytes.

Codec identity：`UWVMROS1_c731f817524bcf55c9efd68faeb390dc88a160f2efb2fa472d81a8aaff2cd970`.

- `schedule`: `clearpath_mission_scheduler_msgs/Schedule`.

### `clearpath_mission_scheduler_msgs/ImportDataRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsImportDataRequest`; 4..260 bytes.

Codec identity：`UWVMROS1_7c1b0e75e3d4dacd5f9fc3d82b7ddab8629686215f1c52d7be83c802a1316561`.

- `data`: `string`; text 256 bytes.

### `clearpath_mission_scheduler_msgs/ImportDataResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsImportDataResponse`; 4..1892 bytes.

Codec identity：`UWVMROS1_2a5e62341836cc9171f7c292463a116fc84ddb7b2a8600107e3c5fb2ce5a004f`.

- `state`: `clearpath_mission_scheduler_msgs/StorageState`.

### `clearpath_mission_scheduler_msgs/UpdateScheduleRequest`

符号：`Ros1Clearpath_mission_scheduler_msgsUpdateScheduleRequest`; 40..944 bytes.

Codec identity：`UWVMROS1_24baafba1e1af2d47b61f21aa7f2c5795f298477a90181b97e3d942f8da25b8f`.

- `uuid`: `string`; text 256 bytes.
- `name`: `string`; text 128 bytes.
- `start_time`: `clearpath_mission_scheduler_msgs/UtcTime`.
- `mode`: `uint8`.
- `loop_repeats`: `uint8`.
- `loop_interval`: `duration`.
- `mission_ids`: `string`; sequence 2; text 256 bytes.
- `min_battery`: `float32`.
- `timeout`: `duration`.
- `enabled`: `bool`.

### `clearpath_mission_scheduler_msgs/UpdateScheduleResponse`

符号：`Ros1Clearpath_mission_scheduler_msgsUpdateScheduleResponse`; 40..944 bytes.

Codec identity：`UWVMROS1_9b32778480e054c6aa5d6100fab9bc44efde5fec5456e05af13618e53b410853`.

- `result`: `clearpath_mission_scheduler_msgs/Schedule`.

### `clearpath_navigation_msgs/AutonomyTaskSrvRequest`

符号：`Ros1Clearpath_navigation_msgsAutonomyTaskSrvRequest`; 12..804 bytes.

Codec identity：`UWVMROS1_e8a7610c646bb07a6de057f8882dd431405a8ce00f8f5ee11679a383d73cb9d6`.

- `version`: `string`; text 256 bytes.
- `floats`: `float64`; sequence 2.
- `strings`: `string`; sequence 2; text 256 bytes.

### `clearpath_navigation_msgs/AutonomyTaskSrvResponse`

符号：`Ros1Clearpath_navigation_msgsAutonomyTaskSrvResponse`; 2..2 bytes.

Codec identity：`UWVMROS1_f1c6ef16107712804760b090620b57e8bb60dd19ccfbb516630ed916acf42e8c`.

- `success`: `bool`.
- `status`: `int8`.

- Constant `NOGPS`: `uint8 = 0`.
- Constant `NOHEADING_RTK`: `uint8 = 1`.
- Constant `ROBOT_IS_MOVING`: `uint8 = 2`.
- Constant `ERROR`: `uint8 = 3`.
- Constant `SERVICE_NOT_AVAILABLE`: `uint8 = 4`.
- Constant `PENDING`: `uint8 = 5`.
- Constant `COMPLETED`: `uint8 = 6`.

### `clearpath_navigation_msgs/SetDelayCompensationRequest`

符号：`Ros1Clearpath_navigation_msgsSetDelayCompensationRequest`; 3..3 bytes.

Codec identity：`UWVMROS1_ec8f99417bf6bf770da1acdebb86acc69ec41b9dd523e235688c4ccc0fff453e`.

- `enable_delay_compensation`: `bool`.
- `delay`: `uint16`.

### `clearpath_navigation_msgs/SetDelayCompensationResponse`

符号：`Ros1Clearpath_navigation_msgsSetDelayCompensationResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_9fc1ca659396456af96f2abb819cec8217992f10b6dd3b0e0f94baf37e70e6bc`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/SetPathShifterRequest`

符号：`Ros1Clearpath_navigation_msgsSetPathShifterRequest`; 9..9 bytes.

Codec identity：`UWVMROS1_66a02e58f180dfdb2a32bd6162bf329004e3dd5a91232507dffc15fe4ba0bd6c`.

- `enable_path_shifter`: `bool`.
- `path_shift_offset`: `float32`.
- `path_shift_time`: `float32`.

### `clearpath_navigation_msgs/SetPathShifterResponse`

符号：`Ros1Clearpath_navigation_msgsSetPathShifterResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_64e3a6c0fe9c4303436ad8400fb0c5a74b47b226162648e2dad5e19db256ac2e`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/SetPathSmootherRequest`

符号：`Ros1Clearpath_navigation_msgsSetPathSmootherRequest`; 9..9 bytes.

Codec identity：`UWVMROS1_13ca562ab68dfd839bd370ac19cd4eec02c7a855876b5e9ec6e5b00f968b111f`.

- `enable_path_smoother`: `bool`.
- `turn_radius`: `float32`.
- `step_size`: `float32`.

### `clearpath_navigation_msgs/SetPathSmootherResponse`

符号：`Ros1Clearpath_navigation_msgsSetPathSmootherResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_4317fa93c867dc6ef5a4c5bdaece4bdad2ab9d888d707202f65a23d15ce8f0d1`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_navigation_msgs/SetStopDistanceRequest`

符号：`Ros1Clearpath_navigation_msgsSetStopDistanceRequest`; 5..5 bytes.

Codec identity：`UWVMROS1_66c986cb752a0c4990e08b616557fc67e8400f3f4a38a5603d6e5cd5c5b69b12`.

- `enable_stop_distance`: `bool`.
- `stop_distance`: `float32`.

### `clearpath_navigation_msgs/SetStopDistanceResponse`

符号：`Ros1Clearpath_navigation_msgsSetStopDistanceResponse`; 5..261 bytes.

Codec identity：`UWVMROS1_9bb0632e92b3f8733eec16b7915dea0f19749b7020466e9a9391365f87d24d19`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_safety_msgs/AddCommunicationWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddCommunicationWatchdogRequest`; 33..1961 bytes.

Codec identity：`UWVMROS1_9a1cdf2a02fa873143b12cf9225980c0fd4ba681c8c600fcd11705503a85834d`.

- `config`: `clearpath_safety_msgs/WatchdogConfigCommunication`.

### `clearpath_safety_msgs/AddCommunicationWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddCommunicationWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_cc124f08c384c233c2239b1c5cd634d70becf8ed0f556aaeec16011c2e09f159`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddHeartbeatWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddHeartbeatWatchdogRequest`; 25..1441 bytes.

Codec identity：`UWVMROS1_58a8482be436683e3b1def8c5cfe6b974e63ce9e129d3de2c88531a3112580b4`.

- `config`: `clearpath_safety_msgs/WatchdogConfigHeartbeat`.

### `clearpath_safety_msgs/AddHeartbeatWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddHeartbeatWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_4c15aaf99a3ceab29b595b76df4d641282de57182511447b584126119265b7ce`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddInclinationWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddInclinationWatchdogRequest`; 33..1449 bytes.

Codec identity：`UWVMROS1_1463748d4c746f08f9347ca0d94fc3860009fff7de2b24862d1fc2b35c328470`.

- `config`: `clearpath_safety_msgs/WatchdogConfigInclination`.

### `clearpath_safety_msgs/AddInclinationWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddInclinationWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_366c7d76dcd82a989d1dd1453d5441e57ff229795b6f978a6a8aa1b1f00cf2d2`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddNodeStatusWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddNodeStatusWatchdogRequest`; 22..1438 bytes.

Codec identity：`UWVMROS1_418c383184ef1e70c02fabf773dd943f5afc14b581ba07253eb9c285d0ba7836`.

- `config`: `clearpath_safety_msgs/WatchdogConfigNodeStatus`.

### `clearpath_safety_msgs/AddNodeStatusWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddNodeStatusWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_08c4dd8bd289e405d27a981707ebc959c5c786640ac50c6bbeda628245644cfc`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddNodeletStatusWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogRequest`; 26..1698 bytes.

Codec identity：`UWVMROS1_9d7b4e34a74a50528b1e2c61db3fc36eef9d2e93ccd03815ed8c770526070e8c`.

- `config`: `clearpath_safety_msgs/WatchdogConfigNodeletStatus`.

### `clearpath_safety_msgs/AddNodeletStatusWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddNodeletStatusWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_e1f797bf8282c0cc3cdfb105c0545438a3ac9f12e7027231001ed87b2e62dba6`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddNumPointsWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddNumPointsWatchdogRequest`; 25..1441 bytes.

Codec identity：`UWVMROS1_4303f93fc59680bbd04437b832060a2f2d3f93fe4cb06c5fb42ebba9736f1f73`.

- `config`: `clearpath_safety_msgs/WatchdogConfigNumPoints`.

### `clearpath_safety_msgs/AddNumPointsWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddNumPointsWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_d51e4b3bfb779b244d3f2bb6979db7bb8144de7c5fafc9eef0b49a4c1f8030ef`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddOdomCovarianceWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogRequest`; 33..1449 bytes.

Codec identity：`UWVMROS1_807e8d5088be66039e0e9264f239a0a8f1ca0f067cb2c7173e62b1a5ff9d49b7`.

- `config`: `clearpath_safety_msgs/WatchdogConfigOdomCovariance`.

### `clearpath_safety_msgs/AddOdomCovarianceWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddOdomCovarianceWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_2af9a9a057aa4368b076c14bfcef6e7b0bae09a5727ab0e0ad79a6f2c5a21b06`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddRtkFixWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddRtkFixWatchdogRequest`; 27..1443 bytes.

Codec identity：`UWVMROS1_debc849b5738a49920e4adea8e76f75a55f071c2d971a048fbd639c5b3ababe4`.

- `config`: `clearpath_safety_msgs/WatchdogConfigRtkFix`.

### `clearpath_safety_msgs/AddRtkFixWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddRtkFixWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_1f680adab1e07f42b3d76200810f330ad5e70dcf350484bf5aca0f4dbd32c535`.

- `success`: `bool`.

### `clearpath_safety_msgs/AddTopicDataWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsAddTopicDataWatchdogRequest`; 25..1441 bytes.

Codec identity：`UWVMROS1_0bdeed1e711b9da18829c30d7499ea3eda6afa5538db74d2bb0e88385b0bc1fd`.

- `config`: `clearpath_safety_msgs/WatchdogConfigTopicData`.

### `clearpath_safety_msgs/AddTopicDataWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsAddTopicDataWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_9fea6483689717396e22f81e995067ccb427a3a2ac18b48ddd91b72246e8621d`.

- `success`: `bool`.

### `clearpath_safety_msgs/RemoveWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsRemoveWatchdogRequest`; 4..132 bytes.

Codec identity：`UWVMROS1_87a214c09e13bf5a9627f6be0b7d59c473fdbb7680791e4f96a580253f820a45`.

- `name`: `string`; text 128 bytes.

### `clearpath_safety_msgs/RemoveWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsRemoveWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_cb5e504b035471d2b78f9574fa83b212689a4e68f197881aa787bfb13defe8a1`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateCommunicationWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogRequest`; 37..2221 bytes.

Codec identity：`UWVMROS1_28311849018f0a63f18add101832a0f70fe8a3cb50455b598f9a4fdea9f0a172`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigCommunication`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateCommunicationWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateCommunicationWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_16bf85e3159ebef01b8aa74c8b2dd8bd4037ea3b98723ce5feeaadaee1086f08`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateHeartbeatWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogRequest`; 29..1701 bytes.

Codec identity：`UWVMROS1_38f7e38b9de37001d85a0d0642420bcedabc3d16e5477c3c0e80cdd3c01c33dc`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigHeartbeat`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateHeartbeatWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateHeartbeatWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_5102240f548751135043fe3e20cc41d8ed189ed39f75f5c8328e169e3bf5c4fc`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateInclinationWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateInclinationWatchdogRequest`; 37..1709 bytes.

Codec identity：`UWVMROS1_cab6e7cbad06eb1c7692a64f0b7870ec5e3e6e56172916597f551a6dfb6a442c`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigInclination`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateInclinationWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateInclinationWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_822cddd0fc632d1140f7f32b375eee38348748c4eba1ce79cb271ffdf100e1fb`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateNodeStatusWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogRequest`; 26..1698 bytes.

Codec identity：`UWVMROS1_962c4c93dd43f25968ee1cae173f614573c8f488bb58e4d254f8e2f9a8ee20cb`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigNodeStatus`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateNodeStatusWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateNodeStatusWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_4c78b86fb01b4f645285f53ba1f03f7992db7aa21928129d3e436885ee241b07`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateNodeletStatusWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogRequest`; 30..1958 bytes.

Codec identity：`UWVMROS1_696685f347ed5da62811b33ff4bc7d5a368b71347e72ff96ae20852c404e5a7b`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigNodeletStatus`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateNodeletStatusWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateNodeletStatusWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_7948d56be62c8db523533c6de69635c32bb16b9ee1f46c5ab2150a148e8951d3`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateNumPointsWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogRequest`; 29..1701 bytes.

Codec identity：`UWVMROS1_b6990dab39039686f9f0ca55bc832b07f299522b0c5a94d441cebcfb78f8da61`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigNumPoints`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateNumPointsWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateNumPointsWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_edb0c4ab7f230636492b5e9ddae9d0717f37a042167aed3d1473489321fa5b96`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateOdomCovarianceWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogRequest`; 37..1709 bytes.

Codec identity：`UWVMROS1_884e8b91e3bcb9b559ca03b46c268eebbda100aa40c92c62f805c29f69fae628`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigOdomCovariance`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateOdomCovarianceWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateOdomCovarianceWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_36ab644fd1658850c45accb7a3443210e51420d9bb30200566ab1444de17de20`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateRtkFixWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogRequest`; 31..1703 bytes.

Codec identity：`UWVMROS1_346015ad9d35ab1f670410d69707f5e7464bc961c610ad5f03e1a072bf270e71`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigRtkFix`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateRtkFixWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateRtkFixWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_8011c3715440e0b385c2700ba784d7e144a885141644b6446a2bb0d170c02572`.

- `success`: `bool`.

### `clearpath_safety_msgs/UpdateTopicDataWatchdogRequest`

符号：`Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogRequest`; 29..1701 bytes.

Codec identity：`UWVMROS1_d5e48e1a2fdc42e8a2e69d6e3052128b040476caf17478fc14cdec784addcc39`.

- `new_config`: `clearpath_safety_msgs/WatchdogConfigTopicData`.
- `current_name`: `string`; text 256 bytes.

### `clearpath_safety_msgs/UpdateTopicDataWatchdogResponse`

符号：`Ros1Clearpath_safety_msgsUpdateTopicDataWatchdogResponse`; 1..1 bytes.

Codec identity：`UWVMROS1_491070db415651a6f37bedaa7c23caceda299a84fa956b272dd21fb062684f85`.

- `success`: `bool`.

## 接口组件

- `clearpath_camera_msgs/InspectPOI` (action): goal → `clearpath_camera_msgs/InspectPOIGoal`, result → `clearpath_camera_msgs/InspectPOIResult`, feedback → `clearpath_camera_msgs/InspectPOIFeedback`.
- `clearpath_dock_msgs/LocalDock` (action): goal → `clearpath_dock_msgs/LocalDockGoal`, result → `clearpath_dock_msgs/LocalDockResult`, feedback → `clearpath_dock_msgs/LocalDockFeedback`.
- `clearpath_dock_msgs/LocalUndock` (action): goal → `clearpath_dock_msgs/LocalUndockGoal`, result → `clearpath_dock_msgs/LocalUndockResult`, feedback → `clearpath_dock_msgs/LocalUndockFeedback`.
- `clearpath_dock_msgs/NetworkDock` (action): goal → `clearpath_dock_msgs/NetworkDockGoal`, result → `clearpath_dock_msgs/NetworkDockResult`, feedback → `clearpath_dock_msgs/NetworkDockFeedback`.
- `clearpath_dock_msgs/RadiusDock` (action): goal → `clearpath_dock_msgs/RadiusDockGoal`, result → `clearpath_dock_msgs/RadiusDockResult`, feedback → `clearpath_dock_msgs/RadiusDockFeedback`.
- `clearpath_localization_msgs/SurveyBaseStation` (action): goal → `clearpath_localization_msgs/SurveyBaseStationGoal`, result → `clearpath_localization_msgs/SurveyBaseStationResult`, feedback → `clearpath_localization_msgs/SurveyBaseStationFeedback`.
- `clearpath_mission_scheduler_msgs/RunScheduleByUuid` (action): goal → `clearpath_mission_scheduler_msgs/RunScheduleByUuidGoal`, result → `clearpath_mission_scheduler_msgs/RunScheduleByUuidResult`, feedback → `clearpath_mission_scheduler_msgs/RunScheduleByUuidFeedback`.
- `clearpath_navigation_msgs/ExecuteMissionByUuid` (action): goal → `clearpath_navigation_msgs/ExecuteMissionByUuidGoal`, result → `clearpath_navigation_msgs/ExecuteMissionByUuidResult`, feedback → `clearpath_navigation_msgs/ExecuteMissionByUuidFeedback`.
- `clearpath_navigation_msgs/ExecuteNetworkGoTo` (action): goal → `clearpath_navigation_msgs/ExecuteNetworkGoToGoal`, result → `clearpath_navigation_msgs/ExecuteNetworkGoToResult`, feedback → `clearpath_navigation_msgs/ExecuteNetworkGoToFeedback`.
- `clearpath_navigation_msgs/ExecuteNetworkMissionByUuid` (action): goal → `clearpath_navigation_msgs/ExecuteNetworkMissionByUuidGoal`, result → `clearpath_navigation_msgs/ExecuteNetworkMissionByUuidResult`, feedback → `clearpath_navigation_msgs/ExecuteNetworkMissionByUuidFeedback`.
- `clearpath_navigation_msgs/GetWaypointPath` (action): goal → `clearpath_navigation_msgs/GetWaypointPathGoal`, result → `clearpath_navigation_msgs/GetWaypointPathResult`, feedback → `clearpath_navigation_msgs/GetWaypointPathFeedback`.
- `clearpath_navigation_msgs/Mission` (action): goal → `clearpath_navigation_msgs/MissionGoal`, result → `clearpath_navigation_msgs/MissionResult`, feedback → `clearpath_navigation_msgs/MissionFeedback`.
- `clearpath_navigation_msgs/NetworkGoToPOI` (action): goal → `clearpath_navigation_msgs/NetworkGoToPOIGoal`, result → `clearpath_navigation_msgs/NetworkGoToPOIResult`, feedback → `clearpath_navigation_msgs/NetworkGoToPOIFeedback`.
- `clearpath_navigation_msgs/RecordPath` (action): goal → `clearpath_navigation_msgs/RecordPathGoal`, result → `clearpath_navigation_msgs/RecordPathResult`, feedback → `clearpath_navigation_msgs/RecordPathFeedback`.
- `clearpath_navigation_msgs/RunNetworkGoToPlanner` (action): goal → `clearpath_navigation_msgs/RunNetworkGoToPlannerGoal`, result → `clearpath_navigation_msgs/RunNetworkGoToPlannerResult`, feedback → `clearpath_navigation_msgs/RunNetworkGoToPlannerFeedback`.
- `clearpath_navigation_msgs/RunNetworkMissionPreviewer` (action): goal → `clearpath_navigation_msgs/RunNetworkMissionPreviewerGoal`, result → `clearpath_navigation_msgs/RunNetworkMissionPreviewerResult`, feedback → `clearpath_navigation_msgs/RunNetworkMissionPreviewerFeedback`.
- `clearpath_navigation_msgs/SmoothPath` (action): goal → `clearpath_navigation_msgs/SmoothPathGoal`, result → `clearpath_navigation_msgs/SmoothPathResult`, feedback → `clearpath_navigation_msgs/SmoothPathFeedback`.
- `clearpath_navigation_msgs/UITask` (action): goal → `clearpath_navigation_msgs/UITaskGoal`, result → `clearpath_navigation_msgs/UITaskResult`, feedback → `clearpath_navigation_msgs/UITaskFeedback`.
- `clearpath_configuration_msgs/AutonomyConfig` (message): message → `clearpath_configuration_msgs/AutonomyConfig`.
- `clearpath_configuration_msgs/PlatformConfig` (message): message → `clearpath_configuration_msgs/PlatformConfig`.
- `clearpath_control_msgs/AutonomySync` (message): message → `clearpath_control_msgs/AutonomySync`.
- `clearpath_control_msgs/ControlMode` (message): message → `clearpath_control_msgs/ControlMode`.
- `clearpath_control_msgs/ControlSelectionState` (message): message → `clearpath_control_msgs/ControlSelectionState`.
- `clearpath_control_msgs/ControlState` (message): message → `clearpath_control_msgs/ControlState`.
- `clearpath_dock_msgs/DockInfo` (message): message → `clearpath_dock_msgs/DockInfo`.
- `clearpath_dock_msgs/DockProperties` (message): message → `clearpath_dock_msgs/DockProperties`.
- `clearpath_dock_msgs/DockState` (message): message → `clearpath_dock_msgs/DockState`.
- `clearpath_dock_msgs/TargetTrackerState` (message): message → `clearpath_dock_msgs/TargetTrackerState`.
- `clearpath_localization_msgs/GNSSStatus` (message): message → `clearpath_localization_msgs/GNSSStatus`.
- `clearpath_localization_msgs/LocalizationStatus` (message): message → `clearpath_localization_msgs/LocalizationStatus`.
- `clearpath_localization_msgs/SurveyProperties` (message): message → `clearpath_localization_msgs/SurveyProperties`.
- `clearpath_localization_msgs/XvnStatus` (message): message → `clearpath_localization_msgs/XvnStatus`.
- `clearpath_logger_msgs/Event` (message): message → `clearpath_logger_msgs/Event`.
- `clearpath_logger_msgs/EventLog` (message): message → `clearpath_logger_msgs/EventLog`.
- `clearpath_logger_msgs/EventLogs` (message): message → `clearpath_logger_msgs/EventLogs`.
- `clearpath_mission_manager_msgs/NetworkEdgeReq` (message): message → `clearpath_mission_manager_msgs/NetworkEdgeReq`.
- `clearpath_mission_manager_msgs/NetworkMapState` (message): message → `clearpath_mission_manager_msgs/NetworkMapState`.
- `clearpath_mission_manager_msgs/NetworkMapValidityState` (message): message → `clearpath_mission_manager_msgs/NetworkMapValidityState`.
- `clearpath_mission_manager_msgs/StorageState` (message): message → `clearpath_mission_manager_msgs/StorageState`.
- `clearpath_mission_scheduler_msgs/NextSchedule` (message): message → `clearpath_mission_scheduler_msgs/NextSchedule`.
- `clearpath_mission_scheduler_msgs/Schedule` (message): message → `clearpath_mission_scheduler_msgs/Schedule`.
- `clearpath_mission_scheduler_msgs/StorageState` (message): message → `clearpath_mission_scheduler_msgs/StorageState`.
- `clearpath_mission_scheduler_msgs/UtcTime` (message): message → `clearpath_mission_scheduler_msgs/UtcTime`.
- `clearpath_navigation_msgs/AutonomyStatus` (message): message → `clearpath_navigation_msgs/AutonomyStatus`.
- `clearpath_navigation_msgs/DistanceToGoal` (message): message → `clearpath_navigation_msgs/DistanceToGoal`.
- `clearpath_navigation_msgs/Metrics` (message): message → `clearpath_navigation_msgs/Metrics`.
- `clearpath_navigation_msgs/Mission` (message): message → `clearpath_navigation_msgs/Mission`.
- `clearpath_navigation_msgs/MissionStatus` (message): message → `clearpath_navigation_msgs/MissionStatus`.
- `clearpath_navigation_msgs/MotionState` (message): message → `clearpath_navigation_msgs/MotionState`.
- `clearpath_navigation_msgs/NavigationState` (message): message → `clearpath_navigation_msgs/NavigationState`.
- `clearpath_navigation_msgs/NetworkEdge` (message): message → `clearpath_navigation_msgs/NetworkEdge`.
- `clearpath_navigation_msgs/NetworkGoalState` (message): message → `clearpath_navigation_msgs/NetworkGoalState`.
- `clearpath_navigation_msgs/NetworkMap` (message): message → `clearpath_navigation_msgs/NetworkMap`.
- `clearpath_navigation_msgs/NetworkMission` (message): message → `clearpath_navigation_msgs/NetworkMission`.
- `clearpath_navigation_msgs/NetworkMissionSegment` (message): message → `clearpath_navigation_msgs/NetworkMissionSegment`.
- `clearpath_navigation_msgs/NetworkPoint` (message): message → `clearpath_navigation_msgs/NetworkPoint`.
- `clearpath_navigation_msgs/OdomIntent` (message): message → `clearpath_navigation_msgs/OdomIntent`.
- `clearpath_navigation_msgs/PointOfInterest` (message): message → `clearpath_navigation_msgs/PointOfInterest`.
- `clearpath_navigation_msgs/PointVector` (message): message → `clearpath_navigation_msgs/PointVector`.
- `clearpath_navigation_msgs/Progress` (message): message → `clearpath_navigation_msgs/Progress`.
- `clearpath_navigation_msgs/ScanPoints` (message): message → `clearpath_navigation_msgs/ScanPoints`.
- `clearpath_navigation_msgs/Task` (message): message → `clearpath_navigation_msgs/Task`.
- `clearpath_navigation_msgs/TrackError` (message): message → `clearpath_navigation_msgs/TrackError`.
- `clearpath_navigation_msgs/Vector2D` (message): message → `clearpath_navigation_msgs/Vector2D`.
- `clearpath_navigation_msgs/Vector2D64` (message): message → `clearpath_navigation_msgs/Vector2D64`.
- `clearpath_navigation_msgs/Waypoint` (message): message → `clearpath_navigation_msgs/Waypoint`.
- `clearpath_navigation_msgs/WaypointStatus` (message): message → `clearpath_navigation_msgs/WaypointStatus`.
- `clearpath_platform_msgs/Drive` (message): message → `clearpath_platform_msgs/Drive`.
- `clearpath_platform_msgs/DriveFeedback` (message): message → `clearpath_platform_msgs/DriveFeedback`.
- `clearpath_platform_msgs/Fans` (message): message → `clearpath_platform_msgs/Fans`.
- `clearpath_platform_msgs/Feedback` (message): message → `clearpath_platform_msgs/Feedback`.
- `clearpath_platform_msgs/Lights` (message): message → `clearpath_platform_msgs/Lights`.
- `clearpath_platform_msgs/PlatformID` (message): message → `clearpath_platform_msgs/PlatformID`.
- `clearpath_platform_msgs/Power` (message): message → `clearpath_platform_msgs/Power`.
- `clearpath_platform_msgs/RGB` (message): message → `clearpath_platform_msgs/RGB`.
- `clearpath_platform_msgs/RYG` (message): message → `clearpath_platform_msgs/RYG`.
- `clearpath_platform_msgs/StackLightState` (message): message → `clearpath_platform_msgs/StackLightState`.
- `clearpath_platform_msgs/Status` (message): message → `clearpath_platform_msgs/Status`.
- `clearpath_platform_msgs/StopStatus` (message): message → `clearpath_platform_msgs/StopStatus`.
- `clearpath_safety_msgs/AssistedTeleopState` (message): message → `clearpath_safety_msgs/AssistedTeleopState`.
- `clearpath_safety_msgs/ObstacleMap` (message): message → `clearpath_safety_msgs/ObstacleMap`.
- `clearpath_safety_msgs/Safety` (message): message → `clearpath_safety_msgs/Safety`.
- `clearpath_safety_msgs/WatchdogConfigArray` (message): message → `clearpath_safety_msgs/WatchdogConfigArray`.
- `clearpath_safety_msgs/WatchdogConfigCommon` (message): message → `clearpath_safety_msgs/WatchdogConfigCommon`.
- `clearpath_safety_msgs/WatchdogConfigCommunication` (message): message → `clearpath_safety_msgs/WatchdogConfigCommunication`.
- `clearpath_safety_msgs/WatchdogConfigHeartbeat` (message): message → `clearpath_safety_msgs/WatchdogConfigHeartbeat`.
- `clearpath_safety_msgs/WatchdogConfigInclination` (message): message → `clearpath_safety_msgs/WatchdogConfigInclination`.
- `clearpath_safety_msgs/WatchdogConfigNodeStatus` (message): message → `clearpath_safety_msgs/WatchdogConfigNodeStatus`.
- `clearpath_safety_msgs/WatchdogConfigNodeletStatus` (message): message → `clearpath_safety_msgs/WatchdogConfigNodeletStatus`.
- `clearpath_safety_msgs/WatchdogConfigNumPoints` (message): message → `clearpath_safety_msgs/WatchdogConfigNumPoints`.
- `clearpath_safety_msgs/WatchdogConfigOdomCovariance` (message): message → `clearpath_safety_msgs/WatchdogConfigOdomCovariance`.
- `clearpath_safety_msgs/WatchdogConfigRtkFix` (message): message → `clearpath_safety_msgs/WatchdogConfigRtkFix`.
- `clearpath_safety_msgs/WatchdogConfigTopicData` (message): message → `clearpath_safety_msgs/WatchdogConfigTopicData`.
- `clearpath_safety_msgs/WatchdogStatus` (message): message → `clearpath_safety_msgs/WatchdogStatus`.
- `clearpath_safety_msgs/WatchdogStatusArray` (message): message → `clearpath_safety_msgs/WatchdogStatusArray`.
- `geometry_msgs/Point` (message): message → `geometry_msgs/Point`.
- `geometry_msgs/Pose` (message): message → `geometry_msgs/Pose`.
- `geometry_msgs/PoseStamped` (message): message → `geometry_msgs/PoseStamped`.
- `geometry_msgs/PoseWithCovariance` (message): message → `geometry_msgs/PoseWithCovariance`.
- `geometry_msgs/PoseWithCovarianceStamped` (message): message → `geometry_msgs/PoseWithCovarianceStamped`.
- `geometry_msgs/Quaternion` (message): message → `geometry_msgs/Quaternion`.
- `geometry_msgs/Twist` (message): message → `geometry_msgs/Twist`.
- `geometry_msgs/TwistWithCovariance` (message): message → `geometry_msgs/TwistWithCovariance`.
- `geometry_msgs/Vector3` (message): message → `geometry_msgs/Vector3`.
- `husky_msgs/HuskyStatus` (message): message → `husky_msgs/HuskyStatus`.
- `jackal_msgs/Drive` (message): message → `jackal_msgs/Drive`.
- `jackal_msgs/DriveFeedback` (message): message → `jackal_msgs/DriveFeedback`.
- `jackal_msgs/Feedback` (message): message → `jackal_msgs/Feedback`.
- `jackal_msgs/Status` (message): message → `jackal_msgs/Status`.
- `nav_msgs/Odometry` (message): message → `nav_msgs/Odometry`.
- `nav_msgs/Path` (message): message → `nav_msgs/Path`.
- `sensor_msgs/NavSatFix` (message): message → `sensor_msgs/NavSatFix`.
- `sensor_msgs/NavSatStatus` (message): message → `sensor_msgs/NavSatStatus`.
- `std_msgs/Duration` (message): message → `std_msgs/Duration`.
- `std_msgs/Header` (message): message → `std_msgs/Header`.
- `std_msgs/String` (message): message → `std_msgs/String`.
- `std_msgs/Time` (message): message → `std_msgs/Time`.
- `clearpath_camera_msgs/q62AreaZoom` (service): request → `clearpath_camera_msgs/q62AreaZoomRequest`, response → `clearpath_camera_msgs/q62AreaZoomResponse`.
- `clearpath_control_msgs/SetControlMode` (service): request → `clearpath_control_msgs/SetControlModeRequest`, response → `clearpath_control_msgs/SetControlModeResponse`.
- `clearpath_dock_msgs/AddDock` (service): request → `clearpath_dock_msgs/AddDockRequest`, response → `clearpath_dock_msgs/AddDockResponse`.
- `clearpath_dock_msgs/ExportData` (service): request → `clearpath_dock_msgs/ExportDataRequest`, response → `clearpath_dock_msgs/ExportDataResponse`.
- `clearpath_dock_msgs/GetDockByUuid` (service): request → `clearpath_dock_msgs/GetDockByUuidRequest`, response → `clearpath_dock_msgs/GetDockByUuidResponse`.
- `clearpath_dock_msgs/ImportData` (service): request → `clearpath_dock_msgs/ImportDataRequest`, response → `clearpath_dock_msgs/ImportDataResponse`.
- `clearpath_dock_msgs/RemoveDock` (service): request → `clearpath_dock_msgs/RemoveDockRequest`, response → `clearpath_dock_msgs/RemoveDockResponse`.
- `clearpath_dock_msgs/SetDockLocationById` (service): request → `clearpath_dock_msgs/SetDockLocationByIdRequest`, response → `clearpath_dock_msgs/SetDockLocationByIdResponse`.
- `clearpath_dock_msgs/SetDockLocationByName` (service): request → `clearpath_dock_msgs/SetDockLocationByNameRequest`, response → `clearpath_dock_msgs/SetDockLocationByNameResponse`.
- `clearpath_localization_msgs/ConvertCartesianToLatLon` (service): request → `clearpath_localization_msgs/ConvertCartesianToLatLonRequest`, response → `clearpath_localization_msgs/ConvertCartesianToLatLonResponse`.
- `clearpath_localization_msgs/ConvertCartesianToLatLonArray` (service): request → `clearpath_localization_msgs/ConvertCartesianToLatLonArrayRequest`, response → `clearpath_localization_msgs/ConvertCartesianToLatLonArrayResponse`.
- `clearpath_localization_msgs/ConvertLatLonToCartesian` (service): request → `clearpath_localization_msgs/ConvertLatLonToCartesianRequest`, response → `clearpath_localization_msgs/ConvertLatLonToCartesianResponse`.
- `clearpath_localization_msgs/ConvertLatLonToCartesianArray` (service): request → `clearpath_localization_msgs/ConvertLatLonToCartesianArrayRequest`, response → `clearpath_localization_msgs/ConvertLatLonToCartesianArrayResponse`.
- `clearpath_localization_msgs/ResetLocalization` (service): request → `clearpath_localization_msgs/ResetLocalizationRequest`, response → `clearpath_localization_msgs/ResetLocalizationResponse`.
- `clearpath_localization_msgs/SetDatum` (service): request → `clearpath_localization_msgs/SetDatumRequest`, response → `clearpath_localization_msgs/SetDatumResponse`.
- `clearpath_logger_msgs/DeleteLog` (service): request → `clearpath_logger_msgs/DeleteLogRequest`, response → `clearpath_logger_msgs/DeleteLogResponse`.
- `clearpath_logger_msgs/DownloadLog` (service): request → `clearpath_logger_msgs/DownloadLogRequest`, response → `clearpath_logger_msgs/DownloadLogResponse`.
- `clearpath_logger_msgs/GetAllLogs` (service): request → `clearpath_logger_msgs/GetAllLogsRequest`, response → `clearpath_logger_msgs/GetAllLogsResponse`.
- `clearpath_logger_msgs/RecordCustomEvent` (service): request → `clearpath_logger_msgs/RecordCustomEventRequest`, response → `clearpath_logger_msgs/RecordCustomEventResponse`.
- `clearpath_logger_msgs/RecordErrorEvent` (service): request → `clearpath_logger_msgs/RecordErrorEventRequest`, response → `clearpath_logger_msgs/RecordErrorEventResponse`.
- `clearpath_logger_msgs/RecordEvent` (service): request → `clearpath_logger_msgs/RecordEventRequest`, response → `clearpath_logger_msgs/RecordEventResponse`.
- `clearpath_logger_msgs/RecordLocationEvent` (service): request → `clearpath_logger_msgs/RecordLocationEventRequest`, response → `clearpath_logger_msgs/RecordLocationEventResponse`.
- `clearpath_logger_msgs/RecordMediaEvent` (service): request → `clearpath_logger_msgs/RecordMediaEventRequest`, response → `clearpath_logger_msgs/RecordMediaEventResponse`.
- `clearpath_logger_msgs/RecordPowerEvent` (service): request → `clearpath_logger_msgs/RecordPowerEventRequest`, response → `clearpath_logger_msgs/RecordPowerEventResponse`.
- `clearpath_logger_msgs/StartRecording` (service): request → `clearpath_logger_msgs/StartRecordingRequest`, response → `clearpath_logger_msgs/StartRecordingResponse`.
- `clearpath_logger_msgs/StopRecording` (service): request → `clearpath_logger_msgs/StopRecordingRequest`, response → `clearpath_logger_msgs/StopRecordingResponse`.
- `clearpath_mission_manager_msgs/AddNetworkEdge` (service): request → `clearpath_mission_manager_msgs/AddNetworkEdgeRequest`, response → `clearpath_mission_manager_msgs/AddNetworkEdgeResponse`.
- `clearpath_mission_manager_msgs/AddNetworkPath` (service): request → `clearpath_mission_manager_msgs/AddNetworkPathRequest`, response → `clearpath_mission_manager_msgs/AddNetworkPathResponse`.
- `clearpath_mission_manager_msgs/AddNetworkPoint` (service): request → `clearpath_mission_manager_msgs/AddNetworkPointRequest`, response → `clearpath_mission_manager_msgs/AddNetworkPointResponse`.
- `clearpath_mission_manager_msgs/AddRemoveById` (service): request → `clearpath_mission_manager_msgs/AddRemoveByIdRequest`, response → `clearpath_mission_manager_msgs/AddRemoveByIdResponse`.
- `clearpath_mission_manager_msgs/AddRemoveTag` (service): request → `clearpath_mission_manager_msgs/AddRemoveTagRequest`, response → `clearpath_mission_manager_msgs/AddRemoveTagResponse`.
- `clearpath_mission_manager_msgs/CloneMission` (service): request → `clearpath_mission_manager_msgs/CloneMissionRequest`, response → `clearpath_mission_manager_msgs/CloneMissionResponse`.
- `clearpath_mission_manager_msgs/CloneNetworkMap` (service): request → `clearpath_mission_manager_msgs/CloneNetworkMapRequest`, response → `clearpath_mission_manager_msgs/CloneNetworkMapResponse`.
- `clearpath_mission_manager_msgs/CloneNetworkMission` (service): request → `clearpath_mission_manager_msgs/CloneNetworkMissionRequest`, response → `clearpath_mission_manager_msgs/CloneNetworkMissionResponse`.
- `clearpath_mission_manager_msgs/ClonePointOfInterest` (service): request → `clearpath_mission_manager_msgs/ClonePointOfInterestRequest`, response → `clearpath_mission_manager_msgs/ClonePointOfInterestResponse`.
- `clearpath_mission_manager_msgs/CreateMission` (service): request → `clearpath_mission_manager_msgs/CreateMissionRequest`, response → `clearpath_mission_manager_msgs/CreateMissionResponse`.
- `clearpath_mission_manager_msgs/CreateNetworkMap` (service): request → `clearpath_mission_manager_msgs/CreateNetworkMapRequest`, response → `clearpath_mission_manager_msgs/CreateNetworkMapResponse`.
- `clearpath_mission_manager_msgs/CreateNetworkMission` (service): request → `clearpath_mission_manager_msgs/CreateNetworkMissionRequest`, response → `clearpath_mission_manager_msgs/CreateNetworkMissionResponse`.
- `clearpath_mission_manager_msgs/CreatePointOfInterest` (service): request → `clearpath_mission_manager_msgs/CreatePointOfInterestRequest`, response → `clearpath_mission_manager_msgs/CreatePointOfInterestResponse`.
- `clearpath_mission_manager_msgs/CreateTask` (service): request → `clearpath_mission_manager_msgs/CreateTaskRequest`, response → `clearpath_mission_manager_msgs/CreateTaskResponse`.
- `clearpath_mission_manager_msgs/CreateWaypoint` (service): request → `clearpath_mission_manager_msgs/CreateWaypointRequest`, response → `clearpath_mission_manager_msgs/CreateWaypointResponse`.
- `clearpath_mission_manager_msgs/CreateWaypointFromPoi` (service): request → `clearpath_mission_manager_msgs/CreateWaypointFromPoiRequest`, response → `clearpath_mission_manager_msgs/CreateWaypointFromPoiResponse`.
- `clearpath_mission_manager_msgs/DeleteById` (service): request → `clearpath_mission_manager_msgs/DeleteByIdRequest`, response → `clearpath_mission_manager_msgs/DeleteByIdResponse`.
- `clearpath_mission_manager_msgs/DeleteEverything` (service): request → `clearpath_mission_manager_msgs/DeleteEverythingRequest`, response → `clearpath_mission_manager_msgs/DeleteEverythingResponse`.
- `clearpath_mission_manager_msgs/DeleteMultiple` (service): request → `clearpath_mission_manager_msgs/DeleteMultipleRequest`, response → `clearpath_mission_manager_msgs/DeleteMultipleResponse`.
- `clearpath_mission_manager_msgs/ExportData` (service): request → `clearpath_mission_manager_msgs/ExportDataRequest`, response → `clearpath_mission_manager_msgs/ExportDataResponse`.
- `clearpath_mission_manager_msgs/GetAllMissions` (service): request → `clearpath_mission_manager_msgs/GetAllMissionsRequest`, response → `clearpath_mission_manager_msgs/GetAllMissionsResponse`.
- `clearpath_mission_manager_msgs/GetAllNetworkMaps` (service): request → `clearpath_mission_manager_msgs/GetAllNetworkMapsRequest`, response → `clearpath_mission_manager_msgs/GetAllNetworkMapsResponse`.
- `clearpath_mission_manager_msgs/GetAllNetworkMissions` (service): request → `clearpath_mission_manager_msgs/GetAllNetworkMissionsRequest`, response → `clearpath_mission_manager_msgs/GetAllNetworkMissionsResponse`.
- `clearpath_mission_manager_msgs/GetAllPointsOfInterest` (service): request → `clearpath_mission_manager_msgs/GetAllPointsOfInterestRequest`, response → `clearpath_mission_manager_msgs/GetAllPointsOfInterestResponse`.
- `clearpath_mission_manager_msgs/GetAllTasks` (service): request → `clearpath_mission_manager_msgs/GetAllTasksRequest`, response → `clearpath_mission_manager_msgs/GetAllTasksResponse`.
- `clearpath_mission_manager_msgs/GetAllWaypoints` (service): request → `clearpath_mission_manager_msgs/GetAllWaypointsRequest`, response → `clearpath_mission_manager_msgs/GetAllWaypointsResponse`.
- `clearpath_mission_manager_msgs/GetEverything` (service): request → `clearpath_mission_manager_msgs/GetEverythingRequest`, response → `clearpath_mission_manager_msgs/GetEverythingResponse`.
- `clearpath_mission_manager_msgs/GetMission` (service): request → `clearpath_mission_manager_msgs/GetMissionRequest`, response → `clearpath_mission_manager_msgs/GetMissionResponse`.
- `clearpath_mission_manager_msgs/GetNetworkMap` (service): request → `clearpath_mission_manager_msgs/GetNetworkMapRequest`, response → `clearpath_mission_manager_msgs/GetNetworkMapResponse`.
- `clearpath_mission_manager_msgs/GetNetworkMission` (service): request → `clearpath_mission_manager_msgs/GetNetworkMissionRequest`, response → `clearpath_mission_manager_msgs/GetNetworkMissionResponse`.
- `clearpath_mission_manager_msgs/GetPointOfInterest` (service): request → `clearpath_mission_manager_msgs/GetPointOfInterestRequest`, response → `clearpath_mission_manager_msgs/GetPointOfInterestResponse`.
- `clearpath_mission_manager_msgs/GetTask` (service): request → `clearpath_mission_manager_msgs/GetTaskRequest`, response → `clearpath_mission_manager_msgs/GetTaskResponse`.
- `clearpath_mission_manager_msgs/GetWaypoint` (service): request → `clearpath_mission_manager_msgs/GetWaypointRequest`, response → `clearpath_mission_manager_msgs/GetWaypointResponse`.
- `clearpath_mission_manager_msgs/ImportData` (service): request → `clearpath_mission_manager_msgs/ImportDataRequest`, response → `clearpath_mission_manager_msgs/ImportDataResponse`.
- `clearpath_mission_manager_msgs/ImportMission` (service): request → `clearpath_mission_manager_msgs/ImportMissionRequest`, response → `clearpath_mission_manager_msgs/ImportMissionResponse`.
- `clearpath_mission_manager_msgs/ImportNetworkMap` (service): request → `clearpath_mission_manager_msgs/ImportNetworkMapRequest`, response → `clearpath_mission_manager_msgs/ImportNetworkMapResponse`.
- `clearpath_mission_manager_msgs/ImportNetworkMission` (service): request → `clearpath_mission_manager_msgs/ImportNetworkMissionRequest`, response → `clearpath_mission_manager_msgs/ImportNetworkMissionResponse`.
- `clearpath_mission_manager_msgs/SplitNetworkEdge` (service): request → `clearpath_mission_manager_msgs/SplitNetworkEdgeRequest`, response → `clearpath_mission_manager_msgs/SplitNetworkEdgeResponse`.
- `clearpath_mission_manager_msgs/UpdateMission` (service): request → `clearpath_mission_manager_msgs/UpdateMissionRequest`, response → `clearpath_mission_manager_msgs/UpdateMissionResponse`.
- `clearpath_mission_manager_msgs/UpdateNetworkEdge` (service): request → `clearpath_mission_manager_msgs/UpdateNetworkEdgeRequest`, response → `clearpath_mission_manager_msgs/UpdateNetworkEdgeResponse`.
- `clearpath_mission_manager_msgs/UpdateNetworkEdges` (service): request → `clearpath_mission_manager_msgs/UpdateNetworkEdgesRequest`, response → `clearpath_mission_manager_msgs/UpdateNetworkEdgesResponse`.
- `clearpath_mission_manager_msgs/UpdateNetworkMap` (service): request → `clearpath_mission_manager_msgs/UpdateNetworkMapRequest`, response → `clearpath_mission_manager_msgs/UpdateNetworkMapResponse`.
- `clearpath_mission_manager_msgs/UpdateNetworkMission` (service): request → `clearpath_mission_manager_msgs/UpdateNetworkMissionRequest`, response → `clearpath_mission_manager_msgs/UpdateNetworkMissionResponse`.
- `clearpath_mission_manager_msgs/UpdateNetworkPoint` (service): request → `clearpath_mission_manager_msgs/UpdateNetworkPointRequest`, response → `clearpath_mission_manager_msgs/UpdateNetworkPointResponse`.
- `clearpath_mission_manager_msgs/UpdateNetworkPoints` (service): request → `clearpath_mission_manager_msgs/UpdateNetworkPointsRequest`, response → `clearpath_mission_manager_msgs/UpdateNetworkPointsResponse`.
- `clearpath_mission_manager_msgs/UpdatePointOfInterest` (service): request → `clearpath_mission_manager_msgs/UpdatePointOfInterestRequest`, response → `clearpath_mission_manager_msgs/UpdatePointOfInterestResponse`.
- `clearpath_mission_manager_msgs/UpdateTask` (service): request → `clearpath_mission_manager_msgs/UpdateTaskRequest`, response → `clearpath_mission_manager_msgs/UpdateTaskResponse`.
- `clearpath_mission_manager_msgs/UpdateWaypoint` (service): request → `clearpath_mission_manager_msgs/UpdateWaypointRequest`, response → `clearpath_mission_manager_msgs/UpdateWaypointResponse`.
- `clearpath_mission_manager_msgs/ValidateNetworkMap` (service): request → `clearpath_mission_manager_msgs/ValidateNetworkMapRequest`, response → `clearpath_mission_manager_msgs/ValidateNetworkMapResponse`.
- `clearpath_mission_scheduler_msgs/CloneSchedule` (service): request → `clearpath_mission_scheduler_msgs/CloneScheduleRequest`, response → `clearpath_mission_scheduler_msgs/CloneScheduleResponse`.
- `clearpath_mission_scheduler_msgs/CreateSchedule` (service): request → `clearpath_mission_scheduler_msgs/CreateScheduleRequest`, response → `clearpath_mission_scheduler_msgs/CreateScheduleResponse`.
- `clearpath_mission_scheduler_msgs/EnableSchedule` (service): request → `clearpath_mission_scheduler_msgs/EnableScheduleRequest`, response → `clearpath_mission_scheduler_msgs/EnableScheduleResponse`.
- `clearpath_mission_scheduler_msgs/ExportData` (service): request → `clearpath_mission_scheduler_msgs/ExportDataRequest`, response → `clearpath_mission_scheduler_msgs/ExportDataResponse`.
- `clearpath_mission_scheduler_msgs/GetAllSchedules` (service): request → `clearpath_mission_scheduler_msgs/GetAllSchedulesRequest`, response → `clearpath_mission_scheduler_msgs/GetAllSchedulesResponse`.
- `clearpath_mission_scheduler_msgs/GetNextSchedule` (service): request → `clearpath_mission_scheduler_msgs/GetNextScheduleRequest`, response → `clearpath_mission_scheduler_msgs/GetNextScheduleResponse`.
- `clearpath_mission_scheduler_msgs/GetSchedule` (service): request → `clearpath_mission_scheduler_msgs/GetScheduleRequest`, response → `clearpath_mission_scheduler_msgs/GetScheduleResponse`.
- `clearpath_mission_scheduler_msgs/ImportData` (service): request → `clearpath_mission_scheduler_msgs/ImportDataRequest`, response → `clearpath_mission_scheduler_msgs/ImportDataResponse`.
- `clearpath_mission_scheduler_msgs/UpdateSchedule` (service): request → `clearpath_mission_scheduler_msgs/UpdateScheduleRequest`, response → `clearpath_mission_scheduler_msgs/UpdateScheduleResponse`.
- `clearpath_navigation_msgs/AutonomyTaskSrv` (service): request → `clearpath_navigation_msgs/AutonomyTaskSrvRequest`, response → `clearpath_navigation_msgs/AutonomyTaskSrvResponse`.
- `clearpath_navigation_msgs/SetDelayCompensation` (service): request → `clearpath_navigation_msgs/SetDelayCompensationRequest`, response → `clearpath_navigation_msgs/SetDelayCompensationResponse`.
- `clearpath_navigation_msgs/SetPathShifter` (service): request → `clearpath_navigation_msgs/SetPathShifterRequest`, response → `clearpath_navigation_msgs/SetPathShifterResponse`.
- `clearpath_navigation_msgs/SetPathSmoother` (service): request → `clearpath_navigation_msgs/SetPathSmootherRequest`, response → `clearpath_navigation_msgs/SetPathSmootherResponse`.
- `clearpath_navigation_msgs/SetStopDistance` (service): request → `clearpath_navigation_msgs/SetStopDistanceRequest`, response → `clearpath_navigation_msgs/SetStopDistanceResponse`.
- `clearpath_safety_msgs/AddCommunicationWatchdog` (service): request → `clearpath_safety_msgs/AddCommunicationWatchdogRequest`, response → `clearpath_safety_msgs/AddCommunicationWatchdogResponse`.
- `clearpath_safety_msgs/AddHeartbeatWatchdog` (service): request → `clearpath_safety_msgs/AddHeartbeatWatchdogRequest`, response → `clearpath_safety_msgs/AddHeartbeatWatchdogResponse`.
- `clearpath_safety_msgs/AddInclinationWatchdog` (service): request → `clearpath_safety_msgs/AddInclinationWatchdogRequest`, response → `clearpath_safety_msgs/AddInclinationWatchdogResponse`.
- `clearpath_safety_msgs/AddNodeStatusWatchdog` (service): request → `clearpath_safety_msgs/AddNodeStatusWatchdogRequest`, response → `clearpath_safety_msgs/AddNodeStatusWatchdogResponse`.
- `clearpath_safety_msgs/AddNodeletStatusWatchdog` (service): request → `clearpath_safety_msgs/AddNodeletStatusWatchdogRequest`, response → `clearpath_safety_msgs/AddNodeletStatusWatchdogResponse`.
- `clearpath_safety_msgs/AddNumPointsWatchdog` (service): request → `clearpath_safety_msgs/AddNumPointsWatchdogRequest`, response → `clearpath_safety_msgs/AddNumPointsWatchdogResponse`.
- `clearpath_safety_msgs/AddOdomCovarianceWatchdog` (service): request → `clearpath_safety_msgs/AddOdomCovarianceWatchdogRequest`, response → `clearpath_safety_msgs/AddOdomCovarianceWatchdogResponse`.
- `clearpath_safety_msgs/AddRtkFixWatchdog` (service): request → `clearpath_safety_msgs/AddRtkFixWatchdogRequest`, response → `clearpath_safety_msgs/AddRtkFixWatchdogResponse`.
- `clearpath_safety_msgs/AddTopicDataWatchdog` (service): request → `clearpath_safety_msgs/AddTopicDataWatchdogRequest`, response → `clearpath_safety_msgs/AddTopicDataWatchdogResponse`.
- `clearpath_safety_msgs/RemoveWatchdog` (service): request → `clearpath_safety_msgs/RemoveWatchdogRequest`, response → `clearpath_safety_msgs/RemoveWatchdogResponse`.
- `clearpath_safety_msgs/UpdateCommunicationWatchdog` (service): request → `clearpath_safety_msgs/UpdateCommunicationWatchdogRequest`, response → `clearpath_safety_msgs/UpdateCommunicationWatchdogResponse`.
- `clearpath_safety_msgs/UpdateHeartbeatWatchdog` (service): request → `clearpath_safety_msgs/UpdateHeartbeatWatchdogRequest`, response → `clearpath_safety_msgs/UpdateHeartbeatWatchdogResponse`.
- `clearpath_safety_msgs/UpdateInclinationWatchdog` (service): request → `clearpath_safety_msgs/UpdateInclinationWatchdogRequest`, response → `clearpath_safety_msgs/UpdateInclinationWatchdogResponse`.
- `clearpath_safety_msgs/UpdateNodeStatusWatchdog` (service): request → `clearpath_safety_msgs/UpdateNodeStatusWatchdogRequest`, response → `clearpath_safety_msgs/UpdateNodeStatusWatchdogResponse`.
- `clearpath_safety_msgs/UpdateNodeletStatusWatchdog` (service): request → `clearpath_safety_msgs/UpdateNodeletStatusWatchdogRequest`, response → `clearpath_safety_msgs/UpdateNodeletStatusWatchdogResponse`.
- `clearpath_safety_msgs/UpdateNumPointsWatchdog` (service): request → `clearpath_safety_msgs/UpdateNumPointsWatchdogRequest`, response → `clearpath_safety_msgs/UpdateNumPointsWatchdogResponse`.
- `clearpath_safety_msgs/UpdateOdomCovarianceWatchdog` (service): request → `clearpath_safety_msgs/UpdateOdomCovarianceWatchdogRequest`, response → `clearpath_safety_msgs/UpdateOdomCovarianceWatchdogResponse`.
- `clearpath_safety_msgs/UpdateRtkFixWatchdog` (service): request → `clearpath_safety_msgs/UpdateRtkFixWatchdogRequest`, response → `clearpath_safety_msgs/UpdateRtkFixWatchdogResponse`.
- `clearpath_safety_msgs/UpdateTopicDataWatchdog` (service): request → `clearpath_safety_msgs/UpdateTopicDataWatchdogRequest`, response → `clearpath_safety_msgs/UpdateTopicDataWatchdogResponse`.

## ros2_humble

### `builtin_interfaces/msg/Duration`

符号：`Ros2Builtin_interfacesMsgDuration`; 8..8 bytes.

Codec identity：`UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `builtin_interfaces/msg/Time`

符号：`Ros2Builtin_interfacesMsgTime`; 8..8 bytes.

Codec identity：`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `clearpath_motor_msgs/msg/PumaFeedback`

符号：`Ros2Clearpath_motor_msgsMsgPumaFeedback`; 37..293 bytes.

Codec identity：`UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659`.

- `device_number`: `uint8`.
- `device_name`: `string`; text 256 bytes.
- `duty_cycle`: `float32`.
- `current`: `float32`.
- `travel`: `float64`.
- `speed`: `float64`.
- `setpoint`: `float64`.

### `std_msgs/msg/Header`

符号：`Ros2Std_msgsMsgHeader`; 12..140 bytes.

Codec identity：`UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

- `stamp`: `builtin_interfaces/msg/Time`.
- `frame_id`: `string`; text 128 bytes.

### `clearpath_motor_msgs/msg/PumaMultiFeedback`

符号：`Ros2Clearpath_motor_msgsMsgPumaMultiFeedback`; 16..1316 bytes.

Codec identity：`UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947`.

- `header`: `std_msgs/msg/Header`.
- `drivers_feedback`: `clearpath_motor_msgs/msg/PumaFeedback`; sequence 4.

### `clearpath_motor_msgs/msg/PumaStatus`

符号：`Ros2Clearpath_motor_msgsMsgPumaStatus`; 23..279 bytes.

Codec identity：`UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8`.

- `device_number`: `uint8`.
- `device_name`: `string`; text 256 bytes.
- `bus_voltage`: `float32`.
- `temperature`: `float32`.
- `output_voltage`: `float32`.
- `analog_input`: `float32`.
- `mode`: `uint8`.
- `fault`: `uint8`.

- Constant `MODE_VOLTAGE`: `uint8 = 0`.
- Constant `MODE_CURRENT`: `uint8 = 1`.
- Constant `MODE_SPEED`: `uint8 = 2`.
- Constant `MODE_POSITION`: `uint8 = 3`.
- Constant `MODE_VCOMP`: `uint8 = 4`.
- Constant `FAULT_CURRENT`: `uint8 = 1`.
- Constant `FAULT_TEMPERATURE`: `uint8 = 2`.
- Constant `FAULT_BUS_VOLTAGE`: `uint8 = 4`.
- Constant `FAULT_BRIDGE_DRIVER`: `uint8 = 8`.

### `clearpath_motor_msgs/msg/PumaMultiStatus`

符号：`Ros2Clearpath_motor_msgsMsgPumaMultiStatus`; 16..1260 bytes.

Codec identity：`UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_motor_msgs/msg/PumaStatus`; sequence 4.

### `clearpath_platform_msgs/msg/Drive`

符号：`Ros2Clearpath_platform_msgsMsgDrive`; 9..9 bytes.

Codec identity：`UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785`.

- `mode`: `int8`.
- `drivers`: `float32`; array 2.

- Constant `MODE_VELOCITY`: `int8 = 0`.
- Constant `MODE_PWM`: `int8 = 1`.
- Constant `MODE_NONE`: `int8 = -1`.
- Constant `LEFT`: `int8 = 0`.
- Constant `RIGHT`: `int8 = 1`.

### `clearpath_platform_msgs/msg/DriveFeedback`

符号：`Ros2Clearpath_platform_msgsMsgDriveFeedback`; 25..25 bytes.

Codec identity：`UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287`.

- `current`: `float32`.
- `duty_cycle`: `float32`.
- `bridge_temperature`: `float32`.
- `motor_temperature`: `float32`.
- `measured_velocity`: `float32`.
- `measured_travel`: `float32`.
- `driver_fault`: `bool`.

### `clearpath_platform_msgs/msg/Fans`

符号：`Ros2Clearpath_platform_msgsMsgFans`; 4..6 bytes.

Codec identity：`UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317`.

- `fans`: `uint8`; sequence 2.

- Constant `R100_EQUIPMENT_BAY_INTAKE`: `uint8 = 0`.
- Constant `R100_EQUIPMENT_BAY_EXHAUST`: `uint8 = 1`.
- Constant `R100_CHARGER_BAY_INTAKE`: `uint8 = 2`.
- Constant `R100_CHARGER_BAY_EXHAUST`: `uint8 = 3`.
- Constant `R100_USER_BAY_INTAKE`: `uint8 = 4`.
- Constant `R100_USER_BAY_EXHAUST`: `uint8 = 5`.
- Constant `FAN_OFF`: `uint8 = 0`.
- Constant `FAN_ON_HIGH`: `uint8 = 1`.
- Constant `FAN_ON_LOW`: `uint8 = 2`.

### `clearpath_platform_msgs/msg/Feedback`

符号：`Ros2Clearpath_platform_msgsMsgFeedback`; 64..192 bytes.

Codec identity：`UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_platform_msgs/msg/DriveFeedback`; array 2.
- `commanded_mode`: `int8`.
- `actual_mode`: `int8`.

### `clearpath_platform_msgs/msg/RGB`

符号：`Ros2Clearpath_platform_msgsMsgRGB`; 3..3 bytes.

Codec identity：`UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1`.

- `red`: `uint8`.
- `green`: `uint8`.
- `blue`: `uint8`.

### `clearpath_platform_msgs/msg/Lights`

符号：`Ros2Clearpath_platform_msgsMsgLights`; 4..10 bytes.

Codec identity：`UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332`.

- `lights`: `clearpath_platform_msgs/msg/RGB`; sequence 2.

- Constant `D100_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `D100_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `D100_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `D100_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `D150_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `D150_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `D150_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `D150_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `R100_LIGHTS_FRONT_PORT_UPPER`: `uint8 = 0`.
- Constant `R100_LIGHTS_FRONT_PORT_LOWER`: `uint8 = 1`.
- Constant `R100_LIGHTS_FRONT_STARBOARD_UPPER`: `uint8 = 2`.
- Constant `R100_LIGHTS_FRONT_STARBOARD_LOWER`: `uint8 = 3`.
- Constant `R100_LIGHTS_REAR_PORT_UPPER`: `uint8 = 4`.
- Constant `R100_LIGHTS_REAR_PORT_LOWER`: `uint8 = 5`.
- Constant `R100_LIGHTS_REAR_STARBOARD_UPPER`: `uint8 = 6`.
- Constant `R100_LIGHTS_REAR_STARBOARD_LOWER`: `uint8 = 7`.
- Constant `W200_LIGHTS_FRONT_LEFT`: `uint8 = 0`.
- Constant `W200_LIGHTS_FRONT_RIGHT`: `uint8 = 1`.
- Constant `W200_LIGHTS_REAR_LEFT`: `uint8 = 2`.
- Constant `W200_LIGHTS_REAR_RIGHT`: `uint8 = 3`.

### `clearpath_platform_msgs/msg/Power`

符号：`Ros2Clearpath_platform_msgsMsgPower`; 25..169 bytes.

Codec identity：`UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22`.

- `header`: `std_msgs/msg/Header`.
- `shore_power_connected`: `int8`.
- `battery_connected`: `int8`.
- `power_12v_user_nominal`: `int8`.
- `charger_connected`: `int8`.
- `charging_complete`: `int8`.
- `measured_voltages`: `float32`; sequence 2.
- `measured_currents`: `float32`; sequence 2.

- Constant `NOT_APPLICABLE`: `int8 = -1`.
- Constant `J100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `J100_MEASURED_5V`: `uint8 = 1`.
- Constant `J100_MEASURED_12V`: `uint8 = 2`.
- Constant `D100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `D100_MEASURED_5V`: `uint8 = 1`.
- Constant `D100_MEASURED_12V`: `uint8 = 2`.
- Constant `D150_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `D150_MEASURED_5V`: `uint8 = 1`.
- Constant `D150_MEASURED_12V`: `uint8 = 2`.
- Constant `W200_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `W200_MEASURED_12V`: `uint8 = 1`.
- Constant `W200_MEASURED_24V`: `uint8 = 2`.
- Constant `W200_MEASURED_48V`: `uint8 = 3`.
- Constant `R100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `R100_MEASURED_5V`: `uint8 = 1`.
- Constant `R100_MEASURED_12V`: `uint8 = 2`.
- Constant `R100_MEASURED_INVERTER`: `uint8 = 3`.
- Constant `R100_MEASURED_FRONT_AXLE`: `uint8 = 4`.
- Constant `R100_MEASURED_REAR_AXLE`: `uint8 = 5`.
- Constant `R100_MEASURED_LIGHT`: `uint8 = 6`.
- Constant `A200_BATTERY_VOLTAGE`: `uint8 = 0`.
- Constant `A200_LEFT_DRIVER_VOLTAGE`: `uint8 = 1`.
- Constant `A200_RIGHT_DRIVER_VOLTAGE`: `uint8 = 2`.
- Constant `A200_VOLTAGES_SIZE`: `uint8 = 3`.
- Constant `J100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `J100_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `J100_DRIVE_CURRENT`: `uint8 = 2`.
- Constant `J100_USER_CURRENT`: `uint8 = 3`.
- Constant `D100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `D100_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `D150_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `D150_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `W200_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `W200_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `W200_12V_CURRENT`: `uint8 = 2`.
- Constant `W200_24V_CURRENT`: `uint8 = 3`.
- Constant `R100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `A200_MCU_AND_USER_PORT_CURRENT`: `uint8 = 0`.
- Constant `A200_LEFT_DRIVER_CURRENT`: `uint8 = 1`.
- Constant `A200_RIGHT_DRIVER_CURRENT`: `uint8 = 2`.
- Constant `A200_CURRENTS_SIZE`: `uint8 = 3`.

### `clearpath_platform_msgs/msg/Status`

符号：`Ros2Clearpath_platform_msgsMsgStatus`; 44..684 bytes.

Codec identity：`UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1`.

- `header`: `std_msgs/msg/Header`.
- `hardware_id`: `string`; text 256 bytes.
- `firmware_version`: `string`; text 256 bytes.
- `mcu_uptime`: `builtin_interfaces/msg/Duration`.
- `connection_uptime`: `builtin_interfaces/msg/Duration`.
- `pcb_temperature`: `float32`.
- `mcu_temperature`: `float32`.

### `clearpath_platform_msgs/msg/StopStatus`

符号：`Ros2Clearpath_platform_msgsMsgStopStatus`; 15..143 bytes.

Codec identity：`UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2`.

- `header`: `std_msgs/msg/Header`.
- `stop_power_status`: `bool`.
- `external_stop_present`: `bool`.
- `needs_reset`: `bool`.

### `clearpath_platform_msgs/srv/ConfigureMcu_Request`

符号：`Ros2Clearpath_platform_msgsSrvConfigureMcu_Request`; 5..261 bytes.

Codec identity：`UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa`.

- `domain_id`: `uint8`.
- `robot_namespace`: `string`; text 256 bytes.

### `clearpath_platform_msgs/srv/ConfigureMcu_Response`

符号：`Ros2Clearpath_platform_msgsSrvConfigureMcu_Response`; 5..261 bytes.

Codec identity：`UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

## 接口组件

- `builtin_interfaces/msg/Duration` (message): message → `builtin_interfaces/msg/Duration`.
- `builtin_interfaces/msg/Time` (message): message → `builtin_interfaces/msg/Time`.
- `clearpath_motor_msgs/msg/PumaFeedback` (message): message → `clearpath_motor_msgs/msg/PumaFeedback`.
- `clearpath_motor_msgs/msg/PumaMultiFeedback` (message): message → `clearpath_motor_msgs/msg/PumaMultiFeedback`.
- `clearpath_motor_msgs/msg/PumaMultiStatus` (message): message → `clearpath_motor_msgs/msg/PumaMultiStatus`.
- `clearpath_motor_msgs/msg/PumaStatus` (message): message → `clearpath_motor_msgs/msg/PumaStatus`.
- `clearpath_platform_msgs/msg/Drive` (message): message → `clearpath_platform_msgs/msg/Drive`.
- `clearpath_platform_msgs/msg/DriveFeedback` (message): message → `clearpath_platform_msgs/msg/DriveFeedback`.
- `clearpath_platform_msgs/msg/Fans` (message): message → `clearpath_platform_msgs/msg/Fans`.
- `clearpath_platform_msgs/msg/Feedback` (message): message → `clearpath_platform_msgs/msg/Feedback`.
- `clearpath_platform_msgs/msg/Lights` (message): message → `clearpath_platform_msgs/msg/Lights`.
- `clearpath_platform_msgs/msg/Power` (message): message → `clearpath_platform_msgs/msg/Power`.
- `clearpath_platform_msgs/msg/RGB` (message): message → `clearpath_platform_msgs/msg/RGB`.
- `clearpath_platform_msgs/msg/Status` (message): message → `clearpath_platform_msgs/msg/Status`.
- `clearpath_platform_msgs/msg/StopStatus` (message): message → `clearpath_platform_msgs/msg/StopStatus`.
- `std_msgs/msg/Header` (message): message → `std_msgs/msg/Header`.
- `clearpath_platform_msgs/srv/ConfigureMcu` (service): request → `clearpath_platform_msgs/srv/ConfigureMcu_Request`, response → `clearpath_platform_msgs/srv/ConfigureMcu_Response`.

## ros2_jazzy

### `clearpath_motor_msgs/action/LynxCalibrate_Goal`

符号：`Ros2Clearpath_motor_msgsActionLynxCalibrate_Goal`; 0..0 bytes.

Codec identity：`UWVMROS1_61b01a6234b41f96464de9449b3e8d1b955decf6afa12aa3ba94062c98cec681`.

空语义值，不添加虚构字段。


### `clearpath_motor_msgs/action/LynxCalibrate_Result`

符号：`Ros2Clearpath_motor_msgsActionLynxCalibrate_Result`; 4..12 bytes.

Codec identity：`UWVMROS1_686450363b8b15eba1e9e9e9ff05c9aacfb95bb0d113eaa7c443e4c70d55d41f`.

- `offset`: `float32`; sequence 2.

### `clearpath_motor_msgs/action/LynxCalibrate_Feedback`

符号：`Ros2Clearpath_motor_msgsActionLynxCalibrate_Feedback`; 4..8 bytes.

Codec identity：`UWVMROS1_ebe7badd3f72982079911d8aa72c4ddd27ff0a12d2f948e5970649317a592b53`.

- `iteration`: `uint16`; sequence 2.

### `clearpath_motor_msgs/action/LynxUpdate_Goal`

符号：`Ros2Clearpath_motor_msgsActionLynxUpdate_Goal`; 4..260 bytes.

Codec identity：`UWVMROS1_f0362f8a90391e8ffda2e8f3b798769b644091058361882c4e9457196f007565`.

- `file`: `string`; text 256 bytes.

### `clearpath_motor_msgs/action/LynxUpdate_Result`

符号：`Ros2Clearpath_motor_msgsActionLynxUpdate_Result`; 4..6 bytes.

Codec identity：`UWVMROS1_126fe871dbcb036e485d20e8ccdc8e9fb7be01757f539bfba895aabf44d341d8`.

- `success`: `bool`; sequence 2.

### `clearpath_motor_msgs/action/LynxUpdate_Feedback`

符号：`Ros2Clearpath_motor_msgsActionLynxUpdate_Feedback`; 4..12 bytes.

Codec identity：`UWVMROS1_2179ec9dee627234a1a31e9681ff214cc45ca837349cd8e407e019a354121b19`.

- `progress`: `float32`; sequence 2.

### `builtin_interfaces/msg/Duration`

符号：`Ros2Builtin_interfacesMsgDuration`; 8..8 bytes.

Codec identity：`UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `builtin_interfaces/msg/Time`

符号：`Ros2Builtin_interfacesMsgTime`; 8..8 bytes.

Codec identity：`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `clearpath_control_msgs/msg/DeviceInfo`

符号：`Ros2Clearpath_control_msgsMsgDeviceInfo`; 28..1820 bytes.

Codec identity：`UWVMROS1_9111f5d4b5324c36eb85f01e6fdbc3c589479ff5b64a8fa7b9d467aa14675c3e`.

- `device_id`: `string`; text 256 bytes.
- `device_class`: `string`; text 256 bytes.
- `model`: `string`; text 256 bytes.
- `manufacturer`: `string`; text 256 bytes.
- `firmware_version`: `string`; text 256 bytes.
- `hardware_version`: `string`; text 256 bytes.
- `serial_number`: `string`; text 256 bytes.

### `clearpath_control_msgs/msg/StreamControl`

符号：`Ros2Clearpath_control_msgsMsgStreamControl`; 5..261 bytes.

Codec identity：`UWVMROS1_26208e266c9185bfb0e715407ab0fe313f2d47e6bc9f54594a102c3a09d34734`.

- `stream`: `string`; text 256 bytes.
- `enabled`: `bool`.

### `clearpath_motor_msgs/msg/LynxDebug`

符号：`Ros2Clearpath_motor_msgsMsgLynxDebug`; 19..291 bytes.

Codec identity：`UWVMROS1_0341ae040f1e8a1f980bde84498c4a4f8b9c55c3806839a73727c1579ab4416e`.

- `can_id`: `uint8`.
- `joint_name`: `string`; text 256 bytes.
- `fault_frequency`: `uint16`.
- `accumulator_flags`: `uint32`.
- `accumulators`: `float32`; sequence 2.
- `currents`: `float32`; sequence 2.

- Constant `ACCUMULATOR_FLAG_ABOVE_RATED`: `uint8 = 0`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_1`: `uint8 = 1`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_2`: `uint8 = 2`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_3`: `uint8 = 3`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_4`: `uint8 = 4`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_5`: `uint8 = 5`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_6`: `uint8 = 6`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_7`: `uint8 = 7`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_8`: `uint8 = 8`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_1_9`: `uint8 = 9`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_0`: `uint8 = 10`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_1`: `uint8 = 11`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_2`: `uint8 = 12`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_3`: `uint8 = 13`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_4`: `uint8 = 14`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_5`: `uint8 = 15`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_6`: `uint8 = 16`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_7`: `uint8 = 17`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_8`: `uint8 = 18`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_2_9`: `uint8 = 19`.
- Constant `ACCUMULATOR_FLAG_CONTINUOUS_3_0`: `uint8 = 20`.
- Constant `ACCUMULATOR_ABOVE_RATED`: `uint8 = 0`.
- Constant `ACCUMULATOR_CONTINUOUS_1_1`: `uint8 = 1`.
- Constant `ACCUMULATOR_CONTINUOUS_1_5`: `uint8 = 2`.
- Constant `ACCUMULATOR_CONTINUOUS_2_0`: `uint8 = 3`.
- Constant `ACCUMULATOR_CONTINUOUS_2_5`: `uint8 = 4`.
- Constant `ACCUMULATOR_CONTINUOUS_3_0`: `uint8 = 5`.
- Constant `CURRENT_ID_FB`: `uint8 = 0`.
- Constant `CURRENT_ID_FF`: `uint8 = 1`.
- Constant `CURRENT_ID_REF`: `uint8 = 2`.
- Constant `CURRENT_IQ_FB`: `uint8 = 3`.
- Constant `CURRENT_IQ_FF`: `uint8 = 4`.
- Constant `CURRENT_IQ_REF`: `uint8 = 5`.

### `clearpath_motor_msgs/msg/LynxFeedback`

符号：`Ros2Clearpath_motor_msgsMsgLynxFeedback`; 21..277 bytes.

Codec identity：`UWVMROS1_5d92c7085019ebf00ba93788b5b2f4055ad40b2c6714575a66fb75cf314429eb`.

- `can_id`: `uint8`.
- `joint_name`: `string`; text 256 bytes.
- `current`: `float32`.
- `voltage`: `float32`.
- `velocity`: `float32`.
- `travel`: `float32`.

### `clearpath_motor_msgs/msg/LynxMotorProtection`

符号：`Ros2Clearpath_motor_msgsMsgLynxMotorProtection`; 6..262 bytes.

Codec identity：`UWVMROS1_f824abfa97f6f24934e04094d66170167f19a14fb933f325cbef4ed6fca16630`.

- `can_id`: `uint8`.
- `joint_name`: `string`; text 256 bytes.
- `state`: `uint8`.

- Constant `NORMAL`: `uint8 = 0`.
- Constant `THROTTLED`: `uint8 = 1`.
- Constant `OVERHEATED`: `uint8 = 2`.
- Constant `ERROR`: `uint8 = 3`.

### `std_msgs/msg/Header`

符号：`Ros2Std_msgsMsgHeader`; 12..140 bytes.

Codec identity：`UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

- `stamp`: `builtin_interfaces/msg/Time`.
- `frame_id`: `string`; text 128 bytes.

### `clearpath_motor_msgs/msg/LynxMultiDebug`

符号：`Ros2Clearpath_motor_msgsMsgLynxMultiDebug`; 16..1308 bytes.

Codec identity：`UWVMROS1_056abd2153e7f1a6df223bf5daba581e6c218bb7ef365444fc5c3171dfc62e95`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_motor_msgs/msg/LynxDebug`; sequence 4.

### `clearpath_motor_msgs/msg/LynxMultiFeedback`

符号：`Ros2Clearpath_motor_msgsMsgLynxMultiFeedback`; 16..1252 bytes.

Codec identity：`UWVMROS1_2c83cade6bec4d766fd2cff97338642b3d2065d41e9968ccf5054c6f231242c7`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_motor_msgs/msg/LynxFeedback`; sequence 4.

### `clearpath_motor_msgs/msg/LynxStatus`

符号：`Ros2Clearpath_motor_msgsMsgLynxStatus`; 34..546 bytes.

Codec identity：`UWVMROS1_b68a7ab9bc5312c59d2ef86e49313468b631e8cacdf52468374b67f4eced5c6d`.

- `can_id`: `uint8`.
- `joint_name`: `string`; text 256 bytes.
- `firmware_version`: `string`; text 256 bytes.
- `motor_temperature`: `float32`.
- `mcu_temperature`: `float32`.
- `pcb_temperature`: `float32`.
- `stopped`: `bool`.
- `status_flags`: `uint32`.
- `warning_flags`: `uint32`.
- `error_flags`: `uint32`.

- Constant `STATUS_FLAG_ADC_CALIBRATED`: `uint8 = 0`.
- Constant `STATUS_FLAG_FOC_ENABLED`: `uint8 = 1`.
- Constant `STATUS_FLAG_CALIBRATION_REQUESTED`: `uint8 = 2`.
- Constant `STATUS_FLAG_CALIBRATION_CANCELLED`: `uint8 = 3`.
- Constant `STATUS_FLAG_ESTOPPED`: `uint8 = 4`.
- Constant `WARNING_FLAG_MOTOR_THERMISTOR`: `uint8 = 0`.
- Constant `WARNING_FLAG_PCB_THERMISTOR`: `uint8 = 1`.
- Constant `WARNING_FLAG_PHASE`: `uint8 = 2`.
- Constant `WARNING_FLAG_PHASE_A`: `uint8 = 3`.
- Constant `WARNING_FLAG_PHASE_B`: `uint8 = 4`.
- Constant `WARNING_FLAG_PHASE_C`: `uint8 = 5`.
- Constant `WARNING_FLAG_ENCODER_INDEX`: `uint8 = 6`.
- Constant `WARNING_FLAG_ENCODER_OUTPUT_A`: `uint8 = 7`.
- Constant `WARNING_FLAG_ENCODER_OUTPUT_B`: `uint8 = 8`.
- Constant `ERROR_FLAG_NOT_CALIBRATED`: `uint8 = 0`.
- Constant `ERROR_FLAG_MOTOR_FAULT`: `uint8 = 1`.
- Constant `ERROR_FLAG_MOTOR_STALLING`: `uint8 = 2`.
- Constant `ERROR_FLAG_MOTOR_THERMISTOR`: `uint8 = 3`.
- Constant `ERROR_FLAG_PCB_THERMISTOR`: `uint8 = 4`.
- Constant `ERROR_FLAG_PHASE`: `uint8 = 5`.
- Constant `ERROR_FLAG_PHASE_A`: `uint8 = 6`.
- Constant `ERROR_FLAG_PHASE_B`: `uint8 = 7`.
- Constant `ERROR_FLAG_PHASE_C`: `uint8 = 8`.
- Constant `ERROR_FLAG_ENCODER_POWER`: `uint8 = 9`.
- Constant `ERROR_FLAG_ENCODER_INDEX`: `uint8 = 10`.
- Constant `ERROR_FLAG_ENCODER_OUTPUT_A`: `uint8 = 11`.
- Constant `ERROR_FLAG_ENCODER_OUTPUT_B`: `uint8 = 12`.

### `clearpath_motor_msgs/msg/LynxMultiStatus`

符号：`Ros2Clearpath_motor_msgsMsgLynxMultiStatus`; 16..2328 bytes.

Codec identity：`UWVMROS1_595cd0847b4332e14cc067b916166e9a6e1d1e12a7a68cdb7e1cd414a9ea9ce1`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_motor_msgs/msg/LynxStatus`; sequence 4.

### `clearpath_motor_msgs/msg/LynxSystemProtection`

符号：`Ros2Clearpath_motor_msgsMsgLynxSystemProtection`; 17..669 bytes.

Codec identity：`UWVMROS1_4d662de03c34bb633a122399be1a1aaea6187550c83231bf6d8a06b95fa82d9f`.

- `header`: `std_msgs/msg/Header`.
- `system_state`: `uint8`.
- `motor_states`: `clearpath_motor_msgs/msg/LynxMotorProtection`; sequence 2.

### `clearpath_motor_msgs/msg/PumaFeedback`

符号：`Ros2Clearpath_motor_msgsMsgPumaFeedback`; 37..293 bytes.

Codec identity：`UWVMROS1_c020162b07a55ac5f41df6021c0d3053d7302863f4e544a738b6cc5bc4dc9659`.

- `device_number`: `uint8`.
- `device_name`: `string`; text 256 bytes.
- `duty_cycle`: `float32`.
- `current`: `float32`.
- `travel`: `float64`.
- `speed`: `float64`.
- `setpoint`: `float64`.

### `clearpath_motor_msgs/msg/PumaMultiFeedback`

符号：`Ros2Clearpath_motor_msgsMsgPumaMultiFeedback`; 16..1316 bytes.

Codec identity：`UWVMROS1_638309564580ad23d585799dcd46156e1e4261ebf9febfbb91754c250907c947`.

- `header`: `std_msgs/msg/Header`.
- `drivers_feedback`: `clearpath_motor_msgs/msg/PumaFeedback`; sequence 4.

### `clearpath_motor_msgs/msg/PumaStatus`

符号：`Ros2Clearpath_motor_msgsMsgPumaStatus`; 23..279 bytes.

Codec identity：`UWVMROS1_a027229db2c8500f707d97064548b27e77e24ae4840ad9722d2dc74726099da8`.

- `device_number`: `uint8`.
- `device_name`: `string`; text 256 bytes.
- `bus_voltage`: `float32`.
- `temperature`: `float32`.
- `output_voltage`: `float32`.
- `analog_input`: `float32`.
- `mode`: `uint8`.
- `fault`: `uint8`.

- Constant `MODE_VOLTAGE`: `uint8 = 0`.
- Constant `MODE_CURRENT`: `uint8 = 1`.
- Constant `MODE_SPEED`: `uint8 = 2`.
- Constant `MODE_POSITION`: `uint8 = 3`.
- Constant `MODE_VCOMP`: `uint8 = 4`.
- Constant `FAULT_CURRENT`: `uint8 = 1`.
- Constant `FAULT_TEMPERATURE`: `uint8 = 2`.
- Constant `FAULT_BUS_VOLTAGE`: `uint8 = 4`.
- Constant `FAULT_BRIDGE_DRIVER`: `uint8 = 8`.

### `clearpath_motor_msgs/msg/PumaMultiStatus`

符号：`Ros2Clearpath_motor_msgsMsgPumaMultiStatus`; 16..1260 bytes.

Codec identity：`UWVMROS1_30a0210fea4fffe07371c898c365ef9696501a7541935dd80770671a7163c8f2`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_motor_msgs/msg/PumaStatus`; sequence 4.

### `clearpath_platform_msgs/msg/DisplayStatus`

符号：`Ros2Clearpath_platform_msgsMsgDisplayStatus`; 8..106 bytes.

Codec identity：`UWVMROS1_e4585117414581491304a26d528b44c770799f622c3f1cde037078f5cb2462c2`.

- `string1`: `string`; text 49 bytes.
- `string2`: `string`; text 49 bytes.

### `clearpath_platform_msgs/msg/Drive`

符号：`Ros2Clearpath_platform_msgsMsgDrive`; 9..9 bytes.

Codec identity：`UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785`.

- `mode`: `int8`.
- `drivers`: `float32`; array 2.

- Constant `MODE_VELOCITY`: `int8 = 0`.
- Constant `MODE_PWM`: `int8 = 1`.
- Constant `MODE_NONE`: `int8 = -1`.
- Constant `LEFT`: `int8 = 0`.
- Constant `RIGHT`: `int8 = 1`.

### `clearpath_platform_msgs/msg/DriveFeedback`

符号：`Ros2Clearpath_platform_msgsMsgDriveFeedback`; 25..25 bytes.

Codec identity：`UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287`.

- `current`: `float32`.
- `duty_cycle`: `float32`.
- `bridge_temperature`: `float32`.
- `motor_temperature`: `float32`.
- `measured_velocity`: `float32`.
- `measured_travel`: `float32`.
- `driver_fault`: `bool`.

### `clearpath_platform_msgs/msg/Fans`

符号：`Ros2Clearpath_platform_msgsMsgFans`; 4..6 bytes.

Codec identity：`UWVMROS1_a7d96f2242d992baf96f31bd8f93088547f92c72912c241c2d237f7714800cc8`.

- `fans`: `uint8`; sequence 2.

- Constant `CC01_FAN1`: `uint8 = 0`.
- Constant `CC01_FAN2`: `uint8 = 1`.
- Constant `CC01_FAN3`: `uint8 = 2`.
- Constant `CC01_FAN4`: `uint8 = 3`.
- Constant `CC01_FAN5`: `uint8 = 4`.
- Constant `CC01_FAN6`: `uint8 = 5`.
- Constant `CC01_FAN7`: `uint8 = 6`.
- Constant `CC01_FAN8`: `uint8 = 7`.
- Constant `R100_EQUIPMENT_BAY_INTAKE`: `uint8 = 0`.
- Constant `R100_EQUIPMENT_BAY_EXHAUST`: `uint8 = 1`.
- Constant `R100_CHARGER_BAY_INTAKE`: `uint8 = 2`.
- Constant `R100_CHARGER_BAY_EXHAUST`: `uint8 = 3`.
- Constant `R100_USER_BAY_INTAKE`: `uint8 = 4`.
- Constant `R100_USER_BAY_EXHAUST`: `uint8 = 5`.
- Constant `FAN_OFF`: `uint8 = 0`.
- Constant `FAN_ON_HIGH`: `uint8 = 1`.
- Constant `FAN_ON_LOW`: `uint8 = 2`.

### `clearpath_platform_msgs/msg/Feedback`

符号：`Ros2Clearpath_platform_msgsMsgFeedback`; 64..192 bytes.

Codec identity：`UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_platform_msgs/msg/DriveFeedback`; array 2.
- `commanded_mode`: `int8`.
- `actual_mode`: `int8`.

### `clearpath_platform_msgs/msg/RGB`

符号：`Ros2Clearpath_platform_msgsMsgRGB`; 3..3 bytes.

Codec identity：`UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1`.

- `red`: `uint8`.
- `green`: `uint8`.
- `blue`: `uint8`.

### `clearpath_platform_msgs/msg/Lights`

符号：`Ros2Clearpath_platform_msgsMsgLights`; 4..10 bytes.

Codec identity：`UWVMROS1_3f975a3ec1fca4f8add9523d4f9f99963be520c0e2982e644551b71cbd4b8a27`.

- `lights`: `clearpath_platform_msgs/msg/RGB`; sequence 2.

- Constant `D100_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `D100_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `D100_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `D100_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `D150_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `D150_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `D150_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `D150_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `R100_LIGHTS_FRONT_PORT_UPPER`: `uint8 = 0`.
- Constant `R100_LIGHTS_FRONT_PORT_LOWER`: `uint8 = 1`.
- Constant `R100_LIGHTS_FRONT_STARBOARD_UPPER`: `uint8 = 2`.
- Constant `R100_LIGHTS_FRONT_STARBOARD_LOWER`: `uint8 = 3`.
- Constant `R100_LIGHTS_REAR_PORT_UPPER`: `uint8 = 4`.
- Constant `R100_LIGHTS_REAR_PORT_LOWER`: `uint8 = 5`.
- Constant `R100_LIGHTS_REAR_STARBOARD_UPPER`: `uint8 = 6`.
- Constant `R100_LIGHTS_REAR_STARBOARD_LOWER`: `uint8 = 7`.
- Constant `W200_LIGHTS_FRONT_LEFT`: `uint8 = 0`.
- Constant `W200_LIGHTS_FRONT_RIGHT`: `uint8 = 1`.
- Constant `W200_LIGHTS_REAR_LEFT`: `uint8 = 2`.
- Constant `W200_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `A300_LIGHTS_FRONT_RIGHT`: `uint8 = 0`.
- Constant `A300_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `A300_LIGHTS_REAR_LEFT`: `uint8 = 2`.
- Constant `A300_LIGHTS_REAR_RIGHT`: `uint8 = 3`.

### `clearpath_platform_msgs/msg/PinoutCommand`

符号：`Ros2Clearpath_platform_msgsMsgPinoutCommand`; 8..18 bytes.

Codec identity：`UWVMROS1_b26c2baf1e64cefa889c4ac6bd6b7f4647d9247eca0626b83cd726547a4e80ff`.

- `rails`: `bool`; sequence 2.
- `outputs`: `uint32`; sequence 2.

- Constant `CC01_USER_PWR_CTRL`: `uint8 = 0`.
- Constant `D100_AUX_OUT1`: `uint8 = 0`.
- Constant `D100_AUX_OUT2`: `uint8 = 1`.
- Constant `D100_AUX_OUT3`: `uint8 = 2`.
- Constant `D150_AUX_OUT1`: `uint8 = 0`.
- Constant `D150_AUX_OUT2`: `uint8 = 1`.
- Constant `D150_AUX_OUT3`: `uint8 = 2`.
- Constant `CC01_AUX_OUT1`: `uint8 = 0`.
- Constant `CC01_AUX_OUT2`: `uint8 = 1`.
- Constant `CC01_AUX_OUT3`: `uint8 = 2`.
- Constant `CC01_GPO0`: `uint8 = 3`.
- Constant `CC01_GPO1`: `uint8 = 4`.
- Constant `CC01_GPO2`: `uint8 = 5`.
- Constant `CC01_GPO3`: `uint8 = 6`.

### `clearpath_platform_msgs/msg/PinoutState`

符号：`Ros2Clearpath_platform_msgsMsgPinoutState`; 28..170 bytes.

Codec identity：`UWVMROS1_a936c6d91440709d50fa9b0be8fb567a9ce793e84f57e5379f6a160c8cbf73e7`.

- `header`: `std_msgs/msg/Header`.
- `rails`: `bool`; sequence 2.
- `inputs`: `bool`; sequence 2.
- `outputs`: `bool`; sequence 2.
- `output_periods`: `uint32`; sequence 2.

- Constant `CC01_USER_PWR_CTRL`: `uint8 = 0`.
- Constant `D100_AUX_IN1`: `uint8 = 0`.
- Constant `D100_AUX_IN2`: `uint8 = 1`.
- Constant `D100_AUX_IN3`: `uint8 = 2`.
- Constant `D150_AUX_IN1`: `uint8 = 0`.
- Constant `D150_AUX_IN2`: `uint8 = 1`.
- Constant `D150_AUX_IN3`: `uint8 = 2`.
- Constant `CC01_AUX_IN1`: `uint8 = 0`.
- Constant `CC01_AUX_IN2`: `uint8 = 1`.
- Constant `CC01_AUX_IN3`: `uint8 = 2`.
- Constant `CC01_GPI0`: `uint8 = 3`.
- Constant `CC01_GPI1`: `uint8 = 4`.
- Constant `CC01_GPI2`: `uint8 = 5`.
- Constant `CC01_GPI3`: `uint8 = 6`.
- Constant `D100_AUX_OUT1`: `uint8 = 0`.
- Constant `D100_AUX_OUT2`: `uint8 = 1`.
- Constant `D100_AUX_OUT3`: `uint8 = 2`.
- Constant `D150_AUX_OUT1`: `uint8 = 0`.
- Constant `D150_AUX_OUT2`: `uint8 = 1`.
- Constant `D150_AUX_OUT3`: `uint8 = 2`.
- Constant `CC01_AUX_OUT1`: `uint8 = 0`.
- Constant `CC01_AUX_OUT2`: `uint8 = 1`.
- Constant `CC01_AUX_OUT3`: `uint8 = 2`.
- Constant `CC01_GPO0`: `uint8 = 3`.
- Constant `CC01_GPO1`: `uint8 = 4`.
- Constant `CC01_GPO2`: `uint8 = 5`.
- Constant `CC01_GPO3`: `uint8 = 6`.

### `clearpath_platform_msgs/msg/Power`

符号：`Ros2Clearpath_platform_msgsMsgPower`; 25..169 bytes.

Codec identity：`UWVMROS1_3fc241d6b81da2f80bfce22933b81786b5e582715dc66cd238fa40b239e7aecc`.

- `header`: `std_msgs/msg/Header`.
- `shore_power_connected`: `int8`.
- `battery_connected`: `int8`.
- `power_12v_user_nominal`: `int8`.
- `charger_connected`: `int8`.
- `charging_complete`: `int8`.
- `measured_voltages`: `float32`; sequence 2.
- `measured_currents`: `float32`; sequence 2.

- Constant `NOT_APPLICABLE`: `int8 = -1`.
- Constant `J100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `J100_MEASURED_5V`: `uint8 = 1`.
- Constant `J100_MEASURED_12V`: `uint8 = 2`.
- Constant `D100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `D100_MEASURED_5V`: `uint8 = 1`.
- Constant `D100_MEASURED_12V`: `uint8 = 2`.
- Constant `D150_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `D150_MEASURED_5V`: `uint8 = 1`.
- Constant `D150_MEASURED_12V`: `uint8 = 2`.
- Constant `W200_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `W200_MEASURED_12V`: `uint8 = 1`.
- Constant `W200_MEASURED_24V`: `uint8 = 2`.
- Constant `W200_MEASURED_48V`: `uint8 = 3`.
- Constant `R100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `R100_MEASURED_5V`: `uint8 = 1`.
- Constant `R100_MEASURED_12V`: `uint8 = 2`.
- Constant `R100_MEASURED_INVERTER`: `uint8 = 3`.
- Constant `R100_MEASURED_FRONT_AXLE`: `uint8 = 4`.
- Constant `R100_MEASURED_REAR_AXLE`: `uint8 = 5`.
- Constant `R100_MEASURED_LIGHT`: `uint8 = 6`.
- Constant `A200_BATTERY_VOLTAGE`: `uint8 = 0`.
- Constant `A200_LEFT_DRIVER_VOLTAGE`: `uint8 = 1`.
- Constant `A200_RIGHT_DRIVER_VOLTAGE`: `uint8 = 2`.
- Constant `A200_VOLTAGES_SIZE`: `uint8 = 3`.
- Constant `CC01_BATTERY_VOLTAGE`: `uint8 = 0`.
- Constant `CC01_USER_BATTERY_VOLTAGE`: `uint8 = 1`.
- Constant `CC01_USER_24V_VOLTAGE`: `uint8 = 2`.
- Constant `CC01_USER_12VB_VOLTAGE`: `uint8 = 3`.
- Constant `CC01_SYSTEM_12V_VOLTAGE`: `uint8 = 4`.
- Constant `CC01_EXPANSION_VOLTAGE`: `uint8 = 5`.
- Constant `CC01_BREAKOUT_24V_AUX_VOLTAGE`: `uint8 = 6`.
- Constant `CC01_BREAKOUT_12V_AUX_VOLTAGE`: `uint8 = 7`.
- Constant `CC01_BREAKOUT_USER_12VA_VOLTAGE`: `uint8 = 8`.
- Constant `CC01_BREAKOUT_LYNX1_VOLTAGE`: `uint8 = 9`.
- Constant `CC01_BREAKOUT_LYNX2_VOLTAGE`: `uint8 = 10`.
- Constant `CC01_BREAKOUT_LYNX3_VOLTAGE`: `uint8 = 11`.
- Constant `CC01_BREAKOUT_LYNX4_VOLTAGE`: `uint8 = 12`.
- Constant `J100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `J100_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `J100_DRIVE_CURRENT`: `uint8 = 2`.
- Constant `J100_USER_CURRENT`: `uint8 = 3`.
- Constant `D100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `D100_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `D150_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `D150_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `W200_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `W200_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `W200_12V_CURRENT`: `uint8 = 2`.
- Constant `W200_24V_CURRENT`: `uint8 = 3`.
- Constant `R100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `A200_MCU_AND_USER_PORT_CURRENT`: `uint8 = 0`.
- Constant `A200_LEFT_DRIVER_CURRENT`: `uint8 = 1`.
- Constant `A200_RIGHT_DRIVER_CURRENT`: `uint8 = 2`.
- Constant `A200_CURRENTS_SIZE`: `uint8 = 3`.
- Constant `CC01_BATTERY_PACK_CURRENT`: `uint8 = 0`.
- Constant `CC01_USER_BATTERY_CURRENT`: `uint8 = 1`.
- Constant `CC01_AUX_HES_CURRENT`: `uint8 = 2`.
- Constant `CC01_SYSTEM_12V_CURRENT`: `uint8 = 3`.
- Constant `CC01_24V_AUX_CURRENT`: `uint8 = 4`.
- Constant `CC01_12V_AUX_CURRENT`: `uint8 = 5`.
- Constant `CC01_BREAKOUT_USER_24V_CURRENT`: `uint8 = 6`.
- Constant `CC01_BREAKOUT_USER_12VA_CURRENT`: `uint8 = 7`.
- Constant `CC01_BREAKOUT_USER_12VB_CURRENT`: `uint8 = 8`.
- Constant `CC01_BREAKOUT_USER_LYNX1_CURRENT`: `uint8 = 9`.
- Constant `CC01_BREAKOUT_USER_LYNX2_CURRENT`: `uint8 = 10`.
- Constant `CC01_BREAKOUT_USER_LYNX3_CURRENT`: `uint8 = 11`.
- Constant `CC01_BREAKOUT_USER_LYNX4_CURRENT`: `uint8 = 12`.

### `clearpath_platform_msgs/msg/Status`

符号：`Ros2Clearpath_platform_msgsMsgStatus`; 36..676 bytes.

Codec identity：`UWVMROS1_1bd99cc11ea9efcb51eeba8fc1d599960c16e958a8adf33a56d47fe27be87782`.

- `header`: `std_msgs/msg/Header`.
- `hardware_id`: `string`; text 256 bytes.
- `firmware_version`: `string`; text 256 bytes.
- `mcu_uptime`: `builtin_interfaces/msg/Duration`.
- `connection_uptime`: `builtin_interfaces/msg/Duration`.

### `clearpath_platform_msgs/msg/StopStatus`

符号：`Ros2Clearpath_platform_msgsMsgStopStatus`; 15..143 bytes.

Codec identity：`UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2`.

- `header`: `std_msgs/msg/Header`.
- `stop_power_status`: `bool`.
- `external_stop_present`: `bool`.
- `needs_reset`: `bool`.

### `clearpath_platform_msgs/msg/Temperature`

符号：`Ros2Clearpath_platform_msgsMsgTemperature`; 16..152 bytes.

Codec identity：`UWVMROS1_b4ae4d6ace9045ce96b0931f08d3b2c7ec358ab9c6da7022afd9ea489f9b0466`.

- `header`: `std_msgs/msg/Header`.
- `temperatures`: `float32`; sequence 2.

- Constant `J100_MCU`: `uint8 = 0`.
- Constant `J100_PCB`: `uint8 = 1`.
- Constant `D100_MCU`: `uint8 = 0`.
- Constant `D100_PCB`: `uint8 = 1`.
- Constant `D150_MCU`: `uint8 = 0`.
- Constant `D150_PCB`: `uint8 = 1`.
- Constant `W200_MCU`: `uint8 = 0`.
- Constant `R100_MCU`: `uint8 = 0`.
- Constant `R100_PCB`: `uint8 = 1`.
- Constant `CC01_MCU`: `uint8 = 0`.
- Constant `CC01_FAN1`: `uint8 = 1`.
- Constant `CC01_FAN2`: `uint8 = 2`.
- Constant `CC01_FAN3`: `uint8 = 3`.
- Constant `CC01_FAN4`: `uint8 = 4`.
- Constant `CC01_FAN5`: `uint8 = 5`.
- Constant `CC01_FAN6`: `uint8 = 6`.
- Constant `CC01_FAN7`: `uint8 = 7`.
- Constant `CC01_FAN8`: `uint8 = 8`.
- Constant `CC01_5V_INDUCTOR`: `uint8 = 9`.
- Constant `CC01_MAIN_GND_LUG`: `uint8 = 10`.
- Constant `CC01_24V_DCDC`: `uint8 = 11`.
- Constant `CC01_12V_DCDC`: `uint8 = 12`.
- Constant `CC01_EXT_1`: `uint8 = 13`.
- Constant `CC01_EXT_2`: `uint8 = 14`.
- Constant `CC01_EXT_3`: `uint8 = 15`.
- Constant `CC01_EXT_4`: `uint8 = 16`.
- Constant `CC01_BREAKOUT_1`: `uint8 = 17`.
- Constant `CC01_BREAKOUT_2`: `uint8 = 18`.

### `clearpath_control_msgs/srv/PowerControl_Request`

符号：`Ros2Clearpath_control_msgsSrvPowerControl_Request`; 1..1 bytes.

Codec identity：`UWVMROS1_1ad49d42d8895b3bd219799ab9cc080cf09d23aa4bca4c1172d19bc18fa416c4`.

- `power_on`: `bool`.

### `clearpath_control_msgs/srv/PowerControl_Response`

符号：`Ros2Clearpath_control_msgsSrvPowerControl_Response`; 5..261 bytes.

Codec identity：`UWVMROS1_6d74d07d6a8ff1c41ed4ca13939d54e9e642f423dc2ff6598665238ebbf10a8b`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_platform_msgs/srv/ConfigureMcu_Request`

符号：`Ros2Clearpath_platform_msgsSrvConfigureMcu_Request`; 5..261 bytes.

Codec identity：`UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa`.

- `domain_id`: `uint8`.
- `robot_namespace`: `string`; text 256 bytes.

### `clearpath_platform_msgs/srv/ConfigureMcu_Response`

符号：`Ros2Clearpath_platform_msgsSrvConfigureMcu_Response`; 5..261 bytes.

Codec identity：`UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

### `clearpath_platform_msgs/srv/SetPinout_Request`

符号：`Ros2Clearpath_platform_msgsSrvSetPinout_Request`; 5..5 bytes.

Codec identity：`UWVMROS1_3a3a2f8f16279c2e7a057353cd1f7f11e1a65e887dd3ce0a4b7f584708afb238`.

- `state`: `bool`.
- `toggle_period`: `uint32`.

### `clearpath_platform_msgs/srv/SetPinout_Response`

符号：`Ros2Clearpath_platform_msgsSrvSetPinout_Response`; 5..261 bytes.

Codec identity：`UWVMROS1_b643ef5de2dfb725906ef8f11d79601400953211b47220be7a6fcc05d1be8ee3`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

## 接口组件

- `clearpath_motor_msgs/action/LynxCalibrate` (action): goal → `clearpath_motor_msgs/action/LynxCalibrate_Goal`, result → `clearpath_motor_msgs/action/LynxCalibrate_Result`, feedback → `clearpath_motor_msgs/action/LynxCalibrate_Feedback`.
- `clearpath_motor_msgs/action/LynxUpdate` (action): goal → `clearpath_motor_msgs/action/LynxUpdate_Goal`, result → `clearpath_motor_msgs/action/LynxUpdate_Result`, feedback → `clearpath_motor_msgs/action/LynxUpdate_Feedback`.
- `builtin_interfaces/msg/Duration` (message): message → `builtin_interfaces/msg/Duration`.
- `builtin_interfaces/msg/Time` (message): message → `builtin_interfaces/msg/Time`.
- `clearpath_control_msgs/msg/DeviceInfo` (message): message → `clearpath_control_msgs/msg/DeviceInfo`.
- `clearpath_control_msgs/msg/StreamControl` (message): message → `clearpath_control_msgs/msg/StreamControl`.
- `clearpath_motor_msgs/msg/LynxDebug` (message): message → `clearpath_motor_msgs/msg/LynxDebug`.
- `clearpath_motor_msgs/msg/LynxFeedback` (message): message → `clearpath_motor_msgs/msg/LynxFeedback`.
- `clearpath_motor_msgs/msg/LynxMotorProtection` (message): message → `clearpath_motor_msgs/msg/LynxMotorProtection`.
- `clearpath_motor_msgs/msg/LynxMultiDebug` (message): message → `clearpath_motor_msgs/msg/LynxMultiDebug`.
- `clearpath_motor_msgs/msg/LynxMultiFeedback` (message): message → `clearpath_motor_msgs/msg/LynxMultiFeedback`.
- `clearpath_motor_msgs/msg/LynxMultiStatus` (message): message → `clearpath_motor_msgs/msg/LynxMultiStatus`.
- `clearpath_motor_msgs/msg/LynxStatus` (message): message → `clearpath_motor_msgs/msg/LynxStatus`.
- `clearpath_motor_msgs/msg/LynxSystemProtection` (message): message → `clearpath_motor_msgs/msg/LynxSystemProtection`.
- `clearpath_motor_msgs/msg/PumaFeedback` (message): message → `clearpath_motor_msgs/msg/PumaFeedback`.
- `clearpath_motor_msgs/msg/PumaMultiFeedback` (message): message → `clearpath_motor_msgs/msg/PumaMultiFeedback`.
- `clearpath_motor_msgs/msg/PumaMultiStatus` (message): message → `clearpath_motor_msgs/msg/PumaMultiStatus`.
- `clearpath_motor_msgs/msg/PumaStatus` (message): message → `clearpath_motor_msgs/msg/PumaStatus`.
- `clearpath_platform_msgs/msg/DisplayStatus` (message): message → `clearpath_platform_msgs/msg/DisplayStatus`.
- `clearpath_platform_msgs/msg/Drive` (message): message → `clearpath_platform_msgs/msg/Drive`.
- `clearpath_platform_msgs/msg/DriveFeedback` (message): message → `clearpath_platform_msgs/msg/DriveFeedback`.
- `clearpath_platform_msgs/msg/Fans` (message): message → `clearpath_platform_msgs/msg/Fans`.
- `clearpath_platform_msgs/msg/Feedback` (message): message → `clearpath_platform_msgs/msg/Feedback`.
- `clearpath_platform_msgs/msg/Lights` (message): message → `clearpath_platform_msgs/msg/Lights`.
- `clearpath_platform_msgs/msg/PinoutCommand` (message): message → `clearpath_platform_msgs/msg/PinoutCommand`.
- `clearpath_platform_msgs/msg/PinoutState` (message): message → `clearpath_platform_msgs/msg/PinoutState`.
- `clearpath_platform_msgs/msg/Power` (message): message → `clearpath_platform_msgs/msg/Power`.
- `clearpath_platform_msgs/msg/RGB` (message): message → `clearpath_platform_msgs/msg/RGB`.
- `clearpath_platform_msgs/msg/Status` (message): message → `clearpath_platform_msgs/msg/Status`.
- `clearpath_platform_msgs/msg/StopStatus` (message): message → `clearpath_platform_msgs/msg/StopStatus`.
- `clearpath_platform_msgs/msg/Temperature` (message): message → `clearpath_platform_msgs/msg/Temperature`.
- `std_msgs/msg/Header` (message): message → `std_msgs/msg/Header`.
- `clearpath_control_msgs/srv/PowerControl` (service): request → `clearpath_control_msgs/srv/PowerControl_Request`, response → `clearpath_control_msgs/srv/PowerControl_Response`.
- `clearpath_platform_msgs/srv/ConfigureMcu` (service): request → `clearpath_platform_msgs/srv/ConfigureMcu_Request`, response → `clearpath_platform_msgs/srv/ConfigureMcu_Response`.
- `clearpath_platform_msgs/srv/SetPinout` (service): request → `clearpath_platform_msgs/srv/SetPinout_Request`, response → `clearpath_platform_msgs/srv/SetPinout_Response`.

## ros2_main

### `builtin_interfaces/msg/Duration`

符号：`Ros2Builtin_interfacesMsgDuration`; 8..8 bytes.

Codec identity：`UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `builtin_interfaces/msg/Time`

符号：`Ros2Builtin_interfacesMsgTime`; 8..8 bytes.

Codec identity：`UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7`.

- `sec`: `int32`.
- `nanosec`: `uint32`.

### `clearpath_platform_msgs/msg/Drive`

符号：`Ros2Clearpath_platform_msgsMsgDrive`; 9..9 bytes.

Codec identity：`UWVMROS1_be8664128ff89a066550f1a2496c30396f39bafd1d96483c545048a328138785`.

- `mode`: `int8`.
- `drivers`: `float32`; array 2.

- Constant `MODE_VELOCITY`: `int8 = 0`.
- Constant `MODE_PWM`: `int8 = 1`.
- Constant `MODE_NONE`: `int8 = -1`.
- Constant `LEFT`: `int8 = 0`.
- Constant `RIGHT`: `int8 = 1`.

### `clearpath_platform_msgs/msg/DriveFeedback`

符号：`Ros2Clearpath_platform_msgsMsgDriveFeedback`; 25..25 bytes.

Codec identity：`UWVMROS1_008f51d4c8341723ffec72651f93c00db0f9feceb037ee7b6b460ffcafd3f287`.

- `current`: `float32`.
- `duty_cycle`: `float32`.
- `bridge_temperature`: `float32`.
- `motor_temperature`: `float32`.
- `measured_velocity`: `float32`.
- `measured_travel`: `float32`.
- `driver_fault`: `bool`.

### `clearpath_platform_msgs/msg/Fans`

符号：`Ros2Clearpath_platform_msgsMsgFans`; 4..6 bytes.

Codec identity：`UWVMROS1_addc15a9b6db4f7a0eba3545f02ece0800e48796f71e387b4d249af861f95317`.

- `fans`: `uint8`; sequence 2.

- Constant `R100_EQUIPMENT_BAY_INTAKE`: `uint8 = 0`.
- Constant `R100_EQUIPMENT_BAY_EXHAUST`: `uint8 = 1`.
- Constant `R100_CHARGER_BAY_INTAKE`: `uint8 = 2`.
- Constant `R100_CHARGER_BAY_EXHAUST`: `uint8 = 3`.
- Constant `R100_USER_BAY_INTAKE`: `uint8 = 4`.
- Constant `R100_USER_BAY_EXHAUST`: `uint8 = 5`.
- Constant `FAN_OFF`: `uint8 = 0`.
- Constant `FAN_ON_HIGH`: `uint8 = 1`.
- Constant `FAN_ON_LOW`: `uint8 = 2`.

### `std_msgs/msg/Header`

符号：`Ros2Std_msgsMsgHeader`; 12..140 bytes.

Codec identity：`UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96`.

- `stamp`: `builtin_interfaces/msg/Time`.
- `frame_id`: `string`; text 128 bytes.

### `clearpath_platform_msgs/msg/Feedback`

符号：`Ros2Clearpath_platform_msgsMsgFeedback`; 64..192 bytes.

Codec identity：`UWVMROS1_15fdfd2e12df38bab09bf083beb61ce23d3c1082e794c34d51eec4c473e29442`.

- `header`: `std_msgs/msg/Header`.
- `drivers`: `clearpath_platform_msgs/msg/DriveFeedback`; array 2.
- `commanded_mode`: `int8`.
- `actual_mode`: `int8`.

### `clearpath_platform_msgs/msg/RGB`

符号：`Ros2Clearpath_platform_msgsMsgRGB`; 3..3 bytes.

Codec identity：`UWVMROS1_42db8731293054ef44002afc54c16dac45544354932d5353cf749fb376cef1a1`.

- `red`: `uint8`.
- `green`: `uint8`.
- `blue`: `uint8`.

### `clearpath_platform_msgs/msg/Lights`

符号：`Ros2Clearpath_platform_msgsMsgLights`; 4..10 bytes.

Codec identity：`UWVMROS1_14da254234c9c897e39bf4ee0db8faad0798d23fe7017195f35f88fb6e0b3332`.

- `lights`: `clearpath_platform_msgs/msg/RGB`; sequence 2.

- Constant `D100_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `D100_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `D100_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `D100_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `D150_LIGHTS_REAR_LEFT`: `uint8 = 0`.
- Constant `D150_LIGHTS_FRONT_LEFT`: `uint8 = 1`.
- Constant `D150_LIGHTS_FRONT_RIGHT`: `uint8 = 2`.
- Constant `D150_LIGHTS_REAR_RIGHT`: `uint8 = 3`.
- Constant `R100_LIGHTS_FRONT_PORT_UPPER`: `uint8 = 0`.
- Constant `R100_LIGHTS_FRONT_PORT_LOWER`: `uint8 = 1`.
- Constant `R100_LIGHTS_FRONT_STARBOARD_UPPER`: `uint8 = 2`.
- Constant `R100_LIGHTS_FRONT_STARBOARD_LOWER`: `uint8 = 3`.
- Constant `R100_LIGHTS_REAR_PORT_UPPER`: `uint8 = 4`.
- Constant `R100_LIGHTS_REAR_PORT_LOWER`: `uint8 = 5`.
- Constant `R100_LIGHTS_REAR_STARBOARD_UPPER`: `uint8 = 6`.
- Constant `R100_LIGHTS_REAR_STARBOARD_LOWER`: `uint8 = 7`.
- Constant `W200_LIGHTS_FRONT_LEFT`: `uint8 = 0`.
- Constant `W200_LIGHTS_FRONT_RIGHT`: `uint8 = 1`.
- Constant `W200_LIGHTS_REAR_LEFT`: `uint8 = 2`.
- Constant `W200_LIGHTS_REAR_RIGHT`: `uint8 = 3`.

### `clearpath_platform_msgs/msg/Power`

符号：`Ros2Clearpath_platform_msgsMsgPower`; 25..169 bytes.

Codec identity：`UWVMROS1_e97ba89dea149ff43d0134038985ea45d2f072af592ea128aa5502a053478d22`.

- `header`: `std_msgs/msg/Header`.
- `shore_power_connected`: `int8`.
- `battery_connected`: `int8`.
- `power_12v_user_nominal`: `int8`.
- `charger_connected`: `int8`.
- `charging_complete`: `int8`.
- `measured_voltages`: `float32`; sequence 2.
- `measured_currents`: `float32`; sequence 2.

- Constant `NOT_APPLICABLE`: `int8 = -1`.
- Constant `J100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `J100_MEASURED_5V`: `uint8 = 1`.
- Constant `J100_MEASURED_12V`: `uint8 = 2`.
- Constant `D100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `D100_MEASURED_5V`: `uint8 = 1`.
- Constant `D100_MEASURED_12V`: `uint8 = 2`.
- Constant `D150_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `D150_MEASURED_5V`: `uint8 = 1`.
- Constant `D150_MEASURED_12V`: `uint8 = 2`.
- Constant `W200_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `W200_MEASURED_12V`: `uint8 = 1`.
- Constant `W200_MEASURED_24V`: `uint8 = 2`.
- Constant `W200_MEASURED_48V`: `uint8 = 3`.
- Constant `R100_MEASURED_BATTERY`: `uint8 = 0`.
- Constant `R100_MEASURED_5V`: `uint8 = 1`.
- Constant `R100_MEASURED_12V`: `uint8 = 2`.
- Constant `R100_MEASURED_INVERTER`: `uint8 = 3`.
- Constant `R100_MEASURED_FRONT_AXLE`: `uint8 = 4`.
- Constant `R100_MEASURED_REAR_AXLE`: `uint8 = 5`.
- Constant `R100_MEASURED_LIGHT`: `uint8 = 6`.
- Constant `A200_BATTERY_VOLTAGE`: `uint8 = 0`.
- Constant `A200_LEFT_DRIVER_VOLTAGE`: `uint8 = 1`.
- Constant `A200_RIGHT_DRIVER_VOLTAGE`: `uint8 = 2`.
- Constant `A200_VOLTAGES_SIZE`: `uint8 = 3`.
- Constant `J100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `J100_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `J100_DRIVE_CURRENT`: `uint8 = 2`.
- Constant `J100_USER_CURRENT`: `uint8 = 3`.
- Constant `D100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `D100_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `D150_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `D150_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `W200_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `W200_COMPUTER_CURRENT`: `uint8 = 1`.
- Constant `W200_12V_CURRENT`: `uint8 = 2`.
- Constant `W200_24V_CURRENT`: `uint8 = 3`.
- Constant `R100_TOTAL_CURRENT`: `uint8 = 0`.
- Constant `A200_MCU_AND_USER_PORT_CURRENT`: `uint8 = 0`.
- Constant `A200_LEFT_DRIVER_CURRENT`: `uint8 = 1`.
- Constant `A200_RIGHT_DRIVER_CURRENT`: `uint8 = 2`.
- Constant `A200_CURRENTS_SIZE`: `uint8 = 3`.

### `clearpath_platform_msgs/msg/Status`

符号：`Ros2Clearpath_platform_msgsMsgStatus`; 44..684 bytes.

Codec identity：`UWVMROS1_331afb70728e70e0391da1b2a0f2b97fdc8742a363a2b007606121ad778dd5c1`.

- `header`: `std_msgs/msg/Header`.
- `hardware_id`: `string`; text 256 bytes.
- `firmware_version`: `string`; text 256 bytes.
- `mcu_uptime`: `builtin_interfaces/msg/Duration`.
- `connection_uptime`: `builtin_interfaces/msg/Duration`.
- `pcb_temperature`: `float32`.
- `mcu_temperature`: `float32`.

### `clearpath_platform_msgs/msg/StopStatus`

符号：`Ros2Clearpath_platform_msgsMsgStopStatus`; 15..143 bytes.

Codec identity：`UWVMROS1_101f96c8d48e7a945a2f94108e7b48393fc9d4bd75507dd709b95180ff4794d2`.

- `header`: `std_msgs/msg/Header`.
- `stop_power_status`: `bool`.
- `external_stop_present`: `bool`.
- `needs_reset`: `bool`.

### `clearpath_platform_msgs/srv/ConfigureMcu_Request`

符号：`Ros2Clearpath_platform_msgsSrvConfigureMcu_Request`; 5..261 bytes.

Codec identity：`UWVMROS1_9c48451b208c4de7a51c5075587dfbe710e7ec6b249c7e1eef519022154023fa`.

- `domain_id`: `uint8`.
- `robot_namespace`: `string`; text 256 bytes.

### `clearpath_platform_msgs/srv/ConfigureMcu_Response`

符号：`Ros2Clearpath_platform_msgsSrvConfigureMcu_Response`; 5..261 bytes.

Codec identity：`UWVMROS1_552e715f290b5b9aa5dc926519cf2ab5120d6b2ae5eca9902efcc3f8c9e459ad`.

- `success`: `bool`.
- `message`: `string`; text 256 bytes.

## 接口组件

- `builtin_interfaces/msg/Duration` (message): message → `builtin_interfaces/msg/Duration`.
- `builtin_interfaces/msg/Time` (message): message → `builtin_interfaces/msg/Time`.
- `clearpath_platform_msgs/msg/Drive` (message): message → `clearpath_platform_msgs/msg/Drive`.
- `clearpath_platform_msgs/msg/DriveFeedback` (message): message → `clearpath_platform_msgs/msg/DriveFeedback`.
- `clearpath_platform_msgs/msg/Fans` (message): message → `clearpath_platform_msgs/msg/Fans`.
- `clearpath_platform_msgs/msg/Feedback` (message): message → `clearpath_platform_msgs/msg/Feedback`.
- `clearpath_platform_msgs/msg/Lights` (message): message → `clearpath_platform_msgs/msg/Lights`.
- `clearpath_platform_msgs/msg/Power` (message): message → `clearpath_platform_msgs/msg/Power`.
- `clearpath_platform_msgs/msg/RGB` (message): message → `clearpath_platform_msgs/msg/RGB`.
- `clearpath_platform_msgs/msg/Status` (message): message → `clearpath_platform_msgs/msg/Status`.
- `clearpath_platform_msgs/msg/StopStatus` (message): message → `clearpath_platform_msgs/msg/StopStatus`.
- `std_msgs/msg/Header` (message): message → `std_msgs/msg/Header`.
- `clearpath_platform_msgs/srv/ConfigureMcu` (service): request → `clearpath_platform_msgs/srv/ConfigureMcu_Request`, response → `clearpath_platform_msgs/srv/ConfigureMcu_Response`.
