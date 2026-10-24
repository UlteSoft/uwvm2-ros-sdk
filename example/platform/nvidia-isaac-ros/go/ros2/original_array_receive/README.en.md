# original_array_receive

Build genuine Go 1.24.2 with `xmake f -a wasm32` and `xmake -vD -j1` after
setting `UWVM_ROS_SDK_ROOT`. The pinned shared action refuses wasm64. Deploy
the sole application Wasm with an operator-reviewed copy of
`deployment.template.json`: select the actual original-Array runtime/gateway,
then use `UWVM_ROS_RUN_CONFIG` and `xmake run original_array_receive`.

This example receives the complete native original Array, decodes and re-encodes
every field in Go. Receive closes its owner and verifies a copied view is stale;
echo then publishes20 separately counted complete messages to the independent
native subscriber; revoke verifies stale copies and explicit125 reopening refusal.
The directory implements only its named flow. Idle polling is bounded to1000
attempts with20ms monotonic waits. Echo spaces its deliberate publications100ms;
an effectful refusal stops without replay. Status13 is denied,9 stale,11 idle,
22 invalid,110 exhausted wait,125 revoked. Primary and cleanup statuses remain
separate in JSON; wire_hex preserves all fields and72 covariance values.

Only exact sample subscription and, for echo, outgoing publication are granted
to module nvidia_go. Both use the original type, RIHS and bounded codec identity.
All other modules remain ungranted. Monotonic-clock is explicitly required by
Go startup and finite waiting; no realtime clock, random, file or GPU grant is
added. Use controlled domain137 native fixtures; no physical device is invoked.
Source availability is separate from build and native execution acceptance.
