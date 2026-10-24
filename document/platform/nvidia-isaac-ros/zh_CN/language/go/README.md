# nvidia-isaac-ros Go ROS2 编解码示例

安装 SDK 和 Xmake，用 `UWVM_ROS_SDK_ROOT` 指定 SDK 根目录，进入
`example/platform/nvidia-isaac-ros/go/ros2/` 下的一个独立例子。
执行 `xmake f -a wasm32`、`xmake -vD -j1`，得到一个由真实 Go 1.24.2
编译的应用 Wasm。构建不需要原生 ROS。公共前端明确拒绝 wasm64，
不会自动切换位宽。

`roundtrip` 接收可选 uint32 种子（默认 17），构造完整类型的每个活动字段，
检查编码、解码再编码一致。`decode_argument` 接收唯一的有界十六进制线格式
参数，进行完整类型解码与逐字节再编码核对。`malformed_wire` 使用种子构造值，
要求截断和尾随字节均被拒绝。成功时输出完整长度和十六进制字节；输入或编解码
失败返回 22，标准输出失败返回 5。值拥有其内存；完整生成目录解释字段单位和边界。

通过公共模块 `nvidia-isaac-ros/go/ros2/complete` 导入，例子的模块文件声明 SDK
依赖，公共 Xmake action 负责解析。这些例子不申请 ROS 或 GPU 能力。
实际 `xmake run` 另需手动提供部署配置并明确 WASI 权限；本次构建回执不证明
该运行时闭包。静态归档、共享库、wasm64、原始 Array 原生通信与 QEMU
执行均有独立验收行。

三个组件分别从全新固定前端缓存冷恢复，在仅预装 Xmake 的镜像中完成九份真实
应用构建。本封存增量的CPU执行已补证30项，覆盖x86与QEMU，仅手工单调时钟、ROS关闭；独立证据见go-native-review41.json。可移植源码及产物身份见
`share/platform/nvidia/go-native-review41.json`。历史 C/C++ 原生回执和已封存
源码版本保持不变。

Isaac ROS另验收三种原始Array原生流程：接收关闭、完整回发、撤销，共12项，两个架构独立订阅者共收到40条完整消息。其他组件原生类型和库路线继续开放。

第41轮最终注释/排版源码已真实重建12例；十二份产物哈希均变化，原30项CPU及12项原生用例以相同权限重验通过，新增覆盖计数为零。
