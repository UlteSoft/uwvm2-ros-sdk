# unitree TypeScript — 完整类型手册

**构建与执行验收按示例精确字节的独立收据记录。** 使用唯一 Microsoft TypeScript5.9.3 编译器做严格语义检查并发射 ESM，再由同一个 QuickJS guest 解析运行。父任务的公共编译链证据不等于本平台新增程序的验收。

`set_language("typescript")` · `.ts` / `.mts` · `set_ros_platform("unitree")` · WASI Preview1 · wasm32/wasm64

公开入口是 `unitree/typescript/rosN/records` 和 `unitree/typescript/transport`。records 导出所有字段接口、真实构造器别名、完整 Decode/Encode 类型、REGISTRY、原生 CONSTANTS、fixed 和 bounded。构造器接受 Partial<原始字段>，创建独立默认值；赋值仍按原始字段名和大小写。没有 any 字段，也没有去类型正则、AS 编译器或第二套 JS 引擎。

构造器别名保留原始 JS 对象身份：不能通过继承创建新记录类，否则嵌套 codec 的严格构造器检查会拒绝。类型外观只在唯一可信 bridge 处把已固定的原始类声明为完整接口，同时检查 schema 类型、编码身份和字节上下限；所有真实数值仍由公共 codec 逐字段校验。不要修改 schema。

int64/uint64 必须是 bigint；其他整数使用 number 并在运行时检查整数与宽度。bool 使用 boolean；float32/64 必须有限，保留负零；UTF-8 字符串拒绝非法代理与 NUL 并按编码后字节限额。固定数组和 sequence 都是真正 Array，fixed/bounded 先复制并检查长度，encoder 继续验证原始 quota。raw 字符串若有则使用 Uint8Array，不能与字符串混用。

Encode 返回新 Uint8Array；Decode 借用完整输入并在所有域、字节限额、跨字段语义和 EOF 校验后返回新值。错误抛出公共 CodecError，不暴露半条记录或部分结果。同步调用期间不得并发修改输入。身份或 native_identity=null 不会产生原生兼容性与授权。

## 三个独立开发项目

- `wire_encode`: 完整强类型字段由调用方缩放参数生成，输出可复用 canonical hex 和类型身份。
- `wire_decode`: 解析调用方提供的 hex 帧，打印每个原始字段；精确 bigint 输出十进制字符串。
- `native_observation`: 完整记录，仅手工 offline_value 别名；默认 ROS 关闭且无 grants，原始拒绝为 primary13/exit13。

各项目在目录内执行 xmake f -p wasm-wasip1 -a wasm32（或 wasm64），然后 xmake；设置 UWVM_ROS_SDK_ROOT。每次输出一个 Wasm，编译不启动 ROS。在 deployment.json 的 arguments 中修改缩放参数或输入 hex。输入参数经过有限数值或十六进制/字节长度检查；字段域与 EOF 由真实 codec 校验，失败返回22。JSON 显示负零为0；二进制编码保留符号位。编译反例与全目录验收源码归属 uwvm2-ros/test/0073.ros-tests/sdk，不随 SDK 发布。

Capability.open 保留 [owner|null, errno]；handle 是 bigint|null，invoke 返回 [errno, owned bytes, required|null, value|null]。close 在一次导入前就标记退役；只尝试一次、不自动重放。primary、RPC、cleanup 分开保存；未获得 owner 就不 close。正向原生测试必须由调用方手工配置受控离线话题与精确类型/身份，不包含物理控制。

## 全部记录和字段

### ros1

#### `Ros1Unitree_legged_msgsBmsCmd`

`unitree_legged_msgs/BmsCmd` · 4..4 bytes · native `c09195f3200bd8917201f8805a3fe1d1`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `off` | `number` | `uint8` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint8` | array / 3 | 0 |

#### `Ros1Unitree_legged_msgsBmsState`

`unitree_legged_msgs/BmsState` · 34..34 bytes · native `8e007c660c590388bca7c2464d80df54`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `version_h` | `number` | `uint8` | scalar / 0 | 0 |
| `version_l` | `number` | `uint8` | scalar / 0 | 0 |
| `bms_status` | `number` | `uint8` | scalar / 0 | 0 |
| `SOC` | `number` | `uint8` | scalar / 0 | 0 |
| `current` | `number` | `int32` | scalar / 0 | 0 |
| `cycle` | `number` | `uint16` | scalar / 0 | 0 |
| `BQ_NTC` | `number[]` | `int8` | array / 2 | 0 |
| `MCU_NTC` | `number[]` | `int8` | array / 2 | 0 |
| `cell_vol` | `number[]` | `uint16` | array / 10 | 0 |

#### `Ros1Unitree_legged_msgsCartesian`

`unitree_legged_msgs/Cartesian` · 12..12 bytes · native `cc153912f1453b708d221682bc23d9ac`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `x` | `number` | `float32` | scalar / 0 | 0 |
| `y` | `number` | `float32` | scalar / 0 | 0 |
| `z` | `number` | `float32` | scalar / 0 | 0 |

#### `Ros1Unitree_legged_msgsLED`

`unitree_legged_msgs/LED` · 3..3 bytes · native `353891e354491c51aabe32df673fb446`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `r` | `number` | `uint8` | scalar / 0 | 0 |
| `g` | `number` | `uint8` | scalar / 0 | 0 |
| `b` | `number` | `uint8` | scalar / 0 | 0 |

#### `Ros1Unitree_legged_msgsHighCmd`

`unitree_legged_msgs/HighCmd` · 129..129 bytes · native `b4825051cf66ae8183b54c57dba16b66`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `head` | `number[]` | `uint8` | array / 2 | 0 |
| `levelFlag` | `number` | `uint8` | scalar / 0 | 0 |
| `frameReserve` | `number` | `uint8` | scalar / 0 | 0 |
| `SN` | `number[]` | `uint32` | array / 2 | 0 |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `bandWidth` | `number` | `uint16` | scalar / 0 | 0 |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `gaitType` | `number` | `uint8` | scalar / 0 | 0 |
| `speedLevel` | `number` | `uint8` | scalar / 0 | 0 |
| `footRaiseHeight` | `number` | `float32` | scalar / 0 | 0 |
| `bodyHeight` | `number` | `float32` | scalar / 0 | 0 |
| `position` | `number[]` | `float32` | array / 2 | 0 |
| `euler` | `number[]` | `float32` | array / 3 | 0 |
| `velocity` | `number[]` | `float32` | array / 2 | 0 |
| `yawSpeed` | `number` | `float32` | scalar / 0 | 0 |
| `bms` | `Ros1Unitree_legged_msgsBmsCmd` | `unitree_legged_msgs/BmsCmd` | scalar / 0 | 0 |
| `led` | `Ros1Unitree_legged_msgsLED[]` | `unitree_legged_msgs/LED` | array / 4 | 0 |
| `wirelessRemote` | `number[]` | `uint8` | array / 40 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros1Unitree_legged_msgsIMU`

