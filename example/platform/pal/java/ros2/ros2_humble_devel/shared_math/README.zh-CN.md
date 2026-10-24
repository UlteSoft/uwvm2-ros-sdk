# 真实 JVM 共享库与 Java 消费端

本例通过公共 Xmake 框架使用普通 set_kind(shared) 和 add_deps。库保有自己的堆，
消费端仅通过实际的 Wasm 导入传递标量。应用检查有符号加法、真实溢出捕获、finally
执行、每个实例仅初始化一次，并核对同一库的两个实例具有独立计数。实际构建和执行
状态单独保存在 library-coverage.json，源码存在不代表验收通过。

修改 run-native.json，明确填写已安装的运行时及 Gateway 路径。配置为三个模块逐一
关闭 ROS，并明确不给时钟、随机数、目录或套接字权限。公共部署工具要求 Gateway
路径，但所有 ROS 模块关闭时不会启动 Gateway。

```sh
xmake f -p wasm-wasip1 -a wasm32 -c --ros-run-config=run-native.json
xmake
xmake run main
```

部署使用父任务维护的 sdk/tools/platform/ros/run.py。公共产物契约选择
build/targets/6d617468/math.wasm 和 build/targets/6d61696e/main.wasm；编译中间物
留在 build 外。math 和 math_peer 使用各自明确的模块策略。模块间不传递托管对象
引用或指针。本例不证明原生 ROS、ARM、memory64 或静态归档已完成。
