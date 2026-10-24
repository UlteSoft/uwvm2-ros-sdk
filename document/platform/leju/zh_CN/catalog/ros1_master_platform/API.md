# leju：ros1_master_platform

本目录保留所有原始字段、服务组件和动作角色。规范字节是 SDK 的有界传输格式；原生网关仍须独立核验原始 ROS 类型和完整注册表。单位、坐标系和字段顺序均遵循原始声明，不自动换算。


## time

Symbol: `Ros1Time`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | uint32 | scalar | - | - |
| nsec | uint32 | scalar | - | - |

## std_msgs/Header

Symbol: `Ros1Std_msgsHeader`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| seq | uint32 | scalar | - | - |
| stamp | time | scalar | - | - |
| frame_id | string | scalar | 256 | - |

## geometry_msgs/Point

Symbol: `Ros1Geometry_msgsPoint`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |

## geometry_msgs/Quaternion

Symbol: `Ros1Geometry_msgsQuaternion`. Complete canonical extent: 32..32 bytes.
Codec identity: `UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |
| w | float64 | scalar | - | - |

## geometry_msgs/Pose

Symbol: `Ros1Geometry_msgsPose`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/Point | scalar | - | - |
| orientation | geometry_msgs/Quaternion | scalar | - | - |

## geometry_msgs/PoseWithCovariance

Symbol: `Ros1Geometry_msgsPoseWithCovariance`. Complete canonical extent: 344..344 bytes.
Codec identity: `UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/Pose | scalar | - | - |
| covariance | float64 | array | 36 | - |

## aruco_msgs/Marker

Symbol: `Ros1Aruco_msgsMarker`. Complete canonical extent: 372..628 bytes.
Codec identity: `UWVMROS1_4c6aee9b879070cefe3a1b59e11178b93b8226c179d5c193232713f70ec0dc2f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| id | uint32 | scalar | - | - |
| pose | geometry_msgs/PoseWithCovariance | scalar | - | - |
| confidence | float64 | scalar | - | - |

## aruco_msgs/MarkerArray

Symbol: `Ros1Aruco_msgsMarkerArray`. Complete canonical extent: 20..5300 bytes.
Codec identity: `UWVMROS1_2fabec40c19196e3575ffa99710bce32fa2827ee63f65dc49b8742897901e422`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| markers | aruco_msgs/Marker | sequence | 8 | - |

## easy_handeye_msgs/CheckStartingPoseRequest

Symbol: `Ros1Easy_handeye_msgsCheckStartingPoseRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_3fc4c8d58fc78cb1a405a11648106b11b5dc0b52ab53f09d5fcd12ea0fd9dd81`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## geometry_msgs/PoseStamped

Symbol: `Ros1Geometry_msgsPoseStamped`. Complete canonical extent: 72..328 bytes.
Codec identity: `UWVMROS1_c7266bddd3b2f53e635603df8e18d33514783e7f49bc4d10c2d9d95fb72b4883`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| pose | geometry_msgs/Pose | scalar | - | - |

## easy_handeye_msgs/TargetPoseList

Symbol: `Ros1Easy_handeye_msgsTargetPoseList`. Complete canonical extent: 84..2964 bytes.
Codec identity: `UWVMROS1_88fadc5096aa9285f5f9e24f64ff9192bfe46cadff0ae15763857b777d76a881`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| home_pose | geometry_msgs/PoseStamped | scalar | - | - |
| target_poses | geometry_msgs/PoseStamped | sequence | 8 | - |
| current_target_pose_index | int64 | scalar | - | - |

## easy_handeye_msgs/CheckStartingPoseResponse

Symbol: `Ros1Easy_handeye_msgsCheckStartingPoseResponse`. Complete canonical extent: 85..2965 bytes.
Codec identity: `UWVMROS1_26c11afb0477b87d076dfbdb624db02eda6c84501177b02f8e42cad4516c9abe`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| can_calibrate | bool | scalar | - | - |
| target_poses | easy_handeye_msgs/TargetPoseList | scalar | - | - |

## easy_handeye_msgs/ComputeCalibrationRequest

Symbol: `Ros1Easy_handeye_msgsComputeCalibrationRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_9a3a6b91c791068f25b7287aa2538d557e293268c8efdf0175514f64412cb998`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## geometry_msgs/Vector3

Symbol: `Ros1Geometry_msgsVector3`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |

## geometry_msgs/Transform

Symbol: `Ros1Geometry_msgsTransform`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| translation | geometry_msgs/Vector3 | scalar | - | - |
| rotation | geometry_msgs/Quaternion | scalar | - | - |

## geometry_msgs/TransformStamped

Symbol: `Ros1Geometry_msgsTransformStamped`. Complete canonical extent: 76..588 bytes.
Codec identity: `UWVMROS1_aca34d1b6d4741062f931da8292f79a9448841fd1d212c35e23a69ae8edc40a8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| child_frame_id | string | scalar | 256 | - |
| transform | geometry_msgs/Transform | scalar | - | - |

## easy_handeye_msgs/HandeyeCalibration

Symbol: `Ros1Easy_handeye_msgsHandeyeCalibration`. Complete canonical extent: 77..589 bytes.
Codec identity: `UWVMROS1_97090e29d44c66824b480167dba1bc1a356f32adc9dd3017964e72d55f676ed1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| eye_on_hand | bool | scalar | - | - |
| transform | geometry_msgs/TransformStamped | scalar | - | - |

## easy_handeye_msgs/ComputeCalibrationResponse

Symbol: `Ros1Easy_handeye_msgsComputeCalibrationResponse`. Complete canonical extent: 78..590 bytes.
Codec identity: `UWVMROS1_6c47afe3d660734f25066602d1bc3237d0de0fef07f8d278939df035601a3856`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| valid | bool | scalar | - | - |
| calibration | easy_handeye_msgs/HandeyeCalibration | scalar | - | - |

## easy_handeye_msgs/EnumerateTargetPosesRequest

Symbol: `Ros1Easy_handeye_msgsEnumerateTargetPosesRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_b326fb3c9cbc970f4066e60e7787a7ecce78d0168109b5d2017806d0c5fb18b6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## easy_handeye_msgs/EnumerateTargetPosesResponse

Symbol: `Ros1Easy_handeye_msgsEnumerateTargetPosesResponse`. Complete canonical extent: 84..2964 bytes.
Codec identity: `UWVMROS1_22821ba135f62766771c0a50abe568897c086c18d3a3913db0ae29dda2d98ce9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_poses | easy_handeye_msgs/TargetPoseList | scalar | - | - |

## easy_handeye_msgs/ExecutePlanRequest

Symbol: `Ros1Easy_handeye_msgsExecutePlanRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_07d845828171563871b7617f6890afb7d15f136f95af7db9dafe0bd784479f3c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## easy_handeye_msgs/ExecutePlanResponse

Symbol: `Ros1Easy_handeye_msgsExecutePlanResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_fab7ba93fde4252e3253dad045788be4a28a1cc3235551c3925f9d4c961b5201`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## easy_handeye_msgs/ListAlgorithmsRequest

Symbol: `Ros1Easy_handeye_msgsListAlgorithmsRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_37355f8ff36ec035e22e4716f4e4963417a52f73affb570ccd330d40357e58a1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## easy_handeye_msgs/ListAlgorithmsResponse

Symbol: `Ros1Easy_handeye_msgsListAlgorithmsResponse`. Complete canonical extent: 8..4424 bytes.
Codec identity: `UWVMROS1_9117a612c5ea330ec82ab01c84cbfbb1f7a3c3fdeda6cc2ef5573cdf8627aa04`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| algorithms | string | sequence | 16 | - |
| current_algorithm | string | scalar | 256 | - |

## easy_handeye_msgs/PlanToSelectedTargetPoseRequest

Symbol: `Ros1Easy_handeye_msgsPlanToSelectedTargetPoseRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_8fe688f2e3b2f638b9cf027d09c0932787ba89cc253e38a577f30eacd2a2dede`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## easy_handeye_msgs/PlanToSelectedTargetPoseResponse

Symbol: `Ros1Easy_handeye_msgsPlanToSelectedTargetPoseResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_36cd8dbf0bde4a28be39a4d8f2ae62e5d0c812d497266f2b04fd212eaf31d884`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## easy_handeye_msgs/RemoveSampleRequest

Symbol: `Ros1Easy_handeye_msgsRemoveSampleRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_8aef990bd52391a06da78acd25d6e7e7edf28369cea8e1c899c77bb07d365102`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sample_index | int8 | scalar | - | - |

## easy_handeye_msgs/SampleList

Symbol: `Ros1Easy_handeye_msgsSampleList`. Complete canonical extent: 8..904 bytes.
Codec identity: `UWVMROS1_08184f786ead6b56ce3573af53cda314a034ed6b073704ef3666504699a00f92`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| hand_world_samples | geometry_msgs/Transform | sequence | 8 | - |
| camera_marker_samples | geometry_msgs/Transform | sequence | 8 | - |

## easy_handeye_msgs/RemoveSampleResponse

Symbol: `Ros1Easy_handeye_msgsRemoveSampleResponse`. Complete canonical extent: 8..904 bytes.
Codec identity: `UWVMROS1_ee655ac7197c2ab2b302383dd34009d58f1a09a531c929195f1eb91e26176804`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| samples | easy_handeye_msgs/SampleList | scalar | - | - |

## easy_handeye_msgs/SelectTargetPoseRequest

Symbol: `Ros1Easy_handeye_msgsSelectTargetPoseRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_d4ddd810f9199385b81f53a2a4cc505c8a19f724733cd2dd7c0556c4b75ec9e1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_pose_index | int64 | scalar | - | - |

## easy_handeye_msgs/SelectTargetPoseResponse

Symbol: `Ros1Easy_handeye_msgsSelectTargetPoseResponse`. Complete canonical extent: 85..2965 bytes.
Codec identity: `UWVMROS1_8565990ebb5f321a2f3d5d72a4ea549b3b5d9a9b25ad549c82e60a2d6f79f7ce`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| target_poses | easy_handeye_msgs/TargetPoseList | scalar | - | - |

## easy_handeye_msgs/SetAlgorithmRequest

Symbol: `Ros1Easy_handeye_msgsSetAlgorithmRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_b1a591e215ef089e0ac0e8504c06f0a35d4dcfb4f257553a7d9af22526a3312a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| new_algorithm | string | scalar | 256 | - |

## easy_handeye_msgs/SetAlgorithmResponse

Symbol: `Ros1Easy_handeye_msgsSetAlgorithmResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_13b67482d24c9b1105e896a2a64c9d83418e15ecb690e72810725d3eb82003bc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## easy_handeye_msgs/TakeSampleRequest

Symbol: `Ros1Easy_handeye_msgsTakeSampleRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_da50bca8888696f3b4df1d1a0ce41aa91ea6bdb60ec0f509ff1e8012464b6a56`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## easy_handeye_msgs/TakeSampleResponse

Symbol: `Ros1Easy_handeye_msgsTakeSampleResponse`. Complete canonical extent: 8..904 bytes.
Codec identity: `UWVMROS1_ed83ae7869d2981c366f6b6145b51265b99d8e1d75a82d5089f564b29c1699d8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| samples | easy_handeye_msgs/SampleList | scalar | - | - |

## geographic_msgs/GeoPoint

Symbol: `Ros1Geographic_msgsGeoPoint`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_ec50d91b012128fee7d4f57b375b8f558e246779cd434b9fe50d45e86d42e07b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| latitude | float64 | scalar | - | - |
| longitude | float64 | scalar | - | - |
| altitude | float64 | scalar | - | - |

## geographic_msgs/GeoPose

Symbol: `Ros1Geographic_msgsGeoPose`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_ebeb1378d616de152f891e28a7ff2308e6d755a6cf9f5d30666375fd6a649789`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| position | geographic_msgs/GeoPoint | scalar | - | - |
| orientation | geometry_msgs/Quaternion | scalar | - | - |

## geometry_msgs/PointStamped

Symbol: `Ros1Geometry_msgsPointStamped`. Complete canonical extent: 40..296 bytes.
Codec identity: `UWVMROS1_af031472d543ea47133f33fe6831cabff92403fe95e6a8c16822d00fa3533c64`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| point | geometry_msgs/Point | scalar | - | - |

## geometry_msgs/PoseWithCovarianceStamped

Symbol: `Ros1Geometry_msgsPoseWithCovarianceStamped`. Complete canonical extent: 360..616 bytes.
Codec identity: `UWVMROS1_06a1c60d720ab18417e5a166c6af54e076b2afb2020b447e65d2e47312bd66b4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| pose | geometry_msgs/PoseWithCovariance | scalar | - | - |

## geometry_msgs/Twist

Symbol: `Ros1Geometry_msgsTwist`. Complete canonical extent: 48..48 bytes.
Codec identity: `UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| linear | geometry_msgs/Vector3 | scalar | - | - |
| angular | geometry_msgs/Vector3 | scalar | - | - |

## grid_map_msgs/GetGridMapRequest

Symbol: `Ros1Grid_map_msgsGetGridMapRequest`. Complete canonical extent: 40..4456 bytes.
Codec identity: `UWVMROS1_6a6ca67b0c3336808432126c2d35434f441f72cfc58cbd72273c9f6641d5ac36`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| frame_id | string | scalar | 256 | - |
| position_x | float64 | scalar | - | - |
| position_y | float64 | scalar | - | - |
| length_x | float64 | scalar | - | - |
| length_y | float64 | scalar | - | - |
| layers | string | sequence | 16 | - |

## grid_map_msgs/GridMapInfo

Symbol: `Ros1Grid_map_msgsGridMapInfo`. Complete canonical extent: 96..352 bytes.
Codec identity: `UWVMROS1_627e4d580bed755f37e9d10c88a0e199ce45070e06a37870ee4ec26d33529707`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| resolution | float64 | scalar | - | - |
| length_x | float64 | scalar | - | - |
| length_y | float64 | scalar | - | - |
| pose | geometry_msgs/Pose | scalar | - | - |

## std_msgs/MultiArrayDimension

Symbol: `Ros1Std_msgsMultiArrayDimension`. Complete canonical extent: 12..76 bytes.
Codec identity: `UWVMROS1_0a279c83cc8c73db2472e3768c8e17d877bb15d72d41f4056568a279b5352444`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| label | string | scalar | 64 | - |
| size | uint32 | scalar | - | - |
| stride | uint32 | scalar | - | - |

## std_msgs/MultiArrayLayout

Symbol: `Ros1Std_msgsMultiArrayLayout`. Complete canonical extent: 8..236 bytes.
Codec identity: `UWVMROS1_602f6ec018f567486b5ea052944a24b0d798fdad5910915337ab6a76c966603e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| dim | std_msgs/MultiArrayDimension | sequence | 3 | - |
| data_offset | uint32 | scalar | - | - |

## std_msgs/Float32MultiArray

Symbol: `Ros1Std_msgsFloat32MultiArray`. Complete canonical extent: 12..752 bytes.
Codec identity: `UWVMROS1_efe70dd93d2d9760e318849238c230d1d52af194ed792d632a2bd8f1c0abd615`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| layout | std_msgs/MultiArrayLayout | scalar | - | - |
| data | float32 | sequence | 128 | - |

## grid_map_msgs/GridMap

Symbol: `Ros1Grid_map_msgsGridMap`. Complete canonical extent: 112..11696 bytes.
Codec identity: `UWVMROS1_167b329af64d534462a99d146a62b749270df1859e9aa93124653d431194289d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| info | grid_map_msgs/GridMapInfo | scalar | - | - |
| layers | string | sequence | 16 | - |
| basic_layers | string | sequence | 16 | - |
| data | std_msgs/Float32MultiArray | sequence | 4 | - |
| outer_start_index | uint16 | scalar | - | - |
| inner_start_index | uint16 | scalar | - | - |

## grid_map_msgs/GetGridMapResponse

Symbol: `Ros1Grid_map_msgsGetGridMapResponse`. Complete canonical extent: 112..11696 bytes.
Codec identity: `UWVMROS1_e403330b5d2e338510fba789f8ea7702fccad33bc683825b1d0847397f6c5008`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map | grid_map_msgs/GridMap | scalar | - | - |

## grid_map_msgs/GetGridMapInfoRequest

Symbol: `Ros1Grid_map_msgsGetGridMapInfoRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_7afb29ab4a3f53004d18ff0b392894163d9957e135559a4305534e3f5b3b0ac2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## grid_map_msgs/GetGridMapInfoResponse

Symbol: `Ros1Grid_map_msgsGetGridMapInfoResponse`. Complete canonical extent: 96..352 bytes.
Codec identity: `UWVMROS1_c0222f0160cc17d21a49b2bf9b5d003b683c36a4b7a8cc9b72d7d4c3e776b65e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| info | grid_map_msgs/GridMapInfo | scalar | - | - |

## grid_map_msgs/ProcessFileRequest

Symbol: `Ros1Grid_map_msgsProcessFileRequest`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_cce0ea934d85569bac32220e0eee614d3b97ea8e1017b2afa4bbef87f8ead341`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| file_path | string | scalar | 256 | - |
| topic_name | string | scalar | 256 | - |

## grid_map_msgs/ProcessFileResponse

Symbol: `Ros1Grid_map_msgsProcessFileResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_2529f5ec87079d451a084b9e95f77692729735a9f59d95a2fcc2aec4bec2f5e4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## grid_map_msgs/SetGridMapRequest

Symbol: `Ros1Grid_map_msgsSetGridMapRequest`. Complete canonical extent: 112..11696 bytes.
Codec identity: `UWVMROS1_f48dc789c03ace0841b7dc092a21f0b89cb2eaf73e2a4b1e396b071c7470af49`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map | grid_map_msgs/GridMap | scalar | - | - |

## grid_map_msgs/SetGridMapResponse

Symbol: `Ros1Grid_map_msgsSetGridMapResponse`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_7fa15943c57206e71fb112bd714245e6f92938232cf399f4b368ba22dc336e89`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## h12pro_controller_node/ECJointMotordata

Symbol: `Ros1H12pro_controller_nodeECJointMotordata`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_38d70c1b0afa7384e478e0fb65b5c55915218b8be4904a0861c4df3b6d5269af`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| l_pos_pitch | int32 | scalar | - | - |
| l_pos_yaw | int32 | scalar | - | - |
| l_pos_end | int32 | scalar | - | - |
| r_pos_pitch | int32 | scalar | - | - |
| r_pos_yaw | int32 | scalar | - | - |
| r_pos_end | int32 | scalar | - | - |

## h12pro_controller_node/ExecuteArmActionRequest

Symbol: `Ros1H12pro_controller_nodeExecuteArmActionRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_f056f42108d3d0648731ef1a107350b875c51411a94e1f6f1d6f8abeaad89127`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| action_name | string | scalar | 256 | - |

## h12pro_controller_node/ExecuteArmActionResponse

Symbol: `Ros1H12pro_controller_nodeExecuteArmActionResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_cf99103830460daeb7bb958251cc3bec1918b83e8e1e2a47dea0303f413a9977`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## h12pro_controller_node/RobotActionState

Symbol: `Ros1H12pro_controller_nodeRobotActionState`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_5f4ddca56a2ea070c4631f83b37a6a45772fea9612e3ed9341dc062639b70a7c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| state | uint8 | scalar | - | - |

## h12pro_controller_node/UpdateH12CustomizeConfig

Symbol: `Ros1H12pro_controller_nodeUpdateH12CustomizeConfig`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_7946916c322fac4fccf83ab6833512a225f5b15a61e6b2958be64f0e40ecb696`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| update_msg | string | scalar | 256 | - |

## h12pro_controller_node/changeAMBACCtrlModeRequest

Symbol: `Ros1H12pro_controller_nodeChangeAMBACCtrlModeRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_9b65e35bfdb3893f6d46b8a6b949eba0f5b2e8cb4d40867764413818ea8c110b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | bool | scalar | - | - |

## h12pro_controller_node/changeAMBACCtrlModeResponse

Symbol: `Ros1H12pro_controller_nodeChangeAMBACCtrlModeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_35234b0139456ff2ca4dbabbe8339ef5a281571fb8836827a1d370bb2c74d187`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## h12pro_controller_node/changeArmCtrlModeRequest

Symbol: `Ros1H12pro_controller_nodeChangeArmCtrlModeRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b06930c1767f5522fc78b4b57289373c0d472bdb03c515f6f6e216997cde3a20`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | bool | scalar | - | - |

## h12pro_controller_node/changeArmCtrlModeResponse

Symbol: `Ros1H12pro_controller_nodeChangeArmCtrlModeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b0d76c7e9b9f80975d329b2f527fd498779611f977494483494b56ecc4f398b5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## h12pro_controller_node/changeHandArmPosesByConfigNameRequest

Symbol: `Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_d60045478a17e0a4fa13126456d2db9279248ef18fbb21781c162b528e4dc3a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| config_name | string | scalar | 256 | - |

## h12pro_controller_node/changeHandArmPosesByConfigNameResponse

Symbol: `Ros1H12pro_controller_nodeChangeHandArmPosesByConfigNameResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_719178893c33a800600c8aecdcde550424fbae3effc2921e77e878e112a74fdb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## h12pro_controller_node/h12proRemoteControllerChannel

Symbol: `Ros1H12pro_controller_nodeH12proRemoteControllerChannel`. Complete canonical extent: 5..37 bytes.
Codec identity: `UWVMROS1_4accf8faf4cd4b4a0e71fbb9aa3a7d0590d3d1a85013001ffaabc036b9899652`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| channels | uint16 | sequence | 16 | - |
| sbus_state | uint8 | scalar | - | - |

## h12pro_controller_node/playmusicRequest

Symbol: `Ros1H12pro_controller_nodePlaymusicRequest`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_215228523fbfc3026aa3f12153492f05c08a6b024a0582e16293e87eaa1db6e1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| music_number | string | scalar | 256 | - |
| volume | int64 | scalar | - | - |

## h12pro_controller_node/playmusicResponse

Symbol: `Ros1H12pro_controller_nodePlaymusicResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_ad77815d74f9e37b5c3eb2f5ea672c884e1682328b1526b4fb3b7d7c6241e823`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success_flag | bool | scalar | - | - |

## h12pro_controller_node/robotPhase

Symbol: `Ros1H12pro_controller_nodeRobotPhase`. Complete canonical extent: 2..2 bytes.
Codec identity: `UWVMROS1_1c0c1805fc76e776d119cda9a549c2d34b9f23f201583bb488217985a1949283`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mainPhase | uint8 | scalar | - | - |
| subPhase | uint8 | scalar | - | - |

## h12pro_controller_node/robotQVTau

Symbol: `Ros1H12pro_controller_nodeRobotQVTau`. Complete canonical extent: 12..1292 bytes.
Codec identity: `UWVMROS1_571ffeebcde739e9f557f701f5a021e743cdfbd7192894fb9d8a4ee5810e2fb7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| q | float64 | sequence | 16 | - |
| v | float64 | sequence | 16 | - |
| tau | float64 | sequence | 128 | - |

## h12pro_controller_node/robotTorsoState

Symbol: `Ros1H12pro_controller_nodeRobotTorsoState`. Complete canonical extent: 144..144 bytes.
Codec identity: `UWVMROS1_14f926d6ebfbf5d88bc052c012e75c06be9db2cb0b90699cb1ab80c939ea565c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| torsoR | geometry_msgs/Vector3 | scalar | - | - |
| torsoRd | geometry_msgs/Vector3 | scalar | - | - |
| torsoRdd | geometry_msgs/Vector3 | scalar | - | - |
| r | geometry_msgs/Vector3 | scalar | - | - |
| rd | geometry_msgs/Vector3 | scalar | - | - |
| rdd | geometry_msgs/Vector3 | scalar | - | - |

## h12pro_controller_node/srvChangePhasesRequest

Symbol: `Ros1H12pro_controller_nodeSrvChangePhasesRequest`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_35f9c693f0b169fdfdcf11464d935135477a7cfe7e0039b86603b393ab9016e5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| masterID | uint8 | scalar | - | - |
| stateReq | string | scalar | 256 | - |
| subState | string | scalar | 256 | - |

## h12pro_controller_node/srvChangePhasesResponse

Symbol: `Ros1H12pro_controller_nodeSrvChangePhasesResponse`. Complete canonical extent: 2..2 bytes.
Codec identity: `UWVMROS1_ff0bc644bfbfeccaf52a31d36ee291170456d71037d93e54527fb875ced7d4e4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| stateRes | int16 | scalar | - | - |

## h12pro_controller_node/srvClearPositionCMDRequest

Symbol: `Ros1H12pro_controller_nodeSrvClearPositionCMDRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_662897522ba05be000762eed51f5b98b5352cf91c663e0289f09f93c2c33a278`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## h12pro_controller_node/srvClearPositionCMDResponse

Symbol: `Ros1H12pro_controller_nodeSrvClearPositionCMDResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_e604650fe3e28eb6c83dd6866024af5fce7fcf33e4eff36bcda779a158d2fc61`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | int8 | scalar | - | - |

## h12pro_controller_node/srvchangeCtlModeRequest

Symbol: `Ros1H12pro_controller_nodeSrvchangeCtlModeRequest`. Complete canonical extent: 2..2 bytes.
Codec identity: `UWVMROS1_b6d8a72ebcb1f8f961e0fe7e7cc74eecf51e4cbf951758bbb3c7412ca1cac09d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| masterID | uint8 | scalar | - | - |
| control_mode | uint8 | scalar | - | - |

## h12pro_controller_node/srvchangeCtlModeResponse

Symbol: `Ros1H12pro_controller_nodeSrvchangeCtlModeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_e4d95ba086ca12457a43b719f0bb7dc216d34e1dbc9e050a1acac000cd12a463`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | uint8 | scalar | - | - |

## h12pro_controller_node/walkCommand

Symbol: `Ros1H12pro_controller_nodeWalkCommand`. Complete canonical extent: 5..133 bytes.
Codec identity: `UWVMROS1_15c67ec2af4d615aa5496c894f3e0372a813f9c2b9f1ae4acb7282cccef14ac6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mode | uint8 | scalar | - | - |
| values | float64 | sequence | 16 | - |

## handcontrollerdemorosnode/armPoseWithTimeStamp

Symbol: `Ros1HandcontrollerdemorosnodeArmPoseWithTimeStamp`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_19346185962b42ce7671c490a92650ff618576d2b222d36a717cfe707ce51044`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| offset | int32 | scalar | - | - |
| left_hand_pose | float64 | sequence | 16 | - |
| right_hand_pose | float64 | sequence | 16 | - |

## handcontrollerdemorosnode/changeHandTrackingModeRequest

Symbol: `Ros1HandcontrollerdemorosnodeChangeHandTrackingModeRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_8e505adec0a30e0bdc55052a97793a17b0635caf99bf56ae1170a2b733b054c8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| enable | bool | scalar | - | - |

## handcontrollerdemorosnode/changeHandTrackingModeResponse

Symbol: `Ros1HandcontrollerdemorosnodeChangeHandTrackingModeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_61fc1f01f2f69f8f8618f3ddf3cf1b1ba5b624425b31227f9e966599c5b6bc80`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## handcontrollerdemorosnode/controlEndHandRequest

Symbol: `Ros1HandcontrollerdemorosnodeControlEndHandRequest`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_1abb47f2413f9b70d61d00cf6b33e64f5892be6ba487bf40b271c7975dcb04f9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_hand_position | uint8 | sequence | 256 | - |
| right_hand_position | uint8 | sequence | 256 | - |

## handcontrollerdemorosnode/controlEndHandResponse

Symbol: `Ros1HandcontrollerdemorosnodeControlEndHandResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_55d259517e6fd2fca6f659b50d3a2a29f64ec8c85ecc07ddcbfdeae50b0c125e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## handcontrollerdemorosnode/handRotationEular

Symbol: `Ros1HandcontrollerdemorosnodeHandRotationEular`. Complete canonical extent: 4..196 bytes.
Codec identity: `UWVMROS1_35528ea7896dd9b93e6bb7c4a1fc61547ed0311e579b4367bf656afcd9570153`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| eulerAngles | geometry_msgs/Vector3 | sequence | 8 | - |

## handcontrollerdemorosnode/robotArmPose

Symbol: `Ros1HandcontrollerdemorosnodeRobotArmPose`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_a1c4224279c2a6bdd2bdff21ac64ecbc6fc9f044b604d7147337630305af01d1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_arm_pose | float64 | sequence | 16 | - |
| right_arm_pose | float64 | sequence | 16 | - |

## handcontrollerdemorosnode/robotHandPosition

Symbol: `Ros1HandcontrollerdemorosnodeRobotHandPosition`. Complete canonical extent: 24..792 bytes.
Codec identity: `UWVMROS1_7a9af4cd610ae49ec9742e9e94a316c4de09f2ee6da583b20c0bb45315079f32`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_hand_position | uint8 | sequence | 256 | - |
| right_hand_position | uint8 | sequence | 256 | - |

## handcontrollerdemorosnode/srvArmIKRequest

Symbol: `Ros1HandcontrollerdemorosnodeSrvArmIKRequest`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_49d66cccce65f6305f0ab4393d8eb581cb4b8fac9789394dad7d5c4c57b549f0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_arm_pose | float64 | sequence | 16 | - |
| right_arm_pose | float64 | sequence | 16 | - |

## sensor_msgs/JointState

Symbol: `Ros1Sensor_msgsJointState`. Complete canonical extent: 32..12064 bytes.
Codec identity: `UWVMROS1_682440f51ada53238ed5f92cc6162cf5160282d8edad387272f279923e29e456`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| name | string | sequence | 128 | - |
| position | float64 | sequence | 128 | - |
| velocity | float64 | sequence | 128 | - |
| effort | float64 | sequence | 128 | - |

## handcontrollerdemorosnode/srvArmIKResponse

Symbol: `Ros1HandcontrollerdemorosnodeSrvArmIKResponse`. Complete canonical extent: 32..12064 bytes.
Codec identity: `UWVMROS1_9dbdfffef67508ebbad4da825a18d2f3fdb551caa78ab225dc4b6422a826ffdc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_state | sensor_msgs/JointState | scalar | - | - |

## hardware_node/horizontalMotionByStep

Symbol: `Ros1Hardware_nodeHorizontalMotionByStep`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_f688b22ab716b205eed4c0d5ae91d2cd352b92ebf97d1d2f732597ee12955ac2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| step | int32 | scalar | - | - |

## hardware_node/robotHeadMotionData

Symbol: `Ros1Hardware_nodeRobotHeadMotionData`. Complete canonical extent: 4..68 bytes.
Codec identity: `UWVMROS1_9220e0cb3b81c2ed7e9b4f15d1ddec9ac68d24d2fa0878e19532bb0a322ec305`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_position | int32 | sequence | 16 | - |

## humanoid_arm_control/armControlRequest

Symbol: `Ros1Humanoid_arm_controlArmControlRequest`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_2b071c6cdc4e566950290d7bae36096c3ff913256fd6a8dd62270f58a64a0594`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| req | int64 | scalar | - | - |
| tagid | int64 | scalar | - | - |

## humanoid_arm_control/armControlResponse

Symbol: `Ros1Humanoid_arm_controlArmControlResponse`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_df0a2faa8ca46981dd36cc59a7950b983d9d18b1fc1d90cffb9bc4ed1bbd3f43`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | int64 | scalar | - | - |
| time | float64 | scalar | - | - |

## humanoid_arm_control/handUpAndGrabRequest

Symbol: `Ros1Humanoid_arm_controlHandUpAndGrabRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_bf59313b0aadf2a1875dded92e3e466d4cd3e54e847f1581434cd4a84e45e0a1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| req | int64 | scalar | - | - |

## humanoid_arm_control/handUpAndGrabResponse

Symbol: `Ros1Humanoid_arm_controlHandUpAndGrabResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_61db6a7ea57555b6faee91c2c8e8648761e25edd2291dce831dc69dae3bece77`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## humanoid_plan_arm_trajectory/ExecuteArmActionRequest

Symbol: `Ros1Humanoid_plan_arm_trajectoryExecuteArmActionRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_21f8af35276c15f8c48b53ca002e04e7575a2917662c8cd2cc245c79c0d5349e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| action_name | string | scalar | 256 | - |

## humanoid_plan_arm_trajectory/ExecuteArmActionResponse

Symbol: `Ros1Humanoid_plan_arm_trajectoryExecuteArmActionResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_9242c66a70abf0d215dbcc5b4846770a8fc2d61eb88bf03b7436b226b7f6f3ea`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## humanoid_plan_arm_trajectory/RobotActionState

Symbol: `Ros1Humanoid_plan_arm_trajectoryRobotActionState`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_e2394a0c9ed8f6435f996443c7a6adf416b3a7660e077bbac4ba1ad34f8f53fc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| state | uint8 | scalar | - | - |

## humanoid_plan_arm_trajectory/bezierCurveCubicPoint

