/**
 * @file observation.h
 * @brief Use complete Unitree records from the genuine Objective-C frontend.
 * @details This freestanding subset uses @encode for compiler layout metadata.
 * It requires no Foundation, ARC, Objective-C messaging, or host object runtime.
 * Those facilities require their own separately qualified WASI runtime closure.
 */
#ifndef UWVM_UNITREE_OBJC_OBSERVATION_H
#define UWVM_UNITREE_OBJC_OBSERVATION_H
#ifndef __OBJC__
# error "Compile this header with the genuine Objective-C frontend"
#endif
#include <unitree/c/observation.h>
/** @brief Own complete observation facts; no Objective-C object is allocated. */
typedef unitree_observation UWUnitreeObservation;

/**
 * @brief Return the actual Objective-C compiler's observation type encoding.
 * @return Borrowed immutable process-lifetime string; never free or modify it.
 * @details Local layout metadata is neither ROS wire serialization nor a native
 * type identity. Calling this function performs no host operation or grant.
 */
inline static char const* UWUnitreeObservationEncoding(void)
{
    return @encode(UWUnitreeObservation);
}
#endif
