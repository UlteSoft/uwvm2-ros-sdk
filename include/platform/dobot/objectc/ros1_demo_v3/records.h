/** @file records.h
 * @brief Genuine Objective-C owning classes over the explicit C value ABI.
 * @details No ARC, Foundation or automatic finalizer. Call dispose once after use.
 */
#pragma once
#include <objc/runtime.h>
#include <dobot/c/ros1/dobot-ros1-demo-v3-complete/bounded_records.h>
/** @brief Own every original rosdemo_v3/AIRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AIRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AIResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AIResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AOExecuteRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AOExecuteResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AccJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AccJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AccJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AccJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AccLRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AccLRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/AccLResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_AccLResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ArcRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ArcRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ArcResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ArcResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ArchRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ArchRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ArchResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ArchResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/BrakeControlRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/BrakeControlResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/CPRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_CPRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/CPResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_CPResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/CircleRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_CircleRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/CircleResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_CircleResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ClearErrorRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ClearErrorResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ContinueScriptRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ContinueScriptResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ContinuesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ContinuesRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ContinuesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ContinuesResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DIRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DIRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DIResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DIResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DIGroupRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DIGroupRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DIGroupResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DIGroupResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DOExecuteRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DOExecuteResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DOGroupRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DOGroupRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DOGroupResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DOGroupResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DigitalOutputsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DigitalOutputsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DisableRobotRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/DisableRobotResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/EmergencyStopRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/EmergencyStopResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/EnableRobotRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/EnableRobotResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetAngleRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetAngleRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetAngleResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetAngleResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetCoilsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetCoilsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetErrorIDRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetErrorIDResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetHoldRegsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetHoldRegsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetInBitsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetInBitsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetInRegsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetInRegsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetPathStartPoseRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetPathStartPoseResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetPoseRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetPoseRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetPoseResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetPoseResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetSixForceDataRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetSixForceDataResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetTerminal485Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetTerminal485Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetTraceStartPoseRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/GetTraceStartPoseResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/HandleTrajPointsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/HandleTrajPointsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/InverseSolutionRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/InverseSolutionResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/JointMovJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_JointMovJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/JointMovJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_JointMovJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/JumpRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_JumpRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/JumpResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_JumpResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/LimZRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_LimZRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/LimZResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_LimZResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/LoadSwitchRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/LoadSwitchResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ModbusCloseRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ModbusCloseResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ModbusCreateRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ModbusCreateResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovJExtRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovJExtRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovJExtResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovJExtResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovJIORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovJIORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovJIOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovJIOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovLRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovLRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovLResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovLResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovLIORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovLIORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MovLIOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MovLIOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MoveJogRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MoveJogRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/MoveJogResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_MoveJogResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PauseScriptRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PauseScriptResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PayLoadRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PayLoadRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PayLoadResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PayLoadResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PositiveSolutionRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PositiveSolutionResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PowerOnRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PowerOnRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/PowerOnResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_PowerOnResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelJointMovJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelJointMovJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovJToolRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovJToolResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovJUserRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovJUserResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovLRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovLRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovLResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovLResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovLToolRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovLToolResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovLUserRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RelMovLUserResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ResetRobotRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ResetRobotResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RobotModeRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RobotModeRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RobotModeResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RobotModeResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RunScriptRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RunScriptRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/RunScriptResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_RunScriptResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ServoJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ServoJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ServoJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ServoJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ServoPRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ServoPRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ServoPResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ServoPResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetArmOrientationRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetArmOrientationResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetCoilsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetCoilsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetCollideDragRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetCollideDragResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetCollisionLevelRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetCollisionLevelResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetHoldRegsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetHoldRegsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetObstacleAvoidRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetObstacleAvoidResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetPayloadRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetPayloadResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetSafeSkinRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetSafeSkinResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetTerminal485Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetTerminal485Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetTerminalKeysRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SetTerminalKeysResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SpeedFactorRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SpeedFactorResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SpeedJRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SpeedJRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SpeedJResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SpeedJResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SpeedLRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SpeedLRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SpeedLResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SpeedLResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartDragRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartDragRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartDragResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartDragResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartFCTraceRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartFCTraceResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartPathRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartPathRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartPathResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartPathResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartTraceRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartTraceRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StartTraceResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StartTraceResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StopDragRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StopDragRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StopDragResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StopDragResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StopScriptRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StopScriptRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StopScriptResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StopScriptResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StopmoveJogRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/StopmoveJogResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SyncRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SyncRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SyncResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SyncResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SyncAllRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SyncAllRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/SyncAllResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_SyncAllResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/TCPSpeedRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/TCPSpeedResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/TCPSpeedEndRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/TCPSpeedEndResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolAIRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolAIRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolAIResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolAIResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolDIRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolDIRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolDIResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolDIResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolDORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolDORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolDOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolDOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolDOExecuteRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/ToolDOExecuteResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/UserRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_UserRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/UserResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_UserResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/WaitRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_WaitRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/WaitResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_WaitResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/pauseRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_pauseRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original rosdemo_v3/pauseResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_rosdemo_v3_pauseResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
