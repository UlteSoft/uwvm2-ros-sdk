/**
 * @file static_request.cpp
 * @brief Supply the C consumer's request scalar from actual C++ archive code.
 */
#include "payload_static.h"

extern "C" uint32_t payload_request_schedule(uint32_t seed)
{ return seed * FANUC_REQUEST_SCALE + 1; }
