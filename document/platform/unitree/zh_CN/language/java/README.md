# 宇树 Java SDK

本 SDK 将真正的 Java 观察程序编译为使用宇树原始 ROS 消息的 Wasm 命令。每种语言分别提供三个 ROS1 和三个 ROS2 示例，每个目录都有独立的 `xmake.lua`。应用发布产物只有一个 `build/*.wasm` 文件。

## 构建与部署条件

固定构建链为 **javac 21.0.10 → Java 17 bytecode → TeaVM 0.13.1 WEBASSEMBLY_WASI**。编译工具运行于 Linux x86_64，客体目标为 `wasm32-wasip1`。完整 SDK 随附逐文件校验的离线编译工具包，由 Xmake 自行恢复；构建时无需另行安装该语言编译器、ROS、uwvm2-ros，也无需联网。

```sh
cd sdk/example/platform/unitree/java/ros2/low_state
xmake
```

最终文件为 `build/unitree-java-ros2-low_state.wasm`。编译中间文件位于
`.uwvm-ros/managed-aot/<target-name>`，不属于部署产物。Java/Kotlin 每次编译先清理当前 target 的旧类文件，不同 target 使用独立的中间目录。

`xmake run` 需要已安装的 uwvm2-ros、匹配的原生网关、原生 ROS 与宇树类型包、可信部署 JSON，以及用于启动进程的 Python 3。应用本身由 uwvm2-ros 执行。先加载对应的原生 ROS 环境，再运行：

```sh
export UWVM_ROS_RUN_CONFIG=/absolute/path/unitree-native-deployment.json
xmake run unitree-java-ros2-low_state
```

部署配置必须与 target 的后端和 ROS 发行版一致，并明确指定原生类型标识、主题、授权别名、队列和速率配额及 WASI 权限。启动器只向应用传入一个授权别名参数。示例关闭 `run.autobuild`，因此运行已有 Wasm 不需要编译工具包。

## 使用本语言接口

Java 的观察入口是 `uwvm.unitree.ros2.Observations.readLowState`，参数为精确授权别名和 1 至 250 次的显式轮询预算。返回值保留原始消息的所有字段、重新编码的完整规范字节，以及分别记录的操作和清理结果。下面直接引用维护中的 ROS2 低层状态示例：

```java
/**
 * @file Main.java
 * @brief Receive and report the complete native Unitree low_state message.
 * @details The exact deployed alias selects one original ROS2 type. The
 * owned result retains all record fields and independent operation/cleanup facts.
 */
package uwvm.unitree.example;

import uwvm.ros.Wasi;
import uwvm.unitree.Observation;
import uwvm.unitree.ros2.Observations;
import uwvm.unitree.ros2.Ros2Unitree_goMsgLowState;

/** @brief Execute one finite observation without issuing a robot command. */
public final class Main
{
    /** @brief Prevent construction of the command entry class. */
    private Main()
    {
    }

    /**
     * @brief Receive a whole native record and write its complete canonical form.
     * @param args Exactly one independently granted alias after the program name.
     * @return No value; WASI proc_exit propagates the checked operation status.
     * @details Normal owner cleanup occurs before output. Fatal VM failures do
     * not promise normal cleanup; the host must reclaim the failed instance.
     */
    public static void main(String[] args)
    {
        if (args.length != 1)
        {
            Wasi.exit(22);
            return;
        }
        Observation.Result<Ros2Unitree_goMsgLowState> result = Observations.readLowState(args[0], 250);
        Wasi.exit(Observation.write(result));
    }
}
```

Kotlin 通过普通 JVM 互操作使用 Java 值类型。各语言的入口与门面由真实的对应语言编译器编译，消息值保留完整的具名字段。

[API.md](API.md) 说明完整值模型、全部 54 种记录、类型化接口、所有权及错误行为；[EXAMPLES.md](EXAMPLES.md)
逐一解释六个示例及完整构建脚本；[SCHEMA.md](../SCHEMA.md) 列出原始字段与字节上限。已准入的语言和实际验证范围以 [VALIDATION.md](../../VALIDATION.md) 为准。

## 目标与验证边界

这一路线产出单个 wasm32 内存的核心 WASI Preview1 模块。示例尚未验证 memory64、线程或组件模型 ABI。Java/Kotlin 使用固定版本 TeaVM
的线性内存后端及其支持的类库。JDK、Kotlin 和 TeaVM 的精确工具输入固定记录在 `share/language/jvm` 与
`share/toolchains/host/linux-x86_64/jvm-aot.json`。执行的是生成的 Wasm，运行阶段无需宿主 JVM。

原生主题观察和完整类型编解码验收分别记录，不等同于实体机器人验收。代码完整保留 CRC 等字段，不据此宣称已验证设备 CRC 算法或运动行为。宇树 API 的 Request/Response 保持主题 RPC 消息语义，不被改造成不存在的 ROS 服务或动作。

当前可接受的配置选择见[共享 provider 配置](../../CONFIGURATION.md)。
