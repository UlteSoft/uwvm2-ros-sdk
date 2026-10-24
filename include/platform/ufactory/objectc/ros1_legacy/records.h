/** @file records.h
 * @brief Genuine Objective-C owning classes over the explicit C value ABI.
 * @details No ARC, Foundation or automatic finalizer. Call dispose once after use.
 */
#pragma once
#include <objc/runtime.h>
#include <ufactory/c/ros1/ufactory-xarm-ros1-legacy-complete/bounded_records.h>
/** @brief Own every original geometry_msgs/Point field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Geometry_msgsPoint {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_geometry_msgs_Point value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original geometry_msgs/Quaternion field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Geometry_msgsQuaternion {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_geometry_msgs_Quaternion value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original geometry_msgs/Pose field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Geometry_msgsPose {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_geometry_msgs_Pose value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/IOState field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsIOState {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_IOState value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/RobotMsg field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsRobotMsg {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_RobotMsg value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/ClearErrRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_ClearErrRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/ClearErrResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_ClearErrResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/GetAnalogIORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/GetAnalogIOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/GetDigitalIORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/GetDigitalIOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/MoveRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsMoveRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_MoveRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/MoveResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsMoveResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_MoveResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/SetAxisRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_SetAxisRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/SetAxisResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_SetAxisResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/SetDigitalIORequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIORequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/SetDigitalIOResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIOResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/SetInt16Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_SetInt16Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/SetInt16Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_SetInt16Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/TCPOffsetRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_msgs/TCPOffsetResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/exec_planRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_exec_planRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/exec_planResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_exec_planResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/joint_planRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_joint_planRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/joint_planResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_joint_planResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/pose_planRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_pose_planRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/pose_planResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_pose_planResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/single_straight_planRequest field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planRequest {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_single_straight_planRequest value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original xarm_planner/single_straight_planResponse field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planResponse {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_1_xarm_planner_single_straight_planResponse value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
