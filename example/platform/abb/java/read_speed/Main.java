/**
 * @file Main.java
 * @brief Run one explicit ABB ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
package uwvm.abb.example;

import uwvm.abb.CommandOutput;
import uwvm.abb.Observation;
import uwvm.ros.Wasi;

/**
 * @brief Execute the complete ABB read_speed observation as a genuine Java WASI command.
 * @details Compile with Xmake; the sole public product is a standalone .wasm.
 * ROS grants and native deployment are explicit run inputs. No host JVM is used at run time.
 */
public final class Main
{
    /** @brief Prevent construction of this command entry point. */
    private Main()
    {
    }

    /**
     * @brief Invoke the typed SDK, emit all facts, and propagate its process status.
     * @param args Borrowed command arguments: ALIAS.
     * @return No value; the real WASI proc_exit terminates the command.
     * @details Wrong argument count exits 22 before any acquisition. The full
     * decoded response remains owned until output; every handle is already closed.
     */
    public static void main(String[] args)
    {
        if(args.length != 1)
        {
            Wasi.exit(22);
            return;
        }
        Wasi.exit(CommandOutput.write(Observation.readSpeed(args[0])));
    }
}