`unitree_legged_msgs/IMU` · 53..53 bytes · native `c2bcd83820da00fff261b67d6490da58`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `quaternion` | `number[]` | `float32` | array / 4 | 0 |
| `gyroscope` | `number[]` | `float32` | array / 3 | 0 |
| `accelerometer` | `number[]` | `float32` | array / 3 | 0 |
| `rpy` | `number[]` | `float32` | array / 3 | 0 |
| `temperature` | `number` | `int8` | scalar / 0 | 0 |

#### `Ros1Unitree_legged_msgsMotorState`

`unitree_legged_msgs/MotorState` · 38..38 bytes · native `94c55ee3b7852be2bd437b20ce12a254`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `q` | `number` | `float32` | scalar / 0 | 0 |
| `dq` | `number` | `float32` | scalar / 0 | 0 |
| `ddq` | `number` | `float32` | scalar / 0 | 0 |
| `tauEst` | `number` | `float32` | scalar / 0 | 0 |
| `q_raw` | `number` | `float32` | scalar / 0 | 0 |
| `dq_raw` | `number` | `float32` | scalar / 0 | 0 |
| `ddq_raw` | `number` | `float32` | scalar / 0 | 0 |
| `temperature` | `number` | `int8` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint32` | array / 2 | 0 |

#### `Ros1Unitree_legged_msgsHighState`

`unitree_legged_msgs/HighState` · 1087..1087 bytes · native `7904f43019dadf7640d573b4c14b9066`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `head` | `number[]` | `uint8` | array / 2 | 0 |
| `levelFlag` | `number` | `uint8` | scalar / 0 | 0 |
| `frameReserve` | `number` | `uint8` | scalar / 0 | 0 |
| `SN` | `number[]` | `uint32` | array / 2 | 0 |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `bandWidth` | `number` | `uint16` | scalar / 0 | 0 |
| `imu` | `Ros1Unitree_legged_msgsIMU` | `unitree_legged_msgs/IMU` | scalar / 0 | 0 |
| `motorState` | `Ros1Unitree_legged_msgsMotorState[]` | `unitree_legged_msgs/MotorState` | array / 20 | 0 |
| `bms` | `Ros1Unitree_legged_msgsBmsState` | `unitree_legged_msgs/BmsState` | scalar / 0 | 0 |
| `footForce` | `number[]` | `int16` | array / 4 | 0 |
| `footForceEst` | `number[]` | `int16` | array / 4 | 0 |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `progress` | `number` | `float32` | scalar / 0 | 0 |
| `gaitType` | `number` | `uint8` | scalar / 0 | 0 |
| `footRaiseHeight` | `number` | `float32` | scalar / 0 | 0 |
| `position` | `number[]` | `float32` | array / 3 | 0 |
| `bodyHeight` | `number` | `float32` | scalar / 0 | 0 |
| `velocity` | `number[]` | `float32` | array / 3 | 0 |
| `yawSpeed` | `number` | `float32` | scalar / 0 | 0 |
| `rangeObstacle` | `number[]` | `float32` | array / 4 | 0 |
| `footPosition2Body` | `Ros1Unitree_legged_msgsCartesian[]` | `unitree_legged_msgs/Cartesian` | array / 4 | 0 |
| `footSpeed2Body` | `Ros1Unitree_legged_msgsCartesian[]` | `unitree_legged_msgs/Cartesian` | array / 4 | 0 |
| `wirelessRemote` | `number[]` | `uint8` | array / 40 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros1Unitree_legged_msgsMotorCmd`

