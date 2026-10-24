/**
 * @file Client.java
 * @brief Provide the complete agibot Client.java source contract.
 * @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
 * encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
 */
package agibot.java;

import agibot.shared.jvm.Core;

/**
 * @brief Java AimDK 1.1.0 main SDK compiled to a standalone WASI command.
 * @details All operations run inside Wasm. The clearly named shared JVM layer
 * implements exact imports and original-field codecs; Java and Kotlin use the
 * same genuine TeaVM AOT backend. Returned observations own immutable data.
 */
public final class Client
{
    private Client()
    {
    }

    /**
     * @brief Query GetMcAction once without replay.
     * @param alias Exact granted service alias, 1..255 UTF-8 bytes.
     * @return Owned complete JSON plus independent primary, close and vendor facts.
     */
    public static Core.Observation queryMode(String alias)
    {
        return Core.observe(1, alias, 3000);
    }

    /**
     * @brief Receive complete McCommonState under a monotonic deadline.
     * @param alias Exact granted topic-subscribe alias.
     * @param timeoutMilliseconds Deadline 1..30000 ms; requires monotonic-clock.
     * @return Owned observation; primary errno 110 means deadline expiry.
     * @details No callback thread enters Java. Original units and timestamps
     * remain intact. The capability is retired before JSON decoding starts.
     */
    public static Core.Observation nextMotionState(String alias, int timeoutMilliseconds)
    {
        return Core.observe(2, alias, timeoutMilliseconds);
    }

    /**
     * @brief Enumerate complete bounded X2 Ultra resources without playback.
     * @param alias Exact GetRobotResources service alias.
     * @return Full original resource/file JSON and exact signed int64 vendor code.
     * @details Each invocation owns independent buffers. A nonzero vendor code
     * remains distinct from transport errors and never triggers an automatic retry.
     */
    public static Core.Observation listResources(String alias)
    {
        return Core.observe(3, alias, 3000);
    }
}
