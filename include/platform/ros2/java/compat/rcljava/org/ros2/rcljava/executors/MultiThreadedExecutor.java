// @file MultiThreadedExecutor.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package org.ros2.rcljava.executors;
import org.ros2.rcljava.node.ComposableNode;

/**
 * Type resolution for the original composition example's unused import.
 * Instantiation and every operation explicitly refuse unsupported thread/wait
 * semantics. This is not a single-thread implementation disguised as a pool.
 */
public final class MultiThreadedExecutor implements Executor
{
    private static UnsupportedOperationException no()
    {
        return new UnsupportedOperationException("native multithreaded executor is not implemented in this Guest profile");
    }

    public MultiThreadedExecutor()
    {
        throw no();
    }

    public MultiThreadedExecutor(int numberOfThreads)
    {
        throw no();
    }

    public void addNode(ComposableNode n)
    {
        throw no();
    }

    public void removeNode(ComposableNode n)
    {
        throw no();
    }

    public void spinOnce()
    {
        throw no();
    }

    public void spinOnce(long t)
    {
        throw no();
    }

    public void spinSome()
    {
        throw no();
    }

    public void spinSome(long t)
    {
        throw no();
    }

    public void spinAll(long t)
    {
        throw no();
    }

    public void spin()
    {
        throw no();
    }
}
