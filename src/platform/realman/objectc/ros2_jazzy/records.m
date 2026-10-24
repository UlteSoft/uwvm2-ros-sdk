/** @file records.m
 * @brief Implement genuine Objective-C methods for complete original values.
 * @details The real Objective-C frontend/runtime is a required shared dependency.
 */
#include <realman/objectc/ros2_jazzy/records.h>
@implementation Realman_ros2_jazzy_Ros2Geometry_msgsMsgPoint

+ (id)new
{
    Realman_ros2_jazzy_Ros2Geometry_msgsMsgPoint* object = (Realman_ros2_jazzy_Ros2Geometry_msgsMsgPoint*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros2_jazzy_Ros2Geometry_msgsMsgQuaternion

+ (id)new
{
    Realman_ros2_jazzy_Ros2Geometry_msgsMsgQuaternion* object = (Realman_ros2_jazzy_Ros2Geometry_msgsMsgQuaternion*)class_createInstance(self, 0);
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
@implementation Realman_ros2_jazzy_Ros2Geometry_msgsMsgPose

+ (id)new
{
    Realman_ros2_jazzy_Ros2Geometry_msgsMsgPose* object = (Realman_ros2_jazzy_Ros2Geometry_msgsMsgPose*)class_createInstance(self, 0);
    if(object)
    {
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
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgAlohastate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgAlohastate* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgAlohastate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmcurrentstatus

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmcurrentstatus* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmcurrentstatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmoriginalstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmoriginalstate* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmoriginalstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversion

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversion* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversion*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversionv3

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversionv3* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversionv3*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversionv4

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversionv4* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmsoftversionv4*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmstate* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgArmstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgCartepos

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgCartepos* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgCartepos*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgCarteposcustom

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgCarteposcustom* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgCarteposcustom*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgExpandpos

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgExpandpos* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgExpandpos*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgExpandstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgExpandstate* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgExpandstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgFlowchartrunstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgFlowchartrunstate* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgFlowchartrunstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForce_Position_State

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForce_Position_State* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForce_Position_State*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmove

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmove* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmove*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmovejoint

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmovejoint* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmovejoint*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmovepose

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmovepose* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgForcepositionmovepose*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetArmState_Command

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetArmState_Command* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetArmState_Command*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetallframe

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetallframe* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetallframe*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGettrajectorylist

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGettrajectorylist* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGettrajectorylist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGripperpick

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGripperpick* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGripperpick*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGripperset

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGripperset* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgGripperset*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandangle

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandangle* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandangle*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandforce

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandforce* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandforce*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandposture

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandposture* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandposture*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandseq

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandseq* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandseq*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandspeed

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandspeed* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandspeed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandstatus

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandstatus* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgHandstatus*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointcurrent

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointcurrent* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointcurrent*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointenflag

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointenflag* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointenflag*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointerrclear

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointerrclear* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointerrclear*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointerrorcode

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointerrorcode* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointerrorcode*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointpos

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointpos* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointpos*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointposcustom

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointposcustom* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointposcustom*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointposeeuler

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointposeeuler* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointposeeuler*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointspeed

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointspeed* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointspeed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointteach

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointteach* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointteach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointtemperature

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointtemperature* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointtemperature*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointversion

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointversion* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointversion*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointvoltage

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointvoltage* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgJointvoltage*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftheight

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftheight* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftheight*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftspeed

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftspeed* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftspeed*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftstate* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgLiftstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMastername

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMastername* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMastername*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusreaddata

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusreaddata* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusreaddata*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusrtureadparams

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusrtureadparams* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusrtureadparams*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterlist

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterlist* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterlist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpreadparams

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpreadparams* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpreadparams*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpwriteparams

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpwriteparams* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgModbustcpwriteparams*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovec

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovec* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovec*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovej

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovej* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovej*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovejp

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovejp* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovejp*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovel

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovel* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMovel*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMoveloffset

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMoveloffset* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgMoveloffset*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgOrtteach

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgOrtteach* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgOrtteach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgPosteach

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgPosteach* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgPosteach*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgProgramrunstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgProgramrunstate* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgProgramrunstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRS485params

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRS485params* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRS485params*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmerr

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmerr* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmerr*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmplusbase

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmplusbase* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmplusbase*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmplusstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmplusstate* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmplusstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmversion

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmversion* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRmversion*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRobotInfo

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRobotInfo* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgRobotInfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSendproject

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSendproject* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSendproject*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSetforceposition

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSetforceposition* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSetforceposition*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSetrealtimepush

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSetrealtimepush* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSetrealtimepush*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSixforce

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSixforce* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgSixforce*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgStop

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgStop* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgStop*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgTrajectoryinfo

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgTrajectoryinfo* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgTrajectoryinfo*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgTrajectorylist

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgTrajectorylist* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgTrajectorylist*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgUdpexpandstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgUdpexpandstate* object =
        (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgUdpexpandstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_decode(input, length, &value);
}

@end
@implementation Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgUdpliftstate

+ (id)new
{
    Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgUdpliftstate* object = (Realman_ros2_jazzy_Ros2Rm_ros_interfacesMsgUdpliftstate*)class_createInstance(self, 0);
    if(object)
    {
    }
    return object;
}

- (void)dispose
{
    object_dispose(self);
}

- (uint32_t)encode:(void*)output capacity:(size_t)capacity length:(size_t*)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_encode(&value, output, capacity, length);
}

- (uint32_t)decode:(void const*)input length:(size_t)length
{
    return roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_decode(input, length, &value);
}

@end
