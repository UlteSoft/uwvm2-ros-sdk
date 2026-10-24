# Unitree Java SDK

Use this SDK to build a genuine Java observation command for the original Unitree ROS messages. Each language has
three ROS1 and three ROS2 examples, with a standalone `xmake.lua` in every directory. The application output is one
`build/*.wasm` command.

## Build and deployment requirements

The pinned pipeline is **javac 21.0.10 → Java 17 bytecode → TeaVM 0.13.1 WEBASSEMBLY_WASI**. The compiler-tool host is Linux x86_64; the guest target is `wasm32-wasip1`.
A complete SDK installation includes the checksum-indexed offline compiler bundle. Xmake restores that bundle
itself, so building requires no separately installed language compiler, ROS installation, uwvm2-ros or network
access.

```sh
cd sdk/example/platform/unitree/java/ros2/low_state
xmake
```

The final file is `build/unitree-java-ros2-low_state.wasm`. Compiler scratch files live under
`.uwvm-ros/managed-aot/<target-name>` and are not deployment outputs. Java/Kotlin rebuilds clear that target's old
class directory before compilation; distinct targets have distinct scratch directories.

`xmake run` requires the installed uwvm2-ros executable, the matching native gateway, native ROS and original
Unitree type packages, a trusted deployment JSON, and Python 3 to launch the processes. Python does not execute the
guest application. Configure the native ROS environment, then run:

```sh
export UWVM_ROS_RUN_CONFIG=/absolute/path/unitree-native-deployment.json
xmake run unitree-java-ros2-low_state
```

The deployment must select the same backend and ROS distribution as the target, and provide the concrete native
identity, topic, granted alias, queue/rate limits and WASI permissions. It passes exactly one alias argument to the
guest. The examples disable `run.autobuild`; deploying an existing Wasm file requires no compiler bundle.

## Use the language API

The Java observation entry is `uwvm.unitree.ros2.Observations.readLowState`. It receives an exact granted alias and an explicit poll
budget from 1 through 250. The result contains the entire original message, its reencoded canonical bytes, and
independent operation and cleanup facts. The actual maintained ROS2 low-state entry is:

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

Kotlin uses ordinary Java value classes through JVM interoperability. Their facade and entry source are compiled by
their own genuine language compiler; the message is not substituted with an opaque byte array or a host-language
process.

Read [API.md](API.md) for the complete value model, all 54 record classes, typed interfaces, ownership and error
behavior. Read [EXAMPLES.md](EXAMPLES.md) for every observation, its source flow and full build script.
[SCHEMA.md](../SCHEMA.md) lists the original fields and byte bounds. Current admitted routes and exact verification
scope are recorded in [VALIDATION.md](../../VALIDATION.md).

## Target boundaries

This route produces a core WASI Preview1 module with one wasm32 memory. Memory64, threads and a component-model ABI
are not qualified by these examples. Java/Kotlin use the fixed TeaVM linear-memory backend and its supported class
library. The JDK, Kotlin and TeaVM tool inputs are pinned in `share/language/jvm` and
`share/toolchains/host/linux-x86_64/jvm-aot.json`. Guest execution uses the generated Wasm and requires no host JVM.

Native observations and complete-type codec probes are separate from physical robot qualification. Topic observation
retains all fields, including CRC fields, without certifying device CRC computation or motion behavior. Unitree API
Request/Response messages remain topic RPC messages; this SDK does not invent ROS services or actions for them.

Current accepted configuration choices: [shared provider configuration](../../CONFIGURATION.md).
