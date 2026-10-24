# FANUC / haskell example guide

Every directory contains its own xmake.lua and genuine language source. Build first, then run with the operator's explicitly configured deployment. Qualification uses controlled native ROS fixtures; no physical robot is connected.

| Example | Source | Native flow |
| --- | --- | --- |
| `connection_status` | `main.hs` | fanuc_msgs/msg/ConnectionStatus; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `force_sensor` | `main.hs` | fanuc_msgs/msg/ForceSensor; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `frame` | `main.hs` | fanuc_msgs/msg/Frame; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |

```sh
xmake
# Supply the existing operator-owned native runtime/run configuration.
xmake run
```

An alias is not a topic URL. The run configuration binds it to the real original type, endpoint and QoS. Unknown distributions, versions, target widths and unbound identities must fail explicitly before a native operation.

Acceptance compares every field with an independent native peer, then checks malformed wire, capacity, explicit denied permissions and once-only cleanup. Record x86_64 and real AArch64 runtime/native ROS peers under QEMU separately; cross compilation does not establish ARM execution.
