// SDK root class paired with the public libobjc2 objc/Object.h layout.
// Dispatch, allocation and class ownership remain in the genuine Wasm runtime.
#include <objc/runtime.h>
__attribute__((objc_root_class))
@interface Object { Class isa; }
@end
@implementation Object
@end
