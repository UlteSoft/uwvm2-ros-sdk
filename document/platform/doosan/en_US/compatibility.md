# Original interfaces and compatibility scope

The table identifies pinned source catalogs and their selected fixture distribution. A branch name, interface build, or SDK codec pass alone does not qualify a complete driver, controller, firmware release, or physical robot.

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

## Immutable sources

Full commits, catalog SHA-256 values, package versions, and metadata sources are in `share/platform/doosan/compatibility.json`. Original definitions retain their exact bytes. Constants, defaults, field order, array extents, and string bounds are part of the contract.

- [DoosanRobotics/doosan-robot README](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot/2c12e859aed34c492706fa053af5b3304ce33c86/README.md), commit `2c12e859aed34c492706fa053af5b3304ce33c86`, SHA-256 `c5d1857f68d98dacc8a9a0f24048961c4e089b3a8f99daffc134940d554f9153`.
- [DoosanRobotics/doosan-robot2 README](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot2/e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0/README.md), commit `e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0`, SHA-256 `1cea1b070007f28f2a25b029de2b6947fe8928ea9641ec1da06ff688fd7c01fb`.
- [dsr_msgs2 1.1.0](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot2/e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0/dsr_msgs2/package.xml), commit `e5e2d7f4fe11865b9ddf4ad658362bc8e73296e0`, SHA-256 `ed85f3eca1452a427d67055e0d894e6d9a50609fef4877f597ab2c708c7e47f9`.
- [dsr_msgs2 1.1.0](https://raw.githubusercontent.com/DoosanRobotics/doosan-robot2/6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48/dsr_msgs2/package.xml), commit `6c5f3ba622bfa9d6f9cffebf21fa44f57db55b48`, SHA-256 `cbe3039f7514909f9e3a60a37473b6def0c334add062e674edb4fb2cac1db776`.

## Interpreting native tests

Native ROS peer tests and Wasm communication through uwvm2-ros require separate receipts. Building pinned Humble interface sources on Jazzy qualifies only that interface fixture combination. It does not establish complete Humble driver support. Historical Kinetic, Melodic, AWS, and patch branches remain distinct even when service names match. The retained KUKA source contains ROS2 interfaces only; no ROS1 interface is inferred.

Explicitly select the model, controller, native type, and identity at deployment; the user configures permissions.