`unitree_legged_msgs/MotorCmd` · 33..33 bytes · native `bbb3b7d91319c3a1b99055f0149ba221`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `q` | `number` | `float32` | scalar / 0 | 0 |
| `dq` | `number` | `float32` | scalar / 0 | 0 |
| `tau` | `number` | `float32` | scalar / 0 | 0 |
| `Kp` | `number` | `float32` | scalar / 0 | 0 |
| `Kd` | `number` | `float32` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint32` | array / 3 | 0 |

#### `Ros1Unitree_legged_msgsLowCmd`

`unitree_legged_msgs/LowCmd` · 734..734 bytes · native `7a33b01032a894134df9b65b5cd356d1`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `head` | `number[]` | `uint8` | array / 2 | 0 |
| `levelFlag` | `number` | `uint8` | scalar / 0 | 0 |
| `frameReserve` | `number` | `uint8` | scalar / 0 | 0 |
| `SN` | `number[]` | `uint32` | array / 2 | 0 |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `bandWidth` | `number` | `uint16` | scalar / 0 | 0 |
| `motorCmd` | `Ros1Unitree_legged_msgsMotorCmd[]` | `unitree_legged_msgs/MotorCmd` | array / 20 | 0 |
| `bms` | `Ros1Unitree_legged_msgsBmsCmd` | `unitree_legged_msgs/BmsCmd` | scalar / 0 | 0 |
| `wirelessRemote` | `number[]` | `uint8` | array / 40 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros1Unitree_legged_msgsLowState`

`unitree_legged_msgs/LowState` · 1069..1069 bytes · native `481f8a83f729a25e7cc170da192f80f9`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `head` | `number[]` | `uint8` | array / 2 | 0 |
| `levelFlag` | `number` | `uint8` | scalar / 0 | 0 |
| `frameReserve` | `number` | `uint8` | scalar / 0 | 0 |
| `SN` | `number[]` | `uint32` | array / 2 | 0 |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `bandWidth` | `number` | `uint16` | scalar / 0 | 0 |
| `imu` | `Ros1Unitree_legged_msgsIMU` | `unitree_legged_msgs/IMU` | scalar / 0 | 0 |
| `motorState` | `Ros1Unitree_legged_msgsMotorState[]` | `unitree_legged_msgs/MotorState` | array / 20 | 0 |
| `bms` | `Ros1Unitree_legged_msgsBmsState` | `unitree_legged_msgs/BmsState` | scalar / 0 | 0 |
| `footForce` | `number[]` | `int16` | array / 4 | 0 |
| `footForceEst` | `number[]` | `int16` | array / 4 | 0 |
| `tick` | `number` | `uint32` | scalar / 0 | 0 |
| `wirelessRemote` | `number[]` | `uint8` | array / 40 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |
| `eeForceRaw` | `Ros1Unitree_legged_msgsCartesian[]` | `unitree_legged_msgs/Cartesian` | array / 4 | 0 |
| `eeForce` | `Ros1Unitree_legged_msgsCartesian[]` | `unitree_legged_msgs/Cartesian` | array / 4 | 0 |
| `position` | `Ros1Unitree_legged_msgsCartesian` | `unitree_legged_msgs/Cartesian` | scalar / 0 | 0 |
| `velocity` | `Ros1Unitree_legged_msgsCartesian` | `unitree_legged_msgs/Cartesian` | scalar / 0 | 0 |
| `velocity_w` | `Ros1Unitree_legged_msgsCartesian` | `unitree_legged_msgs/Cartesian` | scalar / 0 | 0 |

### ros2

#### `Ros2Unitree_apiMsgRequestIdentity`

`unitree_api/msg/RequestIdentity` · 16..16 bytes · native `RIHS01_912fcf308a7cd6e27ea3aeea02515f587fa666b76af1963660429995f0e381c6`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `id` | `bigint` | `int64` | scalar / 0 | 0 |
| `api_id` | `bigint` | `int64` | scalar / 0 | 0 |

#### `Ros2Unitree_apiMsgRequestLease`

`unitree_api/msg/RequestLease` · 8..8 bytes · native `RIHS01_16b5c2257d5280a095e3e4fe26a48e782e294fa3d68760ce38599260a344bf4e`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `id` | `bigint` | `int64` | scalar / 0 | 0 |

#### `Ros2Unitree_apiMsgRequestPolicy`

`unitree_api/msg/RequestPolicy` · 5..5 bytes · native `RIHS01_742c3612b991be55430d1847af4afb2f119069f2e16e3a2143c6352a94ef35e4`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `priority` | `number` | `int32` | scalar / 0 | 0 |
| `noreply` | `boolean` | `bool` | scalar / 0 | 0 |

#### `Ros2Unitree_apiMsgRequestHeader`

`unitree_api/msg/RequestHeader` · 29..29 bytes · native `RIHS01_4273d5fbe6bee52502f55a6a73427e4ae2f12329f175d7c07b95341fd527acff`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `identity` | `Ros2Unitree_apiMsgRequestIdentity` | `unitree_api/msg/RequestIdentity` | scalar / 0 | 0 |
| `lease` | `Ros2Unitree_apiMsgRequestLease` | `unitree_api/msg/RequestLease` | scalar / 0 | 0 |
| `policy` | `Ros2Unitree_apiMsgRequestPolicy` | `unitree_api/msg/RequestPolicy` | scalar / 0 | 0 |

#### `Ros2Unitree_apiMsgRequest`

`unitree_api/msg/Request` · 37..4133 bytes · native `RIHS01_60dda80d19538b06c8f79b77222b1b7642dd753b8439a6bd535ff0cba08c5378`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `header` | `Ros2Unitree_apiMsgRequestHeader` | `unitree_api/msg/RequestHeader` | scalar / 0 | 0 |
| `parameter` | `string` | `string` | scalar / 0 | 2048 |
| `binary` | `number[]` | `uint8` | sequence / 2048 | 0 |

#### `Ros2Unitree_apiMsgResponseStatus`

