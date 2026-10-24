# 原始服务别名撤销

这个独立 C++ 程序为 `sample` 打开两个 owner，完成一次原始只读服务请求，然后撤销别名。第二个仍在本地持有的 owner 必须返回9，重新打开必须返回125，完整 canonical sentinel 必须逐字节保持不变，旧 owner 的一次显式 close 返回9。随后全部本地 owner 均已退役，不重试任何操作。

在独立例子目录中使用已安装的公共 SDK 构建：

```sh
export UWVM_ROS_SDK_ROOT=/path/to/sdk
xmake f -p wasm-wasip1 -a wasm32
xmake
# Repeat in a separate build directory with -a wasm64.
```

将 `native.json` 复制到操作者自己的位置，只把 runtime/gateway 占位符改为完整厂商注册表对应的真实配对路径。保留显式资源、原生 RIHS、codec identity、QoS，以及允许两个 owner 的 max-inflight2。默认 WASI 基础流保留，没有额外 WASI 授权。原生 ROS 仅在运行时需要。

```sh
python3 "$UWVM_ROS_SDK_ROOT/tools/platform/ros/run.py" \
  --config /path/to/manual-native.json --backend ros2 --distribution jazzy \
  --target wasm32-wasip1 --scenario read_single_io \
  --wasm /path/to/application.wasm --report-directory /path/to/reports
```

独立原生 peer 必须只观察到一次请求、一次包含原生 CDR 的完整响应，并正常清理。仅凭 worker JSON 的 `passed:true` 不足以验收；还要检查 peer 请求计数1、全部响应字段、9/125、前后相同的 sentinel hex、独立 cleanup9，以及公共启动器完成 worker/gateway 回收。受控 peer 为 x86_64；AArch64 验收指真实 VM 和网关在 QEMU 下运行，不表示 ARM peer 或真实机器人验收。
