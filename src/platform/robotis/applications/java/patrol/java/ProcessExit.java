package org.uwvm.robotis.patrol;

import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/**
 * @brief Supply actual WASIp1 normal termination for this TeaVM application.
 * @details The selected TeaVM class library lacks System.exit. This standard
 * (i32)->() import terminates only this Guest; it is not a ROS bridge or grant.
 * @see PatrolClient#main
 */
public final class ProcessExit
{
    private ProcessExit()
    {
    }

    /**
     * @brief End this Guest after all independently checked role cleanup.
     * @details Performs no cancellation or close. Do not use it as cleanup.
     * @param status Explicit representable command status0..125.
     * @see PatrolClient#main PatrolClient#run
     */
    @Import(module = "wasi_snapshot_preview1", name = "proc_exit") @Unmanaged public static native void exit(int status);
}
