# Unitree Haskell — 六个例子详解

[完整原始 schema](../NATIVE_SCHEMA.md) · [API 手册](API.md) · [六个例子详解](EXAMPLES.md)

下列每个目录都是独立的真实语言命令，拥有自己的 main 和 xmake.lua。六个例子观察完整原始原生记录：公共导入选择带完整类型的观察函数，观察函数先关闭，再由入口输出全部规范字节。复用单个字段前请阅读 API 手册。

## 构建与部署

进入选定例子目录后，裸 `xmake` 在需要时完成冷配置，并编译该例自己的语言源码。完整的 Linux x86_64 SDK 通过 Xmake 恢复固定的真实语言前端及 LLVM/WASI 依赖；编译不需要原生 ROS、uwvm2 或预装语言编译器。最终应用输出仅为目标对应的一份 `.wasm`，中间文件放在 `.uwvm-ros`。

```sh
cd sdk/example/platform/unitree/haskell/ros2/motion_state
xmake

# Run after preparing and sourcing the matching native ROS environment.
export UWVM_UNITREE_RUN_CONFIG=/absolute/path/to/trusted-unitree-deployment.json
xmake run unitree-haskell-ros2-motion_state
```

运行是独立操作，需要供 SDK 进程启动器使用的 Python 3、真实 uwvm2-ros runtime、生产原生 gateway，以及所选 Noetic/Jazzy 原始包。部署声明实际后端/发行版、runtime/gateway 路径、各场景准确 alias、原生类型身份、规范 codec 身份、topic 资源、QoS/传输、队列/速率/字节配额、显式 WASI 权限和执行期限；arguments 数组恰含获准 alias。`UWVM_ROS_PYTHON` 可选择启动器，`--ros-run-config` 是配置选项替代入口。例子禁用 `run.autobuild`，运行时不会自动重建缺失或已变更的应用。

Xmake 描述通过 UWVM_ROS_SDK_ROOT 或向上查找发现完整 SDK，包含公共 dispatcher，选择当前语言与 Unitree，声明 Noetic 或 Jazzy，选择 wasm-wasip1/wasm32，并通过 ros.wasm.source 加入唯一真实 main。目标名在后端/场景间唯一，目录名提供运行场景。下面保留六份实际描述，便于逐例核对这些选择。

## ROS1 — `motion_state`

[main.hs](../../../../../../example/platform/unitree/haskell/ros1/motion_state/main.hs) · [xmake.lua](../../../../../../example/platform/unitree/haskell/ros1/motion_state/xmake.lua)

本命令调用 `waitMotionState`，观察完整 `unitree_legged_msgs/HighState`，通过带类型的结果返回 `Ros1Unitree_legged_msgsHighState`。原始字段为 `head`, `levelFlag`, `frameReserve`, `SN`, `version`, `bandWidth`, `imu`, `motorState`, `bms`, `footForce`, `footForceEst`, `mode`, `progress`, `gaitType`, `footRaiseHeight`, `position`, `bodyHeight`, `velocity`, `yawSpeed`, `rangeObstacle`, `footPosition2Body`, `footSpeed2Body`, `wirelessRemote`, `reserve`, `crc`.

上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 1087..1087 字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。

入口按以下步骤执行：

1. 通过下方真实源码中的公共导入选择原始后端观察命名空间。
2. `command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。
3. 以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。
4. 关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。

```haskell
-- | @file main.hs
-- @brief Observe one complete original ROS 1 motion_state native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros1.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitMotionState
```

下列描述将该 main 绑定到真实前端及准确后端，最终输出为 `build/unitree-haskell-ros1-motion_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-haskell-ros1-motion_state")
    set_language("haskell")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.hs", {rule = "ros.wasm.source"})
target_end()
```

成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、response_present=true；十进制 length 等于完整接收长度，wire_hex 包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。

## ROS1 — `low_state`

[main.hs](../../../../../../example/platform/unitree/haskell/ros1/low_state/main.hs) · [xmake.lua](../../../../../../example/platform/unitree/haskell/ros1/low_state/xmake.lua)

本命令调用 `waitLowState`，观察完整 `unitree_legged_msgs/LowState`，通过带类型的结果返回 `Ros1Unitree_legged_msgsLowState`。原始字段为 `head`, `levelFlag`, `frameReserve`, `SN`, `version`, `bandWidth`, `imu`, `motorState`, `bms`, `footForce`, `footForceEst`, `tick`, `wirelessRemote`, `reserve`, `crc`, `eeForceRaw`, `eeForce`, `position`, `velocity`, `velocity_w`.

上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 1069..1069 字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。

入口按以下步骤执行：

1. 通过下方真实源码中的公共导入选择原始后端观察命名空间。
2. `command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。
3. 以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。
4. 关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。