`unitree_api/msg/ResponseStatus` · 4..4 bytes · native `RIHS01_282afd2a97771014abb1f5aead0fd244d648d475f55a82b0c3c41232a8c527f7`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `code` | `number` | `int32` | scalar / 0 | 0 |

#### `Ros2Unitree_apiMsgResponseHeader`

`unitree_api/msg/ResponseHeader` · 20..20 bytes · native `RIHS01_eba136c930271eec2fc582cfccc5948f8af3fe4431492842a03a3dacb1b0d765`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `identity` | `Ros2Unitree_apiMsgRequestIdentity` | `unitree_api/msg/RequestIdentity` | scalar / 0 | 0 |
| `status` | `Ros2Unitree_apiMsgResponseStatus` | `unitree_api/msg/ResponseStatus` | scalar / 0 | 0 |

#### `Ros2Unitree_apiMsgResponse`

`unitree_api/msg/Response` · 28..2108 bytes · native `RIHS01_5300d019bb652073e7248995c878765c68ab519bcbdbad2e2a17c81abd8888b9`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `header` | `Ros2Unitree_apiMsgResponseHeader` | `unitree_api/msg/ResponseHeader` | scalar / 0 | 0 |
| `data` | `string` | `string` | scalar / 0 | 2048 |
| `binary` | `number[]` | `int8` | sequence / 32 | 0 |

#### `Ros2Unitree_goMsgAudioData`

`unitree_go/msg/AudioData` · 12..2060 bytes · native `RIHS01_55973ff982f53f02855ff34a184f00ee63b68a3f65b19152448f9fd7558e7dc5`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `time_frame` | `bigint` | `uint64` | scalar / 0 | 0 |
| `data` | `number[]` | `uint8` | sequence / 2048 | 0 |

#### `Ros2Unitree_goMsgBmsCmd`

`unitree_go/msg/BmsCmd` · 4..4 bytes · native `RIHS01_815310dff4ebba1e0d37802dfdc56d4b5a849761f613954172bdb4476aed5aa2`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `off` | `number` | `uint8` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint8` | array / 3 | 0 |

#### `Ros2Unitree_goMsgBmsState`

`unitree_go/msg/BmsState` · 44..44 bytes · native `RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `version_high` | `number` | `uint8` | scalar / 0 | 0 |
| `version_low` | `number` | `uint8` | scalar / 0 | 0 |
| `status` | `number` | `uint8` | scalar / 0 | 0 |
| `soc` | `number` | `uint8` | scalar / 0 | 0 |
| `current` | `number` | `int32` | scalar / 0 | 0 |
| `cycle` | `number` | `uint16` | scalar / 0 | 0 |
| `bq_ntc` | `number[]` | `int8` | array / 2 | 0 |
| `mcu_ntc` | `number[]` | `int8` | array / 2 | 0 |
| `cell_vol` | `number[]` | `uint16` | array / 15 | 0 |

#### `Ros2Unitree_goMsgError`

`unitree_go/msg/Error` · 8..8 bytes · native `RIHS01_7b40e63303d9092153a3914bb136ecee44ba37d8b827b11b142444eda9bc9450`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `source` | `number` | `uint32` | scalar / 0 | 0 |
| `state` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgGo2FrontVideoData`

`unitree_go/msg/Go2FrontVideoData` · 20..6164 bytes · native `RIHS01_f548f7ccf101bb0255b0541484ab42aaac31305ccba06db976a8a19a3dbb1a33`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `time_frame` | `bigint` | `uint64` | scalar / 0 | 0 |
| `video720p` | `number[]` | `uint8` | sequence / 2048 | 0 |
| `video360p` | `number[]` | `uint8` | sequence / 2048 | 0 |
| `video180p` | `number[]` | `uint8` | sequence / 2048 | 0 |

#### `Ros2Unitree_goMsgHeightMap`

`unitree_go/msg/HeightMap` · 36..2212 bytes · native `RIHS01_68275718093f292da4fa0cb893b0e77660de92eb950691e1fe9f499d6cf5bff3`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `stamp` | `number` | `float64` | scalar / 0 | 0 |
| `frame_id` | `string` | `string` | scalar / 0 | 2048 |
| `resolution` | `number` | `float32` | scalar / 0 | 0 |
| `width` | `number` | `uint32` | scalar / 0 | 0 |
| `height` | `number` | `uint32` | scalar / 0 | 0 |
| `origin` | `number[]` | `float32` | array / 2 | 0 |
| `data` | `number[]` | `float32` | sequence / 32 | 0 |

#### `Ros2Unitree_goMsgIMUState`

`unitree_go/msg/IMUState` · 53..53 bytes · native `RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `quaternion` | `number[]` | `float32` | array / 4 | 0 |
| `gyroscope` | `number[]` | `float32` | array / 3 | 0 |
| `accelerometer` | `number[]` | `float32` | array / 3 | 0 |
| `rpy` | `number[]` | `float32` | array / 3 | 0 |
| `temperature` | `number` | `int8` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgInterfaceConfig`

`unitree_go/msg/InterfaceConfig` · 4..4 bytes · native `RIHS01_78cdda3cfbbfeb9b32fca9a056727419ed88f908ed99c64e7b810f35281be61b`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `value` | `number` | `uint8` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint8` | array / 2 | 0 |

#### `Ros2Unitree_goMsgLidarState`

