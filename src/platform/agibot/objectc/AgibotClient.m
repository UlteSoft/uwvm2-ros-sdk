/** @file AgibotClient.m
 * @brief Execute a genuine Objective-C class message over the shared raw ABI.
 */
#import <agibot/objectc/AgibotClient.h>
@implementation AgibotClient

+ (uint32_t)observeAlias:(char const*)alias
               operation:(enum uwvm_agibot_observation)operation
                  output:(unsigned char*)output
                capacity:(size_t)capacity
                  length:(size_t*)length
                 cleanup:(uint32_t*)cleanup
          cleanupPresent:(uint32_t*)cleanupPresent
                required:(uint64_t*)required
             hasRequired:(uint32_t*)hasRequired
{
    return uwvm_agibot_observe_raw(alias, operation, 3000, output, capacity, length, cleanup, cleanupPresent, required, hasRequired);
}

@end
