# hello_robot / as API

Public typed source lives under `include/platform/hello_robot/as/`。

Read platform `API_CATALOG.md` and each profile `schema.json` for every generated type, quota, original declaration and protocol component. C/C++/Rust/AS/JS/TinyGo retain their public original types; extra-language bindings consume one parent-reviewed generator revision. Native operations require an already acquired capability; validation cannot acquire authority. Missing common modules and routes are tracked in the delivery dependencies.json.

Stretch lift uses meters and angular joints use radians. Preserve original MultiDOF and tolerance fields. A model label does not prove homing, operating mode, runstop, tool or calibration; the SDK does not automatically home, change mode, release runstop or command a robot.

Original field order, constants, defaults, bounds and source identities are fixed in `share/platform/hello_robot/catalogs/`。
