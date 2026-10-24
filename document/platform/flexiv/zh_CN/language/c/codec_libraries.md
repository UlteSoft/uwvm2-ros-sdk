# 完整原始记录的静态库与共享库编解码

`c` 的 `codec_static`、`codec_shared` 示例保留
`flexiv_msgs/msg/RobotStates` 的全部原始字段，使用普通 Xmake
`static`、`shared`、`binary` 类型与 `add_deps`。库自行持有完整类型值和全部输入、输出缓冲区。
共享模块只交换 uint32 字节及长度，不传递指针或 C++ 对象。

将 `UWVM_ROS_SDK_ROOT` 设为安装目录，在对应独立示例目录构建：

```sh
xmake f --plat=wasm-wasip1 --arch=wasm32
xmake -j2 main
```

另一位宽必须显式选择 `wasm64`。构建使用公共 SDK 的 LLVM 23 依赖闭包；
wasm64 Preview 1 属于 Uwvm 扩展，并非上游 WASI Preview 1 标准。
静态归档只用于链接，部署 `build/main/main.wasm` 即可。
共享版本还需要 `build/record_codec/record_codec.wasm`，并以 `record_codec` 名称预加载。

复制 `deployment.template.json` 为 `deployment.json`，填写已安装运行时与 Gateway 路径，
保留显式模块策略，将唯一参数替换为完整线值的十六进制文本，然后调用公共启动器：

```sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py" \
    --config deployment.json --backend ros2 --distribution jazzy \
    --target wasm32-wasip1 --scenario codec_static \
    --wasm build/main/main.wasm --report-directory verification
```

共享版本的场景为 `codec_shared`；64 位目标为 `wasm64-wasip1`。
所有模块都显式关闭 ROS，额外 WASI 授权列表为空；基础标准流仍可使用。
该部署不会启动原生 peer，也不会自动增加权限。

程序在首次调用库之前检查真实构造函数状态，随后解码完整输入、重新编码并打印实际字节。
非法十六进制、截断、非法字段及尾随字节会保留非零主状态；清理状态独立报告。
实现不通过首次调用补做初始化，也不依赖模块之间的共享内存。

对应源码已通过双位宽普通静态库、共享模块加载、构造函数和完整值/错误输入检查。
原始证据保存在分发 SDK 之外。原生 ROS 完整状态通信及 AArch64 执行仍需独立证据。
公共调度器为所有厂商使用同一个运行入口。准备好手动部署配置后，可执行
`UWVM_ROS_RUN_CONFIG=deployment.json xmake run main`。
原始记录使用上面的直接启动器命令，厂商 Xmake run 路径仍需单独执行验收。
