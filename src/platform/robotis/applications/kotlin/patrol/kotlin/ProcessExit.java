package org.uwvm.robotis.patrol.kotlin;

import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/**
 * @brief Actual standard WASIp1 termination for this Kotlin/TeaVM application.
 * @details The selected class library lacks System.exit. This (i32)->() import
 * ends only this Guest and adds no ROS bridge or permission.
 * @see PatrolClient#main
 */
public final class ProcessExit
{
    private ProcessExit()
    {
    }

    /**
     * @brief End this Guest only after independently checked role cleanup.
     * @details Performs no cancellation/close and must not substitute for cleanup.
     * @param status Explicit represented command status0..125.
     * @see PatrolClient#main PatrolClient#run
     */
    @Import(module = "wasi_snapshot_preview1", name = "proc_exit") @Unmanaged public static native void exit(int status);
}