Symbol: `Ros1Humanoid_plan_arm_trajectoryBezierCurveCubicPoint`. Complete canonical extent: 12..396 bytes.
Codec identity: `UWVMROS1_689f2cd6ba7d0aa78e92bb857e61280f5d763a477129a2448819529af1d695a7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| end_point | float64 | sequence | 16 | - |
| left_control_point | float64 | sequence | 16 | - |
| right_control_point | float64 | sequence | 16 | - |

## humanoid_plan_arm_trajectory/jointBezierTrajectory

Symbol: `Ros1Humanoid_plan_arm_trajectoryJointBezierTrajectory`. Complete canonical extent: 4..3172 bytes.
Codec identity: `UWVMROS1_5e3d4297a2557764d89155dc2231684dfedf760e75bf73b16f8e118666b5c929`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| bezier_curve_points | humanoid_plan_arm_trajectory/bezierCurveCubicPoint | sequence | 8 | - |

## humanoid_plan_arm_trajectory/planArmState

Symbol: `Ros1Humanoid_plan_arm_trajectoryPlanArmState`. Complete canonical extent: 5..5 bytes.
Codec identity: `UWVMROS1_b9fe42380559dcc29f8626d7664a6e66739e3487df24f79fdacedbcfe8009a29`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| progress | int32 | scalar | - | - |
| is_finished | bool | scalar | - | - |

## humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveRequest

Symbol: `Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveRequest`. Complete canonical extent: 24..29560 bytes.
Codec identity: `UWVMROS1_7ed93fc26e36fe908fd03bb2baeddb8ab51a2e0658e5bc9da4f026d0f825e7a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| multi_joint_bezier_trajectory | humanoid_plan_arm_trajectory/jointBezierTrajectory | sequence | 8 | - |
| start_frame_time | float64 | scalar | - | - |
| end_frame_time | float64 | scalar | - | - |
| joint_names | string | sequence | 16 | - |

## humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveResponse

Symbol: `Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryBezierCurveResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_4a82604b8f91b5e35f3c7f8e875b08607f5625d8d6f87db6c95cc3eb0b481bb4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## duration

Symbol: `Ros1Duration`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sec | int32 | scalar | - | - |
| nsec | int32 | scalar | - | - |

## trajectory_msgs/JointTrajectoryPoint

Symbol: `Ros1Trajectory_msgsJointTrajectoryPoint`. Complete canonical extent: 24..536 bytes.
Codec identity: `UWVMROS1_e93c84b6980a95c9695bd13be2bf9ebc4b2f400fc8a39909578e59f3dd03db81`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| positions | float64 | sequence | 16 | - |
| velocities | float64 | sequence | 16 | - |
| accelerations | float64 | sequence | 16 | - |
| effort | float64 | sequence | 16 | - |
| time_from_start | duration | scalar | - | - |

## trajectory_msgs/JointTrajectory

Symbol: `Ros1Trajectory_msgsJointTrajectory`. Complete canonical extent: 24..8728 bytes.
Codec identity: `UWVMROS1_be6c35515187dbb5d0ba11af18a8fab6254371d409f69653707821aee118f938`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| joint_names | string | sequence | 16 | - |
| points | trajectory_msgs/JointTrajectoryPoint | sequence | 8 | - |

## humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineRequest

Symbol: `Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineRequest`. Complete canonical extent: 24..8728 bytes.
Codec identity: `UWVMROS1_4f0ce7fcda16917aa57144ad4b5b2d606fe244b25f900b4d20352433939c6138`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_trajectory | trajectory_msgs/JointTrajectory | scalar | - | - |

## humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineResponse

Symbol: `Ros1Humanoid_plan_arm_trajectoryPlanArmTrajectoryCubicSplineResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_60ddec147657fa0acc0a4b731cf7a9c58ba5d5028853ccb5064370b3614b385e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kindr_msgs/VectorAtPosition

Symbol: `Ros1Kindr_msgsVectorAtPosition`. Complete canonical extent: 73..841 bytes.
Codec identity: `UWVMROS1_bc1daa239350f73838cc3e2d3b173cd3356d856ed1f3d02c201a84b1ba8d10a1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| type | uint8 | scalar | - | - |
| name | string | scalar | 256 | - |
| vector | geometry_msgs/Vector3 | scalar | - | - |
| position | geometry_msgs/Point | scalar | - | - |
| position_frame_id | string | scalar | 256 | - |

Original declared constants: `TYPE_TYPELESS=0`, `TYPE_JERK=6`, `TYPE_ACCELERATION=7`, `TYPE_VELOCITY=8`, `TYPE_POSITION=9`, `TYPE_FORCE=10`, `TYPE_MOMEMTUM=11`, `TYPE_ANGULAR_JERK=12`, `TYPE_ANGULAR_ACCELERATION=13`, `TYPE_ANGULAR_VELOCITY=14`, `TYPE_TORQUE=16`, `TYPE_ANGULAR_MOMEMTUM=17`.

## kuavo_audio_player/audio_statusRequest

Symbol: `Ros1Kuavo_audio_playerAudio_statusRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_f97d690c1ed905da0ca05ad9fd54d8eda09627af48fac8da4e9319cda2fc57ae`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_audio_player/audio_statusResponse

Symbol: `Ros1Kuavo_audio_playerAudio_statusResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_0245390904197da671731dfc6249a5c1af2d8da7311f8be8efe55555d218fec6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| is_playing | bool | scalar | - | - |

## kuavo_audio_player/playmusicRequest

Symbol: `Ros1Kuavo_audio_playerPlaymusicRequest`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_43abc9929baa3910ffe2b1623208f3321e6c6ad641aabcff33f2b288d111c476`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| music_number | string | scalar | 256 | - |
| volume | int64 | scalar | - | - |

## kuavo_audio_player/playmusicResponse

Symbol: `Ros1Kuavo_audio_playerPlaymusicResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_191b11d8b6731ff4298e2462fe7b47bcacdb5d2c3562757c120c17b4430cbe75`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success_flag | bool | scalar | - | - |

## kuavo_mapping/DeleteMapRequest

Symbol: `Ros1Kuavo_mappingDeleteMapRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_aac10d7d962844a53bda46cc3a7b185343837a8a3e8a1abd7fdca88997947f31`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |

## kuavo_mapping/DeleteMapResponse

Symbol: `Ros1Kuavo_mappingDeleteMapResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_b075c750af76a0ec5cada415590db74050d3e62fd911030c8610f852c7ed121b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| map_name | string | scalar | 256 | - |

## kuavo_mapping/EditMapRequest

Symbol: `Ros1Kuavo_mappingEditMapRequest`. Complete canonical extent: 12..652 bytes.
Codec identity: `UWVMROS1_bbb68b6161b9728ae6c78319fb557f26bda80a94adad133098262dae57f9f736`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |
| points | float64 | sequence | 16 | - |
| operation | string | scalar | 256 | - |

## kuavo_mapping/EditMapResponse

Symbol: `Ros1Kuavo_mappingEditMapResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_8e4f58a3fbdc5e842cdf6daf431cf74f82fa00dae90791802e8f3d0f30bea0a8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| image_data | string | scalar | 256 | - |

## kuavo_mapping/GetAllMapsRequest

Symbol: `Ros1Kuavo_mappingGetAllMapsRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_8ecf1a96694cc402875f7bb3bd965b13cb4e7a6eceb73b984261944d910ed9ad`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_mapping/GetAllMapsResponse

Symbol: `Ros1Kuavo_mappingGetAllMapsResponse`. Complete canonical extent: 4..4164 bytes.
Codec identity: `UWVMROS1_b5b330be5b9e5a0a0eded8925bcb69e8298b8249dec81b00fe0082afe65a4af1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| maps | string | sequence | 16 | - |

## kuavo_mapping/GetCurrentMapRequest

Symbol: `Ros1Kuavo_mappingGetCurrentMapRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_c3b2df6d6d1e08619be06a878917aef313bc6a8d124ded561407af62213d0c11`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_mapping/GetCurrentMapResponse

Symbol: `Ros1Kuavo_mappingGetCurrentMapResponse`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_4b939cd83cd2de1b5dd38047a81c7be3314a965f3e869a297aaab274f22288fc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| current_map | string | scalar | 256 | - |

## kuavo_mapping/InitialPoseWithTaskPointRequest

Symbol: `Ros1Kuavo_mappingInitialPoseWithTaskPointRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_1117aa6a51d14d2ebd38bc414a18159dcfd549581a9f309010ff448257fcff8f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_point_name | string | scalar | 256 | - |

## kuavo_mapping/InitialPoseWithTaskPointResponse

Symbol: `Ros1Kuavo_mappingInitialPoseWithTaskPointResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_fe171dea7d3aa761a05c5e9ca8c0300f151549e55fe2d61623fcc4b3537669bd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_mapping/LoadMapRequest

Symbol: `Ros1Kuavo_mappingLoadMapRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_39877b34482fa3369fec6fd95df396129b0317e00142df4d5a45c265be042720`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |

## kuavo_mapping/LoadMapResponse

Symbol: `Ros1Kuavo_mappingLoadMapResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_c5fd63cb0fd95e0b6d8bb091a4abf9c74ea40383379fb9a065cfa5c976d7d9e4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_mapping/NavigateToTaskPointRequest

Symbol: `Ros1Kuavo_mappingNavigateToTaskPointRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_a2b5f37013e5a2f56a6dd870660ad38b59b966700bb54701012a7c600d990fee`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_name | string | scalar | 256 | - |

## kuavo_mapping/NavigateToTaskPointResponse

Symbol: `Ros1Kuavo_mappingNavigateToTaskPointResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_baf0625d4aabfb10ea065cb920d0f5ea2c8294a8ee0b33080d8d5a7891206dc2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_mapping/RenameMapRequest

Symbol: `Ros1Kuavo_mappingRenameMapRequest`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_45bbf580fa9ea0d45f1233405e5f3ce95f652a1ca6044b584ae918acf4f65eea`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| old_name | string | scalar | 256 | - |
| new_name | string | scalar | 256 | - |

## kuavo_mapping/RenameMapResponse

Symbol: `Ros1Kuavo_mappingRenameMapResponse`. Complete canonical extent: 13..781 bytes.
Codec identity: `UWVMROS1_a65d793d296107dffcb6e0706fe6a0d2aa1b1f8888f127b82ef9be10d4e8616b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| old_name | string | scalar | 256 | - |
| new_name | string | scalar | 256 | - |

## kuavo_mapping/SaveMapRequest

Symbol: `Ros1Kuavo_mappingSaveMapRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_c203eb94569cd32a2f0c480e1b13cc93198ff77576eb1a8fa7b7b8d778fb8828`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |

## kuavo_mapping/SaveMapResponse

Symbol: `Ros1Kuavo_mappingSaveMapResponse`. Complete canonical extent: 21..1301 bytes.
Codec identity: `UWVMROS1_04e64d751397c0a18046b53f437b3567e6197f60f824debe47d9e8076f4e8db9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| map_path | string | scalar | 256 | - |
| yaml_path | string | scalar | 256 | - |
| pgm_path | string | scalar | 256 | - |
| pcd_path | string | scalar | 256 | - |

## kuavo_mapping/SetInitialPoseRequest

Symbol: `Ros1Kuavo_mappingSetInitialPoseRequest`. Complete canonical extent: 360..616 bytes.
Codec identity: `UWVMROS1_832e206b0be5a30a52d1a6f1994a3826467f15913f891787c6c0f76e222b1566`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| initial_pose | geometry_msgs/PoseWithCovarianceStamped | scalar | - | - |

## kuavo_mapping/SetInitialPoseResponse

Symbol: `Ros1Kuavo_mappingSetInitialPoseResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_8335ac18125fe274c1a76029db9b865a35557febf39a6e3733a4f7e5450b5c37`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_mapping/StartMappingRequest

Symbol: `Ros1Kuavo_mappingStartMappingRequest`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_874682fbb586b183e8c4d84f3be2feb743d57d3a2e966965e438a6587277decf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |
| lidar_type | string | scalar | 256 | - |

## kuavo_mapping/StartMappingResponse

Symbol: `Ros1Kuavo_mappingStartMappingResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_6cf0a52b7aa4774cb9fb0be766d116b433f996b80f339c7557c00815607c62c0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| map_name | string | scalar | 256 | - |

## kuavo_mapping/StopMappingRequest

Symbol: `Ros1Kuavo_mappingStopMappingRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_168a98e242741c38f2edb346778f7c25be34593cc452253c7ee17f51b42d5312`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_mapping/StopMappingResponse

Symbol: `Ros1Kuavo_mappingStopMappingResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_17b821c01d3df0a9607716b89c1068637b5448b8ebe888c7c2dd6de900d211bf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_mapping/TaskPoint

Symbol: `Ros1Kuavo_mappingTaskPoint`. Complete canonical extent: 60..316 bytes.
Codec identity: `UWVMROS1_fe6afa2e8cca97a9648d448712d6274a95b0a2afb65084d1024fb21751f70688`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/Pose | scalar | - | - |
| name | string | scalar | 256 | - |

## kuavo_mapping/TaskPointOperationRequest

Symbol: `Ros1Kuavo_mappingTaskPointOperationRequest`. Complete canonical extent: 66..578 bytes.
Codec identity: `UWVMROS1_c6344869bb1e8975ca2222ed0788e8693c137861bbbd296ba278bbaee9fec25a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| operation | int8 | scalar | - | - |
| task_point | kuavo_mapping/TaskPoint | scalar | - | - |
| name | string | scalar | 256 | - |
| use_robot_current_pose | bool | scalar | - | - |

Original declared constants: `ADD=0`, `UPDATE=1`, `DELETE=2`, `GET=3`.

## kuavo_mapping/TaskPointOperationResponse

Symbol: `Ros1Kuavo_mappingTaskPointOperationResponse`. Complete canonical extent: 9..2793 bytes.
Codec identity: `UWVMROS1_263d6613ca44b86c344aaa2f85c46584052ff465208d3ab764ccce2cae809d70`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| task_points | kuavo_mapping/TaskPoint | sequence | 8 | - |

## kuavo_msgs/AprilTagDetection

Symbol: `Ros1Kuavo_msgsAprilTagDetection`. Complete canonical extent: 368..816 bytes.
Codec identity: `UWVMROS1_890dc965bbcaf6ac97e03050b55bbd43671d8e04bb04b127380a3a091f189405`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| id | int32 | sequence | 16 | - |
| size | float64 | sequence | 16 | - |
| pose | geometry_msgs/PoseWithCovarianceStamped | scalar | - | - |

## kuavo_msgs/AprilTagDetectionArray

Symbol: `Ros1Kuavo_msgsAprilTagDetectionArray`. Complete canonical extent: 20..6804 bytes.
Codec identity: `UWVMROS1_35d5d01d892fa758b0a0c6c6c66fe1764f6d85cef4e12b84d3bcd2cf5e51e479`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| detections | kuavo_msgs/AprilTagDetection | sequence | 8 | - |

## kuavo_msgs/AudioPlaybackStatus

Symbol: `Ros1Kuavo_msgsAudioPlaybackStatus`. Complete canonical extent: 25..537 bytes.
Codec identity: `UWVMROS1_3debc3102bd6a895732616303fedbb06d2d067e132b56ffcfe3e5f756a06895e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| playing | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| buffer_size | int32 | scalar | - | - |

## kuavo_msgs/AudioReceiverData

Symbol: `Ros1Kuavo_msgsAudioReceiverData`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_178e212273125b87e2ed45dfdbdc4ab1ad5ce4e4e3e9f5e37d71bbff63dd7aac`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | uint8 | sequence | 256 | - |

## kuavo_msgs/BatteryInfo

Symbol: `Ros1Kuavo_msgsBatteryInfo`. Complete canonical extent: 44..44 bytes.
Codec identity: `UWVMROS1_6d43dab239ef03efd0e42c71727600603e4c38c3c240e3cf119f379aaa65925f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| battery_id | uint8 | scalar | - | - |
| voltage | uint32 | scalar | - | - |
| current | int32 | scalar | - | - |
| remaining_capacity | uint32 | scalar | - | - |
| full_capacity | uint32 | scalar | - | - |
| percentage | uint8 | scalar | - | - |
| cycle_count | uint16 | scalar | - | - |
| protection_flags | uint32 | scalar | - | - |
| temperatures | int16 | array | 6 | - |
| timestamp | time | scalar | - | - |

## kuavo_msgs/Color

Symbol: `Ros1Kuavo_msgsColor`. Complete canonical extent: 3..3 bytes.
Codec identity: `UWVMROS1_c4fe4b1a89e4e339d2c2539b24734340d2f3de93b6cb2787a088081bff5c4e3a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| r | uint8 | scalar | - | - |
| g | uint8 | scalar | - | - |
| b | uint8 | scalar | - | - |

## kuavo_msgs/ControllerSwitchEvent

Symbol: `Ros1Kuavo_msgsControllerSwitchEvent`. Complete canonical extent: 24..792 bytes.
Codec identity: `UWVMROS1_1c2826bf98d2b1b2873f233c87b399d3bc15b044c628d3b26dc520183d9d6fc5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| from_controller | string | scalar | 256 | - |
| to_controller | string | scalar | 256 | - |

## kuavo_msgs/CreatePathRequest

Symbol: `Ros1Kuavo_msgsCreatePathRequest`. Complete canonical extent: 45..301 bytes.
Codec identity: `UWVMROS1_478f357d2d30fb6c735d24db510b6dbb649fd0392aebbc2ddc900232fda68b85`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| path_type | string | scalar | 256 | - |
| v_max_linear | float64 | scalar | - | - |
| yaw_offset | float64 | scalar | - | - |
| length | float64 | scalar | - | - |
| radius | float64 | scalar | - | - |
| amplitude | float64 | scalar | - | - |
| half_scurve | bool | scalar | - | - |

## nav_msgs/Path

Symbol: `Ros1Nav_msgsPath`. Complete canonical extent: 20..2900 bytes.
Codec identity: `UWVMROS1_ee4ffa0e9f6d8e778e020d89bd798326efa72d0639979ce1f151b69cea2f5cdd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| poses | geometry_msgs/PoseStamped | sequence | 8 | - |

## kuavo_msgs/CreatePathResponse

Symbol: `Ros1Kuavo_msgsCreatePathResponse`. Complete canonical extent: 25..3161 bytes.
Codec identity: `UWVMROS1_2663aa848c09f6f18ed5e14730332153a8a56bc5b133bd17690bd45d06c47ec0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| path | nav_msgs/Path | scalar | - | - |

## kuavo_msgs/DanceTrajectoryState

Symbol: `Ros1Kuavo_msgsDanceTrajectoryState`. Complete canonical extent: 36..804 bytes.
Codec identity: `UWVMROS1_56f8cfcaf4c1324d8a6f330311da7281587e97d1376c6d79015c28a36fc4b6a9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| dance_name | string | scalar | 256 | - |
| state | string | scalar | 256 | - |
| run_id | uint32 | scalar | - | - |
| current_step | int32 | scalar | - | - |
| total_steps | int32 | scalar | - | - |

## kuavo_msgs/ExecuteArmActionRequest

Symbol: `Ros1Kuavo_msgsExecuteArmActionRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_d43994ccbd360139479285b18e644ff69a113e224558494cbc4a346398975298`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| action_name | string | scalar | 256 | - |

## kuavo_msgs/ExecuteArmActionResponse

Symbol: `Ros1Kuavo_msgsExecuteArmActionResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_abcfb19fc995d65895c69f8bfd035a063e826bb3e4059e67ee77f2fd9e87fc5b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/FTsensorData

Symbol: `Ros1Kuavo_msgsFTsensorData`. Complete canonical extent: 24..792 bytes.
Codec identity: `UWVMROS1_f17198f8ad7f451dc2717c09f65e2c30d56c9c6cdaff75a0172e1a01cacf5906`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| Fx | float64 | sequence | 16 | - |
| Fy | float64 | sequence | 16 | - |
| Fz | float64 | sequence | 16 | - |
| Mx | float64 | sequence | 16 | - |
| My | float64 | sequence | 16 | - |
| Mz | float64 | sequence | 16 | - |

## kuavo_msgs/FaceBoundingBox

Symbol: `Ros1Kuavo_msgsFaceBoundingBox`. Complete canonical extent: 36..292 bytes.
Codec identity: `UWVMROS1_6ac2300ba29692faba5446831f73728bd67713e6dc8cb0255ec9d4d1b71db98c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x1 | int32 | scalar | - | - |
| y1 | int32 | scalar | - | - |
| x2 | int32 | scalar | - | - |
| y2 | int32 | scalar | - | - |
| confidence | float32 | scalar | - | - |
| header | std_msgs/Header | scalar | - | - |

## kuavo_msgs/FallStandCommandRequest

Symbol: `Ros1Kuavo_msgsFallStandCommandRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_a5d9d66843bd8aeb29b50ba78bcff0d54020f24fed123f39c351d26143354629`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| command | uint8 | scalar | - | - |

Original declared constants: `PREPARE=1`, `STAND_UP=2`, `RESET=3`.

## kuavo_msgs/FallStandCommandResponse

Symbol: `Ros1Kuavo_msgsFallStandCommandResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_6cbe2cc62e0b13783a54bce4b951af1a508703fd7c070ea1cb5c5a565490c7a3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/Float32MultiArrayStamped

Symbol: `Ros1Kuavo_msgsFloat32MultiArrayStamped`. Complete canonical extent: 28..1024 bytes.
Codec identity: `UWVMROS1_ff2db4c4bde340f06574d38cfb22abaae0e59ba3ca5149d92c96edd3e092029f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| data | std_msgs/Float32MultiArray | scalar | - | - |

## kuavo_msgs/GetAllMapsRequest

Symbol: `Ros1Kuavo_msgsGetAllMapsRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_f46ccfea6a4c91196ffadc91a2b667b2e8f69d21185bab2cd4f1f9034ef8cebf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/GetAllMapsResponse

Symbol: `Ros1Kuavo_msgsGetAllMapsResponse`. Complete canonical extent: 4..4164 bytes.
Codec identity: `UWVMROS1_f80958b5c4419ec5672e8fdd7c5e6d6ec0a57b38e4827fc3667b6c91f59a47bf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| maps | string | sequence | 16 | - |

## kuavo_msgs/GetBatteryInfoRequest

Symbol: `Ros1Kuavo_msgsGetBatteryInfoRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_2fb5ded57aec55776fa99e0a29dafc39132d99f4ba07f634903ed76d02e55f7f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| battery_id | uint8 | scalar | - | - |

## kuavo_msgs/GetBatteryInfoResponse

Symbol: `Ros1Kuavo_msgsGetBatteryInfoResponse`. Complete canonical extent: 41..297 bytes.
Codec identity: `UWVMROS1_ca1379a3f888318206ae182fd9943330cb1a4030b0e567af6bba4c755a8aadbb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| battery_id | uint8 | scalar | - | - |
| voltage | uint32 | scalar | - | - |
| current | int32 | scalar | - | - |
| remaining_capacity | uint32 | scalar | - | - |
| full_capacity | uint32 | scalar | - | - |
| percentage | uint8 | scalar | - | - |
| cycle_count | uint16 | scalar | - | - |
| protection_flags | uint32 | scalar | - | - |
| temperatures | int16 | array | 6 | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/GetCurrentMapRequest

Symbol: `Ros1Kuavo_msgsGetCurrentMapRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_4f0d2b50c249ae9ba1bb86f997638789a4531523d1892bd5ec3aa4f0425fc84c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/GetCurrentMapResponse

Symbol: `Ros1Kuavo_msgsGetCurrentMapResponse`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_1d0625e17de7de83cfcc183d61e71b7b3136e85153b988e29c0a1eee428550de`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| current_map | string | scalar | 256 | - |

## kuavo_msgs/GetPowerBoardStatusRequest

Symbol: `Ros1Kuavo_msgsGetPowerBoardStatusRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_ca40f94da04e34a367abb1e09603558411feb316c858cf85dafa61565cce5822`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/PowerBoardStatus

Symbol: `Ros1Kuavo_msgsPowerBoardStatus`. Complete canonical extent: 37..37 bytes.
Codec identity: `UWVMROS1_3909ec15d3b274f56c82aab332a227d789a181bfa6dfc5901af1228e64632142`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp | time | scalar | - | - |
| status_byte1 | uint8 | scalar | - | - |
| status_byte2 | uint8 | scalar | - | - |
| status_byte3 | uint8 | scalar | - | - |
| ntc_temperature | uint8 | scalar | - | - |
| charge_voltage | uint8 | scalar | - | - |
| bat1_voltage | uint8 | scalar | - | - |
| bat2_voltage | uint8 | scalar | - | - |
| stop_int | bool | scalar | - | - |
| rf_int | bool | scalar | - | - |
| board_is_wheel | bool | scalar | - | - |
| ideal_diode_fail | bool | scalar | - | - |
| cur_ov_protection | bool | scalar | - | - |
| bat1_comm_ok | bool | scalar | - | - |
| bat2_comm_ok | bool | scalar | - | - |
| bat1_exists | bool | scalar | - | - |
| bat2_exists | bool | scalar | - | - |
| bat1_low_power | bool | scalar | - | - |
| bat2_low_power | bool | scalar | - | - |
| charging | bool | scalar | - | - |
| fail_12v | bool | scalar | - | - |
| fail_19v | bool | scalar | - | - |
| fail_24v | bool | scalar | - | - |
| arm_en | bool | scalar | - | - |
| leg_en | bool | scalar | - | - |
| out_19v_en | bool | scalar | - | - |
| out1_12v_en | bool | scalar | - | - |
| out2_12v_en | bool | scalar | - | - |
| out3_12v_en | bool | scalar | - | - |
| out_24v_en | bool | scalar | - | - |

## kuavo_msgs/GetPowerBoardStatusResponse

Symbol: `Ros1Kuavo_msgsGetPowerBoardStatusResponse`. Complete canonical extent: 42..298 bytes.
Codec identity: `UWVMROS1_dc451a58bff76c485b8f6e3ca5d28a67745503d5d2a1cd5b68aa205fe86ec96b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | kuavo_msgs/PowerBoardStatus | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/GetStringListRequest

Symbol: `Ros1Kuavo_msgsGetStringListRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_8075a78360c8b2181b06046c2dc48be11d3051d6568c470fd10aee07644a0438`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/GetStringListResponse

Symbol: `Ros1Kuavo_msgsGetStringListResponse`. Complete canonical extent: 9..4425 bytes.
Codec identity: `UWVMROS1_3fc229d60eede52a5c7d96fe957cc495dba890aabb23b48c688766da5f7ae086`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | string | sequence | 16 | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/GetTargetPartPoseInCameraRequest

Symbol: `Ros1Kuavo_msgsGetTargetPartPoseInCameraRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_959b27f3971013d43876eafe11341e6ce6b6ccb11c944f9cfc27e60eb29ef73a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/GetTargetPartPoseInCameraResponse

Symbol: `Ros1Kuavo_msgsGetTargetPartPoseInCameraResponse`. Complete canonical extent: 61..317 bytes.
Codec identity: `UWVMROS1_2f9f0d6e26e39812a69998906d36e1190876afe997a15bf806204414f4aecd7c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| pose_in_camera | geometry_msgs/Pose | scalar | - | - |

## kuavo_msgs/InitialPoseWithTaskPointRequest

Symbol: `Ros1Kuavo_msgsInitialPoseWithTaskPointRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_c64a398106df13b51953dbd1f7e869387973edb068e72a1caeb2a2f66e2970f8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_point_name | string | scalar | 256 | - |

## kuavo_msgs/InitialPoseWithTaskPointResponse

Symbol: `Ros1Kuavo_msgsInitialPoseWithTaskPointResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_72bcf223dcb9aa760b8b2c1fefe0a23177d42785f8827a85d85a56c91d941e2d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/JoySticks

Symbol: `Ros1Kuavo_msgsJoySticks`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_d007c3176715da6b17bcd89f3ff2dc3906c1f2308ba57ff36dca5e6a82f7bd5b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_x | float32 | scalar | - | - |
| left_y | float32 | scalar | - | - |
| left_trigger | float32 | scalar | - | - |
| left_grip | float32 | scalar | - | - |
| left_first_button_pressed | bool | scalar | - | - |
| left_second_button_pressed | bool | scalar | - | - |
| left_first_button_touched | bool | scalar | - | - |
| left_second_button_touched | bool | scalar | - | - |
| right_x | float32 | scalar | - | - |
| right_y | float32 | scalar | - | - |
| right_trigger | float32 | scalar | - | - |
| right_grip | float32 | scalar | - | - |
| right_first_button_pressed | bool | scalar | - | - |
| right_second_button_pressed | bool | scalar | - | - |
| right_first_button_touched | bool | scalar | - | - |
| right_second_button_touched | bool | scalar | - | - |

## kuavo_msgs/LoadMapRequest

Symbol: `Ros1Kuavo_msgsLoadMapRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_6e2c47c3ef5b788c01d05977c52e9538021fe40e2dbeda7aac838acd62e77e57`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |

## kuavo_msgs/LoadMapResponse

Symbol: `Ros1Kuavo_msgsLoadMapResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_93d33c8c117d288f4de16ea98cab3820157e6ba6113341d290d1bf80d08a9eb2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/Metadata

Symbol: `Ros1Kuavo_msgsMetadata`. Complete canonical extent: 20..532 bytes.
Codec identity: `UWVMROS1_d1710d70dbaede086c4c02e1b55f8a56238e181f11edf7001da28bac6fbc2570`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| json_data | string | scalar | 256 | - |

## kuavo_msgs/MmDetectionMsg

Symbol: `Ros1Kuavo_msgsMmDetectionMsg`. Complete canonical extent: 71..327 bytes.
Codec identity: `UWVMROS1_26ebffd502c5a27512ada8ba611f1f2c250f5d601e179ebc54758e9190f3a807`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| hasAnomaly | bool | scalar | - | - |
| trajectoryPositionErrorMax | float64 | scalar | - | - |
| trajectoryPositionErrorAvg | float64 | scalar | - | - |
| trajectoryPositionMaxThresholdExceeded | bool | scalar | - | - |
| trajectoryPositionAvgThresholdExceeded | bool | scalar | - | - |
| trajectoryOrientationErrorMax | float64 | scalar | - | - |
| trajectoryOrientationErrorAvg | float64 | scalar | - | - |
| trajectoryOrientationMaxThresholdExceeded | bool | scalar | - | - |
| trajectoryOrientationAvgThresholdExceeded | bool | scalar | - | - |
| velocityMagnitudeAvg | float64 | scalar | - | - |
| velocityMagnitudeMax | float64 | scalar | - | - |
| velocityAvgThresholdExceeded | bool | scalar | - | - |
| velocityMaxThresholdExceeded | bool | scalar | - | - |

## kuavo_msgs/MocapPoseRetarget

Symbol: `Ros1Kuavo_msgsMocapPoseRetarget`. Complete canonical extent: 648..904 bytes.
Codec identity: `UWVMROS1_a32401d15b34da4f4fee4e0f93b9760d7c402596f7b3287fb7252a985390f718`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| base_link_pose | geometry_msgs/Pose | scalar | - | - |
| base_velocity | float64 | array | 6 | - |
| joint_position | float64 | array | 27 | - |
| joint_velocity | float64 | array | 27 | - |
| end_effector_poses | geometry_msgs/Point | array | 4 | - |

## kuavo_msgs/NavigateToTaskPointRequest

Symbol: `Ros1Kuavo_msgsNavigateToTaskPointRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_a6583f68f87bc6f4cdddefe4d65667df96e5339fe24c8201683a6699945e47ac`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_name | string | scalar | 256 | - |

## kuavo_msgs/NavigateToTaskPointResponse

Symbol: `Ros1Kuavo_msgsNavigateToTaskPointResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_5dfcecdd2820810c8decca4c9e3680a2487b62b5bf39da815a316e3ee4a81c41`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/PlayMusicImmediateRequest

Symbol: `Ros1Kuavo_msgsPlayMusicImmediateRequest`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_938d9c4cd55f905595166352a6c4e6ffdd461419c41d078fb5d76cc9fee1faf6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| music_number | string | scalar | 256 | - |
| volume | int64 | scalar | - | - |

## kuavo_msgs/PlayMusicImmediateResponse

Symbol: `Ros1Kuavo_msgsPlayMusicImmediateResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_f8836c018cdcdd9550b8fda978ed22581b47a2d9fa7c4093575c91381a301dc2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success_flag | bool | scalar | - | - |

## kuavo_msgs/RelaySelectChannelRequest

Symbol: `Ros1Kuavo_msgsRelaySelectChannelRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_00151266456b82a46c9c10405194863dabb71750e808319a6d3290684ad1ae79`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| channel | int8 | scalar | - | - |

## kuavo_msgs/RelaySelectChannelResponse

Symbol: `Ros1Kuavo_msgsRelaySelectChannelResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_a0ec3435609d651b53e002aea7dac00cd4ef2fffd4fe104b1531b14d35f1bc73`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/RepublishTFsRequest

Symbol: `Ros1Kuavo_msgsRepublishTFsRequest`. Complete canonical extent: 28..4444 bytes.
Codec identity: `UWVMROS1_77af77ab0c403fb2dd7a32b7a1c189e5d4e63941c961067116aec64dd63f8a13`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| source_frames | string | sequence | 16 | - |
| target_frame | string | scalar | 256 | - |
| angular_thres | float32 | scalar | - | - |
| trans_thres | float32 | scalar | - | - |
| rate | float32 | scalar | - | - |
| timeout | duration | scalar | - | - |

## kuavo_msgs/RepublishTFsResponse

Symbol: `Ros1Kuavo_msgsRepublishTFsResponse`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_3dc41a797ea11a7be71bfc8aa869f5a1dafbb7c370cc4781ce3d66bff5c8deab`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | int32 | scalar | - | - |
| topic_name | string | scalar | 256 | - |

## kuavo_msgs/RigidBodyDescription

