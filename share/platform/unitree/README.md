# Unitree native ROS SDK

This source revision preserves all 11 original ROS 1 `unitree_legged_msgs` messages and all 43 original ROS 2
`unitree_go`, `unitree_hg`, and `unitree_api` messages. No `.srv` or `.action` is invented. Unitree API
Request/Response is topic RPC; it is distinct from a ROS service and from the separate vendor DDS SDK.

This publication admits 22 genuine producer routes, with six own-language observation
examples each. The exact admitted languages are listed in `publication.json` and the bilingual manual index.

Read `document/platform/unitree/en_US/language` or `document/platform/unitree/zh_CN/language` for complete API,
ownership, error, build/run, and field contracts. Current admitted languages and exact build-tool pins are
defined by `share/platform/unitree/publication.json`. Current per-artifact qualification is retained in
`share/platform/unitree/qualification.json`. Original baseline qualification remains in
`share/platform/unitree/historical-baseline.json`; physical Unitree hardware remains untested.

The official source audit records every original path, commit, byte count, and SHA256. Original declarations
and licenses retain their exact upstream bytes. Maintained bindings, language facades and examples are
reviewed and formatted, with source inventories and independent build and runtime evidence.

The admitted examples have individual cold-build and native Noetic/Jazzy execution receipts.
Separate complete-type profiles retain independent native metadata for all 11 ROS 1 and 43 ROS 2 records.
Their cold native adapter checks are recorded separately from topic transport and physical hardware.
Every run requires an explicit native distribution matching the sourced ROS environment.
For ROS 1 the trusted deployment declares `backend: ros1` and `native_ros_distribution: noetic`.
Running also requires Python 3 as a process launcher; `UWVM_ROS_PYTHON` may select its executable.
The launcher manages uwvm2-ros and the gateway; uwvm2-ros executes the compiled Wasm application.

Official sources: [Unitree ROS 2][unitree-ros2] and [Unitree ROS 1 bridge/messages][unitree-ros1].

[unitree-ros2]: https://github.com/unitreerobotics/unitree_ros2/tree/668d1ec5a05d1c38d3306bdca7d59f2ba3581a88
[unitree-ros1]: https://github.com/unitreerobotics/unitree_ros_to_real/tree/b989870124913091fbe75e0dcfb047eb4ca00a09
