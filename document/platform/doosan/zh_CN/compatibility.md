# 原始接口与版本兼容范围

下表列出固定的原始接口目录及对应测试发行版配置。分支名称、接口编译和 SDK 编解码通过，均不能单独证明完整驱动、控制器、固件或真机兼容。

| Domain | ROS | Fixture distribution | Expanded records | Original definitions |
| --- | --- | --- | ---: | ---: |
| doosan-ros1-aws-robot-complete | ros1 | noetic | 125 | 67 |
| doosan-ros1-aws-simulation-complete | ros1 | noetic | 125 | 67 |
| doosan-ros1-doosan-robotics-patch-1-complete | ros1 | noetic | 280 | 150 |
| doosan-ros1-kinetic-devel-descrepted-complete | ros1 | kinetic | 227 | 118 |
| doosan-ros1-main-complete | ros1 | noetic | 280 | 150 |
| doosan-ros1-master-complete | ros1 | noetic | 278 | 149 |
| doosan-ros1-melodic-devel-complete | ros1 | melodic | 280 | 150 |
| doosan-ros1-noetic-devel-complete | ros1 | noetic | 280 | 150 |
| doosan-ros1-patch-1-complete | ros1 | noetic | 280 | 150 |
| doosan-ros1-song-ms-patch-1-complete | ros1 | noetic | 280 | 150 |
| doosan-ros2-humble-complete | ros2 | humble | 310 | 164 |
| doosan-ros2-jazzy-complete | ros2 | jazzy | 310 | 164 |

## 固定来源

完整提交、目录 SHA-256、包版本与元数据来源见 `share/platform/doosan/compatibility.json`。原始定义按字节保留；常量、默认值、字段顺序、数组容量和字符串界限属于接口契约。

- [DoosanRobotics/doosan-robot README](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot/2c12e859aed34c492706fa053af5b3304ce33c86/README.md), commit `2c12e859aed34c492706fa053af5b3304ce33c86`, SHA-256 `c5d1857f68d98dacc8a9a0f24048961c4e089b3a8f99daffc134940d554f9153`.
- [DoosanRobotics/doosan-robot2 README](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot2/e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0/README.md), commit `e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0`, SHA-256 `1cea1b070007f28f2a25b029de2b6947fe8928ea9641ec1da06ff688fd7c01fb`.
- [dsr_msgs2 1.1.0](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot2/e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0/dsr_msgs2/package.xml), commit `e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0`, SHA-256 `ed85f3eca1452a427d67055e0d894e6d9a50609fef4877f597ab2c708c7e47f9`.
- [dsr_msgs2 1.1.0](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot2/6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48/dsr_msgs2/package.xml), commit `6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48`, SHA-256 `cbe3039f7514909f9e3a60a37473b6def0c334add062e674edb4fb2cac1db776`.

## 原生测试解释

原生 ROS 对等端测试必须与 Wasm 程序经 uwvm2-ros 的通信分开记录。在 Jazzy 上构建固定 Humble 接口仅验证该接口测试组合；不能扩大为完整 Humble 驱动支持。历史 Kinetic、Melodic、AWS 与补丁分支分别保留，不能按相同服务名称合并。KUKA 当前来源只含 ROS2；此目录没有推导 ROS1 接口。

部署时显式选择模型、控制器、原生类型与类型身份，并由用户配置权限。