Symbol: `Ros1Kuavo_msgsRigidBodyDescription`. Complete canonical extent: 32..4768 bytes.
Codec identity: `UWVMROS1_a2e5b7796503d5282d1a253da2c75985ac839b76116d3dc64e1cf4dc605dfc2d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| ids | int32 | sequence | 16 | - |
| names | string | sequence | 16 | - |
| parent_ids | int32 | sequence | 16 | - |
| offsets | geometry_msgs/Point | sequence | 8 | - |

## kuavo_msgs/RigidBodyFrame

Symbol: `Ros1Kuavo_msgsRigidBodyFrame`. Complete canonical extent: 60..316 bytes.
Codec identity: `UWVMROS1_246b8c5a8cd226500da07ab1bfbb5b7c6eb8cb65e7907387b58db3022a1ea0e6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 256 | - |
| position | geometry_msgs/Point | scalar | - | - |
| orientation | geometry_msgs/Quaternion | scalar | - | - |

## kuavo_msgs/RobotActionState

Symbol: `Ros1Kuavo_msgsRobotActionState`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_28172973f12ecf9545fff7b4cf3ba4b493db5ea195d487b320e8a17c77d11c79`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| state | uint8 | scalar | - | - |

## kuavo_msgs/SetHeadControlModeRequest

Symbol: `Ros1Kuavo_msgsSetHeadControlModeRequest`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_bea6df3fd35d03b2338aab6b136dada9b31c0ddb5f13c8df41bd30c119f9afdf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 256 | - |
| fixed_hand | string | scalar | 256 | - |

## kuavo_msgs/SetHeadControlModeResponse

Symbol: `Ros1Kuavo_msgsSetHeadControlModeResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_f264f3fecf3ac21e6dec4b7b46be5c445eb22cc552de583946bf866e694c464f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| current_mode | string | scalar | 256 | - |

## kuavo_msgs/SetIncrementalArmTrajLinkRequest

Symbol: `Ros1Kuavo_msgsSetIncrementalArmTrajLinkRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_a0f69c9c118c365522ff2a7e7df3e3d3ecf9811f71d13ed07100c1d80392fba4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| transport | int8 | scalar | - | - |

Original declared constants: `TRANSPORT_NONE=0`, `TRANSPORT_SHM=1`, `TRANSPORT_KUAVO_ARM_TRAJ=2`.

## kuavo_msgs/SetIncrementalArmTrajLinkResponse

Symbol: `Ros1Kuavo_msgsSetIncrementalArmTrajLinkResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_e72fe05a3c0bd9a2cc5c7f952adaedabc6cfe180f9fac0e75bb31c17554e2443`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/SetInitialPoseRequest

Symbol: `Ros1Kuavo_msgsSetInitialPoseRequest`. Complete canonical extent: 360..616 bytes.
Codec identity: `UWVMROS1_f415ec0a920b01d929f930499273a44422fa552f6b51ad651abb41bac4a5c84c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| initial_pose | geometry_msgs/PoseWithCovarianceStamped | scalar | - | - |

## kuavo_msgs/SetInitialPoseResponse

Symbol: `Ros1Kuavo_msgsSetInitialPoseResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_dece3eddb62c7595f164d6b4f68b451c98172ba567e4be905b6e20c3e5bb525a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/SetJoyTopicRequest

Symbol: `Ros1Kuavo_msgsSetJoyTopicRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_cefea607dc0197ead58be542500cf84167db55587db8463ec62709c077b69730`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| topic_name | string | scalar | 256 | - |

## kuavo_msgs/SetJoyTopicResponse

Symbol: `Ros1Kuavo_msgsSetJoyTopicResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_57c5cdbe2c37eb865c356d3ad6da49784ce0297484908718c5cda5bb75e2a7d0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/SetLEDModeRequest

Symbol: `Ros1Kuavo_msgsSetLEDModeRequest`. Complete canonical extent: 31..31 bytes.
Codec identity: `UWVMROS1_0bad4e89bb5022c7fe027d30fbaa906042d97e043985af5cb1855a77cf508275`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mode | uint8 | scalar | - | - |
| color1 | uint8 | array | 3 | - |
| color2 | uint8 | array | 3 | - |
| color3 | uint8 | array | 3 | - |
| color4 | uint8 | array | 3 | - |
| color5 | uint8 | array | 3 | - |
| color6 | uint8 | array | 3 | - |
| color7 | uint8 | array | 3 | - |
| color8 | uint8 | array | 3 | - |
| color9 | uint8 | array | 3 | - |
| color10 | uint8 | array | 3 | - |

## kuavo_msgs/SetLEDModeResponse

Symbol: `Ros1Kuavo_msgsSetLEDModeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_792d4cf8c31848b18b099b702a18d7a1857a0e336209e8120442eef129f0e021`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/SetLEDMode_freeRequest

Symbol: `Ros1Kuavo_msgsSetLEDMode_freeRequest`. Complete canonical extent: 5..29 bytes.
Codec identity: `UWVMROS1_16286964780da8498ef4c346122661059d938f61d807104a3ecc35fd429a3673`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mode | uint8 | scalar | - | - |
| colors | kuavo_msgs/Color | sequence | 8 | - |

## kuavo_msgs/SetLEDMode_freeResponse

Symbol: `Ros1Kuavo_msgsSetLEDMode_freeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_59f0736941d470331164916bca40d5c2e754acd265d1e11f22c4bd8591c46d9d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/SetStringRequest

Symbol: `Ros1Kuavo_msgsSetStringRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_222cac7fb8a01062ca8ef2d97c78c9d352669afa43549c08deae8bc62829c809`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 256 | - |

## kuavo_msgs/SetStringResponse

Symbol: `Ros1Kuavo_msgsSetStringResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_8e7f36fbf5eaef32581f8f0fcf8b0eb32a04a2318547b2519e44cc2c8eb603bc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/SkeletonFrame

Symbol: `Ros1Kuavo_msgsSkeletonFrame`. Complete canonical extent: 20..2804 bytes.
Codec identity: `UWVMROS1_1a45a890aaf5a44863418ea10536105b44cb69f08e5e54e79d27778498cefd38`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| rigid_bodies | kuavo_msgs/RigidBodyFrame | sequence | 8 | - |

## kuavo_msgs/SpeechSynthesisRequest

Symbol: `Ros1Kuavo_msgsSpeechSynthesisRequest`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_4a354e2acfce1efec18e5624ed6b17b1d432239ffd8e61d86cdea9effbef62be`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | string | scalar | 256 | - |
| volume | float32 | scalar | - | - |

## kuavo_msgs/SpeechSynthesisResponse

Symbol: `Ros1Kuavo_msgsSpeechSynthesisResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_ffbd8b7182b1d37b18770b35913ba1c9712c40072a7e03f7a8db7a8dc0eec6e0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/TFArray

Symbol: `Ros1Kuavo_msgsTFArray`. Complete canonical extent: 4..4708 bytes.
Codec identity: `UWVMROS1_8991804f6d4ead4842bd099dd017712251be3480fbeefa5e748a388c6d008cf8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| transforms | geometry_msgs/TransformStamped | sequence | 8 | - |

## kuavo_msgs/TaskPoint

Symbol: `Ros1Kuavo_msgsTaskPoint`. Complete canonical extent: 60..316 bytes.
Codec identity: `UWVMROS1_49f32513d8c17cbb9c573a3126ee71fbab248c81cb89a13b534c67d2316ec0e8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/Pose | scalar | - | - |
| name | string | scalar | 256 | - |

## kuavo_msgs/TaskPointOperationRequest

Symbol: `Ros1Kuavo_msgsTaskPointOperationRequest`. Complete canonical extent: 66..578 bytes.
Codec identity: `UWVMROS1_307c9ed6bd9199b93976bf8fa8a7c7d6ebb86721dc5210a0aa6a3790a020f8f2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| operation | int8 | scalar | - | - |
| task_point | kuavo_msgs/TaskPoint | scalar | - | - |
| name | string | scalar | 256 | - |
| use_robot_current_pose | bool | scalar | - | - |

Original declared constants: `ADD=0`, `UPDATE=1`, `DELETE=2`, `GET=3`.

## kuavo_msgs/TaskPointOperationResponse

Symbol: `Ros1Kuavo_msgsTaskPointOperationResponse`. Complete canonical extent: 9..2793 bytes.
Codec identity: `UWVMROS1_f17745859e589241fa538fc31355d64c73274003fc08e87142890ca30b22cafd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| task_points | kuavo_msgs/TaskPoint | sequence | 8 | - |

## kuavo_msgs/TransportModeCommandRequest

Symbol: `Ros1Kuavo_msgsTransportModeCommandRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b626f3c4a1222157a7b263f429301abb78c41d0af9be0e3ca473cccf323db097`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| command | uint8 | scalar | - | - |

Original declared constants: `TRANSPORT_ENTER=1`, `TRANSPORT_LOCK=2`, `TRANSPORT_EXIT=3`, `TRANSPORT_FALL_DOWN=4`, `TRANSPORT_HAND_OVER=5`.

## kuavo_msgs/TransportModeCommandResponse

Symbol: `Ros1Kuavo_msgsTransportModeCommandResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_96c0b7dbf0adfb165b556d79a5e9a9aa4e65806f7ffbde344c23fb315066a647`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/VMPTrajectoryState

Symbol: `Ros1Kuavo_msgsVMPTrajectoryState`. Complete canonical extent: 37..549 bytes.
Codec identity: `UWVMROS1_03c1486b58284a85164ac80fb470fa2d76637c85cc97db06ee9b19f258c7ed10`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| current_index | int32 | scalar | - | - |
| current_name | string | scalar | 256 | - |
| current_frame | int32 | scalar | - | - |
| total_frames | int32 | scalar | - | - |
| progress | float32 | scalar | - | - |
| completed | bool | scalar | - | - |

## kuavo_msgs/accessIkSolveRequest

Symbol: `Ros1Kuavo_msgsAccessIkSolveRequest`. Complete canonical extent: 79..79 bytes.
Codec identity: `UWVMROS1_4607c77f5557492cd69d42b8822746d00b6199f0cf14bd0753156159ace7c274`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| totalTimeDesired | float64 | scalar | - | - |
| maxAttempts | int32 | scalar | - | - |
| linearErrorMax | float64 | scalar | - | - |
| angularErrorMax | float64 | scalar | - | - |
| poseDesired | float64 | array | 6 | - |
| isLocal | bool | scalar | - | - |
| isLeft | bool | scalar | - | - |
| isWholeBody | bool | scalar | - | - |

## kuavo_msgs/accessIkSolveResponse

Symbol: `Ros1Kuavo_msgsAccessIkSolveResponse`. Complete canonical extent: 42..298 bytes.
Codec identity: `UWVMROS1_f572b8681cceb266e69c70a3e8a1b463fdfc280bc07f89318982ec3703f97863`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| bestLinearError | float64 | scalar | - | - |
| bestAngularError | float64 | scalar | - | - |
| qBest | float64 | sequence | 16 | - |
| posPriorityAccess | bool | scalar | - | - |
| posPriorityLinearError | float64 | scalar | - | - |
| posPriorityAngularError | float64 | scalar | - | - |
| qPosPriorityBest | float64 | sequence | 16 | - |

## kuavo_msgs/adjustZeroPointRequest

Symbol: `Ros1Kuavo_msgsAdjustZeroPointRequest`. Complete canonical extent: 12..12 bytes.
Codec identity: `UWVMROS1_e1ad07f586e81db4a1e56f059c7f56169505da3f26d67f198d20c24ac94ea4a5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| motor_index | int32 | scalar | - | - |
| offset | float64 | scalar | - | - |

## kuavo_msgs/adjustZeroPointResponse

Symbol: `Ros1Kuavo_msgsAdjustZeroPointResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_311c7110e229c8fb310d73f70ec7fdfeabd8facea00fa2ab7292e6782455f695`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/armCollisionCheckInfo

Symbol: `Ros1Kuavo_msgsArmCollisionCheckInfo`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_cfee93819aff05b3584b5102dd724c6b67e9fd3b33037918b0dd8682eabfce71`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| link1_name | string | scalar | 256 | - |
| link2_name | string | scalar | 256 | - |

## kuavo_msgs/armHandPose

Symbol: `Ros1Kuavo_msgsArmHandPose`. Complete canonical extent: 136..136 bytes.
Codec identity: `UWVMROS1_728d735e83430f1eb64f24f126a24296e9efb3aff0bfea40ecfe5fe0ba8fe9f6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pos_xyz | float64 | array | 3 | - |
| quat_xyzw | float64 | array | 4 | - |
| elbow_pos_xyz | float64 | array | 3 | - |
| joint_angles | float64 | array | 7 | - |

## kuavo_msgs/armHandPoseFree

Symbol: `Ros1Kuavo_msgsArmHandPoseFree`. Complete canonical extent: 84..212 bytes.
Codec identity: `UWVMROS1_59dd0e669158a32f2b312c00a6bc696012bcbb67970b611a6a6559929c02adb4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pos_xyz | float64 | array | 3 | - |
| quat_xyzw | float64 | array | 4 | - |
| elbow_pos_xyz | float64 | array | 3 | - |
| joint_angles | float64 | sequence | 16 | - |

## kuavo_msgs/armPoseWithTimeStamp

Symbol: `Ros1Kuavo_msgsArmPoseWithTimeStamp`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_6a20a74d62ff2c106e9e9b1a15fc853135d5a1bb1a0b28b1f3ebae466e15771f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| offset | int32 | scalar | - | - |
| left_hand_pose | float64 | sequence | 16 | - |
| right_hand_pose | float64 | sequence | 16 | - |

## kuavo_msgs/armTargetPoses

Symbol: `Ros1Kuavo_msgsArmTargetPoses`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_7ba1e04215842b08433ad7c6aaf980f4cf9142ef4e6cd1a94047888df822239f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| times | float64 | sequence | 16 | - |
| values | float64 | sequence | 16 | - |
| frame | int32 | scalar | - | - |

## kuavo_msgs/bezierCurveCubicPoint

Symbol: `Ros1Kuavo_msgsBezierCurveCubicPoint`. Complete canonical extent: 12..396 bytes.
Codec identity: `UWVMROS1_aed931f10d3d77a315befaf89bc33a3e8d39ec8081abde5f9f58b60c20e5c856`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| end_point | float64 | sequence | 16 | - |
| left_control_point | float64 | sequence | 16 | - |
| right_control_point | float64 | sequence | 16 | - |

## kuavo_msgs/changeArmCtrlModeRequest

Symbol: `Ros1Kuavo_msgsChangeArmCtrlModeRequest`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_b068af7cea2b555967cc7c813996902cf68737cfd01dd82ad02500871f3a02bb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | int32 | scalar | - | - |

Original declared constants: `ik_ultra_fast_mode=3`.

## kuavo_msgs/changeArmCtrlModeResponse

Symbol: `Ros1Kuavo_msgsChangeArmCtrlModeResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_c6366fe001000894badf0bed6114d880710ebbb07958b2b95bec730b69bbd5c4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| mode | int32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/changeArmCtrlModeKuavoRequest

Symbol: `Ros1Kuavo_msgsChangeArmCtrlModeKuavoRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_5a91ebca645d32d8c23e688042703cad59b3deba3930db3a0f2ff701b4f6e4f3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | bool | scalar | - | - |

## kuavo_msgs/changeArmCtrlModeKuavoResponse

Symbol: `Ros1Kuavo_msgsChangeArmCtrlModeKuavoResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_f5f5d8cba542d051c114c197040f0e2624f681a5b3ff92b02db70e1ade4331b1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## kuavo_msgs/changeLbMpcObsUpdateModeSrvRequest

Symbol: `Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_7bcfd6319a75a54a2772176b8a39313bb2e9a345b7561ae5649578bea0146f76`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| obsUpdateMode | int8 | scalar | - | - |

## kuavo_msgs/changeLbMpcObsUpdateModeSrvResponse

Symbol: `Ros1Kuavo_msgsChangeLbMpcObsUpdateModeSrvResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_b7f5b92bdf7ff99aaddfa2d391b5e5e65df46d21c47088ee223a88a8e5a28e9f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/changeLbQuickModeSrvRequest

Symbol: `Ros1Kuavo_msgsChangeLbQuickModeSrvRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_aedd6e1c52452ec88114a791b978b05876f5611e27b080055950bebf4f74e56e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| quickMode | int8 | scalar | - | - |

## kuavo_msgs/changeLbQuickModeSrvResponse

Symbol: `Ros1Kuavo_msgsChangeLbQuickModeSrvResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_162770ec0ef48a2419d382c39ec6833e4de8eca9af4cae6698a3e79cbd401996`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/motorParam

Symbol: `Ros1Kuavo_msgsMotorParam`. Complete canonical extent: 10..10 bytes.
Codec identity: `UWVMROS1_dc3c55c0faab62a473cc5afd1e697c9dac64857fe83d4b186619ce37db0fb2fd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| Kp | float32 | scalar | - | - |
| Kd | float32 | scalar | - | - |
| id | int16 | scalar | - | - |

## kuavo_msgs/changeMotorParamRequest

Symbol: `Ros1Kuavo_msgsChangeMotorParamRequest`. Complete canonical extent: 4..84 bytes.
Codec identity: `UWVMROS1_27d517f878651ae667e92811351b74016389f86b29b6b41c9769ba2c3678b8c4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | kuavo_msgs/motorParam | sequence | 8 | - |

## kuavo_msgs/changeMotorParamResponse

Symbol: `Ros1Kuavo_msgsChangeMotorParamResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_b4140350dff17ffd2f64bd04f25a0be06c4da10e817f90ce96b8c39db6465cfb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/changeTorsoCtrlModeRequest

Symbol: `Ros1Kuavo_msgsChangeTorsoCtrlModeRequest`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_f9c72da54ebb0db0f523c4b72c5b5854e9775a9432dc27f1c06cb8bca4ca952d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | int32 | scalar | - | - |

## kuavo_msgs/changeTorsoCtrlModeResponse

Symbol: `Ros1Kuavo_msgsChangeTorsoCtrlModeResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_e1065686a1571d4d8866f2bd17f626c7e8e2cba9db8200d649d6ea070fd8367a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| mode | int32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/changeWaistCtrlModeRequest

Symbol: `Ros1Kuavo_msgsChangeWaistCtrlModeRequest`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_bc255f9b1f8b583419684d6751413b5625c59e6722aa08a938939b3910a16e7b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | int32 | scalar | - | - |

## kuavo_msgs/changeWaistCtrlModeResponse

Symbol: `Ros1Kuavo_msgsChangeWaistCtrlModeResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_eebe8a6b6928b85aa34c68e0b3aef0f56f6ae141b3dd2f05152f3c0cb4362913`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| mode | int32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/chassisPoseCmdSrvRequest

Symbol: `Ros1Kuavo_msgsChassisPoseCmdSrvRequest`. Complete canonical extent: 60..188 bytes.
Codec identity: `UWVMROS1_8bb38989ec0533d11cd98d7182ebfaf1d1c5c9a0e59314fee2a0a8cc1cf4d99f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_pose | geometry_msgs/Pose | scalar | - | - |
| duration | float64 | sequence | 16 | - |

## kuavo_msgs/chassisPoseCmdSrvResponse

Symbol: `Ros1Kuavo_msgsChassisPoseCmdSrvResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_d8ced0167e8370bd833499b343be634636560003755db904855a70515862e737`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/endEffectorData

Symbol: `Ros1Kuavo_msgsEndEffectorData`. Complete canonical extent: 16..4560 bytes.
Codec identity: `UWVMROS1_e984b3281bf8be9337ef4508f3499f8fe12d55fb292b85b106cbffef4f34d720`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | sequence | 16 | - |
| position | float64 | sequence | 16 | - |
| velocity | float64 | sequence | 16 | - |
| effort | float64 | sequence | 16 | - |

## kuavo_msgs/controlLejuClawRequest

Symbol: `Ros1Kuavo_msgsControlLejuClawRequest`. Complete canonical extent: 16..4560 bytes.
Codec identity: `UWVMROS1_881440ff46cfe5876525a730cbff55b70f2b00e2c6c0d0539640629ea064f37d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | kuavo_msgs/endEffectorData | scalar | - | - |

## kuavo_msgs/controlLejuClawResponse

Symbol: `Ros1Kuavo_msgsControlLejuClawResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_1c41adab23cdf564273b166e287aba08d4ef3b25aec4260773931a456293acaf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/dexhandCommand

Symbol: `Ros1Kuavo_msgsDexhandCommand`. Complete canonical extent: 21..309 bytes.
Codec identity: `UWVMROS1_9800aeab62a5a0038869601935b796f17c761ca091196d3a2fe1f236ecac55e3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| control_mode | int8 | scalar | - | - |
| data | int16 | sequence | 16 | - |

Original declared constants: `POSITION_CONTROL=0`, `VELOCITY_CONTROL=1`.

## kuavo_msgs/touchSensorStatus

Symbol: `Ros1Kuavo_msgsTouchSensorStatus`. Complete canonical extent: 32..32 bytes.
Codec identity: `UWVMROS1_ea916c62624747f95aee5134d578ca26f635f8d5b2661395d50ea1e9080af2fc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| normal_force1 | uint16 | scalar | - | - |
| normal_force2 | uint16 | scalar | - | - |
| normal_force3 | uint16 | scalar | - | - |
| tangential_force1 | uint16 | scalar | - | - |
| tangential_force2 | uint16 | scalar | - | - |
| tangential_force3 | uint16 | scalar | - | - |
| tangential_direction1 | uint16 | scalar | - | - |
| tangential_direction2 | uint16 | scalar | - | - |
| tangential_direction3 | uint16 | scalar | - | - |
| self_proximity1 | uint32 | scalar | - | - |
| self_proximity2 | uint32 | scalar | - | - |
| mutual_proximity | uint32 | scalar | - | - |
| status | uint16 | scalar | - | - |

## kuavo_msgs/dexhandTouchState

Symbol: `Ros1Kuavo_msgsDexhandTouchState`. Complete canonical extent: 336..592 bytes.
Codec identity: `UWVMROS1_03a697286c716d6093b4f8d3502dbf7b09936d64928dfbaa8811b17549b01033`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_hand | kuavo_msgs/touchSensorStatus | array | 5 | - |
| right_hand | kuavo_msgs/touchSensorStatus | array | 5 | - |

## kuavo_msgs/eePoseReachErrorRequest

Symbol: `Ros1Kuavo_msgsEePoseReachErrorRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_1111a59887022419cd8a989840be446b679342e5a876236fe39af3a604234c04`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| isLeft | bool | scalar | - | - |

## kuavo_msgs/eePoseReachErrorResponse

Symbol: `Ros1Kuavo_msgsEePoseReachErrorResponse`. Complete canonical extent: 5..133 bytes.
Codec identity: `UWVMROS1_0293d17ba1a37f2baf5703bb59629827c923d504d10852a3c2e1e2f24b888cd0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| errVector | float64 | sequence | 16 | - |

## kuavo_msgs/enableHandTouchSensorRequest

Symbol: `Ros1Kuavo_msgsEnableHandTouchSensorRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_7492603694aed3482d3930e90339de6d809a04249b1df0d4d5effe2f7bde78fa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mask | uint8 | scalar | - | - |

Original declared constants: `THUMB_SENSOR=1`, `INDEX_SENSOR=2`, `MIDDLE_SENSOR=4`, `RING_SENSOR=8`, `PINKY_SENSOR=16`.

## kuavo_msgs/enableHandTouchSensorResponse

Symbol: `Ros1Kuavo_msgsEnableHandTouchSensorResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_d523a7299d823eaf2a97c34ec02b353cbc1806c92e9452aa3221fb605659e0b6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/fkSrvRequest

Symbol: `Ros1Kuavo_msgsFkSrvRequest`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_5e1b8d650b88005066b97a2be990ef2d2c5c3e38cbb629b8d204d51595981e76`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| q | float64 | sequence | 16 | - |

## kuavo_msgs/twoArmHandPose

Symbol: `Ros1Kuavo_msgsTwoArmHandPose`. Complete canonical extent: 288..544 bytes.
Codec identity: `UWVMROS1_b75626d0314b13bb772c5813ff909de276b1069059a68e424d69bd3c8b524883`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_pose | kuavo_msgs/armHandPose | scalar | - | - |
| right_pose | kuavo_msgs/armHandPose | scalar | - | - |

## kuavo_msgs/fkSrvResponse

Symbol: `Ros1Kuavo_msgsFkSrvResponse`. Complete canonical extent: 289..545 bytes.
Codec identity: `UWVMROS1_4e8e29636dd04a2d166285fade3bbee860743da319fe26ce2504a0f3b713f102`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| hand_poses | kuavo_msgs/twoArmHandPose | scalar | - | - |

## kuavo_msgs/fkSrvWithReferFrameRequest

Symbol: `Ros1Kuavo_msgsFkSrvWithReferFrameRequest`. Complete canonical extent: 16..656 bytes.
Codec identity: `UWVMROS1_f6bf6c9af634743b2e8404ab3b301b024fd9177b0195f11f463073205362639c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| q | float64 | sequence | 16 | - |
| base_frame | string | scalar | 256 | - |
| end_effector_frame | string | scalar | 256 | - |
| hand_side | int32 | scalar | - | - |

## kuavo_msgs/fkSrvWithReferFrameResponse

Symbol: `Ros1Kuavo_msgsFkSrvWithReferFrameResponse`. Complete canonical extent: 293..805 bytes.
Codec identity: `UWVMROS1_bfa3ab88799783d624991e303b427aef719f6a5ba1eee19bb7248e7d36d85815`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| error_message | string | scalar | 256 | - |
| hand_poses | kuavo_msgs/twoArmHandPose | scalar | - | - |

## kuavo_msgs/footPose

Symbol: `Ros1Kuavo_msgsFootPose`. Complete canonical extent: 64..64 bytes.
Codec identity: `UWVMROS1_1dc43938a13dbe26a59007ec003aff5038173178b97cb2e3ff0d795345bac14f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| footPose | float64 | array | 4 | - |
| torsoPose | float64 | array | 4 | - |

## kuavo_msgs/footPose6D

Symbol: `Ros1Kuavo_msgsFootPose6D`. Complete canonical extent: 96..96 bytes.
Codec identity: `UWVMROS1_4034cc908006c3541786b162c806a1b49e49598fda96bb68f76a060a3c48f0b9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| footPose6D | float64 | array | 6 | - |
| torsoPose6D | float64 | array | 6 | - |

## kuavo_msgs/footPoses6D

Symbol: `Ros1Kuavo_msgsFootPoses6D`. Complete canonical extent: 4..772 bytes.
Codec identity: `UWVMROS1_2bfbb2b401ca234254f356cf8e261cc9a43faadf7fcf16dd21775706f2925052`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | kuavo_msgs/footPose6D | sequence | 8 | - |

## kuavo_msgs/footPose6DTargetTrajectories

Symbol: `Ros1Kuavo_msgsFootPose6DTargetTrajectories`. Complete canonical extent: 28..7292 bytes.
Codec identity: `UWVMROS1_c69e87081e6d953188281e1f53fbef5e25c049901827313c84e2718b97ce385e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timeTrajectory | float64 | sequence | 16 | - |
| footIndexTrajectory | int32 | sequence | 16 | - |
| footPoseTrajectory | kuavo_msgs/footPose6D | sequence | 8 | - |
| additionalFootPoseTrajectory | kuavo_msgs/footPoses6D | sequence | 8 | - |
| swingHeightTrajectory | float64 | sequence | 16 | - |
| insertTime | float64 | scalar | - | - |

## kuavo_msgs/footPose6DTargetTrajectoriesSrvRequest

Symbol: `Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvRequest`. Complete canonical extent: 28..7292 bytes.
Codec identity: `UWVMROS1_b702239b1be77367a9504b076cfcface3ecb76be696c5a0d079e237c0c1ba93d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| foot_pose_target_trajectories | kuavo_msgs/footPose6DTargetTrajectories | scalar | - | - |

## kuavo_msgs/footPose6DTargetTrajectoriesSrvResponse

Symbol: `Ros1Kuavo_msgsFootPose6DTargetTrajectoriesSrvResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_b2c4ca80226f02e81ed6c2769481f61923f82d647e7c2e675a93a841df374b78`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/footPoses

Symbol: `Ros1Kuavo_msgsFootPoses`. Complete canonical extent: 4..516 bytes.
Codec identity: `UWVMROS1_216a16a93492de300186e7d08b26ab98ecab699e7141ccc733358773798bcc55`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | kuavo_msgs/footPose | sequence | 8 | - |

## kuavo_msgs/footPoseTargetTrajectories

Symbol: `Ros1Kuavo_msgsFootPoseTargetTrajectories`. Complete canonical extent: 20..4980 bytes.
Codec identity: `UWVMROS1_a9f8c1da63f1789e36043a3d3169f77dac28d4e4cdd8d655e528973daa17a547`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timeTrajectory | float64 | sequence | 16 | - |
| footIndexTrajectory | int32 | sequence | 16 | - |
| footPoseTrajectory | kuavo_msgs/footPose | sequence | 8 | - |
| additionalFootPoseTrajectory | kuavo_msgs/footPoses | sequence | 8 | - |
| swingHeightTrajectory | float64 | sequence | 16 | - |

## kuavo_msgs/footPoseTargetTrajectoriesSrvRequest

Symbol: `Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvRequest`. Complete canonical extent: 20..4980 bytes.
Codec identity: `UWVMROS1_7b8db8268aa6bc136f472646224e802e1b4d4db82c02f183666600770dfaa898`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| foot_pose_target_trajectories | kuavo_msgs/footPoseTargetTrajectories | scalar | - | - |

## kuavo_msgs/footPoseTargetTrajectoriesSrvResponse

Symbol: `Ros1Kuavo_msgsFootPoseTargetTrajectoriesSrvResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_30d352e2d02aeac74a6706d55a22f4179ef80b4a3eb66058f1fe197e0cf268ba`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/footPoseWithVision

Symbol: `Ros1Kuavo_msgsFootPoseWithVision`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_4432ebe58b93e7666e007984b4456abad8c425d6583b4b5d8618224e5098bdde`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| footPoseId | int32 | scalar | - | - |
| footIndexTrajectory | int32 | scalar | - | - |
| footPose | float64 | array | 4 | - |

## kuavo_msgs/footPoseWithVisionArray

Symbol: `Ros1Kuavo_msgsFootPoseWithVisionArray`. Complete canonical extent: 20..596 bytes.
Codec identity: `UWVMROS1_66daef8fffa20e968dbf2dfee706c75886a5b13cf70bd841998d2905ec755f55`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| foot_poses | kuavo_msgs/footPoseWithVision | sequence | 8 | - |

## kuavo_msgs/qv

Symbol: `Ros1Kuavo_msgsQv`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_333522100ae5fd407bcd41b20b8062e9b0d45c2e9046b9bbfd8be2d896f40832`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | float64 | sequence | 16 | - |

## kuavo_msgs/fullBodyTargetTrajectories

Symbol: `Ros1Kuavo_msgsFullBodyTargetTrajectories`. Complete canonical extent: 16..2320 bytes.
Codec identity: `UWVMROS1_b25544601584e8fcb8d4f86bfa88497ef92fda02556c95f4a00cfba95ef3733d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timeTrajectory | float64 | sequence | 16 | - |
| footIndexTrajectory | int32 | sequence | 16 | - |
| fullBodyQTrajectory | kuavo_msgs/qv | sequence | 8 | - |
| fullBodyVTrajectory | kuavo_msgs/qv | sequence | 8 | - |

## kuavo_msgs/gaitTimeName

Symbol: `Ros1Kuavo_msgsGaitTimeName`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_92e83b38d53d19dfe6c868ee4aec76f92cf1a6d05f22c67f3507b0db45cc9a20`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| start_time | float32 | scalar | - | - |
| gait_name | string | scalar | 256 | - |

## kuavo_msgs/gestureTask

Symbol: `Ros1Kuavo_msgsGestureTask`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_22aea7a0452228df6e91828fedb88b27a7e029b8e876f022caa7e01f86bef21d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| gesture_name | string | scalar | 256 | - |
| hand_side | int8 | scalar | - | - |

## kuavo_msgs/gestureExecuteRequest

Symbol: `Ros1Kuavo_msgsGestureExecuteRequest`. Complete canonical extent: 4..2092 bytes.
Codec identity: `UWVMROS1_4fbfe488b871889a565e7d2c2dfedfe7b03900306b4c3f12b650440e3ebc3161`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| gestures | kuavo_msgs/gestureTask | sequence | 8 | - |

## kuavo_msgs/gestureExecuteResponse

Symbol: `Ros1Kuavo_msgsGestureExecuteResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_5cb5f5ecc381aac940d267ba0c8db14e41f220c9f0e4332e2166bc8689e6353a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/gestureExecuteStateRequest

Symbol: `Ros1Kuavo_msgsGestureExecuteStateRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_f4854bf91552e06f187d5360b274ca67b7f33e7c3a6bb32b1c1c3c3cdd94acc1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/gestureExecuteStateResponse

Symbol: `Ros1Kuavo_msgsGestureExecuteStateResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_99a396bb215e1c881e9b48cc4f9b4faf0d27c4984c30a9d1a2812cf2cfed3129`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| is_executing | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/gestureInfo

Symbol: `Ros1Kuavo_msgsGestureInfo`. Complete canonical extent: 12..1612 bytes.
Codec identity: `UWVMROS1_cba208289035abede579134d09ac028f8c46af5ffb48a8de8d7e51923ff7e2cf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| gesture_name | string | scalar | 256 | - |
| alias | string | sequence | 16 | - |
| description | string | scalar | 256 | - |

## kuavo_msgs/gestureListRequest

