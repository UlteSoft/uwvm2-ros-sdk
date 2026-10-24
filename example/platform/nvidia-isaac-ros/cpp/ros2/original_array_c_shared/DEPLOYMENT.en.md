# Manual native ROS2 deployment

Install a native runtime/gateway pair built against the original NVIDIA type graph, matching RIHS and genuine Jazzy ROSIDL libraries. A controlled native publisher must send every nested original field, including 36 covariance values per detection. Native CDR and guest canonical wire are distinct representations.

Copy `deployment.template.json` outside the SDK. Set `runtime` and `gateway` to matching absolute executable paths. Keep alias, topic, original type, RIHS and adapter codec identity aligned with the peer. The template specifies reliable/volatile keep-last depth 10, infinite deadline/lifespan/liveliness lease, automatic liveliness, 20 messages/s with burst 10, explicit byte/queue/subscriber/inflight bounds, drop-oldest overflow and bounded audit. Connection fields select domain 137, Fast DDS and disabled security for an isolated fixture. Select appropriate security for the actual deployment. Timeout is 30 seconds; worker and gateway limits remain explicit.

The `main` module alone owns ROS Single authority and its monotonic-clock grant; call boundary is `same-module`. Preload exactly `array_c`, attribute `none`, using the matching width producer path. It has ROS disabled and no additional WASI grants. Policies bind to loaded module identities. No global ROS grant is required.

```sh
UWVM_ROS_RUN_CONFIG=/absolute/deployment.json xmake run main
```

The public launcher preserves built bytes and explicit policy. Arguments are alias `sample` and mode `0`, `1` or `2`. To check denial, copy the config and remove main's grant; the worker must return 13. Keep denial as a separate operator configuration.

Deploy `build/main/main.wasm` and `build/array_c/array_c.wasm`. The latter owns separate memory/table.

Check worker status independently of Xmake wrapper status. Successful output has zero primary/cleanup/encoding, exact full native fields, correct count/id sum/checksum and `library_contract:1`. A denied main has no wire/summary. Producer ROS/clock probes remain 13/76 even when main is denied. Verify native subscriber counts, resource creation/close/revoke audit and reaped worker/gateway/peer processes. Source-only graphs do not replace Linux x86 and QEMU AArch64 execution receipts for both widths.
