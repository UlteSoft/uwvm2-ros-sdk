# Two original Grasp goals and native cancellation

Keep two complete original goals live simultaneously. Independent genuine native clients cancel A by its original Goal ID/UUID, observe A's terminal and additional feedback from still-active B, then cancel B by its separate identity. Never substitute abort. Guest poll IDs are opaque; join them one-to-one to native IDs using the complete unique original goal bytes.

Use the installed UWVM_ROS_SDK_ROOT. Build with xmake f --plat=wasm-wasip1 --arch=wasm32 (or wasm64), then xmake -vD main. Copy deployment.template.json to deployment.json, manually select the source-paired runtime/gateway, and run UWVM_ROS_RUN_CONFIG=deployment.json xmake run main. No robot hardware is used.

The main module has distinct advertise/respond/cancel-own aliases, two-goal capacity, bounded queues/rates/deadlines and explicit monotonic-clock authority. There is no cancel-any grant. While both goals remain live, cancel-any through the cancel-own handle must return13, and opening unauthorized_cancel must return13. Premature kind4 must fail without retiring either goal. A fully ROS-disabled policy must return13 before creating an endpoint. The public dispatcher must preserve the submitted policy.

Noetic's actual Gateway publishes PREEMPTED2 with the original default result on native cancel and immediately retires that goal. Guest observes retired errno9; it does not fabricate a custom payload. Jazzy retains the canceling goal until guest responds with kind4, yielding CANCELED5 and the complete false/UTF-8 result. The public API does not expose raw native ID bytes to guest code; the independent native ledger and full-payload association make this boundary explicit.

Retain full goals and native identities, feedback before cancellation, A's cancel/result, B's later feedback while active, B's separate cancel/result, endpoint retirement and process cleanup. Main closes owners in reverse after finite transport progress. These fixtures do not qualify physical hardware, cancel-any, other interfaces, exact Humble or the whole profile.

## 中文

# 两个原始 Grasp 目标的原生取消

同时保留两个完整原始目标。独立真实原生客户端按 A 的原始 Goal ID/UUID 取消 A，观察 A 的终态和仍活动 B 的继续反馈，再按 B 的独立标识取消 B；禁止以 abort 代替 cancel。guest 的 poll ID 是不透明值，必须通过完整且唯一的原始目标字节与原生标识逐项关联。

使用已安装的 UWVM_ROS_SDK_ROOT，执行 xmake f --plat=wasm-wasip1 --arch=wasm32（或 wasm64）后 xmake -vD main。复制部署模板，手工选择源码配对运行时/gateway，再用 UWVM_ROS_RUN_CONFIG=deployment.json xmake run main 运行；不使用实体机器人。

主模块分别持有 advertise/respond/cancel-own 别名、两个目标容量、有界队列/速率/期限和明确单调时钟权限，没有 cancel-any 授权。两目标仍存活时，使用 cancel-own 句柄调用 cancel-any 须返回13，打开 unauthorized_cancel 也须返回13。提前 kind4 须失败且不得退休目标。完全关闭 ROS 的策略须在创建端点前返回13。公共 dispatcher 须保留提交的策略。

Noetic 的实际 Gateway 收到原生 cancel 后自行发布 PREEMPTED2 和原始默认结果，并立即退休该目标；guest 观察错误9，不伪造自定义载荷。Jazzy 保留 canceling 目标，直到 guest 返回 kind4，原生结果为 CANCELED5，完整保留 false/UTF-8 结果。公共 API 不直接向 guest 暴露原生 ID 字节，须在独立原生日志中通过完整载荷建立明确关联。

保留完整目标与原生标识、取消前反馈、A 的取消/结果、A 完成后仍活动 B 的继续反馈、B 的独立取消/结果、端点退休和进程回收。主程序经过有限传输宽限后逆序关闭 owner。本例不验收硬件、cancel-any、其他接口、精确 Humble 或完整 profile。