Symbol: `Ros1Kuavo_msgsGestureListRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_06ed0bf9e126c09fe308c390e1fab2a44482d0e4e9ace631b23e5803edb4f64e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/gestureListResponse

Symbol: `Ros1Kuavo_msgsGestureListResponse`. Complete canonical extent: 13..13165 bytes.
Codec identity: `UWVMROS1_b6abc5725fe654f6016fbfcd1c879310435d0da67669a4d3c2e7c1dfbe570e78`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| gesture_count | int32 | scalar | - | - |
| message | string | scalar | 256 | - |
| gesture_infos | kuavo_msgs/gestureInfo | sequence | 8 | - |

## kuavo_msgs/getControllerListRequest

Symbol: `Ros1Kuavo_msgsGetControllerListRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_3fe0e43ef20599c80ccd663069f573fcfd17f26f063dc43e7949f3d14f50175b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/getControllerListResponse

Symbol: `Ros1Kuavo_msgsGetControllerListResponse`. Complete canonical extent: 21..4693 bytes.
Codec identity: `UWVMROS1_2ac6aa5380f13cd2fa02bfdf609cf1fc10b821c90c115e8c2a4d31db3959b7d2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| controller_names | string | sequence | 16 | - |
| count | int32 | scalar | - | - |
| current_index | int32 | scalar | - | - |
| current_controller | string | scalar | 256 | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/getCurrentGaitNameRequest

Symbol: `Ros1Kuavo_msgsGetCurrentGaitNameRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_99c98cfd19410a4c98971ab6ec9309bc7791eb6a539506a82ad73cecca630099`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/getCurrentGaitNameResponse

Symbol: `Ros1Kuavo_msgsGetCurrentGaitNameResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_236aa41df3942d1866e3e4be54a4d76ef8eea5648a7f56a44cb970f46bd43d58`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| gait_name | string | scalar | 256 | - |

## kuavo_msgs/getLbTorsoInitialPoseRequest

Symbol: `Ros1Kuavo_msgsGetLbTorsoInitialPoseRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_ac42d9ece2adbf0dcf74b65a00a7890fe67c1ad757ac236f7a35f055614c15f0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| isNeed | bool | scalar | - | - |

## kuavo_msgs/getLbTorsoInitialPoseResponse

Symbol: `Ros1Kuavo_msgsGetLbTorsoInitialPoseResponse`. Complete canonical extent: 53..309 bytes.
Codec identity: `UWVMROS1_ad14eef4f0317181b2d2477548a7aac0ce71ac12f76d824b8814e50c5de8daaa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| linear | geometry_msgs/Vector3 | scalar | - | - |
| angular | geometry_msgs/Vector3 | scalar | - | - |

## kuavo_msgs/getMotorParamRequest

Symbol: `Ros1Kuavo_msgsGetMotorParamRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_2fcfb1ba499395e8f91e9e222ff3b967715be0d39846fa9a82fa640cbfc5705a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/getMotorParamResponse

Symbol: `Ros1Kuavo_msgsGetMotorParamResponse`. Complete canonical extent: 9..345 bytes.
Codec identity: `UWVMROS1_63c79b06a964d504cf53db65481fd01ef568641075aaa5278af243fe5e50ae01`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| data | kuavo_msgs/motorParam | sequence | 8 | - |

## kuavo_msgs/getMotorZeroPointsRequest

Symbol: `Ros1Kuavo_msgsGetMotorZeroPointsRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_50c631bf3fe8bc8cad2438e235c57752fe8a041985fcd5a4a40b65b9cc847c6a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/getMotorZeroPointsResponse

Symbol: `Ros1Kuavo_msgsGetMotorZeroPointsResponse`. Complete canonical extent: 9..393 bytes.
Codec identity: `UWVMROS1_a8cd5aa6e83a994d12c82a811d2d98de575261b969b10a63161748f83f7cc8c3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| zero_points | float64 | sequence | 16 | - |

## kuavo_msgs/goToZeroPointRequest

Symbol: `Ros1Kuavo_msgsGoToZeroPointRequest`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_297388368bf80461a3fa7ec24cb8c8612dc87c0d371c37a8c2c94f61ebd1f585`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| offset | float64 | sequence | 16 | - |

## kuavo_msgs/goToZeroPointResponse

Symbol: `Ros1Kuavo_msgsGoToZeroPointResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_c288008718185fce79b7f7e3b10a4ce464f0071dc3fcd172adf0b46867a4928a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/handForceLevelRequest

Symbol: `Ros1Kuavo_msgsHandForceLevelRequest`. Complete canonical extent: 2..2 bytes.
Codec identity: `UWVMROS1_230b77fee2f8106d7474b3efd9519482be35ffb7cba8c6b0ea0efefe20cef79c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| force_level | int8 | scalar | - | - |
| hand_side | int8 | scalar | - | - |

Original declared constants: `SMALL=0`, `NORMAL=1`, `FULL=2`, `LEFT_HAND=0`, `RIGHT_HAND=1`, `BOTH_HANDS=2`.

## kuavo_msgs/handForceLevelResponse

Symbol: `Ros1Kuavo_msgsHandForceLevelResponse`. Complete canonical extent: 9..281 bytes.
Codec identity: `UWVMROS1_75742d57c45498fc5127874d3da0821c801b50825687d80089d5c25a58e5a8bd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| force_level | int8 | sequence | 16 | - |

## kuavo_msgs/handPose

Symbol: `Ros1Kuavo_msgsHandPose`. Complete canonical extent: 48..48 bytes.
Codec identity: `UWVMROS1_7242027b488c78f932598168cfaa50b9fa4f0782cbb7820121563a32456f11cc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| z | float64 | scalar | - | - |
| roll | float64 | scalar | - | - |
| pitch | float64 | scalar | - | - |
| yaw | float64 | scalar | - | - |

## kuavo_msgs/headBodyPose

Symbol: `Ros1Kuavo_msgsHeadBodyPose`. Complete canonical extent: 64..64 bytes.
Codec identity: `UWVMROS1_1cd38534a6dc7c226800759b1635db044c60a0976c31a00189a98da82562f639`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| head_pitch | float64 | scalar | - | - |
| head_yaw | float64 | scalar | - | - |
| body_roll | float64 | scalar | - | - |
| body_pitch | float64 | scalar | - | - |
| body_yaw | float64 | scalar | - | - |
| body_x | float64 | scalar | - | - |
| body_y | float64 | scalar | - | - |
| body_height | float64 | scalar | - | - |

## kuavo_msgs/headCtrlMode

Symbol: `Ros1Kuavo_msgsHeadCtrlMode`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_b2de337b9b29045a488f97f3197ffc1e6dfb2a2219cb1c371d0ffec355a8d8a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mode | string | scalar | 256 | - |
| fixed_main_hand | string | scalar | 256 | - |

## kuavo_msgs/ikSolveError

Symbol: `Ros1Kuavo_msgsIkSolveError`. Complete canonical extent: 100..356 bytes.
Codec identity: `UWVMROS1_a54e6d099bee0f41556c4601c13a9e0df9d05953ee61f7f10178ca1e872057a4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| ik_type | string | scalar | 256 | - |
| left_pose_error | kuavo_msgs/handPose | scalar | - | - |
| right_pose_error | kuavo_msgs/handPose | scalar | - | - |

## kuavo_msgs/ikSolveParam

Symbol: `Ros1Kuavo_msgsIkSolveParam`. Complete canonical extent: 65..65 bytes.
Codec identity: `UWVMROS1_74ede5ee2da9047184617c9c592f40e5d434411769e0b6380983dbca95362627`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| major_optimality_tol | float64 | scalar | - | - |
| major_feasibility_tol | float64 | scalar | - | - |
| minor_feasibility_tol | float64 | scalar | - | - |
| major_iterations_limit | float64 | scalar | - | - |
| oritation_constraint_tol | float64 | scalar | - | - |
| pos_constraint_tol | float64 | scalar | - | - |
| pos_cost_weight | float64 | scalar | - | - |
| constraint_mode | uint8 | scalar | - | - |
| elbow_cost_scale | float64 | scalar | - | - |

## kuavo_msgs/imuData

Symbol: `Ros1Kuavo_msgsImuData`. Complete canonical extent: 104..104 bytes.
Codec identity: `UWVMROS1_22e96f18cc9d0e1149698450d21a3eedf1b985ddd6f4fe2bbac38634a3c7749c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| gyro | geometry_msgs/Vector3 | scalar | - | - |
| acc | geometry_msgs/Vector3 | scalar | - | - |
| free_acc | geometry_msgs/Vector3 | scalar | - | - |
| quat | geometry_msgs/Quaternion | scalar | - | - |

## kuavo_msgs/jointBezierTrajectory

Symbol: `Ros1Kuavo_msgsJointBezierTrajectory`. Complete canonical extent: 4..3172 bytes.
Codec identity: `UWVMROS1_3718dad77c1551244538575c1c16cd7c2fa1d1e78d1f3997940d5f229c819215`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| bezier_curve_points | kuavo_msgs/bezierCurveCubicPoint | sequence | 8 | - |

## kuavo_msgs/jointCmd

Symbol: `Ros1Kuavo_msgsJointCmd`. Complete canonical extent: 48..7984 bytes.
Codec identity: `UWVMROS1_88d1fcc2e54ee9bb36f424ca63039670a96154659d3ae9bd4a2014314277b088`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| joint_q | float64 | sequence | 128 | - |
| joint_v | float64 | sequence | 128 | - |
| tau | float64 | sequence | 128 | - |
| tau_max | float64 | sequence | 128 | - |
| tau_ratio | float64 | sequence | 128 | - |
| joint_kp | float64 | sequence | 128 | - |
| joint_kd | float64 | sequence | 128 | - |
| control_modes | int32 | sequence | 128 | - |

## kuavo_msgs/jointData

Symbol: `Ros1Kuavo_msgsJointData`. Complete canonical extent: 16..4112 bytes.
Codec identity: `UWVMROS1_3377e37ae230363d24936f58d080088f5a5e58aa6706b48263dc67b8ada7349f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_q | float64 | sequence | 128 | - |
| joint_v | float64 | sequence | 128 | - |
| joint_vd | float64 | sequence | 128 | - |
| joint_torque | float64 | sequence | 128 | - |

## kuavo_msgs/jointMoveToRequest

Symbol: `Ros1Kuavo_msgsJointMoveToRequest`. Complete canonical extent: 20..148 bytes.
Codec identity: `UWVMROS1_a29a8269f7983673894013deeabe4ccfc84385abc85565d0bbdbfbeca3c583e8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| goal_position | float64 | sequence | 16 | - |
| speed | float64 | scalar | - | - |
| dt | float64 | scalar | - | - |

## kuavo_msgs/jointMoveToResponse

Symbol: `Ros1Kuavo_msgsJointMoveToResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_10b6f17523c01e6ef31fd347e204229d6c7e87c8319817f7b6e5b155de9de66f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/kuavoModeSchedule

Symbol: `Ros1Kuavo_msgsKuavoModeSchedule`. Complete canonical extent: 20..1044 bytes.
Codec identity: `UWVMROS1_a70cfec100b2a48ddc270bdf56a6d45dc749a582aa0e22b2aaf4eec0e070b9fa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| currentTime | float64 | scalar | - | - |
| footPoseSequence | kuavo_msgs/footPose6D | sequence | 8 | - |
| eventTimes | float64 | sequence | 16 | - |
| modeSequence | float64 | sequence | 16 | - |

## kuavo_msgs/lbBaseLinkPoseCmdSrvRequest

Symbol: `Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvRequest`. Complete canonical extent: 114..114 bytes.
Codec identity: `UWVMROS1_72672d25332ed3cd25766e0cd3e94abfde2d0abe95b18220fd2fde98e579201a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| with_chassis | bool | scalar | - | - |
| control_type | int8 | scalar | - | - |
| chassis_info | float64 | array | 3 | - |
| q_lb | float64 | array | 4 | - |
| base_link | float64 | array | 7 | - |

## kuavo_msgs/lbBaseLinkPoseCmdSrvResponse

Symbol: `Ros1Kuavo_msgsLbBaseLinkPoseCmdSrvResponse`. Complete canonical extent: 41..41 bytes.
Codec identity: `UWVMROS1_ec5e17c9390a042edc15be0b3bec564272decf513e7181c39e593b17fd3c8ccf`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| lb_leg | float64 | array | 4 | - |
| time_cost | float64 | scalar | - | - |

## kuavo_msgs/lbLegControlSrvRequest

Symbol: `Ros1Kuavo_msgsLbLegControlSrvRequest`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_12cdc7d74b6bc9503c9ae24337eb8ab029eff2a93f88a0b859f731a5faf1a533`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_joints | float64 | array | 4 | - |
| duration | float64 | scalar | - | - |

## kuavo_msgs/lbLegControlSrvResponse

Symbol: `Ros1Kuavo_msgsLbLegControlSrvResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_8a5e5e933260c3e6d086c0bd022b5019a5589b14aac83fa532cf2e6e0a085314`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/timedPoint

Symbol: `Ros1Kuavo_msgsTimedPoint`. Complete canonical extent: 8..136 bytes.
Codec identity: `UWVMROS1_9abef61d3ddd167b34972416b5ce4899fe6adb720d2b44f46a2a1ec9e2020ac1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| desireTime | float32 | scalar | - | - |
| cmdVec | float64 | sequence | 16 | - |

## kuavo_msgs/lbTimedOfflineTraj

Symbol: `Ros1Kuavo_msgsLbTimedOfflineTraj`. Complete canonical extent: 6..1094 bytes.
Codec identity: `UWVMROS1_af1a5fdbd4a1e23d33ae06c48f41a4b3f5cb3e390bfd8febcb8705939aeb2256`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timedTraj | kuavo_msgs/timedPoint | sequence | 8 | - |
| frame | int8 | scalar | - | - |
| plannerIndex | int8 | scalar | - | - |

## kuavo_msgs/lbMultiTimedOfflineTrajRequest

Symbol: `Ros1Kuavo_msgsLbMultiTimedOfflineTrajRequest`. Complete canonical extent: 4..8756 bytes.
Codec identity: `UWVMROS1_4f37be18deb3287feb1237d7d6dbc90b34a5d3d159c57c111c5991f9f3e09263`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| offlineTraj | kuavo_msgs/lbTimedOfflineTraj | sequence | 8 | - |

## kuavo_msgs/lbMultiTimedOfflineTrajResponse

Symbol: `Ros1Kuavo_msgsLbMultiTimedOfflineTrajResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_602601ea8d7ef86e3a2c2bad5a2078a18c403522180513ccff501c68596f5d80`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| isSuccess | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/timedSingleCmd

Symbol: `Ros1Kuavo_msgsTimedSingleCmd`. Complete canonical extent: 9..137 bytes.
Codec identity: `UWVMROS1_c08c60ff04e6c14af1327b42f580079b00bd5b9d4722d15e52ebf54f62b5553a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| planner_index | int8 | scalar | - | - |
| desireTime | float32 | scalar | - | - |
| cmdVec | float64 | sequence | 16 | - |

## kuavo_msgs/lbMultiTimedPosCmdRequest

Symbol: `Ros1Kuavo_msgsLbMultiTimedPosCmdRequest`. Complete canonical extent: 5..1101 bytes.
Codec identity: `UWVMROS1_09ecf038251456ac6724d19cc51398b63c950eab8261651ccbe1b70082cac923`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timedCmdVec | kuavo_msgs/timedSingleCmd | sequence | 8 | - |
| isSync | bool | scalar | - | - |

## kuavo_msgs/lbMultiTimedPosCmdResponse

Symbol: `Ros1Kuavo_msgsLbMultiTimedPosCmdResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_5e69ff6ebf02c2241db5cca0a0f0749aa9242b1f12c2f5eb1095477f82ffebb7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| isSuccess | bool | scalar | - | - |
| actualTime | float32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/lbTimedPosCmdRequest

Symbol: `Ros1Kuavo_msgsLbTimedPosCmdRequest`. Complete canonical extent: 9..137 bytes.
Codec identity: `UWVMROS1_16d5924a4eacf77e4170844eefd2d1bacfa447868f02bb57c39f90afdedeb17c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| planner_index | int8 | scalar | - | - |
| desireTime | float32 | scalar | - | - |
| cmdVec | float64 | sequence | 16 | - |

## kuavo_msgs/lbTimedPosCmdResponse

Symbol: `Ros1Kuavo_msgsLbTimedPosCmdResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_fe098b1606240056ddc5d203d1740dcf684d767f9638c5328afa00787265822c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| isSuccess | bool | scalar | - | - |
| actualTime | float32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/lejuClawCommand

Symbol: `Ros1Kuavo_msgsLejuClawCommand`. Complete canonical extent: 32..4832 bytes.
Codec identity: `UWVMROS1_61cf224048fbeb23d63a1801ef3b973cde8ac31d09c0f5ea9db0924e12a80deb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| data | kuavo_msgs/endEffectorData | scalar | - | - |

## kuavo_msgs/lejuClawRecoveryRequest

Symbol: `Ros1Kuavo_msgsLejuClawRecoveryRequest`. Complete canonical extent: 16..272 bytes.
Codec identity: `UWVMROS1_9f3fc9f6ef90c574075787ef7857d39b9a94807581dc088e828db7d2dd2ce74c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| direction | string | scalar | 256 | - |
| current | float32 | scalar | - | - |
| duration_ms | int32 | scalar | - | - |
| repeat | int32 | scalar | - | - |

## kuavo_msgs/lejuClawRecoveryResponse

Symbol: `Ros1Kuavo_msgsLejuClawRecoveryResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_1c241829278fbff2ac2cbf8e656c6ea5fa6237a76dcbe0ab8662313f87ad116f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/lejuClawState

Symbol: `Ros1Kuavo_msgsLejuClawState`. Complete canonical extent: 37..4853 bytes.
Codec identity: `UWVMROS1_873d5940af0c6f0fedc5ac43038682fb0b9f8fc9e7044d571d2a8968657ad087`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| state | int8 | sequence | 16 | - |
| data | kuavo_msgs/endEffectorData | scalar | - | - |
| is_high_freq | bool | scalar | - | - |

Original declared constants: `kError=-1`, `kUnknown=0`, `kMoving=1`, `kReached=2`, `kGrabbed=3`.

## kuavo_msgs/lejuClawTarget

Symbol: `Ros1Kuavo_msgsLejuClawTarget`. Complete canonical extent: 41..4969 bytes.
Codec identity: `UWVMROS1_486d61b61edf26e7f93fab2c996b6e2036b1aa9195c19ff9076eddc2dc1b13bb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| data | kuavo_msgs/endEffectorData | scalar | - | - |
| kp | int32 | sequence | 16 | - |
| kd | int32 | sequence | 16 | - |
| zero_kp | bool | scalar | - | - |

## kuavo_msgs/mpc_input

Symbol: `Ros1Kuavo_msgsMpc_input`. Complete canonical extent: 4..516 bytes.
Codec identity: `UWVMROS1_bd1388fba8e1ace866c53ba674fdc9d8b728619d282c22fa4963e0100b91dba6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | float32 | sequence | 128 | - |

## kuavo_msgs/mpc_state

Symbol: `Ros1Kuavo_msgsMpc_state`. Complete canonical extent: 4..516 bytes.
Codec identity: `UWVMROS1_c2111b86d981faa073c2656691837639b1278da2cd82847e95176730147883c8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | float32 | sequence | 128 | - |

## kuavo_msgs/mpc_target_trajectories

Symbol: `Ros1Kuavo_msgsMpc_target_trajectories`. Complete canonical extent: 12..8396 bytes.
Codec identity: `UWVMROS1_ed56d3f768e6916760ebc26369c6f39535fc4451e446c2b7bff43f2755d9c446`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timeTrajectory | float64 | sequence | 16 | - |
| stateTrajectory | kuavo_msgs/mpc_state | sequence | 8 | - |
| inputTrajectory | kuavo_msgs/mpc_input | sequence | 8 | - |

## kuavo_msgs/picoPoseInfo

Symbol: `Ros1Kuavo_msgsPicoPoseInfo`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_389cc7dcc63b71073f207a5688ee803721fd94edd72b24e684008de0fb984166`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/Point | scalar | - | - |
| orientation | geometry_msgs/Quaternion | scalar | - | - |

## kuavo_msgs/picoPoseInfoList

Symbol: `Ros1Kuavo_msgsPicoPoseInfoList`. Complete canonical extent: 14..462 bytes.
Codec identity: `UWVMROS1_777577a782cccf306706ce2b91f7713e81e67c71b413a959ccd548b16dc4af93`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp_ms | int64 | scalar | - | - |
| is_high_confidence | bool | scalar | - | - |
| is_hand_tracking | bool | scalar | - | - |
| poses | kuavo_msgs/picoPoseInfo | sequence | 8 | - |

## kuavo_msgs/picoPoseRetarget

Symbol: `Ros1Kuavo_msgsPicoPoseRetarget`. Complete canonical extent: 648..904 bytes.
Codec identity: `UWVMROS1_c516c64d21d323894b86c39aec7093372adaad3ad24e0c1604d6ce6d60358323`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| base_link_pose | geometry_msgs/Pose | scalar | - | - |
| base_velocity | float64 | array | 6 | - |
| joint_position | float64 | array | 27 | - |
| joint_velocity | float64 | array | 27 | - |
| end_effector_poses | geometry_msgs/Point | array | 4 | - |

## kuavo_msgs/planArmState

Symbol: `Ros1Kuavo_msgsPlanArmState`. Complete canonical extent: 5..5 bytes.
Codec identity: `UWVMROS1_f658938a7d2cab0cdb3714e1330594371711f106f7ff7c9542c1fc5804ed079b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| progress | int32 | scalar | - | - |
| is_finished | bool | scalar | - | - |

## kuavo_msgs/planArmTrajectoryBezierCurveRequest

Symbol: `Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveRequest`. Complete canonical extent: 24..29560 bytes.
Codec identity: `UWVMROS1_bd6f732aaa84ae6643d17e856993945498116ef4e7769e08c5b4855d8d5b4865`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| multi_joint_bezier_trajectory | kuavo_msgs/jointBezierTrajectory | sequence | 8 | - |
| start_frame_time | float64 | scalar | - | - |
| end_frame_time | float64 | scalar | - | - |
| joint_names | string | sequence | 16 | - |

## kuavo_msgs/planArmTrajectoryBezierCurveResponse

Symbol: `Ros1Kuavo_msgsPlanArmTrajectoryBezierCurveResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_00e6a99ebf6d4712e8ec2619535b3490b0d422580d8f1965e33f10543fc27b66`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/planArmTrajectoryCubicSplineRequest

Symbol: `Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineRequest`. Complete canonical extent: 24..8728 bytes.
Codec identity: `UWVMROS1_afc4c22f3fe55c5ca5b63d0f79b292a92e0a55a2021fe4621a3fd22c91a25490`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_trajectory | trajectory_msgs/JointTrajectory | scalar | - | - |

## kuavo_msgs/planArmTrajectoryCubicSplineResponse

Symbol: `Ros1Kuavo_msgsPlanArmTrajectoryCubicSplineResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_774b62fb3350e85125ec570db082a036b108bc5f36483b35b98bd632fc31a6c2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_msgs/playmusicRequest

Symbol: `Ros1Kuavo_msgsPlaymusicRequest`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_2a349ee4a8190253d22453eb1a2455647ec65fbe0ae6461155288c874fcbe76c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| music_number | string | scalar | 256 | - |
| volume | int64 | scalar | - | - |

## kuavo_msgs/playmusicResponse

Symbol: `Ros1Kuavo_msgsPlaymusicResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_e072b42b1fe3c1f478b44656375fb9f1a246b24813126254e12c7a15eb770788`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success_flag | bool | scalar | - | - |

## kuavo_msgs/recordArmHandPose

Symbol: `Ros1Kuavo_msgsRecordArmHandPose`. Complete canonical extent: 272..272 bytes.
Codec identity: `UWVMROS1_96c99a2bc1b6e6925510aeaed151da5676d3bbed7cc3a7b8505cda9a3fd6485f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_pose | kuavo_msgs/armHandPose | scalar | - | - |
| right_pose | kuavo_msgs/armHandPose | scalar | - | - |

## kuavo_msgs/recordmusicRequest

Symbol: `Ros1Kuavo_msgsRecordmusicRequest`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_d076a9e4c8d1fa77a223bfa94e2cf561f611b6096f65b04204b86b2b8324e0bd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| music_number | string | scalar | 256 | - |
| time_out | int64 | scalar | - | - |

## kuavo_msgs/recordmusicResponse

Symbol: `Ros1Kuavo_msgsRecordmusicResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_6c5e189aae3bc1f824a5025b6a4b00cf53c147a9d4a8c44850726e243ae83861`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success_flag | bool | scalar | - | - |

## kuavo_msgs/robotArmQVVD

Symbol: `Ros1Kuavo_msgsRobotArmQVVD`. Complete canonical extent: 12..396 bytes.
Codec identity: `UWVMROS1_1f364a0b8cdd5f9db4a5f83d4c677ad87680b0bbbd8e2f2b114522359dabf04c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| q | float64 | sequence | 16 | - |
| v | float64 | sequence | 16 | - |
| vd | float64 | sequence | 16 | - |

## kuavo_msgs/robotBodyMatrices

Symbol: `Ros1Kuavo_msgsRobotBodyMatrices`. Complete canonical extent: 40..4840 bytes.
Codec identity: `UWVMROS1_13513ef94b12b9fdbba594455112bb5943ead6664b50b3a64428beeed71c6f5d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| timestamp | time | scalar | - | - |
| matrices_data | float64 | sequence | 16 | - |
| num_matrices | uint32 | scalar | - | - |
| body_parts | string | sequence | 16 | - |
| data_source | string | scalar | 256 | - |

## kuavo_msgs/robotHandPosition

Symbol: `Ros1Kuavo_msgsRobotHandPosition`. Complete canonical extent: 24..792 bytes.
Codec identity: `UWVMROS1_3dbded158dee1f75041282790dc3d776f604e03c0335d8e9dc6b38ad136c3575`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_hand_position | uint8 | sequence | 256 | - |
| right_hand_position | uint8 | sequence | 256 | - |

## kuavo_msgs/robotHeadMotionData

Symbol: `Ros1Kuavo_msgsRobotHeadMotionData`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_e3e8d5f01513b9d351f628901cebeb01eb0852e51e91a6fe74da656fb5c751bd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_data | float64 | sequence | 16 | - |

## kuavo_msgs/robotState

Symbol: `Ros1Kuavo_msgsRobotState`. Complete canonical extent: 24..536 bytes.
Codec identity: `UWVMROS1_3a52e2bf289af0445b3f53e85238efd5eb79788aaa5cf32eba0212266c141747`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| q | float64 | sequence | 16 | - |
| v | float64 | sequence | 16 | - |

## kuavo_msgs/robotSwitchPoseRequest

Symbol: `Ros1Kuavo_msgsRobotSwitchPoseRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_140d6e179bf9c5d4ca2b2e42ea4438e5ff8dd59910345e5e46e20db075bc173c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | string | scalar | 256 | - |

## kuavo_msgs/robotSwitchPoseResponse

Symbol: `Ros1Kuavo_msgsRobotSwitchPoseResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_d5095cdc52058e4525c2b7f367352d2cc6e817b0ba3e9b521b29993220b34b82`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## std_msgs/Float64MultiArray

Symbol: `Ros1Std_msgsFloat64MultiArray`. Complete canonical extent: 12..1264 bytes.
Codec identity: `UWVMROS1_505ab8c50603482c78cd75d2961b416f9c15ac5f4f33766ce0c6ddb8811952e0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| layout | std_msgs/MultiArrayLayout | scalar | - | - |
| data | float64 | sequence | 128 | - |

## kuavo_msgs/robotWaistControl

Symbol: `Ros1Kuavo_msgsRobotWaistControl`. Complete canonical extent: 28..1536 bytes.
Codec identity: `UWVMROS1_3e71b95a60d90f00a56eefd1555101c1d0d898963968d1dcfc3d2a1057126b74`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| data | std_msgs/Float64MultiArray | scalar | - | - |

## kuavo_msgs/sensorsData

Symbol: `Ros1Kuavo_msgsSensorsData`. Complete canonical extent: 184..9848 bytes.
Codec identity: `UWVMROS1_23303add22b51fe745c3ba5986a823d979d2f0a548af4701237da30b135bfe22`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| sensor_time | time | scalar | - | - |
| joint_data | kuavo_msgs/jointData | scalar | - | - |
| imu_data | kuavo_msgs/imuData | scalar | - | - |
| end_effector_data | kuavo_msgs/endEffectorData | scalar | - | - |
| FTsensor_data | kuavo_msgs/FTsensorData | scalar | - | - |

## kuavo_msgs/setContactForceInterpParamsRequest

Symbol: `Ros1Kuavo_msgsSetContactForceInterpParamsRequest`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_ea248485955eb6a12dd10962833e4dcbfab36ee4425cc07539567f03fb0e8421`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| transition_time | float64 | scalar | - | - |
| interpolation_speed | float64 | scalar | - | - |

## kuavo_msgs/setContactForceInterpParamsResponse

Symbol: `Ros1Kuavo_msgsSetContactForceInterpParamsResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_cba26e18d897f5bc02217172486e3271bb36da79a1d57feb30507fbc3d393986`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/setHwIntialStateRequest

Symbol: `Ros1Kuavo_msgsSetHwIntialStateRequest`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_625eb67a22347aafcc0ff12a04b1e7a6727a6edf1af25c6fbe756710b0b27389`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| q_intial | float64 | sequence | 16 | - |
| v_intial | float64 | sequence | 16 | - |

## kuavo_msgs/setHwIntialStateResponse

Symbol: `Ros1Kuavo_msgsSetHwIntialStateResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_317d7531d5126d5c2788e3fd2e8de7e4906d14f2972b5625f88c884ffcd6b4ed`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/setMmCtrlFrameRequest

Symbol: `Ros1Kuavo_msgsSetMmCtrlFrameRequest`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_e470a541d808efb7692cd9ca591f0390191b2e18c25931579c10d25a021c5cac`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| frame | int32 | scalar | - | - |

## kuavo_msgs/setMmCtrlFrameResponse

Symbol: `Ros1Kuavo_msgsSetMmCtrlFrameResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_207ff9a5522860a36f1e4157da5e97cc6adab58d388522c6f4038c7f7c249127`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| currentFrame | int32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/setMotorEncoderRoundServiceRequest

Symbol: `Ros1Kuavo_msgsSetMotorEncoderRoundServiceRequest`. Complete canonical extent: 9..9 bytes.
Codec identity: `UWVMROS1_22ad54033813c5e23840d2a3ed11f76e22e22201e9d95fd0d4e7bc3f1cba5a14`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| motor_id | int32 | scalar | - | - |
| direction | int32 | scalar | - | - |
| save_offset | bool | scalar | - | - |

## kuavo_msgs/setMotorEncoderRoundServiceResponse

Symbol: `Ros1Kuavo_msgsSetMotorEncoderRoundServiceResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_006f40ae705ec93b138b9fc1fad8f443a400b94b11d735025923587164221390`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/setRuckigPlannerParamsRequest

Symbol: `Ros1Kuavo_msgsSetRuckigPlannerParamsRequest`. Complete canonical extent: 22..662 bytes.
Codec identity: `UWVMROS1_262e25da01761ab01bc4fbe8b73524553213097645bbb28bc672655e10e91205`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| planner_index | int8 | scalar | - | - |
| velocity_max | float64 | sequence | 16 | - |
| velocity_min | float64 | sequence | 16 | - |
| acceleration_max | float64 | sequence | 16 | - |
| acceleration_min | float64 | sequence | 16 | - |
| jerk_max | float64 | sequence | 16 | - |
| is_sync | bool | scalar | - | - |

## kuavo_msgs/setRuckigPlannerParamsResponse

Symbol: `Ros1Kuavo_msgsSetRuckigPlannerParamsResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_eb63f08d9a4e74bf0bb7f9282d89f72c2b92761929a9b0195ec60d59452f6bc7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/setTagIdRequest

Symbol: `Ros1Kuavo_msgsSetTagIdRequest`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_0ea1935dec369a91e662aedd2d6927e33662bab5e43298b824f1b7de11f1bd7b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| tag_id | int32 | scalar | - | - |

## kuavo_msgs/setTagIdResponse

Symbol: `Ros1Kuavo_msgsSetTagIdResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_72de7136b0a989ae4cb2c44c7571a66693729fba977030208b9a12361d1450b8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| tag_id | int32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/singleStepControlRequest

Symbol: `Ros1Kuavo_msgsSingleStepControlRequest`. Complete canonical extent: 20..4980 bytes.
Codec identity: `UWVMROS1_6607efed62ff2f9c23cab328b64b7c35756962b0bbeb1af0977dcfbdbea2a73b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| foot_pose_target_trajectories | kuavo_msgs/footPoseTargetTrajectories | scalar | - | - |

## kuavo_msgs/singleStepControlResponse

Symbol: `Ros1Kuavo_msgsSingleStepControlResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_b5c0a376b5738f83b1406e895c5db58d5bf81e20506c39beeaa331793d4b0ed0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/stairAlignmentSrvRequest

Symbol: `Ros1Kuavo_msgsStairAlignmentSrvRequest`. Complete canonical extent: 25..25 bytes.
Codec identity: `UWVMROS1_b62638d7e9ff883987a217605c039ac71f9bf9b248e42958e41c44518a4db6ba`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| tag_id | uint8 | scalar | - | - |
| offset_x | float64 | scalar | - | - |
| offset_y | float64 | scalar | - | - |
| offset_yaw | float64 | scalar | - | - |

## kuavo_msgs/stairAlignmentSrvResponse

Symbol: `Ros1Kuavo_msgsStairAlignmentSrvResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_66232d726f1351b04e09fefcfa983a97df0f1844f59b584bcc0130360df3648c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/switchControllerRequest

