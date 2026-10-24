// @file Publisher.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package org.ros2.rcljava.publisher;
import java.lang.ref.WeakReference;
import org.ros2.rcljava.node.Node;
import org.ros2.rcljava.interfaces.Disposable;
import org.ros2.rcljava.interfaces.MessageDefinition;
/**
 * Pinned publish/dispose/source-reference signatures. Native QoS event-handler
 * types and callbacks remain unimplemented; no dummy EventHandler is provided.
 */
public interface Publisher<T extends MessageDefinition> extends Disposable
{
    void publish(T message);
    WeakReference<Node> getNodeReference();
}
