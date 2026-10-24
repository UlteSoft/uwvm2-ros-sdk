/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <dobot/objectc/ros1_v3/records.h>
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRobotStatus

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRobotStatus* object = (Dobot_ros1_v3_Ros1Dobot_bringupRobotStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RobotStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RobotStatus_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolVectorActual

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolVectorActual* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolVectorActual*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolVectorActual_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolVectorActual_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAIRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAIRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupAIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAIResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAIResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupAIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAORequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAORequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupAORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAOResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAOResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupAOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAOExecuteRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAOExecuteRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupAOExecuteRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AOExecuteRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AOExecuteRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAOExecuteResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAOExecuteResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupAOExecuteResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AOExecuteResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AOExecuteResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAccJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAccJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupAccJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AccJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AccJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAccJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAccJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupAccJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AccJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AccJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAccLRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAccLRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupAccLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AccLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AccLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupAccLResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupAccLResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupAccLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_AccLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_AccLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupArcRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupArcRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupArcRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ArcRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ArcRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupArcResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupArcResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupArcResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ArcResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ArcResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupArchRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupArchRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupArchRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ArchRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ArchRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupArchResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupArchResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupArchResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ArchResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ArchResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupBrakeControlRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupBrakeControlRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupBrakeControlRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_BrakeControlRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_BrakeControlRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupBrakeControlResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupBrakeControlResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupBrakeControlResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_BrakeControlResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_BrakeControlResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupCPRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupCPRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupCPRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_CPRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_CPRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupCPResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupCPResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupCPResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_CPResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_CPResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupCircleRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupCircleRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupCircleRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_CircleRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_CircleRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupCircleResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupCircleResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupCircleResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_CircleResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_CircleResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupClearErrorRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupClearErrorRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupClearErrorRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ClearErrorRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ClearErrorRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupClearErrorResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupClearErrorResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupClearErrorResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ClearErrorResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ClearErrorResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupContinueScriptRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupContinueScriptRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupContinueScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinueScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupContinueScriptResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupContinueScriptResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupContinueScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinueScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupContinuesRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupContinuesRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupContinuesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinuesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinuesRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupContinuesResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupContinuesResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupContinuesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinuesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ContinuesResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDIRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDIRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDIResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDIResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDIGroupRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDIGroupRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDIGroupRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DIGroupRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DIGroupRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDIGroupResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDIGroupResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDIGroupResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DIGroupResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DIGroupResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDORequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDORequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDOResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDOResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDOExecuteRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDOExecuteRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDOExecuteRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DOExecuteRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DOExecuteRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDOExecuteResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDOExecuteResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDOExecuteResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DOExecuteResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DOExecuteResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDOGroupRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDOGroupRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDOGroupRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DOGroupRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DOGroupRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDOGroupResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDOGroupResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDOGroupResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DOGroupResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DOGroupResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDigitalOutputsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDigitalOutputsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDigitalOutputsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DigitalOutputsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDigitalOutputsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDigitalOutputsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDigitalOutputsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DigitalOutputsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDisableRobotRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDisableRobotRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupDisableRobotRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DisableRobotRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DisableRobotRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupDisableRobotResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupDisableRobotResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupDisableRobotResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_DisableRobotResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_DisableRobotResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupEmergencyStopRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupEmergencyStopRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupEmergencyStopRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_EmergencyStopRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupEmergencyStopResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupEmergencyStopResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupEmergencyStopResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_EmergencyStopResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupEnableRobotRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupEnableRobotRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupEnableRobotRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_EnableRobotRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_EnableRobotRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupEnableRobotResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupEnableRobotResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupEnableRobotResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_EnableRobotResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_EnableRobotResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetAngleRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetAngleRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetAngleRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetAngleRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetAngleRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetAngleResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetAngleResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetAngleResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetAngleResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetAngleResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetCoilsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetCoilsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetCoilsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetCoilsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetCoilsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetCoilsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetCoilsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetCoilsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetCoilsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetCoilsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetErrorIDRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetErrorIDRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetErrorIDRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetErrorIDRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetErrorIDResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetErrorIDResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetErrorIDResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetErrorIDResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetHoldRegsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetHoldRegsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetHoldRegsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetHoldRegsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetHoldRegsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetHoldRegsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetHoldRegsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetHoldRegsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetInBitsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetInBitsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetInBitsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInBitsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInBitsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetInBitsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetInBitsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetInBitsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInBitsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInBitsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetInRegsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetInRegsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetInRegsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInRegsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInRegsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetInRegsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetInRegsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetInRegsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInRegsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetInRegsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetPathStartPoseRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetPathStartPoseRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetPathStartPoseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPathStartPoseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetPathStartPoseResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetPathStartPoseResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetPathStartPoseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPathStartPoseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetPoseRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetPoseRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetPoseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPoseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPoseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetPoseResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetPoseResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetPoseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPoseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetPoseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetSixForceDataRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetSixForceDataRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetSixForceDataRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetSixForceDataRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetSixForceDataResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetSixForceDataResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetSixForceDataResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetSixForceDataResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetTerminal485Request

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetTerminal485Request* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetTerminal485Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTerminal485Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTerminal485Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetTerminal485Response

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetTerminal485Response* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetTerminal485Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTerminal485Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTerminal485Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetTraceStartPoseRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetTraceStartPoseRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetTraceStartPoseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupGetTraceStartPoseResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupGetTraceStartPoseResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupGetTraceStartPoseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_GetTraceStartPoseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupHandleTrajPointsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupHandleTrajPointsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupHandleTrajPointsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_HandleTrajPointsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupHandleTrajPointsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupHandleTrajPointsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupHandleTrajPointsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_HandleTrajPointsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupInverseSolutionRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupInverseSolutionRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupInverseSolutionRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_InverseSolutionRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupInverseSolutionResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupInverseSolutionResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupInverseSolutionResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_InverseSolutionResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupJointMovJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupJointMovJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupJointMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_JointMovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_JointMovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupJointMovJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupJointMovJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupJointMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_JointMovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_JointMovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupJumpRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupJumpRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupJumpRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_JumpRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_JumpRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupJumpResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupJumpResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupJumpResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_JumpResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_JumpResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupLimZRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupLimZRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupLimZRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_LimZRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_LimZRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupLimZResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupLimZResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupLimZResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_LimZResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_LimZResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupLoadSwitchRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupLoadSwitchRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupLoadSwitchRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_LoadSwitchRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupLoadSwitchResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupLoadSwitchResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupLoadSwitchResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_LoadSwitchResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupModbusCloseRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupModbusCloseRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupModbusCloseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCloseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupModbusCloseResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupModbusCloseResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupModbusCloseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCloseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupModbusCreateRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupModbusCreateRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupModbusCreateRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCreateRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupModbusCreateResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupModbusCreateResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupModbusCreateResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ModbusCreateResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovJExtRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovJExtRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovJExtRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJExtRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJExtRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovJExtResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovJExtResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovJExtResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJExtResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJExtResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovJIORequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovJIORequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovJIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJIORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovJIOResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovJIOResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovJIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovJIOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovLRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovLRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovLResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovLResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovLIORequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovLIORequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovLIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLIORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMovLIOResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMovLIOResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupMovLIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MovLIOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMoveJogRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMoveJogRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupMoveJogRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MoveJogRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MoveJogRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupMoveJogResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupMoveJogResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupMoveJogResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_MoveJogResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_MoveJogResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPauseScriptRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPauseScriptRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupPauseScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PauseScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PauseScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPauseScriptResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPauseScriptResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupPauseScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PauseScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PauseScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPayLoadRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPayLoadRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupPayLoadRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PayLoadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PayLoadRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPayLoadResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPayLoadResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupPayLoadResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PayLoadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PayLoadResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPositiveSolutionRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPositiveSolutionRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupPositiveSolutionRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PositiveSolutionRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPositiveSolutionResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPositiveSolutionResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupPositiveSolutionResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PositiveSolutionResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPowerOnRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPowerOnRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupPowerOnRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PowerOnRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PowerOnRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPowerOnResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPowerOnResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupPowerOnResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_PowerOnResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_PowerOnResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelJointMovJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelJointMovJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelJointMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelJointMovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelJointMovJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelJointMovJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelJointMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelJointMovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovJToolRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovJToolRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovJToolRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJToolRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovJToolResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovJToolResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovJToolResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJToolResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovJUserRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovJUserRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovJUserRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJUserRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovJUserResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovJUserResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovJUserResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovJUserResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovLRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovLRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovLResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovLResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovLToolRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovLToolRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovLToolRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLToolRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovLToolResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovLToolResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovLToolResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLToolResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovLUserRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovLUserRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovLUserRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLUserRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRelMovLUserResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRelMovLUserResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRelMovLUserResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RelMovLUserResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupResetRobotRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupResetRobotRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupResetRobotRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ResetRobotRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ResetRobotRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupResetRobotResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupResetRobotResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupResetRobotResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ResetRobotResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ResetRobotResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRobotModeRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRobotModeRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRobotModeRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RobotModeRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RobotModeRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRobotModeResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRobotModeResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRobotModeResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RobotModeResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RobotModeResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRunScriptRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRunScriptRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupRunScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RunScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RunScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupRunScriptResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupRunScriptResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupRunScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_RunScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_RunScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupServoJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupServoJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupServoJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupServoJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupServoJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupServoJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupServoJParamRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupServoJParamRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupServoJParamRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJParamRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJParamRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupServoJParamResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupServoJParamResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupServoJParamResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJParamResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoJParamResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupServoPRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupServoPRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupServoPRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoPRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoPRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupServoPResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupServoPResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupServoPResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoPResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ServoPResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetArmOrientationRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetArmOrientationRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetArmOrientationRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetArmOrientationRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetArmOrientationResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetArmOrientationResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetArmOrientationResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetArmOrientationResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetCoilsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetCoilsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetCoilsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCoilsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCoilsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetCoilsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetCoilsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetCoilsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCoilsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCoilsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetCollideDragRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetCollideDragRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetCollideDragRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollideDragRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetCollideDragResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetCollideDragResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetCollideDragResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollideDragResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetCollisionLevelRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetCollisionLevelRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetCollisionLevelRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollisionLevelRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetCollisionLevelResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetCollisionLevelResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetCollisionLevelResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetCollisionLevelResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetHoldRegsRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetHoldRegsRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetHoldRegsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetHoldRegsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetHoldRegsResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetHoldRegsResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetHoldRegsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetHoldRegsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetObstacleAvoidRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetObstacleAvoidRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetObstacleAvoidRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetObstacleAvoidResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetObstacleAvoidResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetObstacleAvoidResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetObstacleAvoidResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetPayloadRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetPayloadRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetPayloadRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetPayloadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetPayloadRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetPayloadResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetPayloadResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetPayloadResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetPayloadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetPayloadResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetSafeSkinRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetSafeSkinRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetSafeSkinRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetSafeSkinRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetSafeSkinResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetSafeSkinResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetSafeSkinResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetSafeSkinResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetTerminal485Request

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetTerminal485Request* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetTerminal485Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminal485Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminal485Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetTerminal485Response

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetTerminal485Response* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetTerminal485Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminal485Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminal485Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetTerminalKeysRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetTerminalKeysRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetTerminalKeysRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminalKeysRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSetTerminalKeysResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSetTerminalKeysResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSetTerminalKeysResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SetTerminalKeysResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSpeedFactorRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSpeedFactorRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSpeedFactorRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedFactorRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSpeedFactorResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSpeedFactorResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSpeedFactorResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedFactorResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSpeedJRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSpeedJRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSpeedJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSpeedJResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSpeedJResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSpeedJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSpeedLRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSpeedLRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSpeedLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSpeedLResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSpeedLResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSpeedLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SpeedLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartDragRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartDragRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartDragRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartDragRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartDragRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartDragResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartDragResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartDragResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartDragResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartDragResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartFCTraceRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartFCTraceRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartFCTraceRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartFCTraceRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartFCTraceResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartFCTraceResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartFCTraceResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartFCTraceResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartPathRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartPathRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartPathRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartPathRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartPathRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartPathResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartPathResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartPathResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartPathResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartPathResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartTraceRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartTraceRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartTraceRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartTraceRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartTraceRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStartTraceResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStartTraceResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStartTraceResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StartTraceResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StartTraceResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStopDragRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStopDragRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStopDragRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StopDragRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StopDragRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStopDragResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStopDragResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStopDragResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StopDragResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StopDragResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStopScriptRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStopScriptRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStopScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StopScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StopScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStopScriptResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStopScriptResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStopScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StopScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StopScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStopmoveJogRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStopmoveJogRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupStopmoveJogRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StopmoveJogRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupStopmoveJogResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupStopmoveJogResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupStopmoveJogResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_StopmoveJogResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSyncRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSyncRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSyncRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSyncResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSyncResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSyncResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSyncAllRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSyncAllRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupSyncAllRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncAllRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncAllRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupSyncAllResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupSyncAllResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupSyncAllResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncAllResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_SyncAllResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedEndRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedEndRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedEndRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedEndRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedEndResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedEndResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupTCPSpeedEndResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TCPSpeedEndResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTcpDashboardRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTcpDashboardRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupTcpDashboardRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpDashboardRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTcpDashboardResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTcpDashboardResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupTcpDashboardResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpDashboardResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTcpRealDataRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTcpRealDataRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupTcpRealDataRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpRealDataRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupTcpRealDataResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupTcpRealDataResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupTcpRealDataResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_TcpRealDataResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolAIRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolAIRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolAIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolAIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolAIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolAIResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolAIResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolAIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolAIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolAIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolDIRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolDIRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolDIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolDIResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolDIResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolDIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolDORequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolDORequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolDORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolDOResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolDOResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolDOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolDOExecuteRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolDOExecuteRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolDOExecuteRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDOExecuteRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupToolDOExecuteResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupToolDOExecuteResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupToolDOExecuteResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_ToolDOExecuteResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupUserRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupUserRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupUserRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_UserRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_UserRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupUserResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupUserResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupUserResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_UserResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_UserResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupWaitRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupWaitRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupWaitRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_WaitRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_WaitRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupWaitResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupWaitResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupWaitResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_WaitResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_WaitResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPauseRequest

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPauseRequest* object = (Dobot_ros1_v3_Ros1Dobot_bringupPauseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_pauseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_pauseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_v3_Ros1Dobot_bringupPauseResponse

+ (id)new
{
    Dobot_ros1_v3_Ros1Dobot_bringupPauseResponse* object = (Dobot_ros1_v3_Ros1Dobot_bringupPauseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_dobot_bringup_pauseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_dobot_bringup_pauseResponse_decode(input, length, &value);
}

@end
