# Original interfaces and compatibility scope

The table identifies pinned source catalogs and their selected fixture distribution. A branch name, interface build, or SDK codec pass alone does not qualify a complete driver, controller, firmware release, or physical robot.

| Domain | ROS | Fixture distribution | Expanded records | Original definitions |
| --- | --- | --- | ---: | ---: |
| kuka-ros2-complete | ros2 | jazzy | 31 | 26 |

## Immutable sources

Full commits, catalog SHA-256 values, package versions, and metadata sources are in `share/platform/kuka/compatibility.json`. Original definitions retain their exact bytes. Constants, defaults, field order, array extents, and string bounds are part of the contract.

- [kuka-ros/kuka_drivers README](https://raw.githubusercontent.com/kuka-ros/kuka_drivers/15fbb6941356390c38bbd135a0676dfd96a050c0/README.md), commit `15fbb6941356390c38bbd135a0676dfd96a050c0`, SHA-256 `86f13a1eb67d813c3ebc22771c205fab20dc066396992825b0c5e11e3fc6a84c`.
- [kuka_driver_interfaces 2.0.0](https://raw.githubusercontent.com/kuka-ros/kuka_drivers/15fbb6941356390c38bbd135a0676dfd96a050c0/kuka_driver_interfaces/package.xml), commit `15fbb6941356390c38bbd135a0676dfd96a050c0`, SHA-256 `4f3633e9ec696345dcf550974149f3cf07e88cb3a86cffc34fdd6d95be2e00dc`.

## Interpreting native tests

Native ROS peer tests and Wasm communication through uwvm2-ros require separate receipts. Building pinned Humble interface sources on Jazzy qualifies only that interface fixture combination. It does not establish complete Humble driver support. Historical Kinetic, Melodic, AWS, and patch branches remain distinct even when service names match. The retained KUKA source contains ROS2 interfaces only; no ROS1 interface is inferred.

Explicitly select the model, controller, native type, and identity at deployment; the user configures permissions.
