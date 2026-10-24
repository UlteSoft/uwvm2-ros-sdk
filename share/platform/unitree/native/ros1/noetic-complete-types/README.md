# Complete original ROS 1 Unitree native type profile

This explicit cold profile binds all 11 original message records to independently compiled actual
noetic native metadata. The exact native package declarations are the audited upstream bytes.
The native adapter preserves every original field, scalar width, array shape, and finite canonical quota.
Registration grants no alias, publisher, subscriber, service, action, or robot connection.

The native type probe compiles every real installed field assertion and checks complete default-value
native/canonical round-trip equality, truncation refusal, and trailing-byte refusal for every record.
See `share/platform/unitree/historical-baseline.json` for the actual result and source/metadata hashes. These cold
checks remain distinct from native transport observation acceptance and physical hardware testing.

Only the separate observation fixture profile is used by the 24 source-language transport cases for this
backend. Command message records are never published. Unitree API Request/Response remains topic RPC;
this package does not invent a ROS service or implement the separate vendor DDS SDK.

Select `manifest.hpp` and `native_ros1.hpp` together in the trusted native build. Another distribution
or a changed original declaration requires independent native metadata and regeneration with
`tools/platform/unitree/bind_native.py`. Use the full original preparation catalog with this exact
`native-metadata.json`; `native_type_probe_sources.py` prepares the isolated cold compatibility probe.
