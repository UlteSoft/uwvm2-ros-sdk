# ABB / ruby example guide

Every directory contains its own xmake.lua and genuine language source. Build first, then run with the operator's explicitly configured deployment. Qualification uses controlled native ROS fixtures; no physical robot is connected.

| Example | Source | Native flow |
| --- | --- | --- |
| `mechanical_unit_state` | `main.rb` | abb_robot_msgs/msg/MechanicalUnitState; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `rapid_task_state` | `main.rb` | abb_robot_msgs/msg/RAPIDTaskState; subscribe once, <=250 polls, 20 ms idle waits, complete decode/re-encode |
| `ros1/egm_state` | `main.rb` | abb_egm_msgs/EGMState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `ros1/runtime_state` | `main.rb` | abb_rapid_sm_addin_msgs/RuntimeState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `ros1/system_state` | `main.rb` | abb_robot_msgs/SystemState; ROS1 exact typed subscription; RuntimeState requires the StateMachine Add-In |
| `system_state` | `main.rb` | SystemState topic; complete header/flags/RAPID tasks/mechanical units |

```sh
xmake
# Supply the existing operator-owned native runtime/run configuration.
xmake run
```

An alias is not a topic URL. The run configuration binds it to the real original type, endpoint and QoS. Unknown distributions, versions, target widths and unbound identities must fail explicitly before a native operation.

Acceptance compares every field with an independent native peer, then checks malformed wire, capacity, explicit denied permissions and once-only cleanup. Record x86_64 and real AArch64 runtime/native ROS peers under QEMU separately; cross compilation does not establish ARM execution.