```haskell
-- | @file main.hs
-- @brief Observe one complete original ROS 1 low_state native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros1.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitLowState
```

下列描述将该 main 绑定到真实前端及准确后端，最终输出为 `build/unitree-haskell-ros1-low_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-haskell-ros1-low_state")
    set_language("haskell")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.hs", {rule = "ros.wasm.source"})
target_end()
```

成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、response_present=true；十进制 length 等于完整接收长度，wire_hex 包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。

## ROS1 — `motor_state`

[main.hs](../../../../../../example/platform/unitree/haskell/ros1/motor_state/main.hs) · [xmake.lua](../../../../../../example/platform/unitree/haskell/ros1/motor_state/xmake.lua)

本命令调用 `waitMotorState`，观察完整 `unitree_legged_msgs/MotorState`，通过带类型的结果返回 `Ros1Unitree_legged_msgsMotorState`。原始字段为 `mode`, `q`, `dq`, `ddq`, `tauEst`, `q_raw`, `dq_raw`, `ddq_raw`, `temperature`, `reserve`.

上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 38..38 字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。

入口按以下步骤执行：

1. 通过下方真实源码中的公共导入选择原始后端观察命名空间。
2. `command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。
3. 以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。
4. 关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。

```haskell
-- | @file main.hs
-- @brief Observe one complete original ROS 1 motor_state native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros1.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitMotorState
```

下列描述将该 main 绑定到真实前端及准确后端，最终输出为 `build/unitree-haskell-ros1-motor_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-haskell-ros1-motor_state")
    set_language("haskell")
    set_ros_platform("unitree")
    set_ros1_version("noetic")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.hs", {rule = "ros.wasm.source"})
target_end()
```

成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、response_present=true；十进制 length 等于完整接收长度，wire_hex 包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。

## ROS2 — `motion_state`

[main.hs](../../../../../../example/platform/unitree/haskell/ros2/motion_state/main.hs) · [xmake.lua](../../../../../../example/platform/unitree/haskell/ros2/motion_state/xmake.lua)

本命令调用 `waitMotionState`，观察完整 `unitree_go/msg/SportModeState`，通过带类型的结果返回 `Ros2Unitree_goMsgSportModeState`。原始字段为 `stamp`, `error_code`, `imu_state`, `mode`, `progress`, `gait_type`, `foot_raise_height`, `position`, `body_height`, `velocity`, `yaw_speed`, `range_obstacle`, `foot_force`, `foot_position_body`, `foot_speed_body`.

上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 227..227 字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。

入口按以下步骤执行：

1. 通过下方真实源码中的公共导入选择原始后端观察命名空间。
2. `command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。
3. 以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。
4. 关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。

```haskell
-- | @file main.hs
-- @brief Observe one complete original ROS 2 motion_state native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros2.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitMotionState
```

下列描述将该 main 绑定到真实前端及准确后端，最终输出为 `build/unitree-haskell-ros2-motion_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-haskell-ros2-motion_state")
    set_language("haskell")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.hs", {rule = "ros.wasm.source"})
target_end()
```

成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、response_present=true；十进制 length 等于完整接收长度，wire_hex 包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。

## ROS2 — `low_state`

[main.hs](../../../../../../example/platform/unitree/haskell/ros2/low_state/main.hs) · [xmake.lua](../../../../../../example/platform/unitree/haskell/ros2/low_state/xmake.lua)

本命令调用 `waitLowState`，观察完整 `unitree_go/msg/LowState`，通过带类型的结果返回 `Ros2Unitree_goMsgLowState`。原始字段为 `head`, `level_flag`, `frame_reserve`, `sn`, `version`, `bandwidth`, `imu_state`, `motor_state`, `bms_state`, `foot_force`, `foot_force_est`, `tick`, `wireless_remote`, `bit_flag`, `adc_reel`, `temperature_ntc1`, `temperature_ntc2`, `power_v`, `power_a`, `fan_frequency`, `reserve`, `crc`.

上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 1050..1050 字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。

入口按以下步骤执行：

1. 通过下方真实源码中的公共导入选择原始后端观察命名空间。
2. `command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。
3. 以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。
4. 关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。

```haskell
-- | @file main.hs
-- @brief Observe one complete original ROS 2 low_state native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros2.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitLowState
```

下列描述将该 main 绑定到真实前端及准确后端，最终输出为 `build/unitree-haskell-ros2-low_state.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-haskell-ros2-low_state")
    set_language("haskell")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.hs", {rule = "ros.wasm.source"})
