/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <dobot/objectc/ros2_v4/records.h>
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgRobotStatus

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgRobotStatus* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgRobotStatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_msg_RobotStatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_msg_RobotStatus_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgToolVectorActual

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgToolVectorActual* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4MsgToolVectorActual*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_msg_ToolVectorActual_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_msg_ToolVectorActual_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAI_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AI_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAOInstant_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AOInstant_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccJ_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccJ_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvAccL_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_AccL_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvArc_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Arc_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvBrakeControl_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_BrakeControl_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCP_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CP_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcTool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcTool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCalcUser_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CalcUser_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovC_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovC_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovJ_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovJ_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCheckOddMovL_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_CheckOddMovL_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvCircle_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Circle_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvClearError_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ClearError_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvContinue_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Continue_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDI_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DI_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroup_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroup_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDIGroupDEC_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DIGroupDEC_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroup_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroup_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOGroupDEC_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOGroupDEC_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDOInstant_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DOInstant_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDisableRobot_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DisableRobot_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvDragSensivity_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_DragSensivity_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEmergencyStop_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EmergencyStop_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableFTSensor_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableFTSensor_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableRobot_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableRobot_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEnableSafeSkin_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EnableSafeSkin_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvEndRTOffset_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_EndRTOffset_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCCollisionSwitch_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCCollisionSwitch_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCForceMode_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCForceMode_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCOff_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCOff_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDamping_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDamping_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetDeviation_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetDeviation_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForce_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForce_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceLimit_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceLimit_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetForceSpeedLimit_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetForceSpeedLimit_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetMass_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetMass_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvFCSetStiffness_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_FCSetStiffness_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveMode_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveMode_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvForceDriveSpeed_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ForceDriveSpeed_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetAngle_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetAngle_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCoils_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCoils_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetCurrentCommandId_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetCurrentCommandId_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroup_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroup_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetDOGroupDEC_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetDOGroupDEC_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetError_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetError_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetErrorID_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetErrorID_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetForce_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetForce_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetHoldRegs_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetHoldRegs_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInBits_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInBits_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInRegs_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInRegs_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputBool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputBool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputFloat_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputFloat_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetInputInt_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetInputInt_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputBool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputBool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputFloat_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputFloat_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetOutputInt_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetOutputInt_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetPose_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetPose_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetStartPose_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetStartPose_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvGetToolDO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_GetToolDO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseKin_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseKin_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvInverseSolution_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_InverseSolution_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusClose_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusClose_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusCreate_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusCreate_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvModbusRTUCreate_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ModbusRTUCreate_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJ_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJ_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovJIO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovJIO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovL_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovL_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMovLIO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MovLIO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvMoveJog_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_MoveJog_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPause_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Pause_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPositiveKin_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PositiveKin_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvPowerOn_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_PowerOn_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelJointMovJ_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelJointMovJ_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJTool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJTool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovJUser_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovJUser_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLTool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLTool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRelMovLUser_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RelMovLUser_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRequestControl_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RequestControl_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvResetRobot_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ResetRobot_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRobotMode_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RobotMode_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunScript_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunScript_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Request*)class_createInstance(self, 0);
    if(object)
    {
        roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Request_default(&object->value);
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvRunTo_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_RunTo_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoJ_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoJ_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvServoP_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ServoP_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetBackDistance_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetBackDistance_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCoils_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCoils_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetCollisionLevel_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetCollisionLevel_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetFCCollision_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetFCCollision_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetHoldRegs_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetHoldRegs_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputBool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputBool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputFloat_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputFloat_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetOutputInt_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetOutputInt_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPayload_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPayload_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetPostCollisionMode_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetPostCollisionMode_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeSkin_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeSkin_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetSafeWallEnable_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetSafeWallEnable_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetTool485_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetTool485_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolMode_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolMode_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetToolPower_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetToolPower_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetUser_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetUser_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response* object =
        (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSetWorkZoneEnable_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SetWorkZoneEnable_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSixForceHome_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SixForceHome_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvSpeedFactor_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_SpeedFactor_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartDrag_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartDrag_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartPath_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartPath_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStartRTOffset_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StartRTOffset_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStop_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Stop_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopDrag_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopDrag_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvStopMoveJog_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_StopMoveJog_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTcpDashboard_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_TcpDashboard_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvTool_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_Tool_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolAI_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolAI_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDI_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDI_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDO_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDO_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvToolDOInstant_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_ToolDOInstant_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_User_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_User_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvUser_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_User_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_User_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelJ_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelJ_Response_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Request

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Request* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Request*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_Request_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_Request_decode(input, length, &value);
}

@end
@implementation Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Response

+ (id)new
{
    Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Response* object = (Dobot_ros2_v4_Ros2Dobot_msgs_v4SrvVelL_Response*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_Response_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_dobot_msgs_v4_srv_VelL_Response_decode(input, length, &value);
}

@end