Symbol: `Ros1Kuavo_msgsSwitchControllerRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_6aa7e95aa6baff80769d12dd04202b9b7ef3b2fcff53f7427601d387f5f52d7a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| controller_name | string | scalar | 256 | - |

## kuavo_msgs/switchControllerResponse

Symbol: `Ros1Kuavo_msgsSwitchControllerResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_f6ade06123cc21d53344151f9cd39e80ac7722d032b398f25432ba323bdfec69`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_msgs/switchGaitByName

Symbol: `Ros1Kuavo_msgsSwitchGaitByName`. Complete canonical extent: 20..532 bytes.
Codec identity: `UWVMROS1_7afbe1b0fa72af5ea4e9ac707669866c77e05e941c0491e17247b9a569c05944`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| gait_name | string | scalar | 256 | - |

## kuavo_msgs/switchToNextControllerRequest

Symbol: `Ros1Kuavo_msgsSwitchToNextControllerRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_73be6d8d17af6f6d92add04f8b7a5a2767e2639ddcb3d63b336320f35327950e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_msgs/switchToNextControllerResponse

Symbol: `Ros1Kuavo_msgsSwitchToNextControllerResponse`. Complete canonical extent: 21..789 bytes.
Codec identity: `UWVMROS1_968c3f7bbfc784eb98ea0ea2dddf0ea4f80a71ffcc8d95f193c819b218e8702f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| current_controller | string | scalar | 256 | - |
| next_controller | string | scalar | 256 | - |
| current_index | int32 | scalar | - | - |
| next_index | int32 | scalar | - | - |

## kuavo_msgs/tagDataArray

Symbol: `Ros1Kuavo_msgsTagDataArray`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_bd1ca7cda22d48d12ee69b784abdf507a8271e04e0555a9372cc5f5ea54fb486`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| tag_ids | int32 | sequence | 16 | - |
| tag_poses | geometry_msgs/Pose | sequence | 8 | - |

## kuavo_msgs/twoArmHandPoseCmd

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseCmd`. Complete canonical extent: 359..615 bytes.
Codec identity: `UWVMROS1_b2de00afe4c247abce8f642ee285e0944e35ea3cf4107b4dacb4b004c03dfbe6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| hand_poses | kuavo_msgs/twoArmHandPose | scalar | - | - |
| use_custom_ik_param | bool | scalar | - | - |
| joint_angles_as_q0 | bool | scalar | - | - |
| ik_param | kuavo_msgs/ikSolveParam | scalar | - | - |
| frame | int32 | scalar | - | - |

## kuavo_msgs/twoArmHandPoseFree

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseFree`. Complete canonical extent: 184..696 bytes.
Codec identity: `UWVMROS1_a4d9e75be28cdbbcf5b930ca7a117dcfb16dc413200391e2bb2dee903a05607d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_pose | kuavo_msgs/armHandPoseFree | scalar | - | - |
| right_pose | kuavo_msgs/armHandPoseFree | scalar | - | - |

## kuavo_msgs/twoArmHandPoseCmdFree

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseCmdFree`. Complete canonical extent: 251..763 bytes.
Codec identity: `UWVMROS1_eaa74e02440a8bd43aa6d75eac26651041af7b84602b72cc17d2cd73c40b3d0d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| hand_poses | kuavo_msgs/twoArmHandPoseFree | scalar | - | - |
| use_custom_ik_param | bool | scalar | - | - |
| joint_angles_as_q0 | bool | scalar | - | - |
| ik_param | kuavo_msgs/ikSolveParam | scalar | - | - |

## kuavo_msgs/twoArmHandPoseCmdFreeSrvRequest

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvRequest`. Complete canonical extent: 251..763 bytes.
Codec identity: `UWVMROS1_6e9adfdc52db0e35c32cf3bc87ca6a02f393833e750c8282b3a6f94ecbc4c144`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| twoArmHandPoseCmdFreeRequest | kuavo_msgs/twoArmHandPoseCmdFree | scalar | - | - |

## kuavo_msgs/twoArmHandPoseCmdFreeSrvResponse

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseCmdFreeSrvResponse`. Complete canonical extent: 202..970 bytes.
Codec identity: `UWVMROS1_c8c8fe2a765c984ede1c8607cb907de1fa060c9e79ad920e0f495e7bd8c82a31`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| with_torso | bool | scalar | - | - |
| q_arm | float64 | sequence | 16 | - |
| q_torso | float64 | sequence | 16 | - |
| time_cost | float64 | scalar | - | - |
| hand_poses | kuavo_msgs/twoArmHandPoseFree | scalar | - | - |

## kuavo_msgs/twoArmHandPoseCmdSrvRequest

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseCmdSrvRequest`. Complete canonical extent: 359..615 bytes.
Codec identity: `UWVMROS1_14d5004996c8ab84c1e5e9c1259bd1d201e2826be4a5dda14c240f7e02ac0bbd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| twoArmHandPoseCmdRequest | kuavo_msgs/twoArmHandPoseCmd | scalar | - | - |

## kuavo_msgs/twoArmHandPoseCmdSrvResponse

Symbol: `Ros1Kuavo_msgsTwoArmHandPoseCmdSrvResponse`. Complete canonical extent: 310..1078 bytes.
Codec identity: `UWVMROS1_fab07467cba381d8e73b0c9c574fe029b01ea29a0673de186eddee01ed7057eb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| with_torso | bool | scalar | - | - |
| q_arm | float64 | sequence | 16 | - |
| q_torso | float64 | sequence | 16 | - |
| time_cost | float64 | scalar | - | - |
| error_reason | string | scalar | 256 | - |
| hand_poses | kuavo_msgs/twoArmHandPose | scalar | - | - |

## kuavo_msgs/xsensePoseInfo

Symbol: `Ros1Kuavo_msgsXsensePoseInfo`. Complete canonical extent: 64..320 bytes.
Codec identity: `UWVMROS1_efeb05e63c1cca8ac28ee7c2fc9f1a2b12d95c3b96994626eb1bc2ff5e727c84`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 256 | - |
| segment_id | uint32 | scalar | - | - |
| position | geometry_msgs/Point | scalar | - | - |
| orientation | geometry_msgs/Quaternion | scalar | - | - |

## kuavo_msgs/xsensePoseInfoList

Symbol: `Ros1Kuavo_msgsXsensePoseInfoList`. Complete canonical extent: 20..2836 bytes.
Codec identity: `UWVMROS1_738bca9fd4602bcc5a2b44b7b00405a07c89a8d056029f8afbf3b116165725f8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| poses | kuavo_msgs/xsensePoseInfo | sequence | 8 | - |

## kuavo_msgs/xsensePoseRetarget

Symbol: `Ros1Kuavo_msgsXsensePoseRetarget`. Complete canonical extent: 648..904 bytes.
Codec identity: `UWVMROS1_1ba734c87905a6a83cfee0bb39f2e55267d51768be9ec64ae6ac652ebec559eb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| base_link_pose | geometry_msgs/Pose | scalar | - | - |
| base_velocity | float64 | array | 6 | - |
| joint_position | float64 | array | 27 | - |
| joint_velocity | float64 | array | 27 | - |
| end_effector_poses | geometry_msgs/Point | array | 4 | - |

## kuavo_msgs/yoloOutputData

Symbol: `Ros1Kuavo_msgsYoloOutputData`. Complete canonical extent: 32..288 bytes.
Codec identity: `UWVMROS1_9ba281150bdac894cd7d0a603896f7b145be3519c05b2748884c884ab39abe05`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| class_name | string | scalar | 256 | - |
| class_id | int32 | scalar | - | - |
| confidence | float32 | scalar | - | - |
| x_pos | float32 | scalar | - | - |
| y_pos | float32 | scalar | - | - |
| height | float32 | scalar | - | - |
| width | float32 | scalar | - | - |
| area_ratio | float32 | scalar | - | - |

## kuavo_msgs/yoloDetection

Symbol: `Ros1Kuavo_msgsYoloDetection`. Complete canonical extent: 20..2580 bytes.
Codec identity: `UWVMROS1_95ad858fbc422a7f9b3ef00b11c78e07e859a76983e69e57c7ce88c88626b3d6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| data | kuavo_msgs/yoloOutputData | sequence | 8 | - |

## kuavo_pico_gmr/AmpJoyRouteRequest

Symbol: `Ros1Kuavo_pico_gmrAmpJoyRouteRequest`. Complete canonical extent: 38..806 bytes.
Codec identity: `UWVMROS1_b496e1da35802ea32c834576fa6d1565bf4aafebd82e2e953654e32614e19dbc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| action | uint8 | scalar | - | - |
| manager_epoch | string | scalar | 256 | - |
| route_generation | uint64 | scalar | - | - |
| reason | uint8 | scalar | - | - |
| controller_event_revision | uint64 | scalar | - | - |
| controller_event_stamp | time | scalar | - | - |
| from_controller | string | scalar | 256 | - |
| to_controller | string | scalar | 256 | - |

Original declared constants: `ACTION_PREPARE=1`, `ACTION_STATUS=2`, `ACTION_ABORT=3`, `REASON_CONTROLLER_EVENT=1`, `REASON_CONTROLLER_QUERY=2`, `REASON_SET_TOPIC_RECOVERY=3`, `REASON_CONVERTER_RECOVERY=4`.

## kuavo_pico_gmr/AmpJoyRouteResponse

Symbol: `Ros1Kuavo_pico_gmrAmpJoyRouteResponse`. Complete canonical extent: 21..533 bytes.
Codec identity: `UWVMROS1_8c5184c18056610e7b6bf1e6edd2a3faf33f7335df94bce91c04968ef3928014`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| ready | bool | scalar | - | - |
| target_connected | bool | scalar | - | - |
| local_barrier_established | bool | scalar | - | - |
| output_button_count | uint8 | scalar | - | - |
| manager_epoch | string | scalar | 256 | - |
| route_generation | uint64 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_ros_interfaces/armTargetPoses

Symbol: `Ros1Kuavo_ros_interfacesArmTargetPoses`. Complete canonical extent: 8..264 bytes.
Codec identity: `UWVMROS1_97f845040396ade2f3e97ab69b22879b06ec1e14b199e8598f28a3be724ed2a2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| times | float64 | sequence | 16 | - |
| values | float64 | sequence | 16 | - |

## kuavo_ros_interfaces/bezierCurveCubicPoint

Symbol: `Ros1Kuavo_ros_interfacesBezierCurveCubicPoint`. Complete canonical extent: 12..396 bytes.
Codec identity: `UWVMROS1_833ae440e34747826f7d67a8152718b7d6066b8003dd190fe992863be7817764`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| end_point | float64 | sequence | 16 | - |
| left_control_point | float64 | sequence | 16 | - |
| right_control_point | float64 | sequence | 16 | - |

## kuavo_ros_interfaces/jointBezierTrajectory

Symbol: `Ros1Kuavo_ros_interfacesJointBezierTrajectory`. Complete canonical extent: 4..3172 bytes.
Codec identity: `UWVMROS1_171cf2fb73e32d7a59b29ff4b94d1954c7b9b53a9d91820990419d27ed95fffb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| bezier_curve_points | kuavo_ros_interfaces/bezierCurveCubicPoint | sequence | 8 | - |

## kuavo_ros_interfaces/ocs2ChangeArmCtrlModeRequest

Symbol: `Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeRequest`. Complete canonical extent: 4..4 bytes.
Codec identity: `UWVMROS1_1bfe2dbd86542e6066404e3c1973c1bfb284a8f65f5559cb8fb3d7718bd1e915`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | int32 | scalar | - | - |

## kuavo_ros_interfaces/ocs2ChangeArmCtrlModeResponse

Symbol: `Ros1Kuavo_ros_interfacesOcs2ChangeArmCtrlModeResponse`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_fbcce1790258668da4aa99848601f7074ffa08539bc4ee9449447ab123387435`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |
| mode | int32 | scalar | - | - |
| message | string | scalar | 256 | - |

## kuavo_ros_interfaces/planArmState

Symbol: `Ros1Kuavo_ros_interfacesPlanArmState`. Complete canonical extent: 5..5 bytes.
Codec identity: `UWVMROS1_5a54f550181f3b855c88fbf7752b1bdd9c8e6ddc68ab877fedb343b0deca0eb9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| progress | int32 | scalar | - | - |
| is_finished | bool | scalar | - | - |

## kuavo_ros_interfaces/planArmTrajectoryBezierCurveRequest

Symbol: `Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveRequest`. Complete canonical extent: 24..29560 bytes.
Codec identity: `UWVMROS1_0000b6a1ced744aa869707acd6f5ba6737d20c039a2b8507c408d6646d72d499`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| multi_joint_bezier_trajectory | kuavo_ros_interfaces/jointBezierTrajectory | sequence | 8 | - |
| start_frame_time | float64 | scalar | - | - |
| end_frame_time | float64 | scalar | - | - |
| joint_names | string | sequence | 16 | - |

## kuavo_ros_interfaces/planArmTrajectoryBezierCurveResponse

Symbol: `Ros1Kuavo_ros_interfacesPlanArmTrajectoryBezierCurveResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_6ae21fa51f8999275503aa598339fa178a2a6b1921fad5cbc3006fdd3d6e4c8c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## kuavo_ros_interfaces/robotHandPosition

Symbol: `Ros1Kuavo_ros_interfacesRobotHandPosition`. Complete canonical extent: 24..792 bytes.
Codec identity: `UWVMROS1_dd50bba79b85c0a712865ed4a2cbb402d9f4904904658be85e36015a20da97c7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| left_hand_position | uint8 | sequence | 256 | - |
| right_hand_position | uint8 | sequence | 256 | - |

## kuavo_ros_interfaces/robotHeadMotionData

Symbol: `Ros1Kuavo_ros_interfacesRobotHeadMotionData`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_ad19b205bead81ac20090763bf2ab60fbfe85485b170f0813eb297077809248c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_data | float64 | sequence | 16 | - |

## kuavo_ros_interfaces/stopPlanArmTrajectoryRequest

Symbol: `Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_aeedc378b282e01b603e63b5d7573e6fe348128c35d5812239c1876c871500ff`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## kuavo_ros_interfaces/stopPlanArmTrajectoryResponse

Symbol: `Ros1Kuavo_ros_interfacesStopPlanArmTrajectoryResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_87c79c603a6c2b4c9d5c3994414a765a8a69539a6a0aeaaae95afe3dc4814e0f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| result | bool | scalar | - | - |

## leju_mobile_base_msgs/BMS

Symbol: `Ros1Leju_mobile_base_msgsBMS`. Complete canonical extent: 69..453 bytes.
Codec identity: `UWVMROS1_5ecd5afcb63528e45be42a925160e9d64c11e19102354e52a79b064660351c4f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| pack_voltage | float32 | scalar | - | - |
| pack_current | float32 | scalar | - | - |
| soc | float32 | scalar | - | - |
| soh | float32 | scalar | - | - |
| cell_count | uint8 | scalar | - | - |
| cell_voltages | float32 | sequence | 16 | - |
| cell_temperatures | float32 | sequence | 16 | - |
| max_cell_voltage | float32 | scalar | - | - |
| min_cell_voltage | float32 | scalar | - | - |
| max_cell_temp | float32 | scalar | - | - |
| min_cell_temp | float32 | scalar | - | - |
| cycle_count | uint32 | scalar | - | - |
| status_flags | uint32 | scalar | - | - |
| error_code | uint32 | scalar | - | - |

## leju_mobile_base_msgs/BaseCmdVelStatus

Symbol: `Ros1Leju_mobile_base_msgsBaseCmdVelStatus`. Complete canonical extent: 22..534 bytes.
Codec identity: `UWVMROS1_fc23abfcc2d6d08caedea4cbfa84ba8da572aab078682f888f378773ffe2df5f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| cmd_vel_effective | bool | scalar | - | - |
| reason | uint8 | scalar | - | - |
| description | string | scalar | 256 | - |

Original declared constants: `REASON_NONE=0`, `REASON_MANUAL_MODE=1`, `REASON_DISABLED=2`, `REASON_SOFT_ESTOP=3`, `REASON_OTHER=255`.

## leju_mobile_base_msgs/MoveToTargetOptions

Symbol: `Ros1Leju_mobile_base_msgsMoveToTargetOptions`. Complete canonical extent: 22..22 bytes.
Codec identity: `UWVMROS1_9663a92439424e065cc52dc2440eea928aa64228a21e3f05017d2209c53305bd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| avoid_enabled | bool | scalar | - | - |
| avoid_distance | float32 | scalar | - | - |
| linear_velocity | float32 | scalar | - | - |
| angular_velocity | float32 | scalar | - | - |
| position_threshold | float32 | scalar | - | - |
| angle_threshold | float32 | scalar | - | - |
| allow_rotation | bool | scalar | - | - |

## leju_mobile_base_msgs/BaseMoveRequest

Symbol: `Ros1Leju_mobile_base_msgsBaseMoveRequest`. Complete canonical extent: 34..34 bytes.
Codec identity: `UWVMROS1_6088af209211fe723a2ef9cc1aa5a584c9bd04b3f6c73839e059dc74bc08561f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | - | - |
| y | float32 | scalar | - | - |
| theta | float32 | scalar | - | - |
| options | leju_mobile_base_msgs/MoveToTargetOptions | scalar | - | - |

## leju_mobile_base_msgs/BaseMoveResponse

Symbol: `Ros1Leju_mobile_base_msgsBaseMoveResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_8ae9b3ad134546dd4446257c683a899c4809434795d1247707a64c0fd1298d96`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| task_id | string | scalar | 256 | - |

## leju_mobile_base_msgs/Battery

Symbol: `Ros1Leju_mobile_base_msgsBattery`. Complete canonical extent: 38..294 bytes.
Codec identity: `UWVMROS1_0f2ac616c13c8c34286c9fb85888ee01a17afc29a47c9910a7d741f358231835`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| voltage | float32 | scalar | - | - |
| current | float32 | scalar | - | - |
| percentage | float32 | scalar | - | - |
| temperature | float32 | scalar | - | - |
| status | uint8 | scalar | - | - |
| time_remaining | int32 | scalar | - | - |
| health | uint8 | scalar | - | - |

Original declared constants: `STATUS_UNKNOWN=0`, `STATUS_CHARGING=1`, `STATUS_DISCHARGING=2`, `STATUS_NOT_CHARGING=3`, `STATUS_FULL=4`.

## leju_mobile_base_msgs/CheckArrivedRequest

Symbol: `Ros1Leju_mobile_base_msgsCheckArrivedRequest`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_1f03497d14422de520ed720ec6a38e4e3ff33f737ca79367ecaaa9fe071a0b8e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_id | string | scalar | 256 | - |
| blocking | bool | scalar | - | - |
| timeout | float32 | scalar | - | - |

## leju_mobile_base_msgs/CheckArrivedResponse

Symbol: `Ros1Leju_mobile_base_msgsCheckArrivedResponse`. Complete canonical extent: 10..266 bytes.
Codec identity: `UWVMROS1_1dacb94e8840976e80a070c6bd70a503df1e540954cfb58c1730e183e2a4dc72`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| arrived | bool | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| status | int32 | scalar | - | - |

## leju_mobile_base_msgs/ControlLaserScanRequest

Symbol: `Ros1Leju_mobile_base_msgsControlLaserScanRequest`. Complete canonical extent: 9..4185 bytes.
Codec identity: `UWVMROS1_4fde496fbac10f7bf33bfeee048ba4f3f65b5c7fd06a1f474b30548ef6f60cbb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| topic_names | string | sequence | 16 | - |
| enable_publishing | bool | sequence | 16 | - |
| control_mode | uint8 | scalar | - | - |

Original declared constants: `MODE_SET=0`, `MODE_ENABLE_ALL=1`, `MODE_DISABLE_ALL=2`.

## leju_mobile_base_msgs/ControlLaserScanResponse

Symbol: `Ros1Leju_mobile_base_msgsControlLaserScanResponse`. Complete canonical extent: 17..4449 bytes.
Codec identity: `UWVMROS1_9e1d1e6334e86362d5d6b32d50ff36d5c919b9af2688c3edfe410bbb10feebf3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| updated_topics | string | sequence | 16 | - |
| current_status | bool | sequence | 16 | - |
| error_code | uint32 | scalar | - | - |

## leju_mobile_base_msgs/DispatchMoveRequest

Symbol: `Ros1Leju_mobile_base_msgsDispatchMoveRequest`. Complete canonical extent: 26..282 bytes.
Codec identity: `UWVMROS1_a7bec9d55830bed3d26b2718571f30188dd2742c15a2fe3974524bc3e30ff794`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target | string | scalar | 256 | - |
| options | leju_mobile_base_msgs/MoveToTargetOptions | scalar | - | - |

## leju_mobile_base_msgs/DispatchMoveResponse

Symbol: `Ros1Leju_mobile_base_msgsDispatchMoveResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_355d963be35564a519cfedac67a6a043385c6455fe382b7e34a8235e12e63799`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| task_id | string | scalar | 256 | - |

## leju_mobile_base_msgs/ExecTaskRequest

Symbol: `Ros1Leju_mobile_base_msgsExecTaskRequest`. Complete canonical extent: 25..7321 bytes.
Codec identity: `UWVMROS1_74776dd167950429fff4ec5baf8775412e4a7b1194a47f2907a49136af6d5d94`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_id | string | scalar | 256 | - |
| task_type | uint8 | scalar | - | - |
| task_name | string | scalar | 256 | - |
| waypoints | geometry_msgs/PoseStamped | sequence | 8 | - |
| parameters | string | sequence | 16 | - |
| priority | float32 | scalar | - | - |
| timeout | float32 | scalar | - | - |

Original declared constants: `TASK_TYPE_NAVIGATION=0`, `TASK_TYPE_DOCKING=1`, `TASK_TYPE_CHARGING=2`, `TASK_TYPE_DELIVERY=3`, `TASK_TYPE_CUSTOM=99`.

## leju_mobile_base_msgs/ExecTaskResponse

Symbol: `Ros1Leju_mobile_base_msgsExecTaskResponse`. Complete canonical extent: 13..525 bytes.
Codec identity: `UWVMROS1_f3ae4321df5893f9e99b3a2e258ab53986c671b94d93fb501f61eb80ce970b9e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| error_code | uint32 | scalar | - | - |
| assigned_task_id | string | scalar | 256 | - |

## leju_mobile_base_msgs/GetGlobalOdometerRequest

Symbol: `Ros1Leju_mobile_base_msgsGetGlobalOdometerRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_99a04f38a22a48ec485be6c7184822492d2e0fb6ef5946d290c2af4b745f52d0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## leju_mobile_base_msgs/GetGlobalOdometerResponse

Symbol: `Ros1Leju_mobile_base_msgsGetGlobalOdometerResponse`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_50a45e288952dd4fe54ff708844ea1b049ae2980d1f3f89d46d0bf81336fda42`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| total_distance_m | float64 | scalar | - | - |
| total_distance_km | float64 | scalar | - | - |
| measured_at | time | scalar | - | - |

## leju_mobile_base_msgs/GetLaserScanListRequest

Symbol: `Ros1Leju_mobile_base_msgsGetLaserScanListRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_8760e4255a0e6393911e45d0fa9b381c53443247e378f4921361307a1393c818`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## leju_mobile_base_msgs/GetLaserScanListResponse

Symbol: `Ros1Leju_mobile_base_msgsGetLaserScanListResponse`. Complete canonical extent: 17..4449 bytes.
Codec identity: `UWVMROS1_bc059d5821821e0d7fbcc574685cb336b465ab0ef5eda52649e75cc6da8b7264`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| topic_names | string | sequence | 16 | - |
| is_publishing | bool | sequence | 16 | - |
| error_code | uint32 | scalar | - | - |

## leju_mobile_base_msgs/HardwareStatus

Symbol: `Ros1Leju_mobile_base_msgsHardwareStatus`. Complete canonical extent: 87..19543 bytes.
Codec identity: `UWVMROS1_893137c1cfd22ed3d4fb5db90dd6ad540a458602ba1d2e0748a3e387d1b29627`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| battery_soc | float32 | scalar | - | - |
| low_battery_alarm | bool | scalar | - | - |
| battery_temperature | float32 | scalar | - | - |
| battery_health | float32 | scalar | - | - |
| driver_status | uint8 | scalar | - | - |
| driver_fault_code | string | sequence | 16 | - |
| driver_fault_message | string | sequence | 16 | - |
| imu_status | uint8 | scalar | - | - |
| imu_fault_code | string | sequence | 16 | - |
| imu_fault_message | string | sequence | 16 | - |
| all_distance | float32 | scalar | - | - |
| odom_status | uint8 | scalar | - | - |
| odom_fault_code | string | sequence | 16 | - |
| odom_fault_message | string | sequence | 16 | - |
| laser_status | uint8 | scalar | - | - |
| laser_fault_code | string | sequence | 16 | - |
| laser_fault_message | string | sequence | 16 | - |
| camera_status | uint8 | scalar | - | - |
| camera_fault_code | string | sequence | 16 | - |
| camera_fault_message | string | sequence | 16 | - |
| robot_status | uint8 | scalar | - | - |
| robot_fault_code | string | sequence | 16 | - |
| robot_fault_message | string | sequence | 16 | - |

## leju_mobile_base_msgs/Information

Symbol: `Ros1Leju_mobile_base_msgsInformation`. Complete canonical extent: 44..9900 bytes.
Codec identity: `UWVMROS1_352be9fbc7a5e7dce370dccf518c0254956adba3531408d79cad669c18eaeab5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| firmware_version | string | scalar | 256 | - |
| hardware_version | string | scalar | 256 | - |
| controller_id | string | scalar | 256 | - |
| serial_number | string | scalar | 256 | - |
| build_date | string | scalar | 256 | - |
| param_names | string | sequence | 16 | - |
| param_values | string | sequence | 16 | - |

## leju_mobile_base_msgs/LED

Symbol: `Ros1Leju_mobile_base_msgsLED`. Complete canonical extent: 10..10 bytes.
Codec identity: `UWVMROS1_e9725b60f7c284e08d91be5176f55c403d1f390561a5df2e597d797e35cc6e9b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| mode | uint8 | scalar | - | - |
| red | uint8 | scalar | - | - |
| green | uint8 | scalar | - | - |
| blue | uint8 | scalar | - | - |
| brightness | uint8 | scalar | - | - |
| speed | uint8 | scalar | - | - |
| frequency | float32 | scalar | - | - |

Original declared constants: `MODE_OFF=0`, `MODE_SOLID=1`, `MODE_BLINK=2`, `MODE_BREATH=3`, `MODE_RAINBOW=4`, `MODE_CHASE=5`.

## leju_mobile_base_msgs/LiftControl3Feedback

Symbol: `Ros1Leju_mobile_base_msgsLiftControl3Feedback`. Complete canonical extent: 18..18 bytes.
Codec identity: `UWVMROS1_c330ee6d960ed2e4eb77758a3c1544bb323f8200782de9b079593efeee30d048`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| current_position | float32 | scalar | - | - |
| target_position | float32 | scalar | - | - |
| velocity | float32 | scalar | - | - |
| status | uint8 | scalar | - | - |
| progress | uint8 | scalar | - | - |
| error_code | uint32 | scalar | - | - |

Original declared constants: `STATUS_IDLE=0`, `STATUS_MOVING_UP=1`, `STATUS_MOVING_DOWN=2`, `STATUS_HOLDING=3`, `STATUS_ERROR=4`.

## leju_mobile_base_msgs/LiftControl3Goal

Symbol: `Ros1Leju_mobile_base_msgsLiftControl3Goal`. Complete canonical extent: 25..25 bytes.
Codec identity: `UWVMROS1_5010015d2dcbcfd757d916bc7e9ca3813ffd02ed9f9a57c7810dcd95db2473c7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| target_position | float32 | scalar | - | - |
| max_velocity | float32 | scalar | - | - |
| max_acceleration | float32 | scalar | - | - |
| position_tolerance | float32 | scalar | - | - |
| control_mode | uint8 | scalar | - | - |
| target_force | float32 | scalar | - | - |
| timeout | float32 | scalar | - | - |

Original declared constants: `MODE_POSITION=0`, `MODE_VELOCITY=1`, `MODE_FORCE=2`.

## leju_mobile_base_msgs/LiftControl3Result

Symbol: `Ros1Leju_mobile_base_msgsLiftControl3Result`. Complete canonical extent: 17..273 bytes.
Codec identity: `UWVMROS1_b8ff817a12dee5de61fda25c5a381277463a6f99cdaac51af443a94710c6eb0c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| final_position | float32 | scalar | - | - |
| result | uint8 | scalar | - | - |
| error_code | uint32 | scalar | - | - |
| error_msg | string | scalar | 256 | - |
| execution_time | float32 | scalar | - | - |

Original declared constants: `RESULT_SUCCESS=0`, `RESULT_FAILED=1`, `RESULT_TIMEOUT=2`, `RESULT_CANCELLED=3`, `RESULT_OUT_OF_RANGE=4`.

## leju_mobile_base_msgs/LiftStatus

Symbol: `Ros1Leju_mobile_base_msgsLiftStatus`. Complete canonical extent: 47..559 bytes.
Codec identity: `UWVMROS1_c7e73731cc14f27209320edfe8d05d5d2582e4d65d414f45066bac67744244e8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| current_height | float32 | scalar | - | - |
| target_height | float32 | scalar | - | - |
| min_height | float32 | scalar | - | - |
| max_height | float32 | scalar | - | - |
| velocity | float32 | scalar | - | - |
| is_enabled | bool | scalar | - | - |
| is_calibrated | bool | scalar | - | - |
| state | uint8 | scalar | - | - |
| error_code | uint32 | scalar | - | - |
| error_msg | string | scalar | 256 | - |

Original declared constants: `STATE_UNKNOWN=0`, `STATE_IDLE=1`, `STATE_MOVING_UP=2`, `STATE_MOVING_DOWN=3`, `STATE_HOLDING=4`, `STATE_ERROR=5`.

## leju_mobile_base_msgs/MoveBaseActionGoal

Symbol: `Ros1Leju_mobile_base_msgsMoveBaseActionGoal`. Complete canonical extent: 114..882 bytes.
Codec identity: `UWVMROS1_859abb2603e8bf9bc6b80737e781061f5f0f26f4572b4d389fcf7fd5a4eb83a4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| goal_id | string | scalar | 256 | - |
| target_pose | geometry_msgs/PoseStamped | scalar | - | - |
| max_linear_vel | float32 | scalar | - | - |
| max_angular_vel | float32 | scalar | - | - |
| position_tolerance | float32 | scalar | - | - |
| orientation_tolerance | float32 | scalar | - | - |
| navigation_mode | uint8 | scalar | - | - |
| ignore_orientation | bool | scalar | - | - |
| timeout | float32 | scalar | - | - |

Original declared constants: `MODE_NORMAL=0`, `MODE_CAREFUL=1`, `MODE_FAST=2`.

## leju_mobile_base_msgs/MoveToTargetRequest

Symbol: `Ros1Leju_mobile_base_msgsMoveToTargetRequest`. Complete canonical extent: 34..34 bytes.
Codec identity: `UWVMROS1_295e988de4c4693ab477756bcc4a4d6448230de2ba62339a14e322950c65ed64`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | - | - |
| y | float32 | scalar | - | - |
| theta | float32 | scalar | - | - |
| options | leju_mobile_base_msgs/MoveToTargetOptions | scalar | - | - |

## leju_mobile_base_msgs/MoveToTargetResponse

Symbol: `Ros1Leju_mobile_base_msgsMoveToTargetResponse`. Complete canonical extent: 9..521 bytes.
Codec identity: `UWVMROS1_3a03fe3eb268239605c030d29bff1cc7a67e7b6a27c065a05be4562619440757`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| task_id | string | scalar | 256 | - |

## leju_mobile_base_msgs/NavigationModeGoal

Symbol: `Ros1Leju_mobile_base_msgsNavigationModeGoal`. Complete canonical extent: 3..3 bytes.
Codec identity: `UWVMROS1_8d0f6ac4a2ba103c3e4c454b22b50dbe39ea9e5163ab5138b3094f8c9fdcf1f9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| navigation_mode | uint8 | scalar | - | - |
| mode_parameter | uint8 | scalar | - | - |
| persist_mode | bool | scalar | - | - |

Original declared constants: `MODE_NORMAL=0`, `MODE_CAREFUL=1`, `MODE_FAST=2`, `MODE_TIGHT_SPACE=3`, `MODE_DOCK=4`.

## leju_mobile_base_msgs/Parameter

