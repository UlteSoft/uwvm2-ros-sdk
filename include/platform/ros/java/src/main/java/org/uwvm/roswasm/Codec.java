// @file Codec.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package org.uwvm.roswasm;

/** Complete canonical value conversion; implementations must reject trailing bytes. */
public interface Codec<T>
{
    byte[] encode(T value);
    T decode(byte[] value);
}
