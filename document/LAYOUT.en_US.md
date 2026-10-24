# Public platform directory layout

The source hierarchy is:

```text
include/platform/<platform>/<language>/<ros1|ros2>/<profile>/...
src/platform/<platform>/<language>/<ros1|ros2>/<profile>/...
```

The backend directory is exactly `ros1` or `ros2`. A distribution, branch,
model or profile occupies the next directory. For example, the UBTech main
ROS2 record module is `ubtech/js/ros2/main/records`; its Python counterpart is
`ubtech.py.ros2.main.records`. Go module identities and D module names follow
the same separation.

Configuration keys such as `ros.sdk.profile = "ros2_main"` still select the
original pinned catalog. Catalog keys do not define backend directory names.
Existing complete catalogs below a canonical backend retain their individual
names and records; different versions are never merged merely because their
files share a name.

Generators must produce canonical directories directly. The shared maintenance
helper `tools/shared/backend_layout.py` resolves normalized profile selectors.
Provider manifests, explicit Python package parents, source module declarations,
examples and manuals must agree with the resulting public paths. Old directory
aliases are not installed.

The VM repository checks this layout alongside the SDK compatibility tests.
Passing a path check does not certify a compiler, interpreter, target width or
native ROS transaction.
