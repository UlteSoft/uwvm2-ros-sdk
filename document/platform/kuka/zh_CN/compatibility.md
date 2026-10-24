# 原始接口与版本兼容范围

下表列出固定的原始接口目录及对应测试发行版配置。分支名称、接口编译和 SDK 编解码通过，均不能单独证明完整驱动、控制器、固件或真机兼容。

| Domain | ROS | Fixture distribution | Expanded records | Original definitions |
| --- | --- | --- | ---: | ---: |
| kuka-ros2-complete | ros2 | jazzy | 31 | 26 |

## 固定来源

完整提交、目录 SHA-256、包版本与元数据来源见 `share/platform/kuka/compatibility.json`。原始定义按字节保留；常量、默认值、字段顺序、数组容量和字符串界限属于接口契约。

- [kuka-ros/kuka_drivers README](https://raw.githubusercontent.com/kuka-ros/kuka_drivers/15fbb6941356390c38bbd135a0676dfd96a050c0/README.md), commit `15fbb6941356390c38bbd135a0676dfd96a050c0`, SHA-256 `86f13a1eb67d813c3ebc22771c205fab20dc066396992825b0c5e11e3fc6a84c`.
- [kuka_driver_interfaces 2.0.0](https://raw.githubusercontent.com/kuka-ros/kuka_drivers/15fbb6941356390c38bbd135a0676dfd96a050c0/kuka_driver_interfaces/package.xml), commit `15fbb6941356390c38bbd135a0676dfd96a050c0`, SHA-256 `4f3633e9ec696345dcf550974149f3cf07e88cb3a86cffc34fdd6d95be2e00dc`.

## 原生测试解释

原生 ROS 对等端测试必须与 Wasm 程序经 uwvm2-ros 的通信分开记录。在 Jazzy 上构建固定 Humble 接口仅验证该接口测试组合；不能扩大为完整 Humble 驱动支持。历史 Kinetic、Melodic、AWS 与补丁分支分别保留，不能按相同服务名称合并。KUKA 当前来源只含 ROS2；此目录没有推导 ROS1 接口。

部署时显式选择模型、控制器、原生类型与类型身份，并由用户配置权限。
