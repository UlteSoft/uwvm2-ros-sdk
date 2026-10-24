# ABB / vbnet example guide

Every directory contains its own xmake.lua and genuine language source. Build first, then run with the operator's explicitly configured deployment. Qualification uses controlled native ROS fixtures; no physical robot is connected.

| Example | Source | Native flow |
| --- | --- | --- |
| `read_io` | `Main.vb` | GetIOSignal service; whole value/result_code/message; nonempty exact signal name |
| `read_speed` | `Main.vb` | GetSpeedRatio service; whole ratio/result_code/message; RC_SUCCESS=1 and ratio <=100 |
| `ros1/egm_state` | `Main.vb` | abb_egm_msgs/EGMState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `ros1/runtime_state` | `Main.vb` | abb_rapid_sm_addin_msgs/RuntimeState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `ros1/system_state` | `Main.vb` | abb_robot_msgs/SystemState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `system_state` | `Main.vb` | SystemState topic; complete header/flags/RAPID tasks/mechanical units |

```sh
xmake
# Supply the existing operator-owned native runtime/run configuration.
xmake run
```

An alias is not a topic URL. The run configuration binds it to the real original type, endpoint and QoS. Unknown distributions, versions, target widths and unbound identities must fail explicitly before a native operation.

Acceptance compares every field with an independent native peer, then checks malformed wire, capacity, explicit denied permissions and once-only cleanup. Record x86_64 and real AArch64 runtime/native ROS peers under QEMU separately; cross compilation does not establish ARM execution.
