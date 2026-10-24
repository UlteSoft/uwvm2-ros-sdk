// @file RosException.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package org.uwvm.roswasm;

/** Runtime refusal retaining errno, optional required length and owned bytes. */
public final class RosException extends RuntimeException
{
    public final Result result;

    public RosException(Result result)
    {
        super("ROS ABI error " + result.error + "; required=" + result.required);
        this.result = result;
    }
}
