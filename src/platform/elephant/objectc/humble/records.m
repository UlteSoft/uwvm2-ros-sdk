/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <elephant/objectc/humble/records.h>
@implementation Elephant_humble_Ros2Mecharm_interfacesMsgMecharmAngles

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesMsgMecharmAngles* object = (Elephant_humble_Ros2Mecharm_interfacesMsgMecharmAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesMsgMecharmCoords

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesMsgMecharmCoords* object = (Elephant_humble_Ros2Mecharm_interfacesMsgMecharmCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesMsgMecharmGripperStatus

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesMsgMecharmGripperStatus* object =
        (Elephant_humble_Ros2Mecharm_interfacesMsgMecharmGripperStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesMsgMecharmPumpStatus

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesMsgMecharmPumpStatus* object =
        (Elephant_humble_Ros2Mecharm_interfacesMsgMecharmPumpStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesMsgMecharmSetAngles

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesMsgMecharmSetAngles* object =
        (Elephant_humble_Ros2Mecharm_interfacesMsgMecharmSetAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesMsgMecharmSetCoords

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesMsgMecharmSetCoords* object =
        (Elephant_humble_Ros2Mecharm_interfacesMsgMecharmSetCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_msg_MecharmSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvGetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvGetAngles_Request* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvGetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvGetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvGetAngles_Response* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvGetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvGetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvGetCoords_Request* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvGetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvGetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvGetCoords_Response* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvGetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_GetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvGripperStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvGripperStatus_Request* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvGripperStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvGripperStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvGripperStatus_Response* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvGripperStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_GripperStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvPumpStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvPumpStatus_Request* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvPumpStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvPumpStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvPumpStatus_Response* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvPumpStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_PumpStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvSetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvSetAngles_Request* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvSetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvSetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvSetAngles_Response* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvSetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvSetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvSetCoords_Request* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvSetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mecharm_interfacesSrvSetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mecharm_interfacesSrvSetCoords_Response* object =
        (Elephant_humble_Ros2Mecharm_interfacesSrvSetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mecharm_interfaces_srv_SetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesMsgMycobotAngles

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesMsgMycobotAngles* object = (Elephant_humble_Ros2Mycobot_interfacesMsgMycobotAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesMsgMycobotCoords

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesMsgMycobotCoords* object = (Elephant_humble_Ros2Mycobot_interfacesMsgMycobotCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesMsgMycobotGripperStatus

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesMsgMycobotGripperStatus* object =
        (Elephant_humble_Ros2Mycobot_interfacesMsgMycobotGripperStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesMsgMycobotPumpStatus

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesMsgMycobotPumpStatus* object =
        (Elephant_humble_Ros2Mycobot_interfacesMsgMycobotPumpStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesMsgMycobotSetAngles

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesMsgMycobotSetAngles* object =
        (Elephant_humble_Ros2Mycobot_interfacesMsgMycobotSetAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesMsgMycobotSetCoords

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesMsgMycobotSetCoords* object =
        (Elephant_humble_Ros2Mycobot_interfacesMsgMycobotSetCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_msg_MycobotSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvGetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvGetAngles_Request* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvGetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvGetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvGetAngles_Response* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvGetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvGetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvGetCoords_Request* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvGetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvGetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvGetCoords_Response* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvGetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_GetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvGripperStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvGripperStatus_Request* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvGripperStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvGripperStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvGripperStatus_Response* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvGripperStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_GripperStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvPumpStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvPumpStatus_Request* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvPumpStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvPumpStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvPumpStatus_Response* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvPumpStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_PumpStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvSetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvSetAngles_Request* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvSetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvSetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvSetAngles_Response* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvSetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvSetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvSetCoords_Request* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvSetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_interfacesSrvSetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_interfacesSrvSetCoords_Response* object =
        (Elephant_humble_Ros2Mycobot_interfacesSrvSetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_interfaces_srv_SetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotAngles

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotAngles* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotCoords

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotCoords* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotGripperStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotSetAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesMsgMycobotSetCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_msg_MycobotSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGetGripperValue_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GetGripperValue_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvGripperStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_GripperStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response* object =
        (Elephant_humble_Ros2Mycobot_pro450_interfacesSrvSetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mycobot_pro450_interfaces_srv_SetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalAngles

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalAngles* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalCoords

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalCoords* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalGripperStatus

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalGripperStatus* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalGripperStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalPumpStatus

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalPumpStatus* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalPumpStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalSetAngles

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalSetAngles* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalSetAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalSetCoords

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalSetCoords* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesMsgMypalSetCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_msg_MypalSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvGetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvGetAngles_Request* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvGetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvGetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvGetAngles_Response* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvGetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvGetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvGetCoords_Request* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvGetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvGetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvGetCoords_Response* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvGetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvGripperStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvGripperStatus_Request* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvGripperStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvGripperStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvGripperStatus_Response* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvGripperStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_GripperStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvPumpStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvPumpStatus_Request* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvPumpStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvPumpStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvPumpStatus_Response* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvPumpStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_PumpStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvSetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvSetAngles_Request* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvSetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvSetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvSetAngles_Response* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvSetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvSetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvSetCoords_Request* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvSetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Mypalletizer_interfacesSrvSetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Mypalletizer_interfacesSrvSetCoords_Response* object =
        (Elephant_humble_Ros2Mypalletizer_interfacesSrvSetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_mypalletizer_interfaces_srv_SetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotAngles

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotAngles* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotCoords

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotCoords* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotGripperStatus*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotSetAngles*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesMsgMycobotSetCoords*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_msg_MycobotSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetCoords_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGetGripperValue_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GetGripperValue_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvGripperStatus_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_GripperStatus_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetAngles_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetAngles_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetAngles_Response_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetCoords_Request*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Request_decode(input, length, &value);
}

@end
@implementation Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response

+ (id)new
{
    Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response* object =
        (Elephant_humble_Ros2Ultraarm_p1_interfacesSrvSetCoords_Response*)class_createInstance(self, 0);
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
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_ultraarm_p1_interfaces_srv_SetCoords_Response_decode(input, length, &value);
}

@end
