# RRBot JointTrajectoryController 软件模拟

本例通过公开 xmake 构建真实 Wasm，xmake test 注册两个必需场景并明确返回 BLOCKED。
Wasm 内 ROS 查询、回调与反向反馈尚未迁移，不得跳过场景或以零用例成功。

此前宿主 ROS 观察脚本及调用它的驱动已完整移出 SDK 公开树；公开入口不会执行历史隔离副本。
旧观察脚本只订阅状态/反馈并查询 ListControllers/GetResult，没有发送或取消目标；它的结果不能证明
Wasm 内查询或反馈。保留的官方环境启动脚本仅启动官方控制器及 RRBot 软件硬件，不处理 SDK 业务。

设置 UWVM_ROS_SDK_ROOT 为已安装 SDK 后，在本目录运行 xmake 和 xmake test。
只有完成真实 Wasm 迁移、权限拒绝无原生副作用、反向反馈审计与官方仿真，方可恢复验收执行。
当前不宣称原生 ROS、仿真、物理、传感或完整 legacy 兼容通过。
