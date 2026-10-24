/**
 * @file observation.h
 * @brief Use complete ABB ROS 2 observations from genuine Objective-C source.
 * @details This portable guest interface uses the C-compatible storage and
 * ownership rules of the complete ABB family. It requires the Objective-C
 * frontend and uses @encode for compile-time layout diagnostics. It does not
 * require NSObject, Foundation, ARC, messaging, or a native Objective-C runtime.
 * Applications requiring those facilities need a separately linked WASI runtime.
 * @see ABBObservationLayout, abb_read_speed, abb_read_io, abb_read_system_state
 */
#ifndef UWVM_ABB_OBJECTC_OBSERVATION_H
#define UWVM_ABB_OBJECTC_OBSERVATION_H

#ifndef __OBJC__
# error "Compile this ABB entry with the genuine Objective-C frontend"
#endif

#include <abb/c/observation.h>

/**
 * @brief Alias the complete independently owned observation facts for Objective-C.
 * @details This value retains primary, cleanup, presence, and original transport
 * observations. It owns no Objective-C object or native ROS capability itself.
 * @see abb_observation_status
 */
typedef abb_observation ABBObservation;

/**
 * @brief Return the compiler's Objective-C type encoding for report storage.
 * @return Borrowed immutable static string; never free or modify its bytes.
 * @details @encode is evaluated by the actual Objective-C compiler. The result
 * is a local layout diagnostic, never a ROS serialization or wire identity.
 * Calling this function performs no allocation, messaging, or host operation.
 * @see ABBObservation
 */
inline static char const* ABBObservationLayout(void)
{
    return @encode(ABBObservation);
}

#endif
