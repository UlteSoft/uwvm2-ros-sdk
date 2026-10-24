/**
 * @file Main.java
 * @brief Execute the genuine agibot Main application over its explicit SDK imports.
 * @details The application owns its values and closes explicitly acquired capabilities. An installed
 * compiler/engine and exact native deployment remain separate requirements.
 */
package agibot.examples;

import agibot.java.Client;
import agibot.shared.jvm.Core;
import uwvm.ros.Wasi;

/** @brief Execute this original AimDK observation in a genuine Java AOT Wasm command. */
public final class Main
{
    private Main()
    {
    }

    /**
     * @brief Validate one granted alias, call once and retain actual failure facts.
     * @param args One exact runtime-granted alias.
     * @details All guest source has been AOT compiled; no host JVM is started.
     */
    public static void main(String[] args)
    {
        if(args.length != 1)
        {
            System.err.println("Expected exactly one granted Agibot alias");
            Wasi.exit(22);
            return;
        }
        Core.Observation result = Client.queryMode(args[0]);
        if(result.error != 0 || result.cleanup != 0)
        {
            System.err.println("Agibot observation failed: " + result.error + "; close: " + result.cleanup);
            Wasi.exit(1);
            return;
        }
        System.out.println(result.json);
        Wasi.exit(result.vendor == 0 ? 0 : 1);
    }
}
