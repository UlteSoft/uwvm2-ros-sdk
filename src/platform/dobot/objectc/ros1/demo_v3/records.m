/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <dobot/objectc/ros1/demo_v3/records.h>
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AORequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AORequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AOExecuteRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AOExecuteResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AOExecuteResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3AccLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_AccLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArcRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArcRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArcResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArcResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArcResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArchRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArchRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ArchResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArchResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ArchResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_BrakeControlRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3BrakeControlResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_BrakeControlResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_CPRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_CPRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3CPResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_CPResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_CPResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_CircleRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_CircleRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3CircleResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_CircleResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_CircleResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ClearErrorRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ClearErrorResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ClearErrorResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinueScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinueScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinueScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinuesRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinuesRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ContinuesResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinuesResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ContinuesResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIGroupRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIGroupRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DIGroupResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIGroupResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DIGroupResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DORequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DORequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOExecuteRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOExecuteResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOExecuteResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOGroupRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOGroupRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DOGroupResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOGroupResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DOGroupResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DigitalOutputsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DigitalOutputsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DigitalOutputsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DisableRobotRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3DisableRobotResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_DisableRobotResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_EmergencyStopRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3EmergencyStopResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_EmergencyStopResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_EnableRobotRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3EnableRobotResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_EnableRobotResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetAngleRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetAngleRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetAngleResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetAngleResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetAngleResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetCoilsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetCoilsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetCoilsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetErrorIDRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetErrorIDResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetErrorIDResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetHoldRegsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetHoldRegsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetHoldRegsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInBitsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInBitsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInBitsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInRegsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetInRegsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetInRegsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPathStartPoseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPathStartPoseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPoseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPoseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetPoseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPoseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetPoseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetSixForceDataRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetSixForceDataResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetSixForceDataResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Request

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Request* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTerminal485Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Response

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Response* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTerminal485Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTerminal485Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseRequest* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3GetTraceStartPoseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_GetTraceStartPoseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3HandleTrajPointsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_HandleTrajPointsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_InverseSolutionRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3InverseSolutionResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_InverseSolutionResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_JointMovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_JointMovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3JointMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_JointMovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_JointMovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_JumpRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_JumpRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3JumpResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_JumpResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_JumpResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_LimZRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_LimZRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3LimZResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_LimZResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_LimZResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_LoadSwitchRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3LoadSwitchResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_LoadSwitchResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCloseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCloseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCloseResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCreateRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ModbusCreateResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ModbusCreateResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJExtRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJExtRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJExtResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJExtResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJExtResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIORequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIORequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJIORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIOResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIOResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovJIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovJIOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIORequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIORequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLIORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLIORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIOResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIOResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MovLIOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLIOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MovLIOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MoveJogRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MoveJogRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3MoveJogResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_MoveJogResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_MoveJogResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PauseScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PauseScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PayLoadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PayLoadRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PayLoadResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PayLoadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PayLoadResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PositiveSolutionRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PositiveSolutionResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PositiveSolutionResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PowerOnRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PowerOnRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PowerOnResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_PowerOnResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_PowerOnResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelJointMovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelJointMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelJointMovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJToolRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJToolResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJToolResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJUserRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovJUserResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovJUserResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLToolRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLToolResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLToolResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLUserRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RelMovLUserResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RelMovLUserResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ResetRobotRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ResetRobotResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ResetRobotResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RobotModeRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RobotModeRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RobotModeResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RobotModeResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RobotModeResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RunScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RunScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3RunScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_RunScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_RunScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoPRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoPRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ServoPResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoPResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ServoPResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationRequest* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetArmOrientationRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetArmOrientationResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetArmOrientationResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCoilsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCoilsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCoilsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollideDragRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollideDragResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollideDragResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelRequest* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetCollisionLevelResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetCollisionLevelResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetHoldRegsRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetHoldRegsResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetHoldRegsResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidResponse* object =
        (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetObstacleAvoidResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetObstacleAvoidResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetPayloadRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetPayloadResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetPayloadResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetSafeSkinRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetSafeSkinResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetSafeSkinResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Request

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Request* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminal485Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Response

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Response* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminal485Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminal485Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SetTerminalKeysResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SetTerminalKeysResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedFactorRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedFactorResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedFactorResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedJRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedJRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedJResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedJResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedJResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedLRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedLRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SpeedLResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedLResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SpeedLResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartDragRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartDragRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartDragResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartDragResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartDragResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartFCTraceRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartFCTraceResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartFCTraceResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartPathRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartPathRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartPathResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartPathResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartPathResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartTraceRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartTraceRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StartTraceResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartTraceResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StartTraceResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopDragRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopDragRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopDragResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopDragResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopDragResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopScriptRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopScriptRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopScriptResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopScriptResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopScriptResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopmoveJogRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3StopmoveJogResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_StopmoveJogResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncAllRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncAllRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3SyncAllResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncAllResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_SyncAllResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3TCPSpeedEndResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_TCPSpeedEndResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolAIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolAIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolAIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolAIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolAIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDIRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDIRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDIResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDIResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDIResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDORequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDORequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDORequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDORequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDORequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDOResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDOResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3ToolDOExecuteResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_ToolDOExecuteResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_UserRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_UserRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3UserResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_UserResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_UserResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_WaitRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_WaitRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3WaitResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_WaitResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_WaitResponse_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseRequest

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseRequest* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseRequest*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_pauseRequest_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_pauseRequest_decode(input, length, &value);
}

@end
@implementation Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseResponse

+ (id)new
{
    Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseResponse* object = (Dobot_ros1_demo_v3_Ros1Rosdemo_v3PauseResponse*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rosdemo_v3_pauseResponse_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rosdemo_v3_pauseResponse_decode(input, length, &value);
}

@end
