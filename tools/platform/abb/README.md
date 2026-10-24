# ABB SDK tools

`provider.lua` selects the original ABB language binding and source catalog. All
compilation uses `sdk/tools/xmake`; all native execution uses the common
`sdk/tools/platform/ros/run.py` deployment manager. `set_abb_version("complete")`
is validated against the provider's `catalog` field. The ROS distribution is
selected separately with `set_ros1_version` or `set_ros2_version`.

`bindings.py`, `c_headers.py`, `examples.py` and `documents.py` maintain source
bindings, standalone applications and bilingual manuals. Format generated files
locally before transferring complete folders to SSH Linux. Generation does not
establish successful compiler, native ROS, QEMU or physical-controller execution.

Every example owns an `xmake.lua` using the common public description interface.
No ABB-private compiler selector, standalone DSL or runtime launcher is installed.
Native deployment is documented in `sdk/document/native-run.en_US.md` and
`sdk/document/native-run.zh_CN.md`.