Symbol: `Ros1Leju_mobile_base_msgsParameter`. Complete canonical extent: 81..401 bytes.
Codec identity: `UWVMROS1_b09c75c56ca378dcc08c723ee5c911d03191ea58296ef214f7a44ff65fd2cf6c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| wheel_base | float32 | scalar | - | - |
| track_width | float32 | scalar | - | - |
| wheel_radius | float32 | scalar | - | - |
| max_linear_vel | float32 | scalar | - | - |
| max_angular_vel | float32 | scalar | - | - |
| max_linear_acc | float32 | scalar | - | - |
| max_angular_acc | float32 | scalar | - | - |
| motor_count | uint8 | scalar | - | - |
| motor_ratios | float32 | sequence | 16 | - |
| pid_linear_p | float32 | scalar | - | - |
| pid_linear_i | float32 | scalar | - | - |
| pid_linear_d | float32 | scalar | - | - |
| pid_angular_p | float32 | scalar | - | - |
| pid_angular_i | float32 | scalar | - | - |
| pid_angular_d | float32 | scalar | - | - |
| safety_stop_distance | float32 | scalar | - | - |
| slow_down_distance | float32 | scalar | - | - |

## leju_mobile_base_msgs/ResetTemporaryOdometerRequest

Symbol: `Ros1Leju_mobile_base_msgsResetTemporaryOdometerRequest`. Complete canonical extent: 8..520 bytes.
Codec identity: `UWVMROS1_8bb35f59026ca6385da33a4c86f58042897083c9418825fcba097d8dee2d2a52`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| task_id | string | scalar | 256 | - |
| requester | string | scalar | 256 | - |

## leju_mobile_base_msgs/ResetTemporaryOdometerResponse

Symbol: `Ros1Leju_mobile_base_msgsResetTemporaryOdometerResponse`. Complete canonical extent: 21..277 bytes.
Codec identity: `UWVMROS1_7360918f159601fcc66ffd1f9a46286ebea582b4b96cb0a361b086abd5ccc522`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| distance_before_reset_m | float64 | scalar | - | - |
| reset_time | time | scalar | - | - |

## leju_mobile_base_msgs/RobotStatus

Symbol: `Ros1Leju_mobile_base_msgsRobotStatus`. Complete canonical extent: 31..799 bytes.
Codec identity: `UWVMROS1_e8585cf2e66624a2359e34f11cca3b811b388e46a54ed91102ee329327ea62ca`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| mode | uint8 | scalar | - | - |
| task_status | uint8 | scalar | - | - |
| task_id | string | scalar | 256 | - |
| progress | uint8 | scalar | - | - |
| error_code | uint32 | scalar | - | - |
| error_msg | string | scalar | 256 | - |

Original declared constants: `MODE_IDLE=0`, `MODE_MANUAL=1`, `MODE_AUTO=2`, `MODE_ERROR=3`, `TASK_NONE=0`, `TASK_RUNNING=1`, `TASK_PAUSED=2`, `TASK_COMPLETED=3`, `TASK_FAILED=4`.

## leju_mobile_base_msgs/SetDispatchModeRequest

Symbol: `Ros1Leju_mobile_base_msgsSetDispatchModeRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_8cd6f393f131ef1b32924a4eaa9a534b3ed45392589cfd42ab1ed3459d6663d5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| control_mode | uint8 | scalar | - | - |

## leju_mobile_base_msgs/SetDispatchModeResponse

Symbol: `Ros1Leju_mobile_base_msgsSetDispatchModeResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_d80977c78bcc3720cb22332a9699c6a9a0e7f867c88e540cf3978b0cc83553c0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## leju_mobile_base_msgs/SetMapServerRequest

Symbol: `Ros1Leju_mobile_base_msgsSetMapServerRequest`. Complete canonical extent: 11..523 bytes.
Codec identity: `UWVMROS1_bd963aa394a550c16c364de75d1c27141171face3ee56de59acf1ec9e3acdc97`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_name | string | scalar | 256 | - |
| map_path | string | scalar | 256 | - |
| load_immediately | bool | scalar | - | - |
| save_current_pose | bool | scalar | - | - |
| switching_mode | uint8 | scalar | - | - |

Original declared constants: `MODE_REPLACE=0`, `MODE_MERGE=1`, `MODE_OVERLAY=2`.

## leju_mobile_base_msgs/SetMapServerResponse

Symbol: `Ros1Leju_mobile_base_msgsSetMapServerResponse`. Complete canonical extent: 85..853 bytes.
Codec identity: `UWVMROS1_07338cc9283fd0fab08b0ac371353e22077690eab7309a88c1ef9e3537f4dc5b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |
| error_code | uint32 | scalar | - | - |
| active_map_name | string | scalar | 256 | - |
| initial_pose | geometry_msgs/PoseStamped | scalar | - | - |

## leju_mobile_base_msgs/StartLocalizationRequest

Symbol: `Ros1Leju_mobile_base_msgsStartLocalizationRequest`. Complete canonical extent: 25..25 bytes.
Codec identity: `UWVMROS1_f31e881138598c8c487adf458a1d858fd73b21cd4716dd63bdda896b565c7116`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| enable | bool | scalar | - | - |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| theta | float64 | scalar | - | - |

## leju_mobile_base_msgs/StartLocalizationResponse

Symbol: `Ros1Leju_mobile_base_msgsStartLocalizationResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_544bd2a4f941512b0d278dba39f36066ad7e3b04da37acb535b2910efe7457d5`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## leju_mobile_base_msgs/StepControlGoal

Symbol: `Ros1Leju_mobile_base_msgsStepControlGoal`. Complete canonical extent: 70..70 bytes.
Codec identity: `UWVMROS1_3a8801fcedf6f173d35031ad4c4a681f608f250692c283698ba07e2a0d247a78`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| command_type | uint8 | scalar | - | - |
| velocity | geometry_msgs/Twist | scalar | - | - |
| target_distance | float32 | scalar | - | - |
| max_velocity | float32 | scalar | - | - |
| max_acceleration | float32 | scalar | - | - |
| tolerance | float32 | scalar | - | - |
| hold_position | bool | scalar | - | - |
| timeout | float32 | scalar | - | - |

Original declared constants: `CMD_STOP=0`, `CMD_FORWARD=1`, `CMD_BACKWARD=2`, `CMD_ROTATE_LEFT=3`, `CMD_ROTATE_RIGHT=4`, `CMD_CUSTOM=5`.

## leju_mobile_base_msgs/SyncCostmapRequest

Symbol: `Ros1Leju_mobile_base_msgsSyncCostmapRequest`. Complete canonical extent: 3..3 bytes.
Codec identity: `UWVMROS1_847bda1b17d57f07bb26e3e8d6979bca8b3d063d98f9a9ccb5c9568d77d2465d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| publish_global_costmap | bool | scalar | - | - |
| publish_local_costmap | bool | scalar | - | - |
| publish_incremental_updates | bool | scalar | - | - |

## leju_mobile_base_msgs/SyncCostmapResponse

Symbol: `Ros1Leju_mobile_base_msgsSyncCostmapResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_753a053dff8383274686de510ef920532ee3cbb6d4f5f346774b587d1ea77e94`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## leju_mobile_base_msgs/TaskDetailStatus

Symbol: `Ros1Leju_mobile_base_msgsTaskDetailStatus`. Complete canonical extent: 49..881 bytes.
Codec identity: `UWVMROS1_3bcd8911bfbfa987dbd8a22a7e92546862215e9cb4bc5ae2f3e254381bc9f121`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| task_id | string | scalar | 256 | - |
| current_waypoint_index | uint32 | scalar | - | - |
| passed_waypoints | uint32 | sequence | 16 | - |
| total_waypoints | uint32 | scalar | - | - |
| estimated_time_remaining | float32 | scalar | - | - |
| distance_to_next_waypoint | float32 | scalar | - | - |
| task_status | uint8 | scalar | - | - |
| error_code | uint32 | scalar | - | - |
| error_msg | string | scalar | 256 | - |

Original declared constants: `TASK_NONE=0`, `TASK_RUNNING=1`, `TASK_PAUSED=2`, `TASK_COMPLETED=3`, `TASK_FAILED=4`.

## motioncapture/ForcePlateData

Symbol: `Ros1MotioncaptureForcePlateData`. Complete canonical extent: 24..280 bytes.
Codec identity: `UWVMROS1_e7ef4632661a80660bd892281e4f820842d293103892d82934522eb165089930`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| frame | int32 | scalar | - | - |
| plate_id | int32 | scalar | - | - |
| Fxyz | float64 | sequence | 16 | - |
| xyz | float64 | sequence | 16 | - |
| Mfree | float64 | scalar | - | - |

## network_monitor/NetworkPingRequest

Symbol: `Ros1Network_monitorNetworkPingRequest`. Complete canonical extent: 8..8 bytes.
Codec identity: `UWVMROS1_c76fdf02624613021df1dde84435640759d522c9cbfef93377d65c4da68b6424`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp | float64 | scalar | - | - |

## network_monitor/NetworkPingResponse

Symbol: `Ros1Network_monitorNetworkPingResponse`. Complete canonical extent: 13..269 bytes.
Codec identity: `UWVMROS1_9f818cf04a6515748cfda9f8f8ebd323500f1b4c69687c53388d9dc89b96695e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp | float64 | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## network_monitor/NetworkPingMsg

Symbol: `Ros1Network_monitorNetworkPingMsg`. Complete canonical extent: 17..273 bytes.
Codec identity: `UWVMROS1_fea34714c4490be02928a28270b020ce60e0e59c06e91017029e13a86c4f5885`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| request_id | int32 | scalar | - | - |
| timestamp | float64 | scalar | - | - |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## nimservos_controller/motor_cmd

Symbol: `Ros1Nimservos_controllerMotor_cmd`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_0ba0f7cb1224af45f72675d5c50fef6885acf4da2052af836c4050cfaac42ade`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| linear_x | int64 | scalar | - | - |
| linear_y | int64 | scalar | - | - |

## nimservos_controller/motor_state

Symbol: `Ros1Nimservos_controllerMotor_state`. Complete canonical extent: 26..538 bytes.
Codec identity: `UWVMROS1_67369c975c98e8bf8c7a77c9c2d129ed14d9a5a4892cdaab0037a614ddc81a5b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| device_id | int32 | scalar | - | - |
| control_mode | string | scalar | 256 | - |
| state | string | scalar | 256 | - |
| sensor_position | int64 | scalar | - | - |
| sensor_velocity | int32 | scalar | - | - |
| sensor_temp | int16 | scalar | - | - |

## nlink_parser/IotFrame0Node

Symbol: `Ros1Nlink_parserIotFrame0Node`. Complete canonical extent: 28..284 bytes.
Codec identity: `UWVMROS1_6c60ca30e0e00ce014fdf8e8103cdb58f17053d01d13c20b60db11db8fe31993`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| uid | uint32 | scalar | - | - |
| dis | float32 | scalar | - | - |
| aoa_angle_horizontal | float32 | scalar | - | - |
| aoa_angle_vertical | float32 | scalar | - | - |
| fp_rssi | float32 | scalar | - | - |
| rx_rssi | float32 | scalar | - | - |
| user_data | string | scalar | 256 | - |

## nlink_parser/IotFrame0

Symbol: `Ros1Nlink_parserIotFrame0`. Complete canonical extent: 13..2285 bytes.
Codec identity: `UWVMROS1_f9374a7b69be82e8ee93132d2be6132e4901f32863fb7938d2af17b21d43e0f3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| uid | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| io_status | uint8 | scalar | - | - |
| nodes | nlink_parser/IotFrame0Node | sequence | 8 | - |

## nlink_parser/LinktrackTag

Symbol: `Ros1Nlink_parserLinktrackTag`. Complete canonical extent: 46..46 bytes.
Codec identity: `UWVMROS1_1313c238498fc689cf9fdc603f7ac91062aca481bff5a7e4c282af0c3fc44694`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| pos_3d | float32 | array | 3 | - |
| dis_arr | float32 | array | 8 | - |

## nlink_parser/LinktrackAnchorframe0

Symbol: `Ros1Nlink_parserLinktrackAnchorframe0`. Complete canonical extent: 18..386 bytes.
Codec identity: `UWVMROS1_31b31e307fea711add727566eaa5791d4a3e4fb75e949af2890a1650260da7b0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| nodes | nlink_parser/LinktrackTag | sequence | 8 | - |

## nlink_parser/LinktrackAoaNode0

Symbol: `Ros1Nlink_parserLinktrackAoaNode0`. Complete canonical extent: 18..18 bytes.
Codec identity: `UWVMROS1_b019b95f03ec635e8319d6c3f2ea4d77bb9001ab054aea2f15afb2e55f6767b7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| dis | float32 | scalar | - | - |
| angle | float32 | scalar | - | - |
| fp_rssi | float32 | scalar | - | - |
| rx_rssi | float32 | scalar | - | - |

## nlink_parser/LinktrackAoaNodeframe0

Symbol: `Ros1Nlink_parserLinktrackAoaNodeframe0`. Complete canonical extent: 18..162 bytes.
Codec identity: `UWVMROS1_c7ae90d747b6ee44750a53ebb3c982293179a1b0815c924b3abb5864953e6fa6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| nodes | nlink_parser/LinktrackAoaNode0 | sequence | 8 | - |

## nlink_parser/LinktrackNode0

Symbol: `Ros1Nlink_parserLinktrackNode0`. Complete canonical extent: 6..262 bytes.
Codec identity: `UWVMROS1_d82f50e1b623d4b24ebbc5985d03314cc0e7eff4756cce5ce2271112cdfcebce`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| data | uint8 | sequence | 256 | - |

## nlink_parser/LinktrackNode1

Symbol: `Ros1Nlink_parserLinktrackNode1`. Complete canonical extent: 14..14 bytes.
Codec identity: `UWVMROS1_9789b48575ab6ef9713ee56a2bfd05a5a3079ec6fbcf9d3ce7bd3e2b991d5bef`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| pos_3d | float32 | array | 3 | - |

## nlink_parser/LinktrackNode2

Symbol: `Ros1Nlink_parserLinktrackNode2`. Complete canonical extent: 14..14 bytes.
Codec identity: `UWVMROS1_c0e124f1ab05da79f895f76e4a3aa047b588b136c50ab023cdaaa34b246f9076`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| dis | float32 | scalar | - | - |
| fp_rssi | float32 | scalar | - | - |
| rx_rssi | float32 | scalar | - | - |

## nlink_parser/LinktrackNode4Anchor

Symbol: `Ros1Nlink_parserLinktrackNode4Anchor`. Complete canonical extent: 5..5 bytes.
Codec identity: `UWVMROS1_e38f8c5c5eeb964ee53b95ba23457586c9bbe8cbb40806c6b7e11cbe085e4a91`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| id | uint8 | scalar | - | - |
| dis | float32 | scalar | - | - |

## nlink_parser/LinktrackNode4Tag

Symbol: `Ros1Nlink_parserLinktrackNode4Tag`. Complete canonical extent: 9..49 bytes.
Codec identity: `UWVMROS1_88e4a347b1f7d898e76a7e4a38cd87b296d501bc62619fef532f077c1a5e5b71`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| id | uint8 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| anchors | nlink_parser/LinktrackNode4Anchor | sequence | 8 | - |

## nlink_parser/LinktrackNode5

Symbol: `Ros1Nlink_parserLinktrackNode5`. Complete canonical extent: 17..17 bytes.
Codec identity: `UWVMROS1_2b540f35cfc48b799e4c0ec371352fe14a666e4712d6525aa9159790ffa9ad2f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint32 | scalar | - | - |
| dis | float32 | scalar | - | - |
| fp_rssi | float32 | scalar | - | - |
| rx_rssi | float32 | scalar | - | - |

## nlink_parser/LinktrackNode6

Symbol: `Ros1Nlink_parserLinktrackNode6`. Complete canonical extent: 9..265 bytes.
Codec identity: `UWVMROS1_e628121146b5539270c84e7f2d9d2febd2d016c77ecbb6b683e8568ffebf9dd4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint32 | scalar | - | - |
| data | uint8 | sequence | 256 | - |

## nlink_parser/LinktrackNodeframe0

Symbol: `Ros1Nlink_parserLinktrackNodeframe0`. Complete canonical extent: 6..2102 bytes.
Codec identity: `UWVMROS1_d52f67f7a97929fcc86b851b928cd78fb661b8399ef7a01cc7961d6db16b8c2a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| nodes | nlink_parser/LinktrackNode0 | sequence | 8 | - |

## nlink_parser/LinktrackNodeframe1

Symbol: `Ros1Nlink_parserLinktrackNodeframe1`. Complete canonical extent: 18..130 bytes.
Codec identity: `UWVMROS1_932012b6f61f02afc460cdfd988d1cbeeff2259eaef0c6028c514ddfb2110e37`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| nodes | nlink_parser/LinktrackNode1 | sequence | 8 | - |

## nlink_parser/LinktrackNodeframe2

Symbol: `Ros1Nlink_parserLinktrackNodeframe2`. Complete canonical extent: 106..218 bytes.
Codec identity: `UWVMROS1_8a42ec243ba2f497b7ba5a48854f63f5da2141f8ebd8661577e02dc2d6bc7440`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| pos_3d | float32 | array | 3 | - |
| eop_3d | float32 | array | 3 | - |
| vel_3d | float32 | array | 3 | - |
| angle_3d | float32 | array | 3 | - |
| quaternion | float32 | array | 4 | - |
| imu_gyro_3d | float32 | array | 3 | - |
| imu_acc_3d | float32 | array | 3 | - |
| nodes | nlink_parser/LinktrackNode2 | sequence | 8 | - |

## nlink_parser/LinktrackNodeframe3

Symbol: `Ros1Nlink_parserLinktrackNodeframe3`. Complete canonical extent: 18..130 bytes.
Codec identity: `UWVMROS1_ab2f6e3b7a0c3f0461e70459ac96f9b96d54eaf9db6c6261670d3d9a95138c7c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| nodes | nlink_parser/LinktrackNode2 | sequence | 8 | - |

## nlink_parser/LinktrackNodeframe4

Symbol: `Ros1Nlink_parserLinktrackNodeframe4`. Complete canonical extent: 18..410 bytes.
Codec identity: `UWVMROS1_efbf3229eec7a96bf3e8f2fa39930e1a967e244f7a00578a9862bee4bf8d9e29`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| tags | nlink_parser/LinktrackNode4Tag | sequence | 8 | - |

## nlink_parser/LinktrackNodeframe5

Symbol: `Ros1Nlink_parserLinktrackNodeframe5`. Complete canonical extent: 21..157 bytes.
Codec identity: `UWVMROS1_cda6c090504cb171ea69e6913386ac6b9cbdf5e64a07296f1e3d3686b39cb5ae`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint32 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| nodes | nlink_parser/LinktrackNode5 | sequence | 8 | - |

## nlink_parser/LinktrackNodeframe6

Symbol: `Ros1Nlink_parserLinktrackNodeframe6`. Complete canonical extent: 9..2129 bytes.
Codec identity: `UWVMROS1_e438b25ee7cc6b79857819e51aefaef704b99fc0e7a6bc7f37a4e43dbd321211`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint32 | scalar | - | - |
| nodes | nlink_parser/LinktrackNode6 | sequence | 8 | - |

## nlink_parser/LinktrackTagframe0

Symbol: `Ros1Nlink_parserLinktrackTagframe0`. Complete canonical extent: 134..134 bytes.
Codec identity: `UWVMROS1_bca695ff6973552184fe842d7e6c1c3881b981ca7681bc2758458bbf5f89b7bd`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| role | uint8 | scalar | - | - |
| id | uint8 | scalar | - | - |
| local_time | uint32 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| voltage | float32 | scalar | - | - |
| pos_3d | float32 | array | 3 | - |
| eop_3d | float32 | array | 3 | - |
| vel_3d | float32 | array | 3 | - |
| dis_arr | float32 | array | 8 | - |
| angle_3d | float32 | array | 3 | - |
| quaternion | float32 | array | 4 | - |
| imu_gyro_3d | float32 | array | 3 | - |
| imu_acc_3d | float32 | array | 3 | - |

## nlink_parser/TofsenseFrame0

Symbol: `Ros1Nlink_parserTofsenseFrame0`. Complete canonical extent: 13..13 bytes.
Codec identity: `UWVMROS1_7055915ce923839d76e5eded20b40e1aa7d95c9cdbf23973c6a522a7ae1826a1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| id | uint8 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| dis | float32 | scalar | - | - |
| dis_status | uint8 | scalar | - | - |
| signal_strength | uint16 | scalar | - | - |
| range_precision | uint8 | scalar | - | - |

## nlink_parser/TofsenseCascade

Symbol: `Ros1Nlink_parserTofsenseCascade`. Complete canonical extent: 4..108 bytes.
Codec identity: `UWVMROS1_8deb19890056e86ef4f670c0e8ccccf0b60e50d8c1c84436c693790f9e3c78ec`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| nodes | nlink_parser/TofsenseFrame0 | sequence | 8 | - |

## nlink_parser/TofsenseMFrame0Pixel

Symbol: `Ros1Nlink_parserTofsenseMFrame0Pixel`. Complete canonical extent: 7..7 bytes.
Codec identity: `UWVMROS1_3dd391c2d1057d91a06a585c6be40bc733ed97cd27d7c1c79d6b90c0ec432eb4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| dis | float32 | scalar | - | - |
| dis_status | uint8 | scalar | - | - |
| signal_strength | uint16 | scalar | - | - |

## nlink_parser/TofsenseMFrame0

Symbol: `Ros1Nlink_parserTofsenseMFrame0`. Complete canonical extent: 10..66 bytes.
Codec identity: `UWVMROS1_2cceeaeda033d4c522163c3f8191c086012c4adf9cc65560c7ed8cbd0edcc95c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| id | uint8 | scalar | - | - |
| system_time | uint32 | scalar | - | - |
| pixel_count | uint8 | scalar | - | - |
| pixels | nlink_parser/TofsenseMFrame0Pixel | sequence | 8 | - |

## noitom_hi5_hand_udp_python/JoySticks

Symbol: `Ros1Noitom_hi5_hand_udp_pythonJoySticks`. Complete canonical extent: 40..40 bytes.
Codec identity: `UWVMROS1_9cf32e8d4a21b3a46bc3bc82f07cc9c109aa1471bb8ceb3c409f1596e910aaea`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| left_x | float32 | scalar | - | - |
| left_y | float32 | scalar | - | - |
| left_trigger | float32 | scalar | - | - |
| left_grip | float32 | scalar | - | - |
| left_first_button_pressed | bool | scalar | - | - |
| left_second_button_pressed | bool | scalar | - | - |
| left_first_button_touched | bool | scalar | - | - |
| left_second_button_touched | bool | scalar | - | - |
| right_x | float32 | scalar | - | - |
| right_y | float32 | scalar | - | - |
| right_trigger | float32 | scalar | - | - |
| right_grip | float32 | scalar | - | - |
| right_first_button_pressed | bool | scalar | - | - |
| right_second_button_pressed | bool | scalar | - | - |
| right_first_button_touched | bool | scalar | - | - |
| right_second_button_touched | bool | scalar | - | - |

## noitom_hi5_hand_udp_python/PoseInfo

Symbol: `Ros1Noitom_hi5_hand_udp_pythonPoseInfo`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_57591e1ee89a8e3850cb474e4f4bb7c0b9bb4d7a855294f9764a3d2662366776`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| position | geometry_msgs/Point | scalar | - | - |
| orientation | geometry_msgs/Quaternion | scalar | - | - |

## noitom_hi5_hand_udp_python/PoseInfoList

Symbol: `Ros1Noitom_hi5_hand_udp_pythonPoseInfoList`. Complete canonical extent: 14..462 bytes.
Codec identity: `UWVMROS1_e81ff54c597bbe2d4e7d8089b6d52fc34b01870a63ec5bbea579a6614c095a6f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timestamp_ms | int64 | scalar | - | - |
| is_high_confidence | bool | scalar | - | - |
| is_hand_tracking | bool | scalar | - | - |
| poses | noitom_hi5_hand_udp_python/PoseInfo | sequence | 8 | - |

## noitom_hi5_hand_udp_python/QuaternionArray

Symbol: `Ros1Noitom_hi5_hand_udp_pythonQuaternionArray`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_f775507277ae2b1a141a81b587f8043969398fd05d3acb9fc000d15fa9733354`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| quaternions | geometry_msgs/Quaternion | sequence | 8 | - |

## noitom_hi5_hand_udp_python/Vector4

Symbol: `Ros1Noitom_hi5_hand_udp_pythonVector4`. Complete canonical extent: 16..16 bytes.
Codec identity: `UWVMROS1_59d75e32f1d014dbf662f9847ed07e0e867a9dee9a2afdbb931e0528fdd615e0`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float32 | scalar | - | - |
| y | float32 | scalar | - | - |
| z | float32 | scalar | - | - |
| w | float32 | scalar | - | - |

## noitom_hi5_hand_udp_python/handRotation

Symbol: `Ros1Noitom_hi5_hand_udp_pythonHandRotation`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_f05ca89e8e5dfd73346ee7f14b27ccc0c06a6540ca21548e06caafbbae791714`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| quaternions | geometry_msgs/Quaternion | sequence | 8 | - |

## noitom_hi5_hand_udp_python/handRotationEular

Symbol: `Ros1Noitom_hi5_hand_udp_pythonHandRotationEular`. Complete canonical extent: 4..132 bytes.
Codec identity: `UWVMROS1_3f9488442c2eaab4082975c08f1c530625f911e56a05b24d941e5abfd8ca31c2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| eulerAngles | noitom_hi5_hand_udp_python/Vector4 | sequence | 8 | - |

## ocs2_msgs/constraint

Symbol: `Ros1Ocs2_msgsConstraint`. Complete canonical extent: 8..72 bytes.
Codec identity: `UWVMROS1_5ed57216e90358bfcc530ac80a88c0af3d867bafaebca58bbc61ff1ed7b875f4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| time | float32 | scalar | - | - |
| value | float32 | sequence | 16 | - |

## ocs2_msgs/controller_data

Symbol: `Ros1Ocs2_msgsController_data`. Complete canonical extent: 4..68 bytes.
Codec identity: `UWVMROS1_e78a3ab284c7d3a89b8246dafbe2f4b111186df637124d9f37a0e29e36c56fe9`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| data | float32 | sequence | 16 | - |

## ocs2_msgs/lagrangian_metrics

Symbol: `Ros1Ocs2_msgsLagrangian_metrics`. Complete canonical extent: 12..76 bytes.
Codec identity: `UWVMROS1_231ec27a2d55a6e336615abf806942d83122b344374089161bd0a32e2b9be240`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| time | float32 | scalar | - | - |
| penalty | float32 | scalar | - | - |
| constraint | float32 | sequence | 16 | - |

## ocs2_msgs/mode_schedule

Symbol: `Ros1Ocs2_msgsMode_schedule`. Complete canonical extent: 8..152 bytes.
Codec identity: `UWVMROS1_3947a55981647683f9345b7e9d169fd72c50d38e343d64b4681598359b9f1643`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| eventTimes | float64 | sequence | 16 | - |
| modeSequence | int8 | sequence | 16 | - |

## ocs2_msgs/mpc_state

Symbol: `Ros1Ocs2_msgsMpc_state`. Complete canonical extent: 4..516 bytes.
Codec identity: `UWVMROS1_3c9644ad4773e490b934d0307b09b1dad08631ecb5f7aae5d786595402119492`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | float32 | sequence | 128 | - |

## ocs2_msgs/mpc_input

Symbol: `Ros1Ocs2_msgsMpc_input`. Complete canonical extent: 4..516 bytes.
Codec identity: `UWVMROS1_2591643ee7dfe9762a73f543c7bf7dea0fc384abcf2a9e8305153011de43b3f8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| value | float32 | sequence | 128 | - |

## ocs2_msgs/mpc_observation

Symbol: `Ros1Ocs2_msgsMpc_observation`. Complete canonical extent: 17..1041 bytes.
Codec identity: `UWVMROS1_ba910059c5be1476eec8dbad8d745afaba40c89885adb202d2a35aa37f9f075e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| time | float64 | scalar | - | - |
| state | ocs2_msgs/mpc_state | scalar | - | - |
| input | ocs2_msgs/mpc_input | scalar | - | - |
| mode | int8 | scalar | - | - |

## ocs2_msgs/mpc_target_trajectories

Symbol: `Ros1Ocs2_msgsMpc_target_trajectories`. Complete canonical extent: 12..4268 bytes.
Codec identity: `UWVMROS1_6e349264eb44f2b5b41a1b569bdcc8782b18b2631a5534e6d3a165eecbc2930c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| timeTrajectory | float64 | sequence | 16 | - |
| stateTrajectory | ocs2_msgs/mpc_state | sequence | 4 | - |
| inputTrajectory | ocs2_msgs/mpc_input | sequence | 4 | - |

## ocs2_msgs/mpc_performance_indices

Symbol: `Ros1Ocs2_msgsMpc_performance_indices`. Complete canonical extent: 28..28 bytes.
Codec identity: `UWVMROS1_273d68282cf27631b424f01d8ec4adc53b2af16477b4419a1e9bf259413b4c15`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| initTime | float32 | scalar | - | - |
| merit | float32 | scalar | - | - |
| cost | float32 | scalar | - | - |
| dynamicsViolationSSE | float32 | scalar | - | - |
| equalityConstraintsSSE | float32 | scalar | - | - |
| equalityLagrangian | float32 | scalar | - | - |
| inequalityLagrangian | float32 | scalar | - | - |

## ocs2_msgs/mpc_flattened_controller

Symbol: `Ros1Ocs2_msgsMpc_flattened_controller`. Complete canonical extent: 86..10070 bytes.
Codec identity: `UWVMROS1_9814d2381d31bbf813f4abdfea131df7dfa0b5628f1cb1f039d6a3d2237dbb8f`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| controllerType | uint8 | scalar | - | - |
| initObservation | ocs2_msgs/mpc_observation | scalar | - | - |
| planTargetTrajectories | ocs2_msgs/mpc_target_trajectories | scalar | - | - |
| stateTrajectory | ocs2_msgs/mpc_state | sequence | 4 | - |
| inputTrajectory | ocs2_msgs/mpc_input | sequence | 4 | - |
| timeTrajectory | float64 | sequence | 16 | - |
| postEventIndices | uint16 | sequence | 16 | - |
| modeSchedule | ocs2_msgs/mode_schedule | scalar | - | - |
| data | ocs2_msgs/controller_data | sequence | 4 | - |
| performanceIndices | ocs2_msgs/mpc_performance_indices | scalar | - | - |

Original declared constants: `CONTROLLER_UNKNOWN=0`, `CONTROLLER_FEEDFORWARD=1`, `CONTROLLER_LINEAR=2`.

## ocs2_msgs/mpc_solver_data

Symbol: `Ros1Ocs2_msgsMpc_solver_data`. Complete canonical extent: 130..14770 bytes.
Codec identity: `UWVMROS1_215c558c1d4953793770d6655259d39ec13bac7969d5763a308756feb581c021`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| initTime | float64 | scalar | - | - |
| initState | float64 | sequence | 16 | - |
| finalTime | float64 | scalar | - | - |
| modeSchedule | ocs2_msgs/mode_schedule | scalar | - | - |
| targetTrajectories | ocs2_msgs/mpc_target_trajectories | scalar | - | - |
| mpc_flattened_controller | ocs2_msgs/mpc_flattened_controller | scalar | - | - |
| swingPlannerMultipliers | float64 | sequence | 16 | - |

## ocs2_msgs/multiplier

Symbol: `Ros1Ocs2_msgsMultiplier`. Complete canonical extent: 12..76 bytes.
Codec identity: `UWVMROS1_09b02ac02ad1579fa38f2c632880b7d87dacecc30bc419ff29276fe223cc1c59`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| time | float32 | scalar | - | - |
| penalty | float32 | scalar | - | - |
| lagrangian | float32 | sequence | 16 | - |

## ocs2_msgs/pause_resumeRequest

Symbol: `Ros1Ocs2_msgsPause_resumeRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_aea8b69dcf340e3ebac58734089fab37c60f8c37c52b13f8b7426e8234dc2c92`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pause | bool | scalar | - | - |

## ocs2_msgs/pause_resumeResponse

Symbol: `Ros1Ocs2_msgsPause_resumeResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_ef86b829dafc3a418545b92173fc8e9d6d756f7a712e7073716d3346fe3479fa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| done | bool | scalar | - | - |

## ocs2_msgs/resetRequest

Symbol: `Ros1Ocs2_msgsResetRequest`. Complete canonical extent: 13..4269 bytes.
Codec identity: `UWVMROS1_582fd1dbd9ce6f6fb3fb4e274da248a3e8af20a751b56258fc74d3e4b30376d6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| reset | bool | scalar | - | - |
| targetTrajectories | ocs2_msgs/mpc_target_trajectories | scalar | - | - |

## ocs2_msgs/resetResponse

Symbol: `Ros1Ocs2_msgsResetResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_f6458a9efb26965fec00e8c0b26180f56e687a70517dd55c71c9e4f31aca8d33`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| done | bool | scalar | - | - |

## ocs2_switched_model_msgs/gait

Symbol: `Ros1Ocs2_switched_model_msgsGait`. Complete canonical extent: 12..92 bytes.
Codec identity: `UWVMROS1_860276a1a3b3b9e8ec71a6abbc7f1f77bc4005350cea0bf7a08b7760fceae30b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| eventPhases | float32 | sequence | 16 | - |
| modeSequence | int8 | sequence | 16 | - |
| duration | float32 | scalar | - | - |

## ocs2_switched_model_msgs/gait_sequence

Symbol: `Ros1Ocs2_switched_model_msgsGait_sequence`. Complete canonical extent: 4..740 bytes.
Codec identity: `UWVMROS1_46ff0778bfad36d83d3b0dd27787b493e48856d8bbedc259f11e67fc41875933`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| gaits | ocs2_switched_model_msgs/gait | sequence | 8 | - |

## ocs2_switched_model_msgs/scheduled_gait_sequence

Symbol: `Ros1Ocs2_switched_model_msgsScheduled_gait_sequence`. Complete canonical extent: 8..744 bytes.
Codec identity: `UWVMROS1_3868414a699777b55702b9e7c99841c3f7ff08ffe95f27737c9540a597f991dc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| startTime | float32 | scalar | - | - |
| gaitSequence | ocs2_switched_model_msgs/gait_sequence | scalar | - | - |