`unitree_go/msg/LidarState` · 81..6225 bytes · native `RIHS01_3a1405d747c51d6b5cf548ee67bc7b63d54b71673a54365fd67d6d09b7599d18`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `stamp` | `number` | `float64` | scalar / 0 | 0 |
| `firmware_version` | `string` | `string` | scalar / 0 | 2048 |
| `software_version` | `string` | `string` | scalar / 0 | 2048 |
| `sdk_version` | `string` | `string` | scalar / 0 | 2048 |
| `sys_rotation_speed` | `number` | `float32` | scalar / 0 | 0 |
| `com_rotation_speed` | `number` | `float32` | scalar / 0 | 0 |
| `error_state` | `number` | `uint8` | scalar / 0 | 0 |
| `cloud_frequency` | `number` | `float32` | scalar / 0 | 0 |
| `cloud_packet_loss_rate` | `number` | `float32` | scalar / 0 | 0 |
| `cloud_size` | `number` | `uint32` | scalar / 0 | 0 |
| `cloud_scan_num` | `number` | `uint32` | scalar / 0 | 0 |
| `imu_frequency` | `number` | `float32` | scalar / 0 | 0 |
| `imu_packet_loss_rate` | `number` | `float32` | scalar / 0 | 0 |
| `imu_rpy` | `number[]` | `float32` | array / 3 | 0 |
| `serial_recv_stamp` | `number` | `float64` | scalar / 0 | 0 |
| `serial_buffer_size` | `number` | `uint32` | scalar / 0 | 0 |
| `serial_buffer_read` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgMotorCmd`

`unitree_go/msg/MotorCmd` · 33..33 bytes · native `RIHS01_4581f18a3bf58baad04f12f51747f2dd388f64aa2ac997d1d64777563c627fbf`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `q` | `number` | `float32` | scalar / 0 | 0 |
| `dq` | `number` | `float32` | scalar / 0 | 0 |
| `tau` | `number` | `float32` | scalar / 0 | 0 |
| `kp` | `number` | `float32` | scalar / 0 | 0 |
| `kd` | `number` | `float32` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint32` | array / 3 | 0 |

#### `Ros2Unitree_goMsgLowCmd`

`unitree_go/msg/LowCmd` · 749..749 bytes · native `RIHS01_0da1142c994d184f6102948c3acf52b9557836cfe5062b924a1f08ac8b72dc34`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `head` | `number[]` | `uint8` | array / 2 | 0 |
| `level_flag` | `number` | `uint8` | scalar / 0 | 0 |
| `frame_reserve` | `number` | `uint8` | scalar / 0 | 0 |
| `sn` | `number[]` | `uint32` | array / 2 | 0 |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `bandwidth` | `number` | `uint16` | scalar / 0 | 0 |
| `motor_cmd` | `Ros2Unitree_goMsgMotorCmd[]` | `unitree_go/msg/MotorCmd` | array / 20 | 0 |
| `bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | `unitree_go/msg/BmsCmd` | scalar / 0 | 0 |
| `wireless_remote` | `number[]` | `uint8` | array / 40 | 0 |
| `led` | `number[]` | `uint8` | array / 12 | 0 |
| `fan` | `number[]` | `uint8` | array / 2 | 0 |
| `gpio` | `number` | `uint8` | scalar / 0 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgMotorState`

`unitree_go/msg/MotorState` · 42..42 bytes · native `RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `q` | `number` | `float32` | scalar / 0 | 0 |
| `dq` | `number` | `float32` | scalar / 0 | 0 |
| `ddq` | `number` | `float32` | scalar / 0 | 0 |
| `tau_est` | `number` | `float32` | scalar / 0 | 0 |
| `q_raw` | `number` | `float32` | scalar / 0 | 0 |
| `dq_raw` | `number` | `float32` | scalar / 0 | 0 |
| `ddq_raw` | `number` | `float32` | scalar / 0 | 0 |
| `temperature` | `number` | `int8` | scalar / 0 | 0 |
| `lost` | `number` | `uint32` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint32` | array / 2 | 0 |

#### `Ros2Unitree_goMsgLowState`

`unitree_go/msg/LowState` · 1050..1050 bytes · native `RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `head` | `number[]` | `uint8` | array / 2 | 0 |
| `level_flag` | `number` | `uint8` | scalar / 0 | 0 |
| `frame_reserve` | `number` | `uint8` | scalar / 0 | 0 |
| `sn` | `number[]` | `uint32` | array / 2 | 0 |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `bandwidth` | `number` | `uint16` | scalar / 0 | 0 |
| `imu_state` | `Ros2Unitree_goMsgIMUState` | `unitree_go/msg/IMUState` | scalar / 0 | 0 |
| `motor_state` | `Ros2Unitree_goMsgMotorState[]` | `unitree_go/msg/MotorState` | array / 20 | 0 |
| `bms_state` | `Ros2Unitree_goMsgBmsState` | `unitree_go/msg/BmsState` | scalar / 0 | 0 |
| `foot_force` | `number[]` | `int16` | array / 4 | 0 |
| `foot_force_est` | `number[]` | `int16` | array / 4 | 0 |
| `tick` | `number` | `uint32` | scalar / 0 | 0 |
| `wireless_remote` | `number[]` | `uint8` | array / 40 | 0 |
| `bit_flag` | `number` | `uint8` | scalar / 0 | 0 |
| `adc_reel` | `number` | `float32` | scalar / 0 | 0 |
| `temperature_ntc1` | `number` | `int8` | scalar / 0 | 0 |
| `temperature_ntc2` | `number` | `int8` | scalar / 0 | 0 |
| `power_v` | `number` | `float32` | scalar / 0 | 0 |
| `power_a` | `number` | `float32` | scalar / 0 | 0 |
| `fan_frequency` | `number[]` | `uint16` | array / 4 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgMotorCmds`

