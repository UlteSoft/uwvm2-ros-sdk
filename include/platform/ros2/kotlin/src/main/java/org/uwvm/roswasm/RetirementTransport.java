// @file RetirementTransport.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package org.uwvm.roswasm;

/**
 * Internal preparation proof, implemented by the two reviewed final numeric
 * transports. A public/custom Transport has NO such proof and is conservatively
 * treated as effect-unknown at invoke entry. Local tests implementing this
 * package-private contract are models, not native acceptance evidence.
 */
interface RetirementTransport
{
    Result retire(String operation, long handle, byte[] empty, RetirementAttempt attempt);
}
