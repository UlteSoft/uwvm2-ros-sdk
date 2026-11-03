# Genuine ruby typed publisher API example

This standalone public Xmake target calls the new RubyObservation.publish publish helper in
genuine CRuby3.4.7 Wasm. It checks local field refusals, an ungranted alias, one
accepted publication with explicit cleanup, and a complete fresh typed echo.
All six cases are required. Current execution is blocked; no case has passed.

The fixture uses `uwvm_fourier_bridge/msg/GroupValues` from this SDK's authored
Fourier ROS bridge. It is not a Fourier-official callable API. Its complete
pinned descriptor/codec must match the native type registration; source DTOs
alone do not qualify transport or type support.

Supply the current SDK01/VM owner-qualified public deployment, one fresh
32-lowercase-hex nonce argument, separately granted `publish` and `echo` aliases,
and no grant for `publisher-denied`. Use the existing public deployment schema;
this example introduces no schema keys or implicit permissions. The official
ROS2 topic_tools1.3.4 relay fixture must carry this exact registered native type,
with actual DDS readiness/QoS qualified before the sole publication. Retain its
real image/executable/source/type hashes and commands. No native language
business client, mock relay, replay or additional warmup publish is supplied.

Run ordinary `xmake` and `xmake test` from this directory in the qualified Linux
execution envelope. Compilation/source packaging is separate from executing the
six genuine-language assertions. Keep full actual VM/guest/native/peer hashes,
per-process checked-unwind/audit logs and physical-lifetime control evidence.
The independent audit must confirm zero publish dispatch for both invalid
records and the denied alias, exactly one accepted publish, and no cleanup
replay. Program flags alone are not that audit. Same-instance classes do not
establish component memory isolation. The full official API, all29 routes,
versions, legacy paths and Stage B obligations remain open.

The new source graph requires a separate current-build/current-VM qualification; old frozen Wasm does not contain this API change.