## ocs2_switched_model_msgs/trajectory_requestRequest

Symbol: `Ros1Ocs2_switched_model_msgsTrajectory_requestRequest`. Complete canonical extent: 16..5008 bytes.
Codec identity: `UWVMROS1_932982f63bf8a4ba861e35524546fa2bc940aad2eae21e5d521ae0764d216caa`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| trajectory | ocs2_msgs/mpc_target_trajectories | scalar | - | - |
| gaitSequence | ocs2_switched_model_msgs/gait_sequence | scalar | - | - |

## ocs2_switched_model_msgs/trajectory_requestResponse

Symbol: `Ros1Ocs2_switched_model_msgsTrajectory_requestResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_40df5f3715594613ebf45148957427587f4d0dbfa45d27a327e10cb296bbe073`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |

## sensor_msgs/RegionOfInterest

Symbol: `Ros1Sensor_msgsRegionOfInterest`. Complete canonical extent: 17..17 bytes.
Codec identity: `UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x_offset | uint32 | scalar | - | - |
| y_offset | uint32 | scalar | - | - |
| height | uint32 | scalar | - | - |
| width | uint32 | scalar | - | - |
| do_rectify | bool | scalar | - | - |

## sensor_msgs/CameraInfo

Symbol: `Ros1Sensor_msgsCameraInfo`. Complete canonical extent: 297..937 bytes.
Codec identity: `UWVMROS1_7ccae6e3c6f5cf4e148906604e099b8a5f7331d631b3b154472d3f1c625c0158`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| height | uint32 | scalar | - | - |
| width | uint32 | scalar | - | - |
| distortion_model | string | scalar | 256 | - |
| D | float64 | sequence | 16 | - |
| K | float64 | array | 9 | - |
| R | float64 | array | 9 | - |
| P | float64 | array | 12 | - |
| binning_x | uint32 | scalar | - | - |
| binning_y | uint32 | scalar | - | - |
| roi | sensor_msgs/RegionOfInterest | scalar | - | - |

## robot_calibration_msgs/CameraParameter

Symbol: `Ros1Robot_calibration_msgsCameraParameter`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_29ee37fe6ff49ed9a5bbff52cceafa7f4afc87d09d6a181c5b6e53e372f5982a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 256 | - |
| value | float64 | scalar | - | - |

## robot_calibration_msgs/ExtendedCameraInfo

Symbol: `Ros1Robot_calibration_msgsExtendedCameraInfo`. Complete canonical extent: 301..3085 bytes.
Codec identity: `UWVMROS1_701f271d8f32b7f92c8d145e053fc013fbd4e9664534fc249b3dd635b5282e41`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| camera_info | sensor_msgs/CameraInfo | scalar | - | - |
| parameters | robot_calibration_msgs/CameraParameter | sequence | 8 | - |

## sensor_msgs/PointField

Symbol: `Ros1Sensor_msgsPointField`. Complete canonical extent: 13..269 bytes.
Codec identity: `UWVMROS1_0031797fe1be959add869c9a0ff556867aa051f16dc230e1d6fc6fb7e2903429`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| name | string | scalar | 256 | - |
| offset | uint32 | scalar | - | - |
| datatype | uint8 | scalar | - | - |
| count | uint32 | scalar | - | - |

Original declared constants: `INT8=1`, `UINT8=2`, `INT16=3`, `UINT16=4`, `INT32=5`, `UINT32=6`, `FLOAT32=7`, `FLOAT64=8`.

## sensor_msgs/PointCloud2

Symbol: `Ros1Sensor_msgsPointCloud2`. Complete canonical extent: 42..6546 bytes.
Codec identity: `UWVMROS1_e75c3063a5cd856597f4e11e40c02360c4f22396a511e72ac102457f480268c1`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| height | uint32 | scalar | - | - |
| width | uint32 | scalar | - | - |
| fields | sensor_msgs/PointField | sequence | 8 | - |
| is_bigendian | bool | scalar | - | - |
| point_step | uint32 | scalar | - | - |
| row_step | uint32 | scalar | - | - |
| data | uint8 | sequence | 4096 | - |
| is_dense | bool | scalar | - | - |

## sensor_msgs/Image

Symbol: `Ros1Sensor_msgsImage`. Complete canonical extent: 37..4645 bytes.
Codec identity: `UWVMROS1_c6f7399cb45ed39f35d4f215eec6474c64f271dafc71d537c7a7e7a7ff27cb89`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| height | uint32 | scalar | - | - |
| width | uint32 | scalar | - | - |
| encoding | string | scalar | 256 | - |
| is_bigendian | uint8 | scalar | - | - |
| step | uint32 | scalar | - | - |
| data | uint8 | sequence | 4096 | - |

## robot_calibration_msgs/Observation

Symbol: `Ros1Robot_calibration_msgsObservation`. Complete canonical extent: 388..16908 bytes.
Codec identity: `UWVMROS1_63a95c8451f7d9e4c7611256fdcbc476552d5ee8d12372a934e4b9d06ecc7998`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| sensor_name | string | scalar | 256 | - |
| features | geometry_msgs/PointStamped | sequence | 8 | - |
| ext_camera_info | robot_calibration_msgs/ExtendedCameraInfo | scalar | - | - |
| cloud | sensor_msgs/PointCloud2 | scalar | - | - |
| image | sensor_msgs/Image | scalar | - | - |

## robot_calibration_msgs/CalibrationData

Symbol: `Ros1Robot_calibration_msgsCalibrationData`. Complete canonical extent: 36..28976 bytes.
Codec identity: `UWVMROS1_24f8eaa5c74a339a011bed56dbb43877cbcea02b7d6fe70242649743b831c41d`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_states | sensor_msgs/JointState | scalar | - | - |
| observations | robot_calibration_msgs/Observation | sequence | 1 | - |

## robot_calibration_msgs/CaptureConfig

Symbol: `Ros1Robot_calibration_msgsCaptureConfig`. Complete canonical extent: 36..16228 bytes.
Codec identity: `UWVMROS1_eee3518da52625ab26a357e64248cda854e13b36dfc0c1dd22008c9b0778ac61`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| joint_states | sensor_msgs/JointState | scalar | - | - |
| features | string | sequence | 16 | - |

## robot_calibration_msgs/GripperLedCommandGoal

Symbol: `Ros1Robot_calibration_msgsGripperLedCommandGoal`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_371f563493ad71e6a15256142dca36976d9660f050d045f5ea85238c1142cf3e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| led_code | uint8 | scalar | - | - |

## robot_calibration_msgs/GripperLedCommandResult

Symbol: `Ros1Robot_calibration_msgsGripperLedCommandResult`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_479da8e82a937fe61ca0c9ac8fba50033364085add1047e90748ec000b0dc42a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## robot_calibration_msgs/GripperLedCommandFeedback

Symbol: `Ros1Robot_calibration_msgsGripperLedCommandFeedback`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_eb8f29dde9d3f6b050623a4181a187942d4b0cbc136a53a39958bb697a7ba7eb`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## robot_localization/FromLLRequest

Symbol: `Ros1Robot_localizationFromLLRequest`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_9e77b9f029ba663823d30c8a6afafb4d68ed4909f755f3271c53be87b242c454`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| ll_point | geographic_msgs/GeoPoint | scalar | - | - |

## robot_localization/FromLLResponse

Symbol: `Ros1Robot_localizationFromLLResponse`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_c4f794ec772b6d500ac2bcb9f12e884715269c1f8f49417cd32eab5463a62f3e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_point | geometry_msgs/Point | scalar | - | - |

## robot_localization/GetStateRequest

Symbol: `Ros1Robot_localizationGetStateRequest`. Complete canonical extent: 12..268 bytes.
Codec identity: `UWVMROS1_06d35fc2336498f13973744c5160a79d26689f2a02ab0c8136087fbb12461c5a`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| time_stamp | time | scalar | - | - |
| frame_id | string | scalar | 256 | - |

## robot_localization/GetStateResponse

Symbol: `Ros1Robot_localizationGetStateResponse`. Complete canonical extent: 1920..1920 bytes.
Codec identity: `UWVMROS1_e85760e64e045ea9a1bb904391deb0f87c3fb89527e57ed1f7c7e91554eab6ec`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| state | float64 | array | 15 | - |
| covariance | float64 | array | 225 | - |

## robot_localization/SetDatumRequest

Symbol: `Ros1Robot_localizationSetDatumRequest`. Complete canonical extent: 56..56 bytes.
Codec identity: `UWVMROS1_13b1cdaaac621681ce3ec1d1b7c85c89acd1f63285309d1ff47573c9f74be6e4`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| geo_pose | geographic_msgs/GeoPose | scalar | - | - |

## robot_localization/SetDatumResponse

Symbol: `Ros1Robot_localizationSetDatumResponse`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_932d56dd53078582e985c2ac36c8df78fc0e83393d5d5bbe3c34b8e7b73fa252`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## robot_localization/SetPoseRequest

Symbol: `Ros1Robot_localizationSetPoseRequest`. Complete canonical extent: 360..616 bytes.
Codec identity: `UWVMROS1_90e5a19a72177dd0be0782616c680df214823da6a7127457b3378d2fbf6523c3`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| pose | geometry_msgs/PoseWithCovarianceStamped | scalar | - | - |

## robot_localization/SetPoseResponse

Symbol: `Ros1Robot_localizationSetPoseResponse`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_d231093ba84e32fbfc93423f45486709e53155778a342b634b170cf17af7b84e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## robot_localization/SetUTMZoneRequest

Symbol: `Ros1Robot_localizationSetUTMZoneRequest`. Complete canonical extent: 4..260 bytes.
Codec identity: `UWVMROS1_73c094a5ac20c246961784301494e71d83b0f66b91e077b1ec617b2d4c2357f8`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| utm_zone | string | scalar | 256 | - |

## robot_localization/SetUTMZoneResponse

Symbol: `Ros1Robot_localizationSetUTMZoneResponse`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_39ce31583dcf9c587ba9bf6970759ba7419107e64c5def0937801514d70e912c`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## robot_localization/ToLLRequest

Symbol: `Ros1Robot_localizationToLLRequest`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_d11c2506ec2d6fdbe8ce9031be5fc6833df60ebcae576e576afa1c797c15d30b`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| map_point | geometry_msgs/Point | scalar | - | - |

## robot_localization/ToLLResponse

Symbol: `Ros1Robot_localizationToLLResponse`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_1a04fb295d071bf442b3d9d44c22862436aa35f04176385616e1547e0cb9857e`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| ll_point | geographic_msgs/GeoPoint | scalar | - | - |

## robot_localization/ToggleFilterProcessingRequest

Symbol: `Ros1Robot_localizationToggleFilterProcessingRequest`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_22c0c52cdfde8a85e9aed492d0e5d33f3d76c80b8a4be92953effe28396fff64`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| on | bool | scalar | - | - |

## robot_localization/ToggleFilterProcessingResponse

Symbol: `Ros1Robot_localizationToggleFilterProcessingResponse`. Complete canonical extent: 1..1 bytes.
Codec identity: `UWVMROS1_3edee8aff6b86026545e9559c98a33a4165ac90f7fe1ba86430c6396041d5176`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| status | bool | scalar | - | - |

## taiji_trigger_node/PerformTaijiRequest

Symbol: `Ros1Taiji_trigger_nodePerformTaijiRequest`. Complete canonical extent: 0..0 bytes.
Codec identity: `UWVMROS1_e0ae7222bc4566adbed2186f8783152734739dd0a8d2b066eee2812f143337bc`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |

## taiji_trigger_node/PerformTaijiResponse

Symbol: `Ros1Taiji_trigger_nodePerformTaijiResponse`. Complete canonical extent: 5..261 bytes.
Codec identity: `UWVMROS1_eb2adcb68164ed8ff3b34c6ab4678631cb551f27040ae11e5b4d0d0ccde4b4af`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| success | bool | scalar | - | - |
| message | string | scalar | 256 | - |

## user_pkg/piddebug

Symbol: `Ros1User_pkgPiddebug`. Complete canonical extent: 40..296 bytes.
Codec identity: `UWVMROS1_d368e7fdd2139f74059ee2231d0b6d51f49521b8eec569e1f96f1d5696028eb2`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| objectname | string | scalar | 256 | - |
| target | float32 | scalar | - | - |
| rev | float32 | scalar | - | - |
| kp | float32 | scalar | - | - |
| ki | float32 | scalar | - | - |
| kd | float32 | scalar | - | - |
| p_out | float32 | scalar | - | - |
| i_out | float32 | scalar | - | - |
| d_out | float32 | scalar | - | - |
| pid_out | float32 | scalar | - | - |

## user_pkg/uwbdebug

Symbol: `Ros1User_pkgUwbdebug`. Complete canonical extent: 48..48 bytes.
Codec identity: `UWVMROS1_eafe60a2ce61f84398ce53d8a19e190c053fe63f8d9ca9818e22f44e69ffc769`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| car_cur_x | float32 | scalar | - | - |
| car_cur_y | float32 | scalar | - | - |
| car_cur_z | float32 | scalar | - | - |
| car_yaw | float32 | scalar | - | - |
| car_pitch | float32 | scalar | - | - |
| car_roll | float32 | scalar | - | - |
| robot_cur_x | float32 | scalar | - | - |
| robot_cur_y | float32 | scalar | - | - |
| robot_cur_z | float32 | scalar | - | - |
| robot_yaw | float32 | scalar | - | - |
| robot_pitch | float32 | scalar | - | - |
| robot_roll | float32 | scalar | - | - |

## wiimote/IrSourceInfo

Symbol: `Ros1WiimoteIrSourceInfo`. Complete canonical extent: 24..24 bytes.
Codec identity: `UWVMROS1_8e0a43ec17814d2b9d5bffdb629b87dcb244a85364bda3bf8871aeec7e47d2e7`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| x | float64 | scalar | - | - |
| y | float64 | scalar | - | - |
| ir_size | int64 | scalar | - | - |

## wiimote/State

Symbol: `Ros1WiimoteState`. Complete canonical extent: 366..814 bytes.
Codec identity: `UWVMROS1_1e0c93579a6bd2ad94af0fe6baf513582042341980e89527eb79739ec4267b42`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| header | std_msgs/Header | scalar | - | - |
| angular_velocity_zeroed | geometry_msgs/Vector3 | scalar | - | - |
| angular_velocity_raw | geometry_msgs/Vector3 | scalar | - | - |
| angular_velocity_covariance | float64 | array | 9 | - |
| linear_acceleration_zeroed | geometry_msgs/Vector3 | scalar | - | - |
| linear_acceleration_raw | geometry_msgs/Vector3 | scalar | - | - |
| linear_acceleration_covariance | float64 | array | 9 | - |
| nunchuk_acceleration_zeroed | geometry_msgs/Vector3 | scalar | - | - |
| nunchuk_acceleration_raw | geometry_msgs/Vector3 | scalar | - | - |
| nunchuk_joystick_zeroed | float32 | array | 2 | - |
| nunchuk_joystick_raw | float32 | array | 2 | - |
| buttons | bool | array | 11 | - |
| nunchuk_buttons | bool | array | 2 | - |
| LEDs | bool | array | 4 | - |
| rumble | bool | scalar | - | - |
| ir_tracking | wiimote/IrSourceInfo | sequence | 8 | - |
| raw_battery | float32 | scalar | - | - |
| percent_battery | float32 | scalar | - | - |
| zeroing_time | time | scalar | - | - |
| errors | uint64 | scalar | - | - |

Original declared constants: `INVALID=-1`, `INVALID_FLOAT=-1.0`, `MSG_BTN_1=0`, `MSG_BTN_2=1`, `MSG_BTN_A=2`, `MSG_BTN_B=3`, `MSG_BTN_PLUS=4`, `MSG_BTN_MINUS=5`, `MSG_BTN_LEFT=6`, `MSG_BTN_RIGHT=7`, `MSG_BTN_UP=8`, `MSG_BTN_DOWN=9`, `MSG_BTN_HOME=10`, `MSG_BTN_Z=0`, `MSG_BTN_C=1`, `MSG_CLASSIC_BTN_X=0`, `MSG_CLASSIC_BTN_Y=1`, `MSG_CLASSIC_BTN_A=2`, `MSG_CLASSIC_BTN_B=3`, `MSG_CLASSIC_BTN_PLUS=4`, `MSG_CLASSIC_BTN_MINUS=5`, `MSG_CLASSIC_BTN_LEFT=6`, `MSG_CLASSIC_BTN_RIGHT=7`, `MSG_CLASSIC_BTN_UP=8`, `MSG_CLASSIC_BTN_DOWN=9`, `MSG_CLASSIC_BTN_HOME=10`, `MSG_CLASSIC_BTN_L=11`, `MSG_CLASSIC_BTN_R=12`, `MSG_CLASSIC_BTN_ZL=13`, `MSG_CLASSIC_BTN_ZR=14`.

## wiimote/TimedSwitch

Symbol: `Ros1WiimoteTimedSwitch`. Complete canonical extent: 9..73 bytes.
Codec identity: `UWVMROS1_5d845b91d364c06eb8f38a03ad0319cfc48a2c49c0b5b7263580b8e5b24ffcb6`. Native identity: `requires native metadata admission`.

| Field | Original type | Shape | Capacity | Native default |
| --- | --- | --- | --- | --- |
| switch_mode | int8 | scalar | - | - |
| num_cycles | int32 | scalar | - | - |
| pulse_pattern | float32 | sequence | 16 | - |

Original declared constants: `ON=1`, `OFF=0`, `NO_CHANGE=-2`, `REPEAT=-1`, `FOREVER=-1`.

## Interfaces

