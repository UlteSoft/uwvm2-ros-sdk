/**
 * @file Main.java
 * @brief Execute complete publish_string through the genuine Java AOT library.
 * @details Transport, original response and once-only cleanup remain separate.
 */
import uwvm.ros.NativeCommand;

public final class Main
{
    public static void main(String[] arguments)
    {
        System.exit(NativeCommand.run(1));
    }
}
