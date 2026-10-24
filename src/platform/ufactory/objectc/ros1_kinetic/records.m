/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <ufactory/objectc/ros1_kinetic/records.h>
@implementation Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveGoal

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveGoal* object = (Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveGoal*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_gripper_MoveGoal_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_gripper_MoveGoal_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveResult

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveResult* object = (Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveResult*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_gripper_MoveResult_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_gripper_MoveResult_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveFeedback

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveFeedback* object = (Ufactory_ros1_kinetic_Ros1Xarm_gripperMoveFeedback*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_gripper_MoveFeedback_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_gripper_MoveFeedback_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Geometry_msgsPoint

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Geometry_msgsPoint* object = (Ufactory_ros1_kinetic_Ros1Geometry_msgsPoint*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Geometry_msgsQuaternion

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Geometry_msgsQuaternion* object = (Ufactory_ros1_kinetic_Ros1Geometry_msgsQuaternion*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Geometry_msgsPose

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Geometry_msgsPose* object = (Ufactory_ros1_kinetic_Ros1Geometry_msgsPose*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Time

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Time* object = (Ufactory_ros1_kinetic_Ros1Time*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_time_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_time_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Std_msgsHeader

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Std_msgsHeader* object = (Ufactory_ros1_kinetic_Ros1Std_msgsHeader*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_std_msgs_Header_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_std_msgs_Header_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsCIOState

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsCIOState* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsCIOState*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_CIOState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_CIOState_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsIOState

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsIOState* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsIOState*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsRobotMsg

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsRobotMsg* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsRobotMsg*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsVeloMoveMsg

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsVeloMoveMsg* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsVeloMoveMsg*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_VeloMoveMsg_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsCallRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsCallRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsCallRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_CallRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_CallRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsCallResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsCallResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsCallResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_CallResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_CallResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsClearErrRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsClearErrRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsClearErrRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsClearErrResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsClearErrResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsClearErrResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsConfigToolModbusRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsConfigToolModbusRequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsConfigToolModbusRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsConfigToolModbusResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsConfigToolModbusResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsConfigToolModbusResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_ConfigToolModbusResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsFtCaliLoadRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsFtCaliLoadRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsFtCaliLoadRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_FtCaliLoadRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsFtCaliLoadResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsFtCaliLoadResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsFtCaliLoadResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_FtCaliLoadResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsFtIdenLoadRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsFtIdenLoadRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsFtIdenLoadRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_FtIdenLoadRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsFtIdenLoadResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsFtIdenLoadResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsFtIdenLoadResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_FtIdenLoadResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetAnalogIORequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetAnalogIORequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetAnalogIORequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetAnalogIOResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetAnalogIOResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetAnalogIOResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetControllerDigitalIORequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetControllerDigitalIORequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetControllerDigitalIORequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIORequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetControllerDigitalIOResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetControllerDigitalIOResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetControllerDigitalIOResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetControllerDigitalIOResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetDigitalIORequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetDigitalIORequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetDigitalIORequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetDigitalIOResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetDigitalIOResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetDigitalIOResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetErrRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetErrRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetErrRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetErrRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetErrRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetErrResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetErrResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetErrResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetErrResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetErrResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetFloat32ListRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetFloat32ListRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetFloat32ListRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetFloat32ListRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetFloat32ListResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetFloat32ListResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetFloat32ListResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetFloat32ListResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetInt32Request

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetInt32Request* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetInt32Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetInt32Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetInt32Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetInt32Response

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetInt32Response* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetInt32Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetInt32Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetInt32Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetSetModbusDataRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetSetModbusDataRequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetSetModbusDataRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetSetModbusDataRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGetSetModbusDataResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGetSetModbusDataResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsGetSetModbusDataResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GetSetModbusDataResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperConfigRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperConfigRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperConfigRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperConfigResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperConfigResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperConfigResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GripperConfigResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperMoveRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperMoveRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperMoveRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperMoveResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperMoveResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperMoveResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GripperMoveResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperStateRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperStateRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperStateRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GripperStateRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperStateResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperStateResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsGripperStateResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_GripperStateResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_GripperStateResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveAxisAngleRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveAxisAngleRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveAxisAngleRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveAxisAngleRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveAxisAngleResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveAxisAngleResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveAxisAngleResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveAxisAngleResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVeloRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVeloRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVeloRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveVeloRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVeloResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVeloResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVeloResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveVeloResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVelocityRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVelocityRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVelocityRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveVelocityRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVelocityResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVelocityResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsMoveVelocityResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_MoveVelocityResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsPlayTrajRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsPlayTrajRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsPlayTrajRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_PlayTrajRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsPlayTrajResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsPlayTrajResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsPlayTrajResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_PlayTrajResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetAxisRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetAxisRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetAxisRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetAxisResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetAxisResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetAxisResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetControllerAnalogIORequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetControllerAnalogIORequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetControllerAnalogIORequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIORequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetControllerAnalogIOResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetControllerAnalogIOResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetControllerAnalogIOResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetControllerAnalogIOResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetDigitalIORequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetDigitalIORequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetDigitalIORequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetDigitalIOResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetDigitalIOResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetDigitalIOResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetFloat32Request

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetFloat32Request* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetFloat32Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetFloat32Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetFloat32Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetFloat32Response

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetFloat32Response* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetFloat32Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetFloat32Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetFloat32Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetInt16Request

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetInt16Request* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetInt16Request*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetInt16Response

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetInt16Response* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetInt16Response*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetLoadRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetLoadRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetLoadRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetLoadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetLoadResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetLoadResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetLoadResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetLoadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetLoadResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetModbusTimeoutRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetModbusTimeoutRequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetModbusTimeoutRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetModbusTimeoutResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetModbusTimeoutResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetModbusTimeoutResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetModbusTimeoutResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetMultipleIntsRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetMultipleIntsRequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetMultipleIntsRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetMultipleIntsRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetMultipleIntsResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetMultipleIntsResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetMultipleIntsResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetMultipleIntsResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetStringRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetStringRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetStringRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetStringRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetStringRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetStringResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetStringResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetStringResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetStringResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetStringResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetToolModbusRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetToolModbusRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetToolModbusRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsSetToolModbusResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsSetToolModbusResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsSetToolModbusResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_SetToolModbusResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsTCPOffsetRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsTCPOffsetRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsTCPOffsetRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsTCPOffsetResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsTCPOffsetResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_msgsTCPOffsetResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsVacuumGripperCtrlRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsVacuumGripperCtrlRequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsVacuumGripperCtrlRequest*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlRequest_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_msgsVacuumGripperCtrlResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_msgsVacuumGripperCtrlResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_msgsVacuumGripperCtrlResponse*)class_createInstance(self, 0);
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
    return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_xarm_msgs_VacuumGripperCtrlResponse_decode(input, length, &value);
}

@end
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerExec_planRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerExec_planRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_plannerExec_planRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerExec_planResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerExec_planResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_plannerExec_planResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerJoint_planRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerJoint_planRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_plannerJoint_planRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerJoint_planResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerJoint_planResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_plannerJoint_planResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerPose_planRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerPose_planRequest* object = (Ufactory_ros1_kinetic_Ros1Xarm_plannerPose_planRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerPose_planResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerPose_planResponse* object = (Ufactory_ros1_kinetic_Ros1Xarm_plannerPose_planResponse*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerSingle_straight_planRequest

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerSingle_straight_planRequest* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_plannerSingle_straight_planRequest*)class_createInstance(self, 0);
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
@implementation Ufactory_ros1_kinetic_Ros1Xarm_plannerSingle_straight_planResponse

+ (id)new
{
    Ufactory_ros1_kinetic_Ros1Xarm_plannerSingle_straight_planResponse* object =
        (Ufactory_ros1_kinetic_Ros1Xarm_plannerSingle_straight_planResponse*)class_createInstance(self, 0);
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
