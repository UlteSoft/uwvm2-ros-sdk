/**
 * @file Main.java
 * @brief Execute complete subscribe_string through the genuine Java AOT library.
 * @details Transport, original response and once-only cleanup remain separate.
 */
import uwvm.ros.NativeCommand;
import uwvm.ros.Wasi;

public final class Main
{
    public static void main(String[] arguments)
    {
        Wasi.exit(NativeCommand.run(2));
    }
}
