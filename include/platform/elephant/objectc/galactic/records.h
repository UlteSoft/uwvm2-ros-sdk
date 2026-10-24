/** @file records.h
 * @brief Genuine Objective-C owning classes over the explicit C value ABI.
 * @details No ARC, Foundation or automatic finalizer. Call dispose once after use.
 */
#pragma once
#include <objc/runtime.h>
#include <elephant/c/ros2/elephant-mycobot-galactic-complete/bounded_records.h>
/** @brief Own every original mecharm_interfaces/msg/MecharmAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesMsgMecharmAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/msg/MecharmCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesMsgMecharmCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/msg/MecharmGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesMsgMecharmGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/msg/MecharmPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesMsgMecharmPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/msg/MecharmSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesMsgMecharmSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/msg/MecharmSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesMsgMecharmSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/GetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvGetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/GetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvGetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/GetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvGetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/GetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvGetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/GripperStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvGripperStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/GripperStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvGripperStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/PumpStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvPumpStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/PumpStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvPumpStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/SetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvSetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/SetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvSetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/SetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvSetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mecharm_interfaces/srv/SetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mecharm_interfacesSrvSetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/msg/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesMsgMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/msg/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesMsgMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/msg/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesMsgMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/msg/MycobotPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesMsgMycobotPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/msg/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesMsgMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/msg/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesMsgMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/GetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvGetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/GetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvGetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/GetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvGetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/GetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvGetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/GripperStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvGripperStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/GripperStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvGripperStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/PumpStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvPumpStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/PumpStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvPumpStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/SetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvSetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/SetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvSetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/SetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvSetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_interfaces/srv/SetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_interfacesSrvSetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/msg/MycobotAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesMsgMycobotAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/msg/MycobotCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesMsgMycobotCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/msg/MycobotGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/msg/MycobotSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/msg/MycobotSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GetGripperValue_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GetGripperValue_Response field and finite inline capacity.
 */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GripperStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/GripperStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/SetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/SetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/SetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mycobot_pro450_interfaces/srv/SetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/msg/MypalAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesMsgMypalAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/msg/MypalCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesMsgMypalCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/msg/MypalGripperStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesMsgMypalGripperStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/msg/MypalPumpStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesMsgMypalPumpStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/msg/MypalSetAngles field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesMsgMypalSetAngles {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/msg/MypalSetCoords field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesMsgMypalSetCoords {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/GetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvGetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/GetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvGetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/GetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvGetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/GetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvGetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/GripperStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvGripperStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/GripperStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvGripperStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/PumpStatus_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvPumpStatus_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/PumpStatus_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvPumpStatus_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/SetAngles_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvSetAngles_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/SetAngles_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvSetAngles_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/SetCoords_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvSetCoords_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original mypalletizer_interfaces/srv/SetCoords_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Elephant_galactic_Ros2Mypalletizer_interfacesSrvSetCoords_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
