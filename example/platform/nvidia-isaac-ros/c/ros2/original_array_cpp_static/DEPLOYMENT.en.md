# Manual native ROS2 deployment

Install a native runtime/gateway pair built against the original NVIDIA type graph, matching RIHS and genuine Jazzy ROSIDL libraries. A controlled native publisher must send every nested original field, including 36 covariance values per detection. Native CDR and guest canonical wire are distinct representations.

Copy `deployment.template.json` outside the SDK. Set `runtime` and `gateway` to matching absolute executable paths. Keep alias, topic, original type, RIHS and adapter codec identity aligned with the peer. The template specifies reliable/volatile keep-last depth 10, infinite deadline/lifespan/liveliness lease, automatic liveliness, 20 messages/s with burst 10, explicit byte/queue/subscriber/inflight bounds, drop-oldest overflow and bounded audit. Connection fields select domain 137, Fast DDS and disabled security for an isolated fixture. Select appropriate security for the actual deployment. Timeout is 30 seconds; worker and gateway limits remain explicit.

The `main` module alone owns ROS Single authority and its monotonic-clock grant; call boundary is `same-module`. Statically extracted objects become part of main, sharing its memory and authority. An archive is not a runtime isolation boundary. No global ROS grant is required.

```sh
UWVM_ROS_RUN_CONFIG=/absolute/deployment.json xmake run main
```

The public launcher preserves built bytes and explicit policy. Arguments are alias `sample` and mode `0`, `1` or `2`. To check denial, copy the config and remove main's grant; the worker must return 13. Keep denial as a separate operator configuration.

Deploy only `build/main/main.wasm`; the indexed `.a` is a build input.

Check worker status independently of Xmake wrapper status. Successful output has zero primary/cleanup/encoding, exact full native fields, correct count/id sum/checksum and `library_contract:1`. A denied main has no wire/summary. The malformed-input check must preserve the committed output. Verify native subscriber counts, resource creation/close/revoke audit and reaped worker/gateway/peer processes. Source-only graphs do not replace Linux x86 and QEMU AArch64 execution receipts for both widths.
