/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <realman/objectc/ros1_main/records.h>
@implementation Realman_ros1_main_Ros1Geometry_msgsPoint

+ (id)new
{
    Realman_ros1_main_Ros1Geometry_msgsPoint* object = (Realman_ros1_main_Ros1Geometry_msgsPoint*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros1_main_Ros1Geometry_msgsQuaternion

+ (id)new
{
    Realman_ros1_main_Ros1Geometry_msgsQuaternion* object = (Realman_ros1_main_Ros1Geometry_msgsQuaternion*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros1_main_Ros1Geometry_msgsPose

+ (id)new
{
    Realman_ros1_main_Ros1Geometry_msgsPose* object = (Realman_ros1_main_Ros1Geometry_msgsPose*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros1_main_Ros1Rm_msgsArmState

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArmState* object = (Realman_ros1_main_Ros1Rm_msgsArmState*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_ArmState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_ArmState_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Analog_Output

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Analog_Output* object = (Realman_ros1_main_Ros1Rm_msgsArm_Analog_Output*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Current_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Current_State* object = (Realman_ros1_main_Ros1Rm_msgsArm_Current_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Current_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Current_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Current_Status

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Current_Status* object = (Realman_ros1_main_Ros1Rm_msgsArm_Current_Status*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Current_Status_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Current_Status_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Digital_Output

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Digital_Output* object = (Realman_ros1_main_Ros1Rm_msgsArm_Digital_Output*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_IO_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_IO_State* object = (Realman_ros1_main_Ros1Rm_msgsArm_IO_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_IO_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_IO_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Time

+ (id)new
{
    Realman_ros1_main_Ros1Time* object = (Realman_ros1_main_Ros1Time*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros1_main_Ros1Std_msgsHeader

+ (id)new
{
    Realman_ros1_main_Ros1Std_msgsHeader* object = (Realman_ros1_main_Ros1Std_msgsHeader*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Joint_Speed_Max

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Joint_Speed_Max* object = (Realman_ros1_main_Ros1Rm_msgsArm_Joint_Speed_Max*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsSoftwarebuildinfo

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsSoftwarebuildinfo* object = (Realman_ros1_main_Ros1Rm_msgsSoftwarebuildinfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Softversion_v3

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Softversion_v3* object = (Realman_ros1_main_Ros1Rm_msgsArm_Softversion_v3*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Softversion_v4

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Softversion_v4* object = (Realman_ros1_main_Ros1Rm_msgsArm_Softversion_v4*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsArm_Software_Version

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsArm_Software_Version* object = (Realman_ros1_main_Ros1Rm_msgsArm_Software_Version*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Software_Version_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Arm_Software_Version_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsCabinet

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsCabinet* object = (Realman_ros1_main_Ros1Rm_msgsCabinet*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Cabinet_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Cabinet_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsCartePos

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsCartePos* object = (Realman_ros1_main_Ros1Rm_msgsCartePos*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_CartePos_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_CartePos_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsCartePosCustom

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsCartePosCustom* object = (Realman_ros1_main_Ros1Rm_msgsCartePosCustom*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_CartePosCustom_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_CartePosCustom_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsChangeTool_Name

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsChangeTool_Name* object = (Realman_ros1_main_Ros1Rm_msgsChangeTool_Name*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeTool_Name_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeTool_Name_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsChangeTool_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsChangeTool_State* object = (Realman_ros1_main_Ros1Rm_msgsChangeTool_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeTool_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeTool_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsChangeWorkFrame_Name

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsChangeWorkFrame_Name* object = (Realman_ros1_main_Ros1Rm_msgsChangeWorkFrame_Name*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsChangeWorkFrame_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsChangeWorkFrame_State* object = (Realman_ros1_main_Ros1Rm_msgsChangeWorkFrame_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsErr

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsErr* object = (Realman_ros1_main_Ros1Rm_msgsErr*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Err_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Err_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsExpandState

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsExpandState* object = (Realman_ros1_main_Ros1Rm_msgsExpandState*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_ExpandState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_ExpandState_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsExpand_In_Position

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsExpand_In_Position* object = (Realman_ros1_main_Ros1Rm_msgsExpand_In_Position*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Expand_In_Position_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Expand_In_Position_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsExpand_Position

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsExpand_Position* object = (Realman_ros1_main_Ros1Rm_msgsExpand_Position*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Expand_Position_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Expand_Position_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsExpand_Speed

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsExpand_Speed* object = (Realman_ros1_main_Ros1Rm_msgsExpand_Speed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Expand_Speed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Expand_Speed_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsFlowchartrunstate

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsFlowchartrunstate* object = (Realman_ros1_main_Ros1Rm_msgsFlowchartrunstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Flowchartrunstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Flowchartrunstate_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Joint

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Joint* object = (Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Joint*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Pose

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Pose* object = (Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Pose*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Pose_Custom

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Pose_Custom* object =
        (Realman_ros1_main_Ros1Rm_msgsForce_Position_Move_Pose_Custom*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsForce_Position_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsForce_Position_State* object = (Realman_ros1_main_Ros1Rm_msgsForce_Position_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Force_Position_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsGetArmState_Command

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsGetArmState_Command* object = (Realman_ros1_main_Ros1Rm_msgsGetArmState_Command*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_GetArmState_Command_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_GetArmState_Command_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsGet_TCP_Master_List_Param

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsGet_TCP_Master_List_Param* object = (Realman_ros1_main_Ros1Rm_msgsGet_TCP_Master_List_Param*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsGettrajectorylist

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsGettrajectorylist* object = (Realman_ros1_main_Ros1Rm_msgsGettrajectorylist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Gettrajectorylist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Gettrajectorylist_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsGripper_Pick

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsGripper_Pick* object = (Realman_ros1_main_Ros1Rm_msgsGripper_Pick*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Gripper_Pick_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Gripper_Pick_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsGripper_Set

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsGripper_Set* object = (Realman_ros1_main_Ros1Rm_msgsGripper_Set*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Gripper_Set_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Gripper_Set_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsHand_Angle

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsHand_Angle* object = (Realman_ros1_main_Ros1Rm_msgsHand_Angle*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Angle_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Angle_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsHand_Force

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsHand_Force* object = (Realman_ros1_main_Ros1Rm_msgsHand_Force*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Force_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Force_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsHand_Posture

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsHand_Posture* object = (Realman_ros1_main_Ros1Rm_msgsHand_Posture*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Posture_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Posture_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsHand_Seq

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsHand_Seq* object = (Realman_ros1_main_Ros1Rm_msgsHand_Seq*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Seq_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Seq_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsHand_Speed

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsHand_Speed* object = (Realman_ros1_main_Ros1Rm_msgsHand_Speed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Speed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Speed_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsHand_Status

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsHand_Status* object = (Realman_ros1_main_Ros1Rm_msgsHand_Status*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Status_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Hand_Status_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsIO_Update

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsIO_Update* object = (Realman_ros1_main_Ros1Rm_msgsIO_Update*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_IO_Update_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_IO_Update_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJointPos

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJointPos* object = (Realman_ros1_main_Ros1Rm_msgsJointPos*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_JointPos_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_JointPos_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJointPosCustom

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJointPosCustom* object = (Realman_ros1_main_Ros1Rm_msgsJointPosCustom*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_JointPosCustom_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_JointPosCustom_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Current

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Current* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Current*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Current_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Current_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_En_Flag

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_En_Flag* object = (Realman_ros1_main_Ros1Rm_msgsJoint_En_Flag*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_En_Flag_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_En_Flag_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Enable

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Enable* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Enable*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Enable_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Enable_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Error_Code

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Error_Code* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Error_Code*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Error_Code_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Error_Code_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Max_Speed

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Max_Speed* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Max_Speed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_PoseEuler

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_PoseEuler* object = (Realman_ros1_main_Ros1Rm_msgsJoint_PoseEuler*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Speed

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Speed* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Speed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Speed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Speed_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Step

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Step* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Step*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Step_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Step_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Teach

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Teach* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Teach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Teach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Teach_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Temperature

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Temperature* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Temperature*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Temperature_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Temperature_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJoint_Voltage

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJoint_Voltage* object = (Realman_ros1_main_Ros1Rm_msgsJoint_Voltage*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Voltage_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Joint_Voltage_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsJointversion

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsJointversion* object = (Realman_ros1_main_Ros1Rm_msgsJointversion*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Jointversion_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Jointversion_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsLiftState

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsLiftState* object = (Realman_ros1_main_Ros1Rm_msgsLiftState*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_LiftState_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_LiftState_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsLift_Height

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsLift_Height* object = (Realman_ros1_main_Ros1Rm_msgsLift_Height*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Lift_Height_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Lift_Height_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsLift_In_Position

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsLift_In_Position* object = (Realman_ros1_main_Ros1Rm_msgsLift_In_Position*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Lift_In_Position_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Lift_In_Position_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsLift_Speed

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsLift_Speed* object = (Realman_ros1_main_Ros1Rm_msgsLift_Speed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Lift_Speed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Lift_Speed_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsManual_Set_Force_Pose

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsManual_Set_Force_Pose* object = (Realman_ros1_main_Ros1Rm_msgsManual_Set_Force_Pose*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsMastername

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsMastername* object = (Realman_ros1_main_Ros1Rm_msgsMastername*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Mastername_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Mastername_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsModbusreaddata

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsModbusreaddata* object = (Realman_ros1_main_Ros1Rm_msgsModbusreaddata*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Modbusreaddata_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Modbusreaddata_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsModbustcpmasterinfo

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsModbustcpmasterinfo* object = (Realman_ros1_main_Ros1Rm_msgsModbustcpmasterinfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsModbustcpmasterlist

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsModbustcpmasterlist* object = (Realman_ros1_main_Ros1Rm_msgsModbustcpmasterlist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsMoveC

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsMoveC* object = (Realman_ros1_main_Ros1Rm_msgsMoveC*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_MoveC_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_MoveC_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsMoveJ

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsMoveJ* object = (Realman_ros1_main_Ros1Rm_msgsMoveJ*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_MoveJ_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_MoveJ_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsMoveJ_P

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsMoveJ_P* object = (Realman_ros1_main_Ros1Rm_msgsMoveJ_P*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_MoveJ_P_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_MoveJ_P_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsMoveL

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsMoveL* object = (Realman_ros1_main_Ros1Rm_msgsMoveL*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_MoveL_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_MoveL_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsMoveloffset

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsMoveloffset* object = (Realman_ros1_main_Ros1Rm_msgsMoveloffset*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Moveloffset_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Moveloffset_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsOrt_Teach

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsOrt_Teach* object = (Realman_ros1_main_Ros1Rm_msgsOrt_Teach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Ort_Teach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Ort_Teach_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsPlan_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsPlan_State* object = (Realman_ros1_main_Ros1Rm_msgsPlan_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Plan_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Plan_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsPos_Teach

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsPos_Teach* object = (Realman_ros1_main_Ros1Rm_msgsPos_Teach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Pos_Teach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Pos_Teach_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsProgramrunstate

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsProgramrunstate* object = (Realman_ros1_main_Ros1Rm_msgsProgramrunstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Programrunstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Programrunstate_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRS485_Mode

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRS485_Mode* object = (Realman_ros1_main_Ros1Rm_msgsRS485_Mode*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_RS485_Mode_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_RS485_Mode_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRS485params

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRS485params* object = (Realman_ros1_main_Ros1Rm_msgsRS485params*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_RS485params_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_RS485params_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRead_ModbusRTU

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRead_ModbusRTU* object = (Realman_ros1_main_Ros1Rm_msgsRead_ModbusRTU*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRead_Register

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRead_Register* object = (Realman_ros1_main_Ros1Rm_msgsRead_Register*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Read_Register_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Read_Register_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRead_TCPandRTU

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRead_TCPandRTU* object = (Realman_ros1_main_Ros1Rm_msgsRead_TCPandRTU*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRegister_Data

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRegister_Data* object = (Realman_ros1_main_Ros1Rm_msgsRegister_Data*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Register_Data_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Register_Data_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRm_Plus_Base

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRm_Plus_Base* object = (Realman_ros1_main_Ros1Rm_msgsRm_Plus_Base*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsRm_Plus_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsRm_Plus_State* object = (Realman_ros1_main_Ros1Rm_msgsRm_Plus_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Rm_Plus_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Rm_Plus_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsServo_GetAngle

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsServo_GetAngle* object = (Realman_ros1_main_Ros1Rm_msgsServo_GetAngle*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Servo_GetAngle_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Servo_GetAngle_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsServo_Move

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsServo_Move* object = (Realman_ros1_main_Ros1Rm_msgsServo_Move*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Servo_Move_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Servo_Move_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsSet_Force_Position

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsSet_Force_Position* object = (Realman_ros1_main_Ros1Rm_msgsSet_Force_Position*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Set_Force_Position_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Set_Force_Position_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsSet_Modbus_Mode

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsSet_Modbus_Mode* object = (Realman_ros1_main_Ros1Rm_msgsSet_Modbus_Mode*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsSet_Realtime_Push

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsSet_Realtime_Push* object = (Realman_ros1_main_Ros1Rm_msgsSet_Realtime_Push*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsSix_Force

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsSix_Force* object = (Realman_ros1_main_Ros1Rm_msgsSix_Force*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Six_Force_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Six_Force_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsSocket_Command

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsSocket_Command* object = (Realman_ros1_main_Ros1Rm_msgsSocket_Command*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Socket_Command_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Socket_Command_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsStart_Multi_Drag_Teach

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsStart_Multi_Drag_Teach* object = (Realman_ros1_main_Ros1Rm_msgsStart_Multi_Drag_Teach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsStop

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsStop* object = (Realman_ros1_main_Ros1Rm_msgsStop*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Stop_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Stop_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsStop_Teach

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsStop_Teach* object = (Realman_ros1_main_Ros1Rm_msgsStop_Teach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Stop_Teach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Stop_Teach_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsTool_Analog_Output

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsTool_Analog_Output* object = (Realman_ros1_main_Ros1Rm_msgsTool_Analog_Output*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsTool_Digital_Output

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsTool_Digital_Output* object = (Realman_ros1_main_Ros1Rm_msgsTool_Digital_Output*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsTool_IO_State

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsTool_IO_State* object = (Realman_ros1_main_Ros1Rm_msgsTool_IO_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Tool_IO_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Tool_IO_State_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsTrajectoryinfo

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsTrajectoryinfo* object = (Realman_ros1_main_Ros1Rm_msgsTrajectoryinfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Trajectoryinfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Trajectoryinfo_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsTrajectorylist

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsTrajectorylist* object = (Realman_ros1_main_Ros1Rm_msgsTrajectorylist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Trajectorylist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Trajectorylist_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsTurtle_Driver

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsTurtle_Driver* object = (Realman_ros1_main_Ros1Rm_msgsTurtle_Driver*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Turtle_Driver_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Turtle_Driver_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsUpdateTCPmasterparam

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsUpdateTCPmasterparam* object = (Realman_ros1_main_Ros1Rm_msgsUpdateTCPmasterparam*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsWrite_ModbusRTU

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsWrite_ModbusRTU* object = (Realman_ros1_main_Ros1Rm_msgsWrite_ModbusRTU*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsWrite_Register

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsWrite_Register* object = (Realman_ros1_main_Ros1Rm_msgsWrite_Register*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Write_Register_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Write_Register_decode(input, length, &value);
}

@end
@implementation Realman_ros1_main_Ros1Rm_msgsWrite_TCPandRTU

+ (id)new
{
    Realman_ros1_main_Ros1Rm_msgsWrite_TCPandRTU* object = (Realman_ros1_main_Ros1Rm_msgsWrite_TCPandRTU*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_decode(input, length, &value);
}

@end
