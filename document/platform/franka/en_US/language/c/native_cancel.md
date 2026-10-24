# Two original Grasp goals and native cancellation

Keep two complete original goals live simultaneously. Independent genuine native clients cancel A by its original Goal ID/UUID, observe A's terminal and additional feedback from still-active B, then cancel B by its separate identity. Never substitute abort. Guest poll IDs are opaque; join them one-to-one to native IDs using the complete unique original goal bytes.

Use the installed UWVM_ROS_SDK_ROOT. Build with xmake f --plat=wasm-wasip1 --arch=wasm32 (or wasm64), then xmake -vD main. Copy deployment.template.json to deployment.json, manually select the source-paired runtime/gateway, and run UWVM_ROS_RUN_CONFIG=deployment.json xmake run main. No robot hardware is used.

The main module has distinct advertise/respond/cancel-own aliases, two-goal capacity, bounded queues/rates/deadlines and explicit monotonic-clock authority. There is no cancel-any grant. While both goals remain live, cancel-any through the cancel-own handle must return13, and opening unauthorized_cancel must return13. Premature kind4 must fail without retiring either goal. A fully ROS-disabled policy must return13 before creating an endpoint. The public dispatcher must preserve the submitted policy.

Noetic's actual Gateway publishes PREEMPTED2 with the original default result on native cancel and immediately retires that goal. Guest observes retired errno9; it does not fabricate a custom payload. Jazzy retains the canceling goal until guest responds with kind4, yielding CANCELED5 and the complete false/UTF-8 result. The public API does not expose raw native ID bytes to guest code; the independent native ledger and full-payload association make this boundary explicit.

Retain full goals and native identities, feedback before cancellation, A's cancel/result, B's later feedback while active, B's separate cancel/result, endpoint retirement and process cleanup. Main closes owners in reverse after finite transport progress. These fixtures do not qualify physical hardware, cancel-any, other interfaces, exact Humble or the whole profile.
