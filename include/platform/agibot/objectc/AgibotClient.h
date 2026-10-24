/**
 * @file AgibotClient.h
 * @brief Genuine Objective-C class dispatch for complete raw Agibot observations.
 * @details Requires the shared genuine libobjc runtime. No Foundation, ARC,
 * endpoint URL, dynamic library or JSON transport belongs to this guest API.
 */
#pragma once
#import <objc/Object.h>
#include <agibot/shared/client.h>

@interface AgibotClient : Object
/**
 * @brief Receive complete canonical bytes and retain independent cleanup facts.
 * @param alias Borrowed NUL-terminated exact capability alias.
 * @param operation Original supported observation enum.
 * @param output Caller-owned complete canonical byte buffer.
 * @param capacity Available writable extent in bytes.
 * @param length Complete successful response size; valid with primary zero.
 * @param cleanup Original cleanup errno. @param cleanupPresent One if attempted.
 * @param required Original observed capacity requirement.
 * @param hasRequired One when the host replaced the length sentinel.
 * @return Original primary errno; cleanup is never substituted for it.
 */
+ (uint32_t)observeAlias:(char const*)alias
               operation:(enum uwvm_agibot_observation)operation
                  output:(unsigned char*)output
                capacity:(size_t)capacity
                  length:(size_t*)length
                 cleanup:(uint32_t*)cleanup
          cleanupPresent:(uint32_t*)cleanupPresent
                required:(uint64_t*)required
             hasRequired:(uint32_t*)hasRequired;
@end
