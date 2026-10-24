/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <elephant/objectc/kinetic/records.h>
@implementation Elephant_kinetic_Ros1Mycobot_communicationMycobotAngles

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationMycobotAngles* object = (Elephant_kinetic_Ros1Mycobot_communicationMycobotAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotAngles_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationMycobotCoords

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationMycobotCoords* object = (Elephant_kinetic_Ros1Mycobot_communicationMycobotCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotCoords_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationMycobotGripperStatus

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationMycobotGripperStatus* object =
        (Elephant_kinetic_Ros1Mycobot_communicationMycobotGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationMycobotPumpStatus

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationMycobotPumpStatus* object =
        (Elephant_kinetic_Ros1Mycobot_communicationMycobotPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationMycobotSetAngles

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationMycobotSetAngles* object =
        (Elephant_kinetic_Ros1Mycobot_communicationMycobotSetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationMycobotSetCoords

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationMycobotSetCoords* object =
        (Elephant_kinetic_Ros1Mycobot_communicationMycobotSetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_MycobotSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationGetAnglesRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationGetAnglesRequest* object =
        (Elephant_kinetic_Ros1Mycobot_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationGetAnglesResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationGetAnglesResponse* object =
        (Elephant_kinetic_Ros1Mycobot_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationGetCoordsRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationGetCoordsRequest* object =
        (Elephant_kinetic_Ros1Mycobot_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationGetCoordsResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationGetCoordsResponse* object =
        (Elephant_kinetic_Ros1Mycobot_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationGripperStatusRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationGripperStatusRequest* object =
        (Elephant_kinetic_Ros1Mycobot_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationGripperStatusResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationGripperStatusResponse* object =
        (Elephant_kinetic_Ros1Mycobot_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationPumpStatusRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationPumpStatusRequest* object =
        (Elephant_kinetic_Ros1Mycobot_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationPumpStatusResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationPumpStatusResponse* object =
        (Elephant_kinetic_Ros1Mycobot_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationSetAnglesRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationSetAnglesRequest* object =
        (Elephant_kinetic_Ros1Mycobot_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationSetAnglesResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationSetAnglesResponse* object =
        (Elephant_kinetic_Ros1Mycobot_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationSetCoordsRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationSetCoordsRequest* object =
        (Elephant_kinetic_Ros1Mycobot_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mycobot_communicationSetCoordsResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mycobot_communicationSetCoordsResponse* object =
        (Elephant_kinetic_Ros1Mycobot_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationMypalAngles

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationMypalAngles* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationMypalAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalAngles_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationMypalCoords

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationMypalCoords* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationMypalCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalCoords_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationMypalGripperStatus

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationMypalGripperStatus* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationMypalGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationMypalPumpStatus

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationMypalPumpStatus* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationMypalPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationMypalSetAngles

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationMypalSetAngles* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationMypalSetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationMypalSetCoords

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationMypalSetCoords* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationMypalSetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_MypalSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationGetAnglesRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationGetAnglesRequest* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationGetAnglesResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationGetAnglesResponse* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationGetCoordsRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationGetCoordsRequest* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationGetCoordsResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationGetCoordsResponse* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationGripperStatusRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationGripperStatusRequest* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationGripperStatusResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationGripperStatusResponse* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationPumpStatusRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationPumpStatusRequest* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationPumpStatusResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationPumpStatusResponse* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationSetAnglesRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationSetAnglesRequest* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationSetAnglesResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationSetAnglesResponse* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationSetCoordsRequest

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationSetCoordsRequest* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_kinetic_Ros1Mypalletizer_communicationSetCoordsResponse

+ (id)new
{
    Elephant_kinetic_Ros1Mypalletizer_communicationSetCoordsResponse* object =
        (Elephant_kinetic_Ros1Mypalletizer_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mypalletizer_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