| Interface | Kind | Complete components |
| --- | --- | --- |
| aruco_msgs/Marker | message | message: aruco_msgs/Marker |
| aruco_msgs/MarkerArray | message | message: aruco_msgs/MarkerArray |
| easy_handeye_msgs/CheckStartingPose | service | request: easy_handeye_msgs/CheckStartingPoseRequest, response: easy_handeye_msgs/CheckStartingPoseResponse |
| easy_handeye_msgs/ComputeCalibration | service | request: easy_handeye_msgs/ComputeCalibrationRequest, response: easy_handeye_msgs/ComputeCalibrationResponse |
| easy_handeye_msgs/EnumerateTargetPoses | service | request: easy_handeye_msgs/EnumerateTargetPosesRequest, response: easy_handeye_msgs/EnumerateTargetPosesResponse |
| easy_handeye_msgs/ExecutePlan | service | request: easy_handeye_msgs/ExecutePlanRequest, response: easy_handeye_msgs/ExecutePlanResponse |
| easy_handeye_msgs/HandeyeCalibration | message | message: easy_handeye_msgs/HandeyeCalibration |
| easy_handeye_msgs/ListAlgorithms | service | request: easy_handeye_msgs/ListAlgorithmsRequest, response: easy_handeye_msgs/ListAlgorithmsResponse |
| easy_handeye_msgs/PlanToSelectedTargetPose | service | request: easy_handeye_msgs/PlanToSelectedTargetPoseRequest, response: easy_handeye_msgs/PlanToSelectedTargetPoseResponse |
| easy_handeye_msgs/RemoveSample | service | request: easy_handeye_msgs/RemoveSampleRequest, response: easy_handeye_msgs/RemoveSampleResponse |
| easy_handeye_msgs/SampleList | message | message: easy_handeye_msgs/SampleList |
| easy_handeye_msgs/SelectTargetPose | service | request: easy_handeye_msgs/SelectTargetPoseRequest, response: easy_handeye_msgs/SelectTargetPoseResponse |
| easy_handeye_msgs/SetAlgorithm | service | request: easy_handeye_msgs/SetAlgorithmRequest, response: easy_handeye_msgs/SetAlgorithmResponse |
| easy_handeye_msgs/TakeSample | service | request: easy_handeye_msgs/TakeSampleRequest, response: easy_handeye_msgs/TakeSampleResponse |
| easy_handeye_msgs/TargetPoseList | message | message: easy_handeye_msgs/TargetPoseList |
| geographic_msgs/GeoPoint | message | message: geographic_msgs/GeoPoint |
| geographic_msgs/GeoPose | message | message: geographic_msgs/GeoPose |
| geometry_msgs/Point | message | message: geometry_msgs/Point |
| geometry_msgs/PointStamped | message | message: geometry_msgs/PointStamped |
| geometry_msgs/Pose | message | message: geometry_msgs/Pose |
| geometry_msgs/PoseStamped | message | message: geometry_msgs/PoseStamped |
| geometry_msgs/PoseWithCovariance | message | message: geometry_msgs/PoseWithCovariance |
| geometry_msgs/PoseWithCovarianceStamped | message | message: geometry_msgs/PoseWithCovarianceStamped |
| geometry_msgs/Quaternion | message | message: geometry_msgs/Quaternion |
| geometry_msgs/Transform | message | message: geometry_msgs/Transform |
| geometry_msgs/TransformStamped | message | message: geometry_msgs/TransformStamped |
| geometry_msgs/Twist | message | message: geometry_msgs/Twist |
| geometry_msgs/Vector3 | message | message: geometry_msgs/Vector3 |
| grid_map_msgs/GetGridMap | service | request: grid_map_msgs/GetGridMapRequest, response: grid_map_msgs/GetGridMapResponse |
| grid_map_msgs/GetGridMapInfo | service | request: grid_map_msgs/GetGridMapInfoRequest, response: grid_map_msgs/GetGridMapInfoResponse |
| grid_map_msgs/GridMap | message | message: grid_map_msgs/GridMap |
| grid_map_msgs/GridMapInfo | message | message: grid_map_msgs/GridMapInfo |
| grid_map_msgs/ProcessFile | service | request: grid_map_msgs/ProcessFileRequest, response: grid_map_msgs/ProcessFileResponse |
| grid_map_msgs/SetGridMap | service | request: grid_map_msgs/SetGridMapRequest, response: grid_map_msgs/SetGridMapResponse |
| h12pro_controller_node/ECJointMotordata | message | message: h12pro_controller_node/ECJointMotordata |
| h12pro_controller_node/ExecuteArmAction | service | request: h12pro_controller_node/ExecuteArmActionRequest, response: h12pro_controller_node/ExecuteArmActionResponse |
| h12pro_controller_node/RobotActionState | message | message: h12pro_controller_node/RobotActionState |
| h12pro_controller_node/UpdateH12CustomizeConfig | message | message: h12pro_controller_node/UpdateH12CustomizeConfig |
| h12pro_controller_node/changeAMBACCtrlMode | service | request: h12pro_controller_node/changeAMBACCtrlModeRequest, response: h12pro_controller_node/changeAMBACCtrlModeResponse |
| h12pro_controller_node/changeArmCtrlMode | service | request: h12pro_controller_node/changeArmCtrlModeRequest, response: h12pro_controller_node/changeArmCtrlModeResponse |
| h12pro_controller_node/changeHandArmPosesByConfigName | service | request: h12pro_controller_node/changeHandArmPosesByConfigNameRequest, response: h12pro_controller_node/changeHandArmPosesByConfigNameResponse |
| h12pro_controller_node/h12proRemoteControllerChannel | message | message: h12pro_controller_node/h12proRemoteControllerChannel |
| h12pro_controller_node/playmusic | service | request: h12pro_controller_node/playmusicRequest, response: h12pro_controller_node/playmusicResponse |
| h12pro_controller_node/robotPhase | message | message: h12pro_controller_node/robotPhase |
| h12pro_controller_node/robotQVTau | message | message: h12pro_controller_node/robotQVTau |
| h12pro_controller_node/robotTorsoState | message | message: h12pro_controller_node/robotTorsoState |
| h12pro_controller_node/srvChangePhases | service | request: h12pro_controller_node/srvChangePhasesRequest, response: h12pro_controller_node/srvChangePhasesResponse |
| h12pro_controller_node/srvClearPositionCMD | service | request: h12pro_controller_node/srvClearPositionCMDRequest, response: h12pro_controller_node/srvClearPositionCMDResponse |
| h12pro_controller_node/srvchangeCtlMode | service | request: h12pro_controller_node/srvchangeCtlModeRequest, response: h12pro_controller_node/srvchangeCtlModeResponse |
| h12pro_controller_node/walkCommand | message | message: h12pro_controller_node/walkCommand |
| handcontrollerdemorosnode/armPoseWithTimeStamp | message | message: handcontrollerdemorosnode/armPoseWithTimeStamp |
| handcontrollerdemorosnode/changeHandTrackingMode | service | request: handcontrollerdemorosnode/changeHandTrackingModeRequest, response: handcontrollerdemorosnode/changeHandTrackingModeResponse |
| handcontrollerdemorosnode/controlEndHand | service | request: handcontrollerdemorosnode/controlEndHandRequest, response: handcontrollerdemorosnode/controlEndHandResponse |
| handcontrollerdemorosnode/handRotationEular | message | message: handcontrollerdemorosnode/handRotationEular |
| handcontrollerdemorosnode/robotArmPose | message | message: handcontrollerdemorosnode/robotArmPose |
| handcontrollerdemorosnode/robotHandPosition | message | message: handcontrollerdemorosnode/robotHandPosition |
| handcontrollerdemorosnode/srvArmIK | service | request: handcontrollerdemorosnode/srvArmIKRequest, response: handcontrollerdemorosnode/srvArmIKResponse |
| hardware_node/horizontalMotionByStep | message | message: hardware_node/horizontalMotionByStep |
| hardware_node/robotHeadMotionData | message | message: hardware_node/robotHeadMotionData |
| humanoid_arm_control/armControl | service | request: humanoid_arm_control/armControlRequest, response: humanoid_arm_control/armControlResponse |
| humanoid_arm_control/handUpAndGrab | service | request: humanoid_arm_control/handUpAndGrabRequest, response: humanoid_arm_control/handUpAndGrabResponse |
| humanoid_plan_arm_trajectory/ExecuteArmAction | service | request: humanoid_plan_arm_trajectory/ExecuteArmActionRequest, response: humanoid_plan_arm_trajectory/ExecuteArmActionResponse |
| humanoid_plan_arm_trajectory/RobotActionState | message | message: humanoid_plan_arm_trajectory/RobotActionState |
| humanoid_plan_arm_trajectory/bezierCurveCubicPoint | message | message: humanoid_plan_arm_trajectory/bezierCurveCubicPoint |
| humanoid_plan_arm_trajectory/jointBezierTrajectory | message | message: humanoid_plan_arm_trajectory/jointBezierTrajectory |
| humanoid_plan_arm_trajectory/planArmState | message | message: humanoid_plan_arm_trajectory/planArmState |
| humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurve | service | request: humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveRequest, response: humanoid_plan_arm_trajectory/planArmTrajectoryBezierCurveResponse |
| humanoid_plan_arm_trajectory/planArmTrajectoryCubicSpline | service | request: humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineRequest, response: humanoid_plan_arm_trajectory/planArmTrajectoryCubicSplineResponse |
| kindr_msgs/VectorAtPosition | message | message: kindr_msgs/VectorAtPosition |
| kuavo_audio_player/audio_status | service | request: kuavo_audio_player/audio_statusRequest, response: kuavo_audio_player/audio_statusResponse |
| kuavo_audio_player/playmusic | service | request: kuavo_audio_player/playmusicRequest, response: kuavo_audio_player/playmusicResponse |
| kuavo_mapping/DeleteMap | service | request: kuavo_mapping/DeleteMapRequest, response: kuavo_mapping/DeleteMapResponse |
| kuavo_mapping/EditMap | service | request: kuavo_mapping/EditMapRequest, response: kuavo_mapping/EditMapResponse |
| kuavo_mapping/GetAllMaps | service | request: kuavo_mapping/GetAllMapsRequest, response: kuavo_mapping/GetAllMapsResponse |
| kuavo_mapping/GetCurrentMap | service | request: kuavo_mapping/GetCurrentMapRequest, response: kuavo_mapping/GetCurrentMapResponse |
| kuavo_mapping/InitialPoseWithTaskPoint | service | request: kuavo_mapping/InitialPoseWithTaskPointRequest, response: kuavo_mapping/InitialPoseWithTaskPointResponse |
| kuavo_mapping/LoadMap | service | request: kuavo_mapping/LoadMapRequest, response: kuavo_mapping/LoadMapResponse |
| kuavo_mapping/NavigateToTaskPoint | service | request: kuavo_mapping/NavigateToTaskPointRequest, response: kuavo_mapping/NavigateToTaskPointResponse |
| kuavo_mapping/RenameMap | service | request: kuavo_mapping/RenameMapRequest, response: kuavo_mapping/RenameMapResponse |
| kuavo_mapping/SaveMap | service | request: kuavo_mapping/SaveMapRequest, response: kuavo_mapping/SaveMapResponse |
| kuavo_mapping/SetInitialPose | service | request: kuavo_mapping/SetInitialPoseRequest, response: kuavo_mapping/SetInitialPoseResponse |
| kuavo_mapping/StartMapping | service | request: kuavo_mapping/StartMappingRequest, response: kuavo_mapping/StartMappingResponse |
| kuavo_mapping/StopMapping | service | request: kuavo_mapping/StopMappingRequest, response: kuavo_mapping/StopMappingResponse |
| kuavo_mapping/TaskPoint | message | message: kuavo_mapping/TaskPoint |
| kuavo_mapping/TaskPointOperation | service | request: kuavo_mapping/TaskPointOperationRequest, response: kuavo_mapping/TaskPointOperationResponse |
| kuavo_msgs/AprilTagDetection | message | message: kuavo_msgs/AprilTagDetection |
| kuavo_msgs/AprilTagDetectionArray | message | message: kuavo_msgs/AprilTagDetectionArray |
| kuavo_msgs/AudioPlaybackStatus | message | message: kuavo_msgs/AudioPlaybackStatus |
| kuavo_msgs/AudioReceiverData | message | message: kuavo_msgs/AudioReceiverData |
| kuavo_msgs/BatteryInfo | message | message: kuavo_msgs/BatteryInfo |
| kuavo_msgs/Color | message | message: kuavo_msgs/Color |
| kuavo_msgs/ControllerSwitchEvent | message | message: kuavo_msgs/ControllerSwitchEvent |
| kuavo_msgs/CreatePath | service | request: kuavo_msgs/CreatePathRequest, response: kuavo_msgs/CreatePathResponse |
| kuavo_msgs/DanceTrajectoryState | message | message: kuavo_msgs/DanceTrajectoryState |
| kuavo_msgs/ExecuteArmAction | service | request: kuavo_msgs/ExecuteArmActionRequest, response: kuavo_msgs/ExecuteArmActionResponse |
| kuavo_msgs/FTsensorData | message | message: kuavo_msgs/FTsensorData |
| kuavo_msgs/FaceBoundingBox | message | message: kuavo_msgs/FaceBoundingBox |
| kuavo_msgs/FallStandCommand | service | request: kuavo_msgs/FallStandCommandRequest, response: kuavo_msgs/FallStandCommandResponse |
| kuavo_msgs/Float32MultiArrayStamped | message | message: kuavo_msgs/Float32MultiArrayStamped |
| kuavo_msgs/GetAllMaps | service | request: kuavo_msgs/GetAllMapsRequest, response: kuavo_msgs/GetAllMapsResponse |
| kuavo_msgs/GetBatteryInfo | service | request: kuavo_msgs/GetBatteryInfoRequest, response: kuavo_msgs/GetBatteryInfoResponse |
| kuavo_msgs/GetCurrentMap | service | request: kuavo_msgs/GetCurrentMapRequest, response: kuavo_msgs/GetCurrentMapResponse |
| kuavo_msgs/GetPowerBoardStatus | service | request: kuavo_msgs/GetPowerBoardStatusRequest, response: kuavo_msgs/GetPowerBoardStatusResponse |
| kuavo_msgs/GetStringList | service | request: kuavo_msgs/GetStringListRequest, response: kuavo_msgs/GetStringListResponse |
| kuavo_msgs/GetTargetPartPoseInCamera | service | request: kuavo_msgs/GetTargetPartPoseInCameraRequest, response: kuavo_msgs/GetTargetPartPoseInCameraResponse |
| kuavo_msgs/InitialPoseWithTaskPoint | service | request: kuavo_msgs/InitialPoseWithTaskPointRequest, response: kuavo_msgs/InitialPoseWithTaskPointResponse |
| kuavo_msgs/JoySticks | message | message: kuavo_msgs/JoySticks |
| kuavo_msgs/LoadMap | service | request: kuavo_msgs/LoadMapRequest, response: kuavo_msgs/LoadMapResponse |
| kuavo_msgs/Metadata | message | message: kuavo_msgs/Metadata |
| kuavo_msgs/MmDetectionMsg | message | message: kuavo_msgs/MmDetectionMsg |
| kuavo_msgs/MocapPoseRetarget | message | message: kuavo_msgs/MocapPoseRetarget |
| kuavo_msgs/NavigateToTaskPoint | service | request: kuavo_msgs/NavigateToTaskPointRequest, response: kuavo_msgs/NavigateToTaskPointResponse |
| kuavo_msgs/PlayMusicImmediate | service | request: kuavo_msgs/PlayMusicImmediateRequest, response: kuavo_msgs/PlayMusicImmediateResponse |
| kuavo_msgs/PowerBoardStatus | message | message: kuavo_msgs/PowerBoardStatus |
| kuavo_msgs/RelaySelectChannel | service | request: kuavo_msgs/RelaySelectChannelRequest, response: kuavo_msgs/RelaySelectChannelResponse |
| kuavo_msgs/RepublishTFs | service | request: kuavo_msgs/RepublishTFsRequest, response: kuavo_msgs/RepublishTFsResponse |
| kuavo_msgs/RigidBodyDescription | message | message: kuavo_msgs/RigidBodyDescription |
| kuavo_msgs/RigidBodyFrame | message | message: kuavo_msgs/RigidBodyFrame |
| kuavo_msgs/RobotActionState | message | message: kuavo_msgs/RobotActionState |
| kuavo_msgs/SetHeadControlMode | service | request: kuavo_msgs/SetHeadControlModeRequest, response: kuavo_msgs/SetHeadControlModeResponse |
| kuavo_msgs/SetIncrementalArmTrajLink | service | request: kuavo_msgs/SetIncrementalArmTrajLinkRequest, response: kuavo_msgs/SetIncrementalArmTrajLinkResponse |
| kuavo_msgs/SetInitialPose | service | request: kuavo_msgs/SetInitialPoseRequest, response: kuavo_msgs/SetInitialPoseResponse |
| kuavo_msgs/SetJoyTopic | service | request: kuavo_msgs/SetJoyTopicRequest, response: kuavo_msgs/SetJoyTopicResponse |
| kuavo_msgs/SetLEDMode | service | request: kuavo_msgs/SetLEDModeRequest, response: kuavo_msgs/SetLEDModeResponse |
| kuavo_msgs/SetLEDMode_free | service | request: kuavo_msgs/SetLEDMode_freeRequest, response: kuavo_msgs/SetLEDMode_freeResponse |
| kuavo_msgs/SetString | service | request: kuavo_msgs/SetStringRequest, response: kuavo_msgs/SetStringResponse |
| kuavo_msgs/SkeletonFrame | message | message: kuavo_msgs/SkeletonFrame |
| kuavo_msgs/SpeechSynthesis | service | request: kuavo_msgs/SpeechSynthesisRequest, response: kuavo_msgs/SpeechSynthesisResponse |
| kuavo_msgs/TFArray | message | message: kuavo_msgs/TFArray |
| kuavo_msgs/TaskPoint | message | message: kuavo_msgs/TaskPoint |
| kuavo_msgs/TaskPointOperation | service | request: kuavo_msgs/TaskPointOperationRequest, response: kuavo_msgs/TaskPointOperationResponse |
| kuavo_msgs/TransportModeCommand | service | request: kuavo_msgs/TransportModeCommandRequest, response: kuavo_msgs/TransportModeCommandResponse |
| kuavo_msgs/VMPTrajectoryState | message | message: kuavo_msgs/VMPTrajectoryState |
| kuavo_msgs/accessIkSolve | service | request: kuavo_msgs/accessIkSolveRequest, response: kuavo_msgs/accessIkSolveResponse |
| kuavo_msgs/adjustZeroPoint | service | request: kuavo_msgs/adjustZeroPointRequest, response: kuavo_msgs/adjustZeroPointResponse |
| kuavo_msgs/armCollisionCheckInfo | message | message: kuavo_msgs/armCollisionCheckInfo |
| kuavo_msgs/armHandPose | message | message: kuavo_msgs/armHandPose |
| kuavo_msgs/armHandPoseFree | message | message: kuavo_msgs/armHandPoseFree |
| kuavo_msgs/armPoseWithTimeStamp | message | message: kuavo_msgs/armPoseWithTimeStamp |
| kuavo_msgs/armTargetPoses | message | message: kuavo_msgs/armTargetPoses |
| kuavo_msgs/bezierCurveCubicPoint | message | message: kuavo_msgs/bezierCurveCubicPoint |
| kuavo_msgs/changeArmCtrlMode | service | request: kuavo_msgs/changeArmCtrlModeRequest, response: kuavo_msgs/changeArmCtrlModeResponse |
| kuavo_msgs/changeArmCtrlModeKuavo | service | request: kuavo_msgs/changeArmCtrlModeKuavoRequest, response: kuavo_msgs/changeArmCtrlModeKuavoResponse |
| kuavo_msgs/changeLbMpcObsUpdateModeSrv | service | request: kuavo_msgs/changeLbMpcObsUpdateModeSrvRequest, response: kuavo_msgs/changeLbMpcObsUpdateModeSrvResponse |
| kuavo_msgs/changeLbQuickModeSrv | service | request: kuavo_msgs/changeLbQuickModeSrvRequest, response: kuavo_msgs/changeLbQuickModeSrvResponse |
| kuavo_msgs/changeMotorParam | service | request: kuavo_msgs/changeMotorParamRequest, response: kuavo_msgs/changeMotorParamResponse |
| kuavo_msgs/changeTorsoCtrlMode | service | request: kuavo_msgs/changeTorsoCtrlModeRequest, response: kuavo_msgs/changeTorsoCtrlModeResponse |
| kuavo_msgs/changeWaistCtrlMode | service | request: kuavo_msgs/changeWaistCtrlModeRequest, response: kuavo_msgs/changeWaistCtrlModeResponse |
| kuavo_msgs/chassisPoseCmdSrv | service | request: kuavo_msgs/chassisPoseCmdSrvRequest, response: kuavo_msgs/chassisPoseCmdSrvResponse |
| kuavo_msgs/controlLejuClaw | service | request: kuavo_msgs/controlLejuClawRequest, response: kuavo_msgs/controlLejuClawResponse |
| kuavo_msgs/dexhandCommand | message | message: kuavo_msgs/dexhandCommand |
| kuavo_msgs/dexhandTouchState | message | message: kuavo_msgs/dexhandTouchState |
| kuavo_msgs/eePoseReachError | service | request: kuavo_msgs/eePoseReachErrorRequest, response: kuavo_msgs/eePoseReachErrorResponse |
| kuavo_msgs/enableHandTouchSensor | service | request: kuavo_msgs/enableHandTouchSensorRequest, response: kuavo_msgs/enableHandTouchSensorResponse |
| kuavo_msgs/endEffectorData | message | message: kuavo_msgs/endEffectorData |
| kuavo_msgs/fkSrv | service | request: kuavo_msgs/fkSrvRequest, response: kuavo_msgs/fkSrvResponse |
| kuavo_msgs/fkSrvWithReferFrame | service | request: kuavo_msgs/fkSrvWithReferFrameRequest, response: kuavo_msgs/fkSrvWithReferFrameResponse |
| kuavo_msgs/footPose | message | message: kuavo_msgs/footPose |
| kuavo_msgs/footPose6D | message | message: kuavo_msgs/footPose6D |
| kuavo_msgs/footPose6DTargetTrajectories | message | message: kuavo_msgs/footPose6DTargetTrajectories |
| kuavo_msgs/footPose6DTargetTrajectoriesSrv | service | request: kuavo_msgs/footPose6DTargetTrajectoriesSrvRequest, response: kuavo_msgs/footPose6DTargetTrajectoriesSrvResponse |
| kuavo_msgs/footPoseTargetTrajectories | message | message: kuavo_msgs/footPoseTargetTrajectories |
| kuavo_msgs/footPoseTargetTrajectoriesSrv | service | request: kuavo_msgs/footPoseTargetTrajectoriesSrvRequest, response: kuavo_msgs/footPoseTargetTrajectoriesSrvResponse |
| kuavo_msgs/footPoseWithVision | message | message: kuavo_msgs/footPoseWithVision |
| kuavo_msgs/footPoseWithVisionArray | message | message: kuavo_msgs/footPoseWithVisionArray |
| kuavo_msgs/footPoses | message | message: kuavo_msgs/footPoses |
| kuavo_msgs/footPoses6D | message | message: kuavo_msgs/footPoses6D |
| kuavo_msgs/fullBodyTargetTrajectories | message | message: kuavo_msgs/fullBodyTargetTrajectories |
| kuavo_msgs/gaitTimeName | message | message: kuavo_msgs/gaitTimeName |
| kuavo_msgs/gestureExecute | service | request: kuavo_msgs/gestureExecuteRequest, response: kuavo_msgs/gestureExecuteResponse |
| kuavo_msgs/gestureExecuteState | service | request: kuavo_msgs/gestureExecuteStateRequest, response: kuavo_msgs/gestureExecuteStateResponse |
| kuavo_msgs/gestureInfo | message | message: kuavo_msgs/gestureInfo |
| kuavo_msgs/gestureList | service | request: kuavo_msgs/gestureListRequest, response: kuavo_msgs/gestureListResponse |
| kuavo_msgs/gestureTask | message | message: kuavo_msgs/gestureTask |
| kuavo_msgs/getControllerList | service | request: kuavo_msgs/getControllerListRequest, response: kuavo_msgs/getControllerListResponse |
| kuavo_msgs/getCurrentGaitName | service | request: kuavo_msgs/getCurrentGaitNameRequest, response: kuavo_msgs/getCurrentGaitNameResponse |
| kuavo_msgs/getLbTorsoInitialPose | service | request: kuavo_msgs/getLbTorsoInitialPoseRequest, response: kuavo_msgs/getLbTorsoInitialPoseResponse |
| kuavo_msgs/getMotorParam | service | request: kuavo_msgs/getMotorParamRequest, response: kuavo_msgs/getMotorParamResponse |
| kuavo_msgs/getMotorZeroPoints | service | request: kuavo_msgs/getMotorZeroPointsRequest, response: kuavo_msgs/getMotorZeroPointsResponse |
| kuavo_msgs/goToZeroPoint | service | request: kuavo_msgs/goToZeroPointRequest, response: kuavo_msgs/goToZeroPointResponse |
| kuavo_msgs/handForceLevel | service | request: kuavo_msgs/handForceLevelRequest, response: kuavo_msgs/handForceLevelResponse |
| kuavo_msgs/handPose | message | message: kuavo_msgs/handPose |
| kuavo_msgs/headBodyPose | message | message: kuavo_msgs/headBodyPose |
| kuavo_msgs/headCtrlMode | message | message: kuavo_msgs/headCtrlMode |
| kuavo_msgs/ikSolveError | message | message: kuavo_msgs/ikSolveError |
| kuavo_msgs/ikSolveParam | message | message: kuavo_msgs/ikSolveParam |
| kuavo_msgs/imuData | message | message: kuavo_msgs/imuData |
| kuavo_msgs/jointBezierTrajectory | message | message: kuavo_msgs/jointBezierTrajectory |
| kuavo_msgs/jointCmd | message | message: kuavo_msgs/jointCmd |
| kuavo_msgs/jointData | message | message: kuavo_msgs/jointData |
| kuavo_msgs/jointMoveTo | service | request: kuavo_msgs/jointMoveToRequest, response: kuavo_msgs/jointMoveToResponse |
| kuavo_msgs/kuavoModeSchedule | message | message: kuavo_msgs/kuavoModeSchedule |
| kuavo_msgs/lbBaseLinkPoseCmdSrv | service | request: kuavo_msgs/lbBaseLinkPoseCmdSrvRequest, response: kuavo_msgs/lbBaseLinkPoseCmdSrvResponse |
| kuavo_msgs/lbLegControlSrv | service | request: kuavo_msgs/lbLegControlSrvRequest, response: kuavo_msgs/lbLegControlSrvResponse |
| kuavo_msgs/lbMultiTimedOfflineTraj | service | request: kuavo_msgs/lbMultiTimedOfflineTrajRequest, response: kuavo_msgs/lbMultiTimedOfflineTrajResponse |
| kuavo_msgs/lbMultiTimedPosCmd | service | request: kuavo_msgs/lbMultiTimedPosCmdRequest, response: kuavo_msgs/lbMultiTimedPosCmdResponse |
| kuavo_msgs/lbTimedOfflineTraj | message | message: kuavo_msgs/lbTimedOfflineTraj |
| kuavo_msgs/lbTimedPosCmd | service | request: kuavo_msgs/lbTimedPosCmdRequest, response: kuavo_msgs/lbTimedPosCmdResponse |
| kuavo_msgs/lejuClawCommand | message | message: kuavo_msgs/lejuClawCommand |
| kuavo_msgs/lejuClawRecovery | service | request: kuavo_msgs/lejuClawRecoveryRequest, response: kuavo_msgs/lejuClawRecoveryResponse |
| kuavo_msgs/lejuClawState | message | message: kuavo_msgs/lejuClawState |
| kuavo_msgs/lejuClawTarget | message | message: kuavo_msgs/lejuClawTarget |
| kuavo_msgs/motorParam | message | message: kuavo_msgs/motorParam |
| kuavo_msgs/mpc_input | message | message: kuavo_msgs/mpc_input |
| kuavo_msgs/mpc_state | message | message: kuavo_msgs/mpc_state |
| kuavo_msgs/mpc_target_trajectories | message | message: kuavo_msgs/mpc_target_trajectories |
| kuavo_msgs/picoPoseInfo | message | message: kuavo_msgs/picoPoseInfo |
| kuavo_msgs/picoPoseInfoList | message | message: kuavo_msgs/picoPoseInfoList |
| kuavo_msgs/picoPoseRetarget | message | message: kuavo_msgs/picoPoseRetarget |
| kuavo_msgs/planArmState | message | message: kuavo_msgs/planArmState |
| kuavo_msgs/planArmTrajectoryBezierCurve | service | request: kuavo_msgs/planArmTrajectoryBezierCurveRequest, response: kuavo_msgs/planArmTrajectoryBezierCurveResponse |
| kuavo_msgs/planArmTrajectoryCubicSpline | service | request: kuavo_msgs/planArmTrajectoryCubicSplineRequest, response: kuavo_msgs/planArmTrajectoryCubicSplineResponse |
| kuavo_msgs/playmusic | service | request: kuavo_msgs/playmusicRequest, response: kuavo_msgs/playmusicResponse |
| kuavo_msgs/qv | message | message: kuavo_msgs/qv |
| kuavo_msgs/recordArmHandPose | message | message: kuavo_msgs/recordArmHandPose |
| kuavo_msgs/recordmusic | service | request: kuavo_msgs/recordmusicRequest, response: kuavo_msgs/recordmusicResponse |
| kuavo_msgs/robotArmQVVD | message | message: kuavo_msgs/robotArmQVVD |
| kuavo_msgs/robotBodyMatrices | message | message: kuavo_msgs/robotBodyMatrices |
| kuavo_msgs/robotHandPosition | message | message: kuavo_msgs/robotHandPosition |
| kuavo_msgs/robotHeadMotionData | message | message: kuavo_msgs/robotHeadMotionData |
| kuavo_msgs/robotState | message | message: kuavo_msgs/robotState |
| kuavo_msgs/robotSwitchPose | service | request: kuavo_msgs/robotSwitchPoseRequest, response: kuavo_msgs/robotSwitchPoseResponse |
| kuavo_msgs/robotWaistControl | message | message: kuavo_msgs/robotWaistControl |
| kuavo_msgs/sensorsData | message | message: kuavo_msgs/sensorsData |
| kuavo_msgs/setContactForceInterpParams | service | request: kuavo_msgs/setContactForceInterpParamsRequest, response: kuavo_msgs/setContactForceInterpParamsResponse |
| kuavo_msgs/setHwIntialState | service | request: kuavo_msgs/setHwIntialStateRequest, response: kuavo_msgs/setHwIntialStateResponse |
| kuavo_msgs/setMmCtrlFrame | service | request: kuavo_msgs/setMmCtrlFrameRequest, response: kuavo_msgs/setMmCtrlFrameResponse |
| kuavo_msgs/setMotorEncoderRoundService | service | request: kuavo_msgs/setMotorEncoderRoundServiceRequest, response: kuavo_msgs/setMotorEncoderRoundServiceResponse |
| kuavo_msgs/setRuckigPlannerParams | service | request: kuavo_msgs/setRuckigPlannerParamsRequest, response: kuavo_msgs/setRuckigPlannerParamsResponse |
| kuavo_msgs/setTagId | service | request: kuavo_msgs/setTagIdRequest, response: kuavo_msgs/setTagIdResponse |
| kuavo_msgs/singleStepControl | service | request: kuavo_msgs/singleStepControlRequest, response: kuavo_msgs/singleStepControlResponse |
| kuavo_msgs/stairAlignmentSrv | service | request: kuavo_msgs/stairAlignmentSrvRequest, response: kuavo_msgs/stairAlignmentSrvResponse |
| kuavo_msgs/switchController | service | request: kuavo_msgs/switchControllerRequest, response: kuavo_msgs/switchControllerResponse |
| kuavo_msgs/switchGaitByName | message | message: kuavo_msgs/switchGaitByName |
| kuavo_msgs/switchToNextController | service | request: kuavo_msgs/switchToNextControllerRequest, response: kuavo_msgs/switchToNextControllerResponse |
| kuavo_msgs/tagDataArray | message | message: kuavo_msgs/tagDataArray |
| kuavo_msgs/timedPoint | message | message: kuavo_msgs/timedPoint |
| kuavo_msgs/timedSingleCmd | message | message: kuavo_msgs/timedSingleCmd |
| kuavo_msgs/touchSensorStatus | message | message: kuavo_msgs/touchSensorStatus |
| kuavo_msgs/twoArmHandPose | message | message: kuavo_msgs/twoArmHandPose |
| kuavo_msgs/twoArmHandPoseCmd | message | message: kuavo_msgs/twoArmHandPoseCmd |
| kuavo_msgs/twoArmHandPoseCmdFree | message | message: kuavo_msgs/twoArmHandPoseCmdFree |
| kuavo_msgs/twoArmHandPoseCmdFreeSrv | service | request: kuavo_msgs/twoArmHandPoseCmdFreeSrvRequest, response: kuavo_msgs/twoArmHandPoseCmdFreeSrvResponse |
| kuavo_msgs/twoArmHandPoseCmdSrv | service | request: kuavo_msgs/twoArmHandPoseCmdSrvRequest, response: kuavo_msgs/twoArmHandPoseCmdSrvResponse |
| kuavo_msgs/twoArmHandPoseFree | message | message: kuavo_msgs/twoArmHandPoseFree |
| kuavo_msgs/xsensePoseInfo | message | message: kuavo_msgs/xsensePoseInfo |
| kuavo_msgs/xsensePoseInfoList | message | message: kuavo_msgs/xsensePoseInfoList |
| kuavo_msgs/xsensePoseRetarget | message | message: kuavo_msgs/xsensePoseRetarget |
| kuavo_msgs/yoloDetection | message | message: kuavo_msgs/yoloDetection |
| kuavo_msgs/yoloOutputData | message | message: kuavo_msgs/yoloOutputData |
| kuavo_pico_gmr/AmpJoyRoute | service | request: kuavo_pico_gmr/AmpJoyRouteRequest, response: kuavo_pico_gmr/AmpJoyRouteResponse |
| kuavo_ros_interfaces/armTargetPoses | message | message: kuavo_ros_interfaces/armTargetPoses |
| kuavo_ros_interfaces/bezierCurveCubicPoint | message | message: kuavo_ros_interfaces/bezierCurveCubicPoint |
| kuavo_ros_interfaces/jointBezierTrajectory | message | message: kuavo_ros_interfaces/jointBezierTrajectory |
| kuavo_ros_interfaces/ocs2ChangeArmCtrlMode | service | request: kuavo_ros_interfaces/ocs2ChangeArmCtrlModeRequest, response: kuavo_ros_interfaces/ocs2ChangeArmCtrlModeResponse |
| kuavo_ros_interfaces/planArmState | message | message: kuavo_ros_interfaces/planArmState |
| kuavo_ros_interfaces/planArmTrajectoryBezierCurve | service | request: kuavo_ros_interfaces/planArmTrajectoryBezierCurveRequest, response: kuavo_ros_interfaces/planArmTrajectoryBezierCurveResponse |
| kuavo_ros_interfaces/robotHandPosition | message | message: kuavo_ros_interfaces/robotHandPosition |
| kuavo_ros_interfaces/robotHeadMotionData | message | message: kuavo_ros_interfaces/robotHeadMotionData |
| kuavo_ros_interfaces/stopPlanArmTrajectory | service | request: kuavo_ros_interfaces/stopPlanArmTrajectoryRequest, response: kuavo_ros_interfaces/stopPlanArmTrajectoryResponse |
| leju_mobile_base_msgs/BMS | message | message: leju_mobile_base_msgs/BMS |
| leju_mobile_base_msgs/BaseCmdVelStatus | message | message: leju_mobile_base_msgs/BaseCmdVelStatus |
| leju_mobile_base_msgs/BaseMove | service | request: leju_mobile_base_msgs/BaseMoveRequest, response: leju_mobile_base_msgs/BaseMoveResponse |
| leju_mobile_base_msgs/Battery | message | message: leju_mobile_base_msgs/Battery |
| leju_mobile_base_msgs/CheckArrived | service | request: leju_mobile_base_msgs/CheckArrivedRequest, response: leju_mobile_base_msgs/CheckArrivedResponse |
| leju_mobile_base_msgs/ControlLaserScan | service | request: leju_mobile_base_msgs/ControlLaserScanRequest, response: leju_mobile_base_msgs/ControlLaserScanResponse |
| leju_mobile_base_msgs/DispatchMove | service | request: leju_mobile_base_msgs/DispatchMoveRequest, response: leju_mobile_base_msgs/DispatchMoveResponse |
| leju_mobile_base_msgs/ExecTask | service | request: leju_mobile_base_msgs/ExecTaskRequest, response: leju_mobile_base_msgs/ExecTaskResponse |
| leju_mobile_base_msgs/GetGlobalOdometer | service | request: leju_mobile_base_msgs/GetGlobalOdometerRequest, response: leju_mobile_base_msgs/GetGlobalOdometerResponse |
| leju_mobile_base_msgs/GetLaserScanList | service | request: leju_mobile_base_msgs/GetLaserScanListRequest, response: leju_mobile_base_msgs/GetLaserScanListResponse |
| leju_mobile_base_msgs/HardwareStatus | message | message: leju_mobile_base_msgs/HardwareStatus |
| leju_mobile_base_msgs/Information | message | message: leju_mobile_base_msgs/Information |
| leju_mobile_base_msgs/LED | message | message: leju_mobile_base_msgs/LED |
| leju_mobile_base_msgs/LiftControl3Feedback | message | message: leju_mobile_base_msgs/LiftControl3Feedback |
| leju_mobile_base_msgs/LiftControl3Goal | message | message: leju_mobile_base_msgs/LiftControl3Goal |
| leju_mobile_base_msgs/LiftControl3Result | message | message: leju_mobile_base_msgs/LiftControl3Result |
| leju_mobile_base_msgs/LiftStatus | message | message: leju_mobile_base_msgs/LiftStatus |
| leju_mobile_base_msgs/MoveBaseActionGoal | message | message: leju_mobile_base_msgs/MoveBaseActionGoal |
| leju_mobile_base_msgs/MoveToTarget | service | request: leju_mobile_base_msgs/MoveToTargetRequest, response: leju_mobile_base_msgs/MoveToTargetResponse |
| leju_mobile_base_msgs/MoveToTargetOptions | message | message: leju_mobile_base_msgs/MoveToTargetOptions |
| leju_mobile_base_msgs/NavigationModeGoal | message | message: leju_mobile_base_msgs/NavigationModeGoal |
| leju_mobile_base_msgs/Parameter | message | message: leju_mobile_base_msgs/Parameter |
| leju_mobile_base_msgs/ResetTemporaryOdometer | service | request: leju_mobile_base_msgs/ResetTemporaryOdometerRequest, response: leju_mobile_base_msgs/ResetTemporaryOdometerResponse |
| leju_mobile_base_msgs/RobotStatus | message | message: leju_mobile_base_msgs/RobotStatus |
| leju_mobile_base_msgs/SetDispatchMode | service | request: leju_mobile_base_msgs/SetDispatchModeRequest, response: leju_mobile_base_msgs/SetDispatchModeResponse |
| leju_mobile_base_msgs/SetMapServer | service | request: leju_mobile_base_msgs/SetMapServerRequest, response: leju_mobile_base_msgs/SetMapServerResponse |
| leju_mobile_base_msgs/StartLocalization | service | request: leju_mobile_base_msgs/StartLocalizationRequest, response: leju_mobile_base_msgs/StartLocalizationResponse |
| leju_mobile_base_msgs/StepControlGoal | message | message: leju_mobile_base_msgs/StepControlGoal |
| leju_mobile_base_msgs/SyncCostmap | service | request: leju_mobile_base_msgs/SyncCostmapRequest, response: leju_mobile_base_msgs/SyncCostmapResponse |
| leju_mobile_base_msgs/TaskDetailStatus | message | message: leju_mobile_base_msgs/TaskDetailStatus |
| motioncapture/ForcePlateData | message | message: motioncapture/ForcePlateData |
| nav_msgs/Path | message | message: nav_msgs/Path |
| network_monitor/NetworkPing | service | request: network_monitor/NetworkPingRequest, response: network_monitor/NetworkPingResponse |
| network_monitor/NetworkPingMsg | message | message: network_monitor/NetworkPingMsg |
| nimservos_controller/motor_cmd | message | message: nimservos_controller/motor_cmd |
| nimservos_controller/motor_state | message | message: nimservos_controller/motor_state |
| nlink_parser/IotFrame0 | message | message: nlink_parser/IotFrame0 |
| nlink_parser/IotFrame0Node | message | message: nlink_parser/IotFrame0Node |
| nlink_parser/LinktrackAnchorframe0 | message | message: nlink_parser/LinktrackAnchorframe0 |
| nlink_parser/LinktrackAoaNode0 | message | message: nlink_parser/LinktrackAoaNode0 |
| nlink_parser/LinktrackAoaNodeframe0 | message | message: nlink_parser/LinktrackAoaNodeframe0 |
| nlink_parser/LinktrackNode0 | message | message: nlink_parser/LinktrackNode0 |
| nlink_parser/LinktrackNode1 | message | message: nlink_parser/LinktrackNode1 |
| nlink_parser/LinktrackNode2 | message | message: nlink_parser/LinktrackNode2 |
| nlink_parser/LinktrackNode4Anchor | message | message: nlink_parser/LinktrackNode4Anchor |
| nlink_parser/LinktrackNode4Tag | message | message: nlink_parser/LinktrackNode4Tag |
| nlink_parser/LinktrackNode5 | message | message: nlink_parser/LinktrackNode5 |
| nlink_parser/LinktrackNode6 | message | message: nlink_parser/LinktrackNode6 |
| nlink_parser/LinktrackNodeframe0 | message | message: nlink_parser/LinktrackNodeframe0 |
| nlink_parser/LinktrackNodeframe1 | message | message: nlink_parser/LinktrackNodeframe1 |
| nlink_parser/LinktrackNodeframe2 | message | message: nlink_parser/LinktrackNodeframe2 |
| nlink_parser/LinktrackNodeframe3 | message | message: nlink_parser/LinktrackNodeframe3 |
| nlink_parser/LinktrackNodeframe4 | message | message: nlink_parser/LinktrackNodeframe4 |
| nlink_parser/LinktrackNodeframe5 | message | message: nlink_parser/LinktrackNodeframe5 |
| nlink_parser/LinktrackNodeframe6 | message | message: nlink_parser/LinktrackNodeframe6 |
| nlink_parser/LinktrackTag | message | message: nlink_parser/LinktrackTag |
| nlink_parser/LinktrackTagframe0 | message | message: nlink_parser/LinktrackTagframe0 |
| nlink_parser/TofsenseCascade | message | message: nlink_parser/TofsenseCascade |
| nlink_parser/TofsenseFrame0 | message | message: nlink_parser/TofsenseFrame0 |
| nlink_parser/TofsenseMFrame0 | message | message: nlink_parser/TofsenseMFrame0 |
| nlink_parser/TofsenseMFrame0Pixel | message | message: nlink_parser/TofsenseMFrame0Pixel |
| noitom_hi5_hand_udp_python/JoySticks | message | message: noitom_hi5_hand_udp_python/JoySticks |
| noitom_hi5_hand_udp_python/PoseInfo | message | message: noitom_hi5_hand_udp_python/PoseInfo |
| noitom_hi5_hand_udp_python/PoseInfoList | message | message: noitom_hi5_hand_udp_python/PoseInfoList |
| noitom_hi5_hand_udp_python/QuaternionArray | message | message: noitom_hi5_hand_udp_python/QuaternionArray |
| noitom_hi5_hand_udp_python/Vector4 | message | message: noitom_hi5_hand_udp_python/Vector4 |
| noitom_hi5_hand_udp_python/handRotation | message | message: noitom_hi5_hand_udp_python/handRotation |
| noitom_hi5_hand_udp_python/handRotationEular | message | message: noitom_hi5_hand_udp_python/handRotationEular |
| ocs2_msgs/constraint | message | message: ocs2_msgs/constraint |
| ocs2_msgs/controller_data | message | message: ocs2_msgs/controller_data |
| ocs2_msgs/lagrangian_metrics | message | message: ocs2_msgs/lagrangian_metrics |
| ocs2_msgs/mode_schedule | message | message: ocs2_msgs/mode_schedule |
| ocs2_msgs/mpc_flattened_controller | message | message: ocs2_msgs/mpc_flattened_controller |
| ocs2_msgs/mpc_input | message | message: ocs2_msgs/mpc_input |
| ocs2_msgs/mpc_observation | message | message: ocs2_msgs/mpc_observation |
| ocs2_msgs/mpc_performance_indices | message | message: ocs2_msgs/mpc_performance_indices |
| ocs2_msgs/mpc_solver_data | message | message: ocs2_msgs/mpc_solver_data |
| ocs2_msgs/mpc_state | message | message: ocs2_msgs/mpc_state |
| ocs2_msgs/mpc_target_trajectories | message | message: ocs2_msgs/mpc_target_trajectories |
| ocs2_msgs/multiplier | message | message: ocs2_msgs/multiplier |
| ocs2_msgs/pause_resume | service | request: ocs2_msgs/pause_resumeRequest, response: ocs2_msgs/pause_resumeResponse |
| ocs2_msgs/reset | service | request: ocs2_msgs/resetRequest, response: ocs2_msgs/resetResponse |
| ocs2_switched_model_msgs/gait | message | message: ocs2_switched_model_msgs/gait |
| ocs2_switched_model_msgs/gait_sequence | message | message: ocs2_switched_model_msgs/gait_sequence |
| ocs2_switched_model_msgs/scheduled_gait_sequence | message | message: ocs2_switched_model_msgs/scheduled_gait_sequence |
| ocs2_switched_model_msgs/trajectory_request | service | request: ocs2_switched_model_msgs/trajectory_requestRequest, response: ocs2_switched_model_msgs/trajectory_requestResponse |
| robot_calibration_msgs/CalibrationData | message | message: robot_calibration_msgs/CalibrationData |
| robot_calibration_msgs/CameraParameter | message | message: robot_calibration_msgs/CameraParameter |
| robot_calibration_msgs/CaptureConfig | message | message: robot_calibration_msgs/CaptureConfig |
| robot_calibration_msgs/ExtendedCameraInfo | message | message: robot_calibration_msgs/ExtendedCameraInfo |
| robot_calibration_msgs/GripperLedCommand | action | goal: robot_calibration_msgs/GripperLedCommandGoal, result: robot_calibration_msgs/GripperLedCommandResult, feedback: robot_calibration_msgs/GripperLedCommandFeedback |
| robot_calibration_msgs/Observation | message | message: robot_calibration_msgs/Observation |
| robot_localization/FromLL | service | request: robot_localization/FromLLRequest, response: robot_localization/FromLLResponse |
| robot_localization/GetState | service | request: robot_localization/GetStateRequest, response: robot_localization/GetStateResponse |
| robot_localization/SetDatum | service | request: robot_localization/SetDatumRequest, response: robot_localization/SetDatumResponse |
| robot_localization/SetPose | service | request: robot_localization/SetPoseRequest, response: robot_localization/SetPoseResponse |
| robot_localization/SetUTMZone | service | request: robot_localization/SetUTMZoneRequest, response: robot_localization/SetUTMZoneResponse |
| robot_localization/ToLL | service | request: robot_localization/ToLLRequest, response: robot_localization/ToLLResponse |
| robot_localization/ToggleFilterProcessing | service | request: robot_localization/ToggleFilterProcessingRequest, response: robot_localization/ToggleFilterProcessingResponse |
| sensor_msgs/CameraInfo | message | message: sensor_msgs/CameraInfo |
| sensor_msgs/Image | message | message: sensor_msgs/Image |
| sensor_msgs/JointState | message | message: sensor_msgs/JointState |
| sensor_msgs/PointCloud2 | message | message: sensor_msgs/PointCloud2 |
| sensor_msgs/PointField | message | message: sensor_msgs/PointField |
| sensor_msgs/RegionOfInterest | message | message: sensor_msgs/RegionOfInterest |
| std_msgs/Float32MultiArray | message | message: std_msgs/Float32MultiArray |
| std_msgs/Float64MultiArray | message | message: std_msgs/Float64MultiArray |
| std_msgs/Header | message | message: std_msgs/Header |
| std_msgs/MultiArrayDimension | message | message: std_msgs/MultiArrayDimension |
| std_msgs/MultiArrayLayout | message | message: std_msgs/MultiArrayLayout |
| taiji_trigger_node/PerformTaiji | service | request: taiji_trigger_node/PerformTaijiRequest, response: taiji_trigger_node/PerformTaijiResponse |
| trajectory_msgs/JointTrajectory | message | message: trajectory_msgs/JointTrajectory |
| trajectory_msgs/JointTrajectoryPoint | message | message: trajectory_msgs/JointTrajectoryPoint |
| user_pkg/piddebug | message | message: user_pkg/piddebug |
| user_pkg/uwbdebug | message | message: user_pkg/uwbdebug |
| wiimote/IrSourceInfo | message | message: wiimote/IrSourceInfo |
| wiimote/State | message | message: wiimote/State |
| wiimote/TimedSwitch | message | message: wiimote/TimedSwitch |
