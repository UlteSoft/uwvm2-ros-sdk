/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <ufactory/objectc/ros1_legacy/records.h>
@implementation Ufactory_ros1_legacy_Ros1Geometry_msgsPoint

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Geometry_msgsPoint* object = (Ufactory_ros1_legacy_Ros1Geometry_msgsPoint*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Point_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_geometry_msgs_Point_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Geometry_msgsQuaternion

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Geometry_msgsQuaternion* object = (Ufactory_ros1_legacy_Ros1Geometry_msgsQuaternion*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_geometry_msgs_Quaternion_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Geometry_msgsPose

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Geometry_msgsPose* object = (Ufactory_ros1_legacy_Ros1Geometry_msgsPose*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_geometry_msgs_Pose_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_geometry_msgs_Pose_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsIOState

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsIOState* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsIOState*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_IOState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_IOState_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsRobotMsg

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsRobotMsg* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsRobotMsg*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_RobotMsg_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsClearErrResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_ClearErrResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIORequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIORequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIORequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIOResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIOResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsGetAnalogIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetAnalogIOResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIORequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIORequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIORequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIOResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIOResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsGetDigitalIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetDigitalIOResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsMoveRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsMoveRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsMoveRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsMoveResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsMoveResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsMoveResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsSetAxisResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetAxisResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIORequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIORequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIORequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIOResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIOResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsSetDigitalIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetDigitalIOResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Request

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Request* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Response

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Response* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsSetInt16Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetInt16Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_msgsTCPOffsetResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_TCPOffsetResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_exec_planRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_exec_planRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_plannerExec_planResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_exec_planResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_exec_planResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_joint_planRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_joint_planRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_plannerJoint_planResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_joint_planResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_joint_planResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planRequest* object = (Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_pose_planRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_pose_planRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planResponse* object = (Ufactory_ros1_legacy_Ros1Xarm_plannerPose_planResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_pose_planResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_pose_planResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planRequest

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planRequest* object =
        (Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_single_straight_planRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_single_straight_planRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planResponse

+ (id)new
{
    Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planResponse* object =
        (Ufactory_ros1_legacy_Ros1Xarm_plannerSingle_straight_planResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_xarm_planner_single_straight_planResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_planner_single_straight_planResponse_decode(input, length, &value);
}

@end
