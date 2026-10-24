/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <ufactory/objectc/ros2/galactic/records.h>
@implementation Ufactory_ros2_galactic_Ros2Builtin_interfacesMsgTime

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Builtin_interfacesMsgTime* object = (Ufactory_ros2_galactic_Ros2Builtin_interfacesMsgTime*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_builtin_interfaces_msg_Time_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Geometry_msgsMsgPoint

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Geometry_msgsMsgPoint* object = (Ufactory_ros2_galactic_Ros2Geometry_msgsMsgPoint*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Point_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Geometry_msgsMsgQuaternion

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Geometry_msgsMsgQuaternion* object = (Ufactory_ros2_galactic_Ros2Geometry_msgsMsgQuaternion*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Geometry_msgsMsgPose

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Geometry_msgsMsgPose* object = (Ufactory_ros2_galactic_Ros2Geometry_msgsMsgPose*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Std_msgsMsgHeader

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Std_msgsMsgHeader* object = (Ufactory_ros2_galactic_Ros2Std_msgsMsgHeader*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_std_msgs_msg_Header_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_std_msgs_msg_Header_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsMsgCIOState

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsMsgCIOState* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsMsgCIOState*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_msg_CIOState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_msg_CIOState_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsMsgIOState

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsMsgIOState* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsMsgIOState*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_msg_IOState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_msg_IOState_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsMsgMoveVelocity

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsMsgMoveVelocity* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsMsgMoveVelocity*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_msg_MoveVelocity_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsMsgRobotMsg

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsMsgRobotMsg* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsMsgRobotMsg*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_msg_RobotMsg_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperCtrl_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperCtrl_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperCtrl_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperCtrl_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperCtrl_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperCtrl_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperCtrl_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperEnable_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperEnable_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperEnable_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperEnable_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperEnable_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvBioGripperEnable_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_BioGripperEnable_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvCall_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvCall_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvCall_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_Call_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_Call_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvCall_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvCall_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvCall_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_Call_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_Call_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtAdmittanceParams_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtAdmittanceParams_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtAdmittanceParams_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtAdmittanceParams_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtAdmittanceParams_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtAdmittanceParams_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtAdmittanceParams_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtCaliLoad_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtCaliLoad_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtCaliLoad_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtCaliLoad_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtCaliLoad_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtCaliLoad_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtCaliLoad_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceConfig_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceConfig_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceConfig_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceConfig_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceConfig_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceConfig_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceConfig_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceParams_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceParams_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceParams_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceParams_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceParams_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForceParams_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtForceParams_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForcePid_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForcePid_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForcePid_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForcePid_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForcePid_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtForcePid_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtForcePid_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtImpedance_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtImpedance_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtImpedance_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtImpedance_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtImpedance_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvFtImpedance_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_FtImpedance_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetAnalogIO_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetAnalogIO_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetAnalogIO_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetAnalogIO_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetAnalogIO_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetAnalogIO_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetAnalogIO_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetDigitalIO_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetDigitalIO_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetDigitalIO_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetDigitalIO_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetDigitalIO_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetDigitalIO_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetDigitalIO_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32List_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32List_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32List_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32List_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32List_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetFloat32List_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetFloat32List_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16List_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16List_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16List_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16List_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16List_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt16List_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt16List_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32ByType_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32ByType_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32ByType_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32ByType_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32ByType_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetInt32ByType_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetInt32ByType_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetSetModbusData_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetSetModbusData_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetSetModbusData_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetSetModbusData_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetSetModbusData_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGetSetModbusData_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GetSetModbusData_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGripperMove_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGripperMove_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGripperMove_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGripperMove_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGripperMove_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvGripperMove_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_GripperMove_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvIdenLoad_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvIdenLoad_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvIdenLoad_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvIdenLoad_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvIdenLoad_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvIdenLoad_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_IdenLoad_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorBackOrigin_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorBackOrigin_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorSetPos_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorSetPos_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorSetPos_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorSetPos_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorSetPos_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearMotorSetPos_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearMotorSetPos_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackBackOrigin_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackBackOrigin_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackSetPos_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackSetPos_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackSetPos_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackSetPos_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackSetPos_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvLinearTrackSetPos_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_LinearTrackSetPos_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCartesian_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCartesian_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCartesian_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCartesian_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCartesian_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCartesian_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCartesian_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCircle_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCircle_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCircle_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCircle_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCircle_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveCircle_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveCircle_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveHome_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveHome_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveHome_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveHome_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveHome_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveHome_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveHome_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveJoint_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveJoint_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveJoint_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveJoint_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveJoint_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveJoint_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveJoint_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveVelocity_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveVelocity_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveVelocity_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveVelocity_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveVelocity_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvMoveVelocity_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_MoveVelocity_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanExec_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanExec_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanExec_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanExec_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanExec_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanExec_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanExec_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanJoint_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanJoint_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanJoint_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanJoint_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanJoint_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanJoint_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanJoint_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanPose_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanPose_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanPose_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanPose_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanPose_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanPose_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanPose_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanSingleStraight_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanSingleStraight_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanSingleStraight_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanSingleStraight_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanSingleStraight_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvPlanSingleStraight_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_PlanSingleStraight_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqActivate_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqActivate_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqActivate_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqActivate_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqActivate_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqActivate_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqActivate_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqGetStatus_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqGetStatus_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqGetStatus_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqGetStatus_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqGetStatus_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqGetStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqGetStatus_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqMove_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqMove_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqMove_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqMove_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqMove_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqMove_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqMove_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqReset_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqReset_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqReset_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqReset_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqReset_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvRobotiqReset_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_RobotiqReset_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetAnalogIO_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetAnalogIO_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetAnalogIO_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetAnalogIO_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetAnalogIO_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetAnalogIO_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetAnalogIO_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetDigitalIO_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetDigitalIO_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetDigitalIO_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetDigitalIO_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetDigitalIO_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetDigitalIO_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetDigitalIO_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32List_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32List_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32List_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32List_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32List_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetFloat32List_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetFloat32List_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16ById_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16ById_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16ById_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16ById_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16ById_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16ById_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16ById_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16List_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16List_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16List_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16List_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16List_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt16List_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt16List_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32ByType_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32ByType_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32ByType_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32ByType_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32ByType_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetInt32ByType_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetInt32ByType_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetModbusTimeout_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetModbusTimeout_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetModbusTimeout_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetModbusTimeout_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetModbusTimeout_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetModbusTimeout_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetModbusTimeout_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetTcpLoad_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetTcpLoad_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetTcpLoad_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetTcpLoad_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetTcpLoad_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvSetTcpLoad_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_SetTcpLoad_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajCtrl_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajCtrl_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajCtrl_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajCtrl_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajCtrl_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajCtrl_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_TrajCtrl_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajPlay_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajPlay_Request* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajPlay_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajPlay_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajPlay_Response* object = (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvTrajPlay_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_TrajPlay_Response_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvVacuumGripperCtrl_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Request_decode(input, length, &value);
}

@end
@implementation Ufactory_ros2_galactic_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response

+ (id)new
{
    Ufactory_ros2_galactic_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response* object =
        (Ufactory_ros2_galactic_Ros2Xarm_msgsSrvVacuumGripperCtrl_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_xarm_msgs_srv_VacuumGripperCtrl_Response_decode(input, length, &value);
}

@end