`unitree_go/msg/MotorCmds` · 4..1060 bytes · native `RIHS01_42477c00fd1a43909adb05ac604791f230536f7f4d558aabb9c1433acc0cb39b`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `cmds` | `Ros2Unitree_goMsgMotorCmd[]` | `unitree_go/msg/MotorCmd` | sequence / 32 | 0 |

#### `Ros2Unitree_goMsgMotorStates`

`unitree_go/msg/MotorStates` · 4..1348 bytes · native `RIHS01_0451336d1b203b1fc0e378d8a8e2f04a95a8346dcf988f0bb84ac4ff7ee508d6`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `states` | `Ros2Unitree_goMsgMotorState[]` | `unitree_go/msg/MotorState` | sequence / 32 | 0 |

#### `Ros2Unitree_goMsgPathPoint`

`unitree_go/msg/PathPoint` · 28..28 bytes · native `RIHS01_c8bcdd0b29c28f9e853ffa2f4d404718c058f4c084dc13737540d81edb1ccd17`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `t_from_start` | `number` | `float32` | scalar / 0 | 0 |
| `x` | `number` | `float32` | scalar / 0 | 0 |
| `y` | `number` | `float32` | scalar / 0 | 0 |
| `yaw` | `number` | `float32` | scalar / 0 | 0 |
| `vx` | `number` | `float32` | scalar / 0 | 0 |
| `vy` | `number` | `float32` | scalar / 0 | 0 |
| `vyaw` | `number` | `float32` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgReq`

`unitree_go/msg/Req` · 8..4104 bytes · native `RIHS01_7fda909d42424777c947f9c33a7a243eb1a4a1e89af5124a3a2ca7d3fa043b6e`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `uuid` | `string` | `string` | scalar / 0 | 2048 |
| `body` | `string` | `string` | scalar / 0 | 2048 |

#### `Ros2Unitree_goMsgRes`

`unitree_go/msg/Res` · 12..6156 bytes · native `RIHS01_5e730fb54d81a32e7e28ef519c9b108c99ab6be7dd77c1ef4e66f7c1e69dde16`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `uuid` | `string` | `string` | scalar / 0 | 2048 |
| `data` | `number[]` | `uint8` | sequence / 2048 | 0 |
| `body` | `string` | `string` | scalar / 0 | 2048 |

#### `Ros2Unitree_goMsgSportModeCmd`

`unitree_go/msg/SportModeCmd` · 887..887 bytes · native `RIHS01_22c42d22e75a8d419fa6473b1d3ae92b3fa7473ca9d7bc9e336785659e7ab928`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `gait_type` | `number` | `uint8` | scalar / 0 | 0 |
| `speed_level` | `number` | `uint8` | scalar / 0 | 0 |
| `foot_raise_height` | `number` | `float32` | scalar / 0 | 0 |
| `body_height` | `number` | `float32` | scalar / 0 | 0 |
| `position` | `number[]` | `float32` | array / 2 | 0 |
| `euler` | `number[]` | `float32` | array / 3 | 0 |
| `velocity` | `number[]` | `float32` | array / 2 | 0 |
| `yaw_speed` | `number` | `float32` | scalar / 0 | 0 |
| `bms_cmd` | `Ros2Unitree_goMsgBmsCmd` | `unitree_go/msg/BmsCmd` | scalar / 0 | 0 |
| `path_point` | `Ros2Unitree_goMsgPathPoint[]` | `unitree_go/msg/PathPoint` | array / 30 | 0 |

#### `Ros2Unitree_goMsgTimeSpec`

`unitree_go/msg/TimeSpec` · 8..8 bytes · native `RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `sec` | `number` | `int32` | scalar / 0 | 0 |
| `nanosec` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgSportModeState`

`unitree_go/msg/SportModeState` · 227..227 bytes · native `RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `stamp` | `Ros2Unitree_goMsgTimeSpec` | `unitree_go/msg/TimeSpec` | scalar / 0 | 0 |
| `error_code` | `number` | `uint32` | scalar / 0 | 0 |
| `imu_state` | `Ros2Unitree_goMsgIMUState` | `unitree_go/msg/IMUState` | scalar / 0 | 0 |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `progress` | `number` | `float32` | scalar / 0 | 0 |
| `gait_type` | `number` | `uint8` | scalar / 0 | 0 |
| `foot_raise_height` | `number` | `float32` | scalar / 0 | 0 |
| `position` | `number[]` | `float32` | array / 3 | 0 |
| `body_height` | `number` | `float32` | scalar / 0 | 0 |
| `velocity` | `number[]` | `float32` | array / 3 | 0 |
| `yaw_speed` | `number` | `float32` | scalar / 0 | 0 |
| `range_obstacle` | `number[]` | `float32` | array / 4 | 0 |
| `foot_force` | `number[]` | `int16` | array / 4 | 0 |
| `foot_position_body` | `number[]` | `float32` | array / 12 | 0 |
| `foot_speed_body` | `number[]` | `float32` | array / 12 | 0 |

#### `Ros2Unitree_goMsgUwbState`

