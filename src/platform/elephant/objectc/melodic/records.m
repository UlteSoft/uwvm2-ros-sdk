/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <elephant/objectc/melodic/records.h>
@implementation Elephant_melodic_Ros1Mybuddy_communicationMybuddyAngles

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationMybuddyAngles* object = (Elephant_melodic_Ros1Mybuddy_communicationMybuddyAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationMybuddyCoords

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationMybuddyCoords* object = (Elephant_melodic_Ros1Mybuddy_communicationMybuddyCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationMybuddyGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationMybuddyGripperStatus* object =
        (Elephant_melodic_Ros1Mybuddy_communicationMybuddyGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationMybuddyPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationMybuddyPumpStatus* object =
        (Elephant_melodic_Ros1Mybuddy_communicationMybuddyPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddyPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationMybuddySetAngles

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationMybuddySetAngles* object =
        (Elephant_melodic_Ros1Mybuddy_communicationMybuddySetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddySetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationMybuddySetCoords

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationMybuddySetCoords* object =
        (Elephant_melodic_Ros1Mybuddy_communicationMybuddySetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_MybuddySetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationGetAnglesRequest* object =
        (Elephant_melodic_Ros1Mybuddy_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Mybuddy_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationGetCoordsRequest* object =
        (Elephant_melodic_Ros1Mybuddy_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Mybuddy_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Mybuddy_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Mybuddy_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Mybuddy_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Mybuddy_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationSetAnglesRequest* object =
        (Elephant_melodic_Ros1Mybuddy_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Mybuddy_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationSetCoordsRequest* object =
        (Elephant_melodic_Ros1Mybuddy_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mybuddy_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mybuddy_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Mybuddy_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mybuddy_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationMycobotAngles

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationMycobotAngles* object = (Elephant_melodic_Ros1Mecharm_communicationMycobotAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationMycobotCoords

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationMycobotCoords* object = (Elephant_melodic_Ros1Mecharm_communicationMycobotCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationMycobotGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationMycobotGripperStatus* object =
        (Elephant_melodic_Ros1Mecharm_communicationMycobotGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationMycobotPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationMycobotPumpStatus* object =
        (Elephant_melodic_Ros1Mecharm_communicationMycobotPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationMycobotSetAngles

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationMycobotSetAngles* object =
        (Elephant_melodic_Ros1Mecharm_communicationMycobotSetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationMycobotSetCoords

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationMycobotSetCoords* object =
        (Elephant_melodic_Ros1Mecharm_communicationMycobotSetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_MycobotSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationGetAnglesRequest* object =
        (Elephant_melodic_Ros1Mecharm_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Mecharm_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationGetCoordsRequest* object =
        (Elephant_melodic_Ros1Mecharm_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Mecharm_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Mecharm_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Mecharm_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Mecharm_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Mecharm_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationSetAnglesRequest* object =
        (Elephant_melodic_Ros1Mecharm_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Mecharm_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationSetCoordsRequest* object =
        (Elephant_melodic_Ros1Mecharm_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mecharm_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mecharm_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Mecharm_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mecharm_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationMyArmAngles

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationMyArmAngles* object = (Elephant_melodic_Ros1Myarm_communicationMyArmAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationMyArmCoords

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationMyArmCoords* object = (Elephant_melodic_Ros1Myarm_communicationMyArmCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationMyArmGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationMyArmGripperStatus* object =
        (Elephant_melodic_Ros1Myarm_communicationMyArmGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationMyArmPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationMyArmPumpStatus* object = (Elephant_melodic_Ros1Myarm_communicationMyArmPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationMyArmSetAngles

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationMyArmSetAngles* object = (Elephant_melodic_Ros1Myarm_communicationMyArmSetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationMyArmSetCoords

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationMyArmSetCoords* object = (Elephant_melodic_Ros1Myarm_communicationMyArmSetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_MyArmSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationGetAnglesRequest* object = (Elephant_melodic_Ros1Myarm_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Myarm_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationGetCoordsRequest* object = (Elephant_melodic_Ros1Myarm_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Myarm_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Myarm_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Myarm_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Myarm_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Myarm_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationSetAnglesRequest* object = (Elephant_melodic_Ros1Myarm_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Myarm_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationSetCoordsRequest* object = (Elephant_melodic_Ros1Myarm_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Myarm_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Myarm_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Myarm_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_myarm_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_myarm_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationMycobotAngles

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationMycobotAngles* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationMycobotAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationMycobotCoords

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationMycobotCoords* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationMycobotCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationMycobotGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationMycobotGripperStatus* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationMycobotGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationMycobotPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationMycobotPumpStatus* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationMycobotPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationMycobotSetAngles

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationMycobotSetAngles* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationMycobotSetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationMycobotSetCoords

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationMycobotSetCoords* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationMycobotSetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_MycobotSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationGetAnglesRequest* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationGetCoordsRequest* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationSetAnglesRequest* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationSetCoordsRequest* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_320_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_320_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Mycobot_320_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_mycobot_320_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Mycobot_communicationMycobotAngles

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationMycobotAngles* object = (Elephant_melodic_Ros1Mycobot_communicationMycobotAngles*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationMycobotCoords

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationMycobotCoords* object = (Elephant_melodic_Ros1Mycobot_communicationMycobotCoords*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationMycobotGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationMycobotGripperStatus* object =
        (Elephant_melodic_Ros1Mycobot_communicationMycobotGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationMycobotPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationMycobotPumpStatus* object =
        (Elephant_melodic_Ros1Mycobot_communicationMycobotPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationMycobotSetAngles

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationMycobotSetAngles* object =
        (Elephant_melodic_Ros1Mycobot_communicationMycobotSetAngles*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationMycobotSetCoords

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationMycobotSetCoords* object =
        (Elephant_melodic_Ros1Mycobot_communicationMycobotSetCoords*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationGetAnglesRequest* object =
        (Elephant_melodic_Ros1Mycobot_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Mycobot_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationGetCoordsRequest* object =
        (Elephant_melodic_Ros1Mycobot_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Mycobot_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Mycobot_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Mycobot_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Mycobot_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Mycobot_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationSetAnglesRequest* object =
        (Elephant_melodic_Ros1Mycobot_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Mycobot_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationSetCoordsRequest* object =
        (Elephant_melodic_Ros1Mycobot_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mycobot_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mycobot_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Mycobot_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationMypalAngles

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationMypalAngles* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationMypalAngles*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationMypalCoords

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationMypalCoords* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationMypalCoords*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationMypalGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationMypalGripperStatus* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationMypalGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationMypalPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationMypalPumpStatus* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationMypalPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationMypalSetAngles

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationMypalSetAngles* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationMypalSetAngles*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationMypalSetCoords

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationMypalSetCoords* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationMypalSetCoords*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationGetAnglesRequest* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationGetCoordsRequest* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationSetAnglesRequest* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationSetCoordsRequest* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Mypalletizer_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Mypalletizer_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Mypalletizer_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Elephant_melodic_Ros1Ultraarm_communicationUltraArmAngles

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationUltraArmAngles* object =
        (Elephant_melodic_Ros1Ultraarm_communicationUltraArmAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationUltraArmCoords

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationUltraArmCoords* object =
        (Elephant_melodic_Ros1Ultraarm_communicationUltraArmCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationUltraArmGripperStatus

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationUltraArmGripperStatus* object =
        (Elephant_melodic_Ros1Ultraarm_communicationUltraArmGripperStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmGripperStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationUltraArmPumpStatus

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationUltraArmPumpStatus* object =
        (Elephant_melodic_Ros1Ultraarm_communicationUltraArmPumpStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmPumpStatus_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationUltraArmSetAngles

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationUltraArmSetAngles* object =
        (Elephant_melodic_Ros1Ultraarm_communicationUltraArmSetAngles*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmSetAngles_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationUltraArmSetCoords

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationUltraArmSetCoords* object =
        (Elephant_melodic_Ros1Ultraarm_communicationUltraArmSetCoords*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_ultraArmSetCoords_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationGetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationGetAnglesRequest* object =
        (Elephant_melodic_Ros1Ultraarm_communicationGetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationGetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationGetAnglesResponse* object =
        (Elephant_melodic_Ros1Ultraarm_communicationGetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationGetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationGetCoordsRequest* object =
        (Elephant_melodic_Ros1Ultraarm_communicationGetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationGetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationGetCoordsResponse* object =
        (Elephant_melodic_Ros1Ultraarm_communicationGetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_GetCoordsResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationGripperStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationGripperStatusRequest* object =
        (Elephant_melodic_Ros1Ultraarm_communicationGripperStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_GripperStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationGripperStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationGripperStatusResponse* object =
        (Elephant_melodic_Ros1Ultraarm_communicationGripperStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_GripperStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationPumpStatusRequest

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationPumpStatusRequest* object =
        (Elephant_melodic_Ros1Ultraarm_communicationPumpStatusRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_PumpStatusRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationPumpStatusResponse

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationPumpStatusResponse* object =
        (Elephant_melodic_Ros1Ultraarm_communicationPumpStatusResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_PumpStatusResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationSetAnglesRequest

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationSetAnglesRequest* object =
        (Elephant_melodic_Ros1Ultraarm_communicationSetAnglesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetAnglesRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationSetAnglesResponse

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationSetAnglesResponse* object =
        (Elephant_melodic_Ros1Ultraarm_communicationSetAnglesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetAnglesResponse_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationSetCoordsRequest

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationSetCoordsRequest* object =
        (Elephant_melodic_Ros1Ultraarm_communicationSetCoordsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetCoordsRequest_decode(input, length, &value);
}

@end
@implementation Elephant_melodic_Ros1Ultraarm_communicationSetCoordsResponse

+ (id)new
{
    Elephant_melodic_Ros1Ultraarm_communicationSetCoordsResponse* object =
        (Elephant_melodic_Ros1Ultraarm_communicationSetCoordsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_ultraarm_communication_SetCoordsResponse_decode(input, length, &value);
}

@end
