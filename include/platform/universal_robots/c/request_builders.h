/* SPDX-License-Identifier: Apache-2.0 */
#ifndef UWVM_UR_REQUEST_BUILDERS_H
#define UWVM_UR_REQUEST_BUILDERS_H
#include <universal_robots/c/io.h>
#include <limits.h>

/* Pure request construction for the provider-selected original schema.
 * Requests remain caller-owned values. These functions do not open a resource,
 * call a service, convert physical units or issue a permission grant. Existing
 * typed bounded_interfaces operations take the caller's explicit capability.
 *
 * ur_msgs at 3c584014d9b228e0b2da819db0ca1d887c373e1d and the retained ROS1
 * schema use Analog.state and a scalar SetAnalogOutput.data. urinterfaces at
 * e88cebb16503bcbe6e7385251e1f83b1fa54e9c8 uses Analog.value and array data.
 * The older PolyScope X SDK-v0.11 scalar service is a different API version.
 * No native C struct layout or ROS CDR compatibility is implied by these values.
 *
 * All input is validated in a temporary before the one output assignment.
 * Callers serialize access to their own private storage; borrowed input must
 * remain readable for the entire synchronous call. Input/output aliasing is
 * supported because the output is not written while the input is being read.
 */
#if defined(UWVM_UR_POLYSCOPEX)
typedef roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request uwvm_ur_analog_request;
typedef roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request uwvm_ur_digital_request;
typedef roswasmc_bounded_2_urinterfaces_msg_Analog uwvm_ur_analog_value;
typedef roswasmc_bounded_2_urinterfaces_msg_Digital uwvm_ur_digital_value;

/* The selected SDK's16-element inline capacity is a bounded migration limit,
 * not an upstream sequence bound or an assertion about available robot pins.
 * Preserve the exact entry order, duplicate pins and caller-supplied values.
 * In particular, do not apply old scalar-service voltage/current unit ranges
 * to the newer array schema. Device limits are independently checked by the
 * selected official peer and the caller-bound runtime capability.
 */
static inline uint32_t uwvm_ur_make_analog_outputs(uwvm_ur_analog_value const* values,
                                                 size_t count,
                                                 uwvm_ur_analog_request* out)
{
    uwvm_ur_analog_request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t i;
    if(!out || (count && !values) || count > sizeof next.data.data / sizeof next.data.data[0])
        return 22;
    for(i = 0; i < count; ++i)
    {
        if(values[i].domain > 1 || !isfinite(values[i].value))
            return 22;
        next.data.data[i] = values[i];
    }
    next.data.size = (uint32_t)count;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetAnalogOutput_Request_valid(&next))
        return 22;
    *out = next;
    return 0;
}

static inline uint32_t uwvm_ur_make_digital_outputs(uwvm_ur_digital_value const* values,
                                                  size_t count,
                                                  uwvm_ur_digital_request* out)
{
    uwvm_ur_digital_request next = UWVM_VENDOR_ZERO_INITIALIZER;
    size_t i;
    if(!out || (count && !values) || count > sizeof next.data.data / sizeof next.data.data[0])
        return 22;
    for(i = 0; i < count; ++i)
    {
        if(values[i].state > 1)
            return 22;
        next.data.data[i] = values[i];
    }
    next.data.size = (uint32_t)count;
    if(!roswasmc_bounded_2_urinterfaces_srv_SetDigitalOutput_Request_valid(&next))
        return 22;
    *out = next;
    return 0;
}
#else
# if defined(UWVM_UR_ROS1)
typedef roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest uwvm_ur_analog_request;
typedef roswasmc_bounded_1_ur_msgs_SetIORequest uwvm_ur_set_io_request;
#  define UWVM_UR_ANALOG_REQUEST_VALID roswasmc_bounded_1_ur_msgs_SetAnalogOutputRequest_valid
#  define UWVM_UR_SET_IO_REQUEST_VALID roswasmc_bounded_1_ur_msgs_SetIORequest_valid
# else
typedef roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request uwvm_ur_analog_request;
typedef roswasmc_bounded_2_ur_msgs_srv_SetIO_Request uwvm_ur_set_io_request;
#  define UWVM_UR_ANALOG_REQUEST_VALID roswasmc_bounded_2_ur_msgs_srv_SetAnalogOutput_Request_valid
#  define UWVM_UR_SET_IO_REQUEST_VALID roswasmc_bounded_2_ur_msgs_srv_SetIO_Request_valid
# endif

/* Preserve the selected ur_msgs field widths and normalized signal level.
 * Construction makes no assertion that a selected model exposes this output.
 */
static inline uint32_t uwvm_ur_make_analog_output(uint32_t pin,
                                                uint32_t domain,
                                                float state,
                                                uwvm_ur_analog_request* out)
{
    uwvm_ur_analog_request next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!out || pin > 1 || domain > 1 || !isfinite(state) || state < 0 || state > 1)
        return 22;
    next.data.pin = (uint8_t)pin;
    next.data.domain = (uint8_t)domain;
    next.data.state = state;
    if(!UWVM_UR_ANALOG_REQUEST_VALID(&next))
        return 22;
    *out = next;
    return 0;
}

/* Original enum values: digital1, flag2, analog3, tool voltage4.
 * Pin is ignored by the official tool-voltage operation, so preserve its
 * complete int8 range there. Other pin/model availability is not inferred.
 * Keeping deprecated enum values constructible does not claim peer support.
 */
static inline uint32_t uwvm_ur_make_set_io(int32_t function,
                                         int32_t pin,
                                         float state,
                                         uwvm_ur_set_io_request* out)
{
    uwvm_ur_set_io_request next = UWVM_VENDOR_ZERO_INITIALIZER;
    if(!out || function < 1 || function > 4 || pin < INT8_MIN || pin > INT8_MAX || !isfinite(state))
        return 22;
    if(((function == 1 || function == 2) && state != 0 && state != 1) ||
       (function == 3 && (state < 0 || state > 1)) ||
       (function == 4 && state != 0 && state != 12 && state != 24))
        return 22;
    next.fun = (int8_t)function;
    next.pin = (int8_t)pin;
    next.state = state;
    if(!UWVM_UR_SET_IO_REQUEST_VALID(&next))
        return 22;
    *out = next;
    return 0;
}
# undef UWVM_UR_ANALOG_REQUEST_VALID
# undef UWVM_UR_SET_IO_REQUEST_VALID
#endif
#endif