`unitree_go/msg/UwbState` · 55..55 bytes · native `RIHS01_d02a3bf8330a002373281a2888a9ea92d6135d7eba55c918403dabc38edce7f5`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `version` | `number[]` | `uint8` | array / 2 | 0 |
| `channel` | `number` | `uint8` | scalar / 0 | 0 |
| `joy_mode` | `number` | `uint8` | scalar / 0 | 0 |
| `orientation_est` | `number` | `float32` | scalar / 0 | 0 |
| `pitch_est` | `number` | `float32` | scalar / 0 | 0 |
| `distance_est` | `number` | `float32` | scalar / 0 | 0 |
| `yaw_est` | `number` | `float32` | scalar / 0 | 0 |
| `tag_roll` | `number` | `float32` | scalar / 0 | 0 |
| `tag_pitch` | `number` | `float32` | scalar / 0 | 0 |
| `tag_yaw` | `number` | `float32` | scalar / 0 | 0 |
| `base_roll` | `number` | `float32` | scalar / 0 | 0 |
| `base_pitch` | `number` | `float32` | scalar / 0 | 0 |
| `base_yaw` | `number` | `float32` | scalar / 0 | 0 |
| `joystick` | `number[]` | `float32` | array / 2 | 0 |
| `error_state` | `number` | `uint8` | scalar / 0 | 0 |
| `buttons` | `number` | `uint8` | scalar / 0 | 0 |
| `enabled_from_app` | `number` | `uint8` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgUwbSwitch`

`unitree_go/msg/UwbSwitch` · 1..1 bytes · native `RIHS01_de3a330c27e9a44eb3a7dcf3547d97fdafb74230bf679e6f04e4563935a6a270`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `enabled` | `number` | `uint8` | scalar / 0 | 0 |

#### `Ros2Unitree_goMsgWirelessController`

`unitree_go/msg/WirelessController` · 18..18 bytes · native `RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `lx` | `number` | `float32` | scalar / 0 | 0 |
| `ly` | `number` | `float32` | scalar / 0 | 0 |
| `rx` | `number` | `float32` | scalar / 0 | 0 |
| `ry` | `number` | `float32` | scalar / 0 | 0 |
| `keys` | `number` | `uint16` | scalar / 0 | 0 |

#### `Ros2Unitree_hgMsgBmsCmd`

`unitree_hg/msg/BmsCmd` · 41..41 bytes · native `RIHS01_7b7d2f71ab061902dd207e6f243109167b3fed94427066f40180d563290b6e15`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `cmd` | `number` | `uint8` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint8` | array / 40 | 0 |

#### `Ros2Unitree_hgMsgBmsState`

`unitree_hg/msg/BmsState` · 161..161 bytes · native `RIHS01_59d9c2459ddf390072902896850ce13ea5de394157907c7dc514d2187ff3e51f`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `version_high` | `number` | `uint8` | scalar / 0 | 0 |
| `version_low` | `number` | `uint8` | scalar / 0 | 0 |
| `fn` | `number` | `uint8` | scalar / 0 | 0 |
| `cell_vol` | `number[]` | `uint16` | array / 40 | 0 |
| `bmsvoltage` | `number[]` | `uint32` | array / 3 | 0 |
| `current` | `number` | `int32` | scalar / 0 | 0 |
| `soc` | `number` | `uint8` | scalar / 0 | 0 |
| `soh` | `number` | `uint8` | scalar / 0 | 0 |
| `temperature` | `number[]` | `int16` | array / 12 | 0 |
| `cycle` | `number` | `uint16` | scalar / 0 | 0 |
| `manufacturer_date` | `number` | `uint16` | scalar / 0 | 0 |
| `bmsstate` | `number[]` | `uint32` | array / 5 | 0 |
| `reserve` | `number[]` | `uint32` | array / 3 | 0 |

#### `Ros2Unitree_hgMsgMotorCmd`

`unitree_hg/msg/MotorCmd` · 25..25 bytes · native `RIHS01_b47468413c7037d0e2c0227fced04b91224cc165e5befe2b8cefacbe08391329`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `q` | `number` | `float32` | scalar / 0 | 0 |
| `dq` | `number` | `float32` | scalar / 0 | 0 |
| `tau` | `number` | `float32` | scalar / 0 | 0 |
| `kp` | `number` | `float32` | scalar / 0 | 0 |
| `kd` | `number` | `float32` | scalar / 0 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_hgMsgHandCmd`

`unitree_hg/msg/HandCmd` · 20..820 bytes · native `RIHS01_aa5efb217dfce9bba4a5c51be7d09b6426ea5ad20bb919b2033f285a2b98a8f4`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `motor_cmd` | `Ros2Unitree_hgMsgMotorCmd[]` | `unitree_hg/msg/MotorCmd` | sequence / 32 | 0 |
| `reserve` | `number[]` | `uint32` | array / 4 | 0 |

#### `Ros2Unitree_hgMsgMotorState`

`unitree_hg/msg/MotorState` · 53..53 bytes · native `RIHS01_9fb0c7e50cef1769037c580304750df0da54b7a6a5fbfa92880f97add4945345`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode` | `number` | `uint8` | scalar / 0 | 0 |
| `q` | `number` | `float32` | scalar / 0 | 0 |
| `dq` | `number` | `float32` | scalar / 0 | 0 |
| `ddq` | `number` | `float32` | scalar / 0 | 0 |
| `tau_est` | `number` | `float32` | scalar / 0 | 0 |
| `temperature` | `number[]` | `int16` | array / 2 | 0 |
| `vol` | `number` | `float32` | scalar / 0 | 0 |
| `sensor` | `number[]` | `uint32` | array / 2 | 0 |
| `motorstate` | `number` | `uint32` | scalar / 0 | 0 |
| `reserve` | `number[]` | `uint32` | array / 4 | 0 |

#### `Ros2Unitree_hgMsgPressSensorState`

`unitree_hg/msg/PressSensorState` · 104..104 bytes · native `RIHS01_3c61bae23b785ee850c57df73a948d53ca5cb00ccbdb82ee526994c77ae8d908`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `pressure` | `number[]` | `float32` | array / 12 | 0 |
| `temperature` | `number[]` | `float32` | array / 12 | 0 |
| `lost` | `number` | `uint32` | scalar / 0 | 0 |
| `reserve` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_hgMsgIMUState`

