/** @file records.h
 * @brief Genuine Objective-C owning classes over the explicit C value ABI.
 * @details No ARC, Foundation or automatic finalizer. Call dispose once after use.
 */
#pragma once
#include <objc/runtime.h>
#include <elephant/c/ros1/elephant-mycobot-noetic-complete/bounded_records.h>
/** @brief Own every original mybuddy_communication/MybuddyAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationMybuddyAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_MybuddyAngles value;
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
/** @brief Own every original mybuddy_communication/MybuddyCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationMybuddyCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_MybuddyCoords value;
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
/** @brief Own every original mybuddy_communication/MybuddyGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationMybuddyGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus value;
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
/** @brief Own every original mybuddy_communication/MybuddyPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationMybuddyPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus value;
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
/** @brief Own every original mybuddy_communication/MybuddySetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationMybuddySetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles value;
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
/** @brief Own every original mybuddy_communication/MybuddySetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationMybuddySetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords value;
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
/** @brief Own every original mybuddy_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest value;
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
/** @brief Own every original mybuddy_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse value;
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
/** @brief Own every original mybuddy_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest value;
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
/** @brief Own every original mybuddy_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse value;
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
/** @brief Own every original mybuddy_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest value;
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
/** @brief Own every original mybuddy_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse value;
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
/** @brief Own every original mybuddy_communication/PumpStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationPumpStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest value;
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
/** @brief Own every original mybuddy_communication/PumpStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationPumpStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse value;
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
/** @brief Own every original mybuddy_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest value;
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
/** @brief Own every original mybuddy_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse value;
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
/** @brief Own every original mybuddy_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest value;
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
/** @brief Own every original mybuddy_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mybuddy_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse value;
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
/** @brief Own every original mecharm_communication/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_MycobotAngles value;
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
/** @brief Own every original mecharm_communication/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_MycobotCoords value;
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
/** @brief Own every original mecharm_communication/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus value;
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
/** @brief Own every original mecharm_communication/MycobotPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationMycobotPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus value;
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
/** @brief Own every original mecharm_communication/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_MycobotSetAngles value;
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
/** @brief Own every original mecharm_communication/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_MycobotSetCoords value;
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
/** @brief Own every original mecharm_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_GetAnglesRequest value;
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
/** @brief Own every original mecharm_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_GetAnglesResponse value;
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
/** @brief Own every original mecharm_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_GetCoordsRequest value;
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
/** @brief Own every original mecharm_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_GetCoordsResponse value;
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
/** @brief Own every original mecharm_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_GripperStatusRequest value;
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
/** @brief Own every original mecharm_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_GripperStatusResponse value;
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
/** @brief Own every original mecharm_communication/PumpStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationPumpStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_PumpStatusRequest value;
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
/** @brief Own every original mecharm_communication/PumpStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationPumpStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_PumpStatusResponse value;
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
/** @brief Own every original mecharm_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_SetAnglesRequest value;
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
/** @brief Own every original mecharm_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_SetAnglesResponse value;
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
/** @brief Own every original mecharm_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_SetCoordsRequest value;
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
/** @brief Own every original mecharm_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mecharm_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mecharm_communication_SetCoordsResponse value;
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
/** @brief Own every original myarm_communication/MyArmAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationMyArmAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_MyArmAngles value;
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
/** @brief Own every original myarm_communication/MyArmCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationMyArmCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_MyArmCoords value;
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
/** @brief Own every original myarm_communication/MyArmGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationMyArmGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_MyArmGripperStatus value;
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
/** @brief Own every original myarm_communication/MyArmPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationMyArmPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_MyArmPumpStatus value;
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
/** @brief Own every original myarm_communication/MyArmSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationMyArmSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_MyArmSetAngles value;
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
/** @brief Own every original myarm_communication/MyArmSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationMyArmSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_MyArmSetCoords value;
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
/** @brief Own every original myarm_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_GetAnglesRequest value;
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
/** @brief Own every original myarm_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_GetAnglesResponse value;
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
/** @brief Own every original myarm_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_GetCoordsRequest value;
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
/** @brief Own every original myarm_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_GetCoordsResponse value;
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
/** @brief Own every original myarm_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_GripperStatusRequest value;
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
/** @brief Own every original myarm_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_GripperStatusResponse value;
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
/** @brief Own every original myarm_communication/PumpStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationPumpStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_PumpStatusRequest value;
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
/** @brief Own every original myarm_communication/PumpStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationPumpStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_PumpStatusResponse value;
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
/** @brief Own every original myarm_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_SetAnglesRequest value;
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
/** @brief Own every original myarm_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_SetAnglesResponse value;
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
/** @brief Own every original myarm_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_SetCoordsRequest value;
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
/** @brief Own every original myarm_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Myarm_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_myarm_communication_SetCoordsResponse value;
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
/** @brief Own every original mycobot_320_communication/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_MycobotAngles value;
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
/** @brief Own every original mycobot_320_communication/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_MycobotCoords value;
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
/** @brief Own every original mycobot_320_communication/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus value;
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
/** @brief Own every original mycobot_320_communication/MycobotPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationMycobotPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus value;
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
/** @brief Own every original mycobot_320_communication/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles value;
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
/** @brief Own every original mycobot_320_communication/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords value;
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
/** @brief Own every original mycobot_320_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest value;
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
/** @brief Own every original mycobot_320_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse value;
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
/** @brief Own every original mycobot_320_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest value;
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
/** @brief Own every original mycobot_320_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse value;
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
/** @brief Own every original mycobot_320_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest value;
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
/** @brief Own every original mycobot_320_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse value;
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
/** @brief Own every original mycobot_320_communication/PumpStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationPumpStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest value;
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
/** @brief Own every original mycobot_320_communication/PumpStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationPumpStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse value;
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
/** @brief Own every original mycobot_320_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest value;
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
/** @brief Own every original mycobot_320_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse value;
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
/** @brief Own every original mycobot_320_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest value;
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
/** @brief Own every original mycobot_320_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_320_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse value;
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
/** @brief Own every original mycobot_communication/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotAngles value;
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
/** @brief Own every original mycobot_communication/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotCoords value;
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
/** @brief Own every original mycobot_communication/MycobotGetGripperValue field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotGetGripperValue {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotGetGripperValue value;
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
/** @brief Own every original mycobot_communication/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus value;
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
/** @brief Own every original mycobot_communication/MycobotPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus value;
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
/** @brief Own every original mycobot_communication/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotSetAngles value;
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
/** @brief Own every original mycobot_communication/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotSetCoords value;
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
/** @brief Own every original mycobot_communication/MycobotSetEndType field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotSetEndType {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotSetEndType value;
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
/** @brief Own every original mycobot_communication/MycobotSetFreshMode field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotSetFreshMode {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotSetFreshMode value;
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
/** @brief Own every original mycobot_communication/MycobotSetToolReference field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotSetToolReference {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotSetToolReference value;
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
/** @brief Own every original mycobot_communication/MycobotSetVisionMode field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationMycobotSetVisionMode {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_MycobotSetVisionMode value;
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
/** @brief Own every original mycobot_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_GetAnglesRequest value;
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
/** @brief Own every original mycobot_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_GetAnglesResponse value;
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
/** @brief Own every original mycobot_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_GetCoordsRequest value;
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
/** @brief Own every original mycobot_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_GetCoordsResponse value;
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
/** @brief Own every original mycobot_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_GripperStatusRequest value;
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
/** @brief Own every original mycobot_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_GripperStatusResponse value;
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
/** @brief Own every original mycobot_communication/PumpStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationPumpStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_PumpStatusRequest value;
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
/** @brief Own every original mycobot_communication/PumpStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationPumpStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_PumpStatusResponse value;
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
/** @brief Own every original mycobot_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetAnglesRequest value;
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
/** @brief Own every original mycobot_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetAnglesResponse value;
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
/** @brief Own every original mycobot_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetCoordsRequest value;
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
/** @brief Own every original mycobot_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetCoordsResponse value;
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
/** @brief Own every original mycobot_communication/SetEndTypeRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetEndTypeRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetEndTypeRequest value;
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
/** @brief Own every original mycobot_communication/SetEndTypeResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetEndTypeResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetEndTypeResponse value;
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
/** @brief Own every original mycobot_communication/SetFreshModeRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetFreshModeRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetFreshModeRequest value;
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
/** @brief Own every original mycobot_communication/SetFreshModeResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetFreshModeResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetFreshModeResponse value;
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
/** @brief Own every original mycobot_communication/SetToolReferenceRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetToolReferenceRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetToolReferenceRequest value;
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
/** @brief Own every original mycobot_communication/SetToolReferenceResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetToolReferenceResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetToolReferenceResponse value;
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
/** @brief Own every original mycobot_communication/SetVisionModeRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetVisionModeRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetVisionModeRequest value;
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
/** @brief Own every original mycobot_communication/SetVisionModeResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_communicationSetVisionModeResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_communication_SetVisionModeResponse value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotAngles value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotCoords value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotGetGripperValue field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotGetGripperValue {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotGetGripperValue value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotGripperStatus value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotSetAngles value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotSetCoords value;
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
/** @brief Own every original mycobot_pro450_communication/MycobotSetFreshMode field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationMycobotSetFreshMode {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_MycobotSetFreshMode value;
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
/** @brief Own every original mycobot_pro450_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesRequest value;
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
/** @brief Own every original mycobot_pro450_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GetAnglesResponse value;
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
/** @brief Own every original mycobot_pro450_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsRequest value;
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
/** @brief Own every original mycobot_pro450_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GetCoordsResponse value;
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
/** @brief Own every original mycobot_pro450_communication/GetGripperValueRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGetGripperValueRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueRequest value;
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
/** @brief Own every original mycobot_pro450_communication/GetGripperValueResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGetGripperValueResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GetGripperValueResponse value;
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
/** @brief Own every original mycobot_pro450_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusRequest value;
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
/** @brief Own every original mycobot_pro450_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_GripperStatusResponse value;
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
/** @brief Own every original mycobot_pro450_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesRequest value;
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
/** @brief Own every original mycobot_pro450_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_SetAnglesResponse value;
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
/** @brief Own every original mycobot_pro450_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsRequest value;
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
/** @brief Own every original mycobot_pro450_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_SetCoordsResponse value;
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
/** @brief Own every original mycobot_pro450_communication/SetFreshModeRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationSetFreshModeRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeRequest value;
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
/** @brief Own every original mycobot_pro450_communication/SetFreshModeResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mycobot_pro450_communicationSetFreshModeResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mycobot_pro450_communication_SetFreshModeResponse value;
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
/** @brief Own every original mypalletizer_communication/MypalAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationMypalAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_MypalAngles value;
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
/** @brief Own every original mypalletizer_communication/MypalCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationMypalCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_MypalCoords value;
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
/** @brief Own every original mypalletizer_communication/MypalGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationMypalGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus value;
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
/** @brief Own every original mypalletizer_communication/MypalPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationMypalPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus value;
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
/** @brief Own every original mypalletizer_communication/MypalSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationMypalSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles value;
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
/** @brief Own every original mypalletizer_communication/MypalSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationMypalSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords value;
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
/** @brief Own every original mypalletizer_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest value;
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
/** @brief Own every original mypalletizer_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse value;
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
/** @brief Own every original mypalletizer_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest value;
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
/** @brief Own every original mypalletizer_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse value;
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
/** @brief Own every original mypalletizer_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest value;
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
/** @brief Own every original mypalletizer_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse value;
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
/** @brief Own every original mypalletizer_communication/PumpStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationPumpStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest value;
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
/** @brief Own every original mypalletizer_communication/PumpStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationPumpStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse value;
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
/** @brief Own every original mypalletizer_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest value;
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
/** @brief Own every original mypalletizer_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse value;
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
/** @brief Own every original mypalletizer_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest value;
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
/** @brief Own every original mypalletizer_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Mypalletizer_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse value;
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
/** @brief Own every original ultraarm_communication/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotAngles value;
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
/** @brief Own every original ultraarm_communication/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotCoords value;
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
/** @brief Own every original ultraarm_communication/MycobotGetGripperValue field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotGetGripperValue {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotGetGripperValue value;
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
/** @brief Own every original ultraarm_communication/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotGripperStatus value;
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
/** @brief Own every original ultraarm_communication/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotSetAngles value;
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
/** @brief Own every original ultraarm_communication/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotSetCoords value;
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
/** @brief Own every original ultraarm_communication/MycobotSetFreshMode field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationMycobotSetFreshMode {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_MycobotSetFreshMode value;
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
/** @brief Own every original ultraarm_communication/GetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest value;
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
/** @brief Own every original ultraarm_communication/GetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse value;
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
/** @brief Own every original ultraarm_communication/GetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest value;
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
/** @brief Own every original ultraarm_communication/GetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse value;
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
/** @brief Own every original ultraarm_communication/GetGripperValueRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGetGripperValueRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GetGripperValueRequest value;
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
/** @brief Own every original ultraarm_communication/GetGripperValueResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGetGripperValueResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GetGripperValueResponse value;
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
/** @brief Own every original ultraarm_communication/GripperStatusRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGripperStatusRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest value;
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
/** @brief Own every original ultraarm_communication/GripperStatusResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationGripperStatusResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse value;
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
/** @brief Own every original ultraarm_communication/SetAnglesRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationSetAnglesRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest value;
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
/** @brief Own every original ultraarm_communication/SetAnglesResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationSetAnglesResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse value;
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
/** @brief Own every original ultraarm_communication/SetCoordsRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationSetCoordsRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest value;
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
/** @brief Own every original ultraarm_communication/SetCoordsResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationSetCoordsResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse value;
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
/** @brief Own every original ultraarm_communication/SetFreshModeRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationSetFreshModeRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_SetFreshModeRequest value;
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
/** @brief Own every original ultraarm_communication/SetFreshModeResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_noetic_Ros1Ultraarm_communicationSetFreshModeResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_ultraarm_communication_SetFreshModeResponse value;
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