target_end()
```

成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、response_present=true；十进制 length 等于完整接收长度，wire_hex 包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。

## ROS2 — `wireless_controller`

[main.hs](../../../../../../example/platform/unitree/haskell/ros2/wireless_controller/main.hs) · [xmake.lua](../../../../../../example/platform/unitree/haskell/ros2/wireless_controller/xmake.lua)

本命令调用 `waitWirelessController`，观察完整 `unitree_go/msg/WirelessController`，通过带类型的结果返回 `Ros2Unitree_goMsgWirelessController`。原始字段为 `lx`, `ly`, `rx`, `ry`, `keys`.

上述全部字段、嵌套记录和数组元素均参与解码及重编码，可信 alias 必须绑定这个准确原始类型。完整规范负载长度为 18..18 字节，与原生对象 sizeof 无关；原生注册身份与 codec 身份是独立部署事实。

入口按以下步骤执行：

1. 通过下方真实源码中的公共导入选择原始后端观察命名空间。
2. `command` 要求 getArgs 中恰有一个 alias，将其编码为 UTF-8，参数数量错误时在打开 owner 前退出 22。
3. 以 250 次总预算观察。带类型的函数执行一次打开、一次订阅，仅在 idle 后等待 20ms，最终正常关闭一次。
4. 关闭后输出整个结果，主操作、清理、输出错误保持独立，直到最终优先级和退出决策。

```haskell
-- | @file main.hs
-- @brief Observe one complete original ROS 2 wireless_controller native message.
-- @details One explicit alias is required; the real Haskell observer closes before stdout.
module Main where
import Unitree.Observation (command)
import qualified Unitree.Ros2.Observation as Unitree
-- | @brief Enter the genuine Haskell Wasm command with the complete typed observer.
-- @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
-- The observer closes once before stdout; invalid argument count exits 22 before acquisition.
-- @return Normal unit completion exits zero; primary, close or stdout errors exit with their original
-- status clamped to 125 only at the process boundary. Fatal runtime failures cannot promise cleanup.
main :: IO ()
main = command Unitree.waitWirelessController
```

下列描述将该 main 绑定到真实前端及准确后端，最终输出为 `build/unitree-haskell-ros2-wireless_controller.wasm`.

```lua
-- @file xmake.lua
-- @brief Build one genuine Unitree source command using the installed SDK.
-- @details Discover a relocated SDK without encoding its directory depth. Invalid SDK or unsupported
-- target selection raises an explicit configuration error before invoking a compiler. Successful builds
-- produce one standalone Wasm command and never open a ROS owner or connect to a physical robot.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate or parent == "" then
            error("Set UWVM_ROS_SDK_ROOT to the complete installed SDK")
        end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
set_policy("run.autobuild", false)

-- @brief Compile only the declared genuine source into one standalone Wasm command.
target("unitree-haskell-ros2-wireless_controller")
    set_language("haskell")
    set_ros_platform("unitree")
    set_ros2_version("jazzy")
    set_plat(get_config("plat") or "wasm-wasip1")
    set_arch(get_config("arch") or "wasm32")
    add_files("main.hs", {rule = "ros.wasm.source"})
target_end()
```

成功运行输出 primary=0、cleanup=0、cleanup_present=true、rpc_status=0、rpc_present=true、response_present=true；十进制 length 等于完整接收长度，wire_hex 包含全部重编码规范字节。例子不预设传感器数值，应与选定原生 peer 或 fixture 比较。权限缺失、原生身份错误、断连、有限 idle 预算耗尽或严格 codec 拒绝均保留非零原始结果，不能把空负载或默认值当作成功。

## 结果处理与范围

读取完整记录前应检查响应存在标记；即使本地解码失败，也应保留最后的原始 RPC 和完整 uint64 长度。最终 JSON 的存在标记为布尔值，length 为准确十进制字符串，成功字节为完整 hex。输出器依次选择主操作、独立清理、stdout 失败 5；仅进程退出将状态钳制到最多 125。polls 表示真实 poll 次数而非经过毫秒数，部署执行期限是独立限制。

支持的命令配置为 wasm32 WASI Preview 1、noeh、单线程，使用 Noetic/Jazzy 原始原生接口。随 SDK 的源码编译工具链已在 Linux x86_64 验收；同 SHA 产物的 AArch64 原生通信通过 x86_64 内核上的 QEMU user mode 单独验收，不代表 ARM 编译宿主或物理硬件。x86 源码、codec、构建证据记载于 [native-source-qualification.json](../../../../../../share/platform/unitree/native-source-qualification.json)，固定前端出处见 [原始编译器版本及源码闭包](../../../../../../share/platform/unitree/native-compiler-sources.json)。54 种完整记录的 codec 覆盖与六种观察类型的实时传输分别计数。Memory64、Preview 2、线程、Wasm EH、其他发行版、物理控制及机器人 CRC/安全行为不在本路线验收范围内。