`unitree_hg/msg/IMUState` · 54..54 bytes · native `RIHS01_6fbba1a672360bf41e4393ad73d247036fd802d08adfb436d0c99a2a7b3ceec2`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `quaternion` | `number[]` | `float32` | array / 4 | 0 |
| `gyroscope` | `number[]` | `float32` | array / 3 | 0 |
| `accelerometer` | `number[]` | `float32` | array / 3 | 0 |
| `rpy` | `number[]` | `float32` | array / 3 | 0 |
| `temperature` | `number` | `int16` | scalar / 0 | 0 |

#### `Ros2Unitree_hgMsgHandState`

`unitree_hg/msg/HandState` · 94..5118 bytes · native `RIHS01_f8f161522deb4e58d5c1d679826c2a405b63b409db7e4ea9d17628f3029c4d2f`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `motor_state` | `Ros2Unitree_hgMsgMotorState[]` | `unitree_hg/msg/MotorState` | sequence / 32 | 0 |
| `press_sensor_state` | `Ros2Unitree_hgMsgPressSensorState[]` | `unitree_hg/msg/PressSensorState` | sequence / 32 | 0 |
| `imu_state` | `Ros2Unitree_hgMsgIMUState` | `unitree_hg/msg/IMUState` | scalar / 0 | 0 |
| `power_v` | `number` | `float32` | scalar / 0 | 0 |
| `power_a` | `number` | `float32` | scalar / 0 | 0 |
| `system_v` | `number` | `float32` | scalar / 0 | 0 |
| `device_v` | `number` | `float32` | scalar / 0 | 0 |
| `error` | `number[]` | `uint32` | array / 2 | 0 |
| `reserve` | `number[]` | `uint32` | array / 2 | 0 |

#### `Ros2Unitree_hgMsgLowCmd`

`unitree_hg/msg/LowCmd` · 897..897 bytes · native `RIHS01_b0eec4778db3ad67ffade328b063bea700bd1558f3f359ea5e4c86e3c3f25bc5`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `mode_pr` | `number` | `uint8` | scalar / 0 | 0 |
| `mode_machine` | `number` | `uint8` | scalar / 0 | 0 |
| `motor_cmd` | `Ros2Unitree_hgMsgMotorCmd[]` | `unitree_hg/msg/MotorCmd` | array / 35 | 0 |
| `reserve` | `number[]` | `uint32` | array / 4 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_hgMsgLowState`

`unitree_hg/msg/LowState` · 1983..1983 bytes · native `RIHS01_aee6c5bd4b4d2eeca854bf47e32e4e3d34c47c2cafa05c08b6b0fa4bc51c6b3a`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `version` | `number[]` | `uint32` | array / 2 | 0 |
| `mode_pr` | `number` | `uint8` | scalar / 0 | 0 |
| `mode_machine` | `number` | `uint8` | scalar / 0 | 0 |
| `tick` | `number` | `uint32` | scalar / 0 | 0 |
| `imu_state` | `Ros2Unitree_hgMsgIMUState` | `unitree_hg/msg/IMUState` | scalar / 0 | 0 |
| `motor_state` | `Ros2Unitree_hgMsgMotorState[]` | `unitree_hg/msg/MotorState` | array / 35 | 0 |
| `wireless_remote` | `number[]` | `uint8` | array / 40 | 0 |
| `reserve` | `number[]` | `uint32` | array / 4 | 0 |
| `crc` | `number` | `uint32` | scalar / 0 | 0 |

#### `Ros2Unitree_hgMsgMainBoardState`

`unitree_hg/msg/MainBoardState` · 72..72 bytes · native `RIHS01_1420200fd0eedd8dbabb47d0ea2c3bdb38a7ee47c682c84301326db51baa5450`

| Field | TypeScript | Original type | Shape/quota | UTF-8 bytes |
| --- | --- | --- | --- | --- |
| `fan_state` | `number[]` | `uint16` | array / 6 | 0 |
| `temperature` | `number[]` | `int16` | array / 6 | 0 |
| `value` | `number[]` | `float32` | array / 6 | 0 |
| `state` | `number[]` | `uint32` | array / 6 | 0 |



修订63的六个独立示例使用同一 TS5.9.3/QuickJS 路线。ROS1 Cartesian 对 x/y/z 逐字段断言，ROS2 WirelessController 对 lx/ly/rx/ry/keys 逐字段断言；样例的所有字段均为非默认值，并与原始字节偏移核对。wire_decode 不传参数时使用内置非默认样例，也可传入其他完整合法帧。wire_encode 的 scale 须有限且非零。输出包含 fields、checked_fields、nondefault_fields 和 hex。native_observation 在打开手动别名前完成全部字段检查；默认无授权时只验证原 errno13 拒绝路径，native peer 的正向验收仍须另行完成。具体构建及运行资格以独立收据中记录的文件字节为准。
