/** @file records.h
 * @brief Genuine Objective-C owning classes over the explicit C value ABI.
 * @details No ARC, Foundation or automatic finalizer. Call dispose once after use.
 */
#pragma once
#include <objc/runtime.h>
#include <dobot/c/ros2/dobot-ros2-v4-complete/bounded_records.h>
/** @brief Own every original dobot_msgs_v4/msg/RobotStatus field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgRobotStatus {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_msg_RobotStatus value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/msg/ToolVectorActual field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgToolVectorActual {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_msg_ToolVectorActual value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AI_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AI_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AI_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AI_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AOInstant_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AOInstant_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AccJ_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AccJ_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AccL_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/AccL_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Arc_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Arc_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/BrakeControl_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/BrakeControl_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CP_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CP_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CP_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CP_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CalcTool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CalcTool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CalcUser_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CalcUser_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CheckOddMovC_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CheckOddMovC_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CheckOddMovJ_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CheckOddMovJ_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CheckOddMovL_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/CheckOddMovL_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Circle_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Circle_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ClearError_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ClearError_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Continue_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Continue_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DI_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DI_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DI_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DI_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DIGroup_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DIGroup_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DIGroupDEC_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DIGroupDEC_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DOGroup_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DOGroup_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DOGroupDEC_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DOGroupDEC_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DOInstant_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DOInstant_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DisableRobot_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DisableRobot_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DragSensivity_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/DragSensivity_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EmergencyStop_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EmergencyStop_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EnableFTSensor_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EnableFTSensor_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EnableRobot_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EnableRobot_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EnableSafeSkin_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EnableSafeSkin_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EndRTOffset_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/EndRTOffset_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCCollisionSwitch_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCCollisionSwitch_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCForceMode_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCForceMode_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCOff_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCOff_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetDamping_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetDamping_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetDeviation_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetDeviation_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetForce_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetForce_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetForceLimit_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetForceLimit_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetForceSpeedLimit_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetForceSpeedLimit_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetMass_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetMass_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetStiffness_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/FCSetStiffness_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ForceDriveMode_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ForceDriveMode_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ForceDriveSpeed_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ForceDriveSpeed_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetAO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetAO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetAngle_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetAngle_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetCoils_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetCoils_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetCurrentCommandId_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetCurrentCommandId_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetDO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetDO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetDOGroup_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetDOGroup_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetDOGroupDEC_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetDOGroupDEC_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetError_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetError_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetErrorID_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetErrorID_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetForce_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetForce_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetHoldRegs_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetHoldRegs_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInBits_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInBits_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInRegs_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInRegs_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInputBool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInputBool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInputFloat_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInputFloat_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInputInt_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetInputInt_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetOutputBool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetOutputBool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetOutputFloat_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetOutputFloat_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetOutputInt_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetOutputInt_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetPose_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetPose_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetStartPose_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetStartPose_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetToolDO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/GetToolDO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/InverseKin_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/InverseKin_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/InverseSolution_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/InverseSolution_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ModbusClose_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ModbusClose_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ModbusCreate_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ModbusCreate_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ModbusRTUCreate_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ModbusRTUCreate_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovJ_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovJ_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovJIO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovJIO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovL_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovL_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovLIO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MovLIO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MoveJog_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/MoveJog_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Pause_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Pause_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/PositiveKin_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/PositiveKin_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/PowerOn_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/PowerOn_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelJointMovJ_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelJointMovJ_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovJTool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovJTool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovJUser_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovJUser_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovLTool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovLTool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovLUser_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RelMovLUser_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RequestControl_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RequestControl_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ResetRobot_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ResetRobot_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RobotMode_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RobotMode_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RunScript_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RunScript_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RunTo_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/RunTo_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ServoJ_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ServoJ_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ServoP_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ServoP_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetBackDistance_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetBackDistance_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetCoils_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetCoils_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetCollisionLevel_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetCollisionLevel_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetFCCollision_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetFCCollision_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetHoldRegs_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetHoldRegs_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetOutputBool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetOutputBool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetOutputFloat_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetOutputFloat_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetOutputInt_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetOutputInt_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetPayload_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetPayload_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetPostCollisionMode_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetPostCollisionMode_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetSafeSkin_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetSafeSkin_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetSafeWallEnable_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetSafeWallEnable_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetTool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetTool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetTool485_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetTool485_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetToolMode_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetToolMode_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetToolPower_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetToolPower_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetUser_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetUser_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetWorkZoneEnable_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SetWorkZoneEnable_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SixForceHome_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SixForceHome_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SpeedFactor_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/SpeedFactor_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StartDrag_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StartDrag_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StartPath_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StartPath_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StartRTOffset_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StartRTOffset_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Stop_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Stop_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StopDrag_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StopDrag_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StopMoveJog_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/StopMoveJog_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/TcpDashboard_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/TcpDashboard_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Tool_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/Tool_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolAI_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolAI_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolDI_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolDI_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolDO_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolDO_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolDOInstant_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/ToolDOInstant_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/User_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_User_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/User_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_User_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/VelJ_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/VelJ_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/VelL_Request field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Request {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_Request value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
/** @brief Own every original dobot_msgs_v4/srv/VelL_Response field and finite inline capacity. */
__attribute__((objc_root_class))
@interface Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Response {
@private
    /** @brief Runtime-owned root-class metadata; never part of the ROS value. */
    Class isa;
@public
    roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_Response value;
}
/** @brief Allocate one independently owned zero/default value. @return Owning object or nil. */
+ (id)new;
/** @brief Retire this owning object exactly once; borrowed references become invalid. */
- (void)dispose;
/** @brief Encode the full value synchronously; output/length change only on success.
 * @param output Exclusive disjoint caller byte storage.
 * @param capacity Writable byte count. @param length Initialized count output.
 * @return 0, 22 invalid/overlap, or 90 insufficient capacity. */
- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length;
/** @brief Decode an exact whole value transactionally.
 * @param input Complete immutable disjoint canonical bytes.
 * @param length Active byte count, with no trailing data.
 * @return 0 on success, 22 on malformed input; failed input leaves the old value unchanged. */
- (uint32_t)decode:(void const*)input length:(size_t)length;
@end
