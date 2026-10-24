# 六个 Java 观察示例

| 后端 | 示例目录 | 完整原生消息 |
| --- | --- | --- |
| ros1 | `motion_state` | `unitree_legged_msgs/HighState` |
| ros1 | `low_state` | `unitree_legged_msgs/LowState` |
| ros1 | `motor_state` | `unitree_legged_msgs/MotorState` |
| ros2 | `motion_state` | `unitree_go/msg/SportModeState` |
| ros2 | `low_state` | `unitree_go/msg/LowState` |
| ros2 | `wireless_controller` | `unitree_go/msg/WirelessController` |

ROS1 的 `motion_state` 读取完整高层状态，包括 IMU、机体运动、步态、位置、足端与电池字段；`low_state` 保留每个原始电机、IMU、电池、力传感器、遥控与 CRC 字段；`motor_state` 保留单个电机原始状态中的所有标量与固定数组。

ROS2 的 `motion_state` 保留完整运动模式状态及 IMU、足端数组；`low_state` 保留所有原始电机、BMS、传感器、遥控与 CRC 字段；`wireless_controller` 保留四个轴和完整按键位掩码。程序输出中的规范字节覆盖整条消息，并非只取几个可见指标。

每个入口先校验恰好一个别名参数，再以 250 次轮询预算调用具体观察器，最后报告完整消息及独立操作/清理事实。主题由可信部署配置指定，不写死在应用源码中。验收使用由独立原生 ROS 类型发布的 `/unitree_sdk_fixture/*` 隔离主题。

## 完整构建脚本解读

下面是 ROS2 低层状态示例实际维护的 `xmake.lua`。发现循环按标记查找 SDK，也可由 `UWVM_ROS_SDK_ROOT` 指向单独安装目录；它不假设固定父目录层数。`set_language`
选择真实语言前端，`set_ros_platform` 选择宇树接口，`set_ros2_version` 明确部署发行版意图。
`set_plat(get_config("plat") or "wasm-wasip1")` 与 `set_arch(get_config("arch") or "wasm32")`
默认选择 `wasm32-wasip1`，并保留命令行指定的架构和平台。不支持的目标由 provider 明确拒绝，不会被静默替换为默认值。

```lua
-- @file xmake.lua
-- @brief Compile genuine java source to one complete Unitree ROS2 Wasm command.
-- @details Native ROS and uwvm2-ros are explicit run prerequisites. Building
-- restores only the fixed native AOT closure and emits one build/*.wasm file.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate then
            error("Set UWVM_ROS_SDK_ROOT to the installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Select the real source language and exact native ROS family.
target("unitree-java-ros2-low_state")
    set_language("java")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    -- Respect explicit selections so unsupported targets fail during configuration.
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    set_values("ros.sdk.main_class", "uwvm.unitree.example.Main")
    add_files("Main.java")
target_end()
```

对应 ROS1 示例使用 `set_ros1_version("noetic")`，ROS2 示例使用
`set_ros2_version("jazzy")`。更改发行版选项不代表已经完成新发行版的原生元数据验证；运行前仍须从真实安装环境导出并绑定类型。对表中任一示例，进入
`sdk/example/platform/unitree/java/<backend>/<directory>` 执行 `xmake`，target 名为
`unitree-java-<backend>-<directory>`。

## 解释运行结果

正常成功观察的 primary、cleanup、encoding 为零，response、cleanup、RPC、required-length 的存在标志均为真。`required` 是完整接收长度，`wire_hex` 的十六进制字符数应为该长度的两倍。记录存在时仍可能发生后续关闭失败，因此必须分别检查清理状态。

启动器在 `.uwvm-ros/unitree-run` 中保存
`execution.json`、`worker.stdout`、`worker.stderr`、`gateway.log`；它们是运行诊断记录，不是应用部署产物。`execution.json` 记录实际
Wasm、原生运行时、网关和部署配置的哈希，原生审计记录包含实际资源创建和关闭事件。第二次 `xmake run` 复用同一个已编译 Wasm，并创建新的观察过程和独立回执。
