/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <realman/c/ros1/realman-ros1-develop-complete/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Point_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Point Ros1Geometry_msgsPoint;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsQuaternion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Quaternion_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Quaternion Ros1Geometry_msgsQuaternion;
    /**
     * @brief Complete bounded storage for Ros1Geometry_msgsPose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Pose_valid
     */
    typedef roswasmc_bounded_1_geometry_msgs_Pose Ros1Geometry_msgsPose;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArmState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ArmState_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_ArmState Ros1Rm_msgsArmState;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Analog_Output.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Analog_Output Ros1Rm_msgsArm_Analog_Output;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Current_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Current_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Current_State Ros1Rm_msgsArm_Current_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Current_Status.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Current_Status_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Current_Status Ros1Rm_msgsArm_Current_Status;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Digital_Output.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Digital_Output Ros1Rm_msgsArm_Digital_Output;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_IO_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_IO_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_IO_State Ros1Rm_msgsArm_IO_State;
    /**
     * @brief Complete bounded storage for Ros1Time.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_time_valid
     */
    typedef roswasmc_bounded_1_time Ros1Time;
    /**
     * @brief Complete bounded storage for Ros1Std_msgsHeader.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Header_valid
     */
    typedef roswasmc_bounded_1_std_msgs_Header Ros1Std_msgsHeader;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Joint_Speed_Max.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max Ros1Rm_msgsArm_Joint_Speed_Max;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsSoftwarebuildinfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Softwarebuildinfo Ros1Rm_msgsSoftwarebuildinfo;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Softversion_v3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3 Ros1Rm_msgsArm_Softversion_v3;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Softversion_v4.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4 Ros1Rm_msgsArm_Softversion_v4;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsArm_Software_Version.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Software_Version_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Arm_Software_Version Ros1Rm_msgsArm_Software_Version;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsCabinet.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Cabinet_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Cabinet Ros1Rm_msgsCabinet;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsCartePos.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_CartePos_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_CartePos Ros1Rm_msgsCartePos;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsCartePosCustom.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_CartePosCustom_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_CartePosCustom Ros1Rm_msgsCartePosCustom;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsChangeTool_Name.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeTool_Name_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_ChangeTool_Name Ros1Rm_msgsChangeTool_Name;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsChangeTool_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeTool_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_ChangeTool_State Ros1Rm_msgsChangeTool_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsChangeWorkFrame_Name.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name Ros1Rm_msgsChangeWorkFrame_Name;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsChangeWorkFrame_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State Ros1Rm_msgsChangeWorkFrame_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsErr.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Err_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Err Ros1Rm_msgsErr;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsFlowchartrunstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Flowchartrunstate_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Flowchartrunstate Ros1Rm_msgsFlowchartrunstate;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsForce_Position_Move_Joint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint Ros1Rm_msgsForce_Position_Move_Joint;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsForce_Position_Move_Pose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose Ros1Rm_msgsForce_Position_Move_Pose;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsForce_Position_Move_Pose_Custom.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom Ros1Rm_msgsForce_Position_Move_Pose_Custom;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsForce_Position_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Force_Position_State Ros1Rm_msgsForce_Position_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsGetArmState_Command.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_GetArmState_Command_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_GetArmState_Command Ros1Rm_msgsGetArmState_Command;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsGet_TCP_Master_List_Param.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param Ros1Rm_msgsGet_TCP_Master_List_Param;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsGettrajectorylist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Gettrajectorylist_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Gettrajectorylist Ros1Rm_msgsGettrajectorylist;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsGripper_Pick.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Gripper_Pick_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Gripper_Pick Ros1Rm_msgsGripper_Pick;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsGripper_Set.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Gripper_Set_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Gripper_Set Ros1Rm_msgsGripper_Set;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsHand_Angle.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Angle_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Hand_Angle Ros1Rm_msgsHand_Angle;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsHand_Force.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Force_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Hand_Force Ros1Rm_msgsHand_Force;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsHand_Posture.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Posture_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Hand_Posture Ros1Rm_msgsHand_Posture;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsHand_Seq.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Seq_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Hand_Seq Ros1Rm_msgsHand_Seq;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsHand_Speed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Speed_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Hand_Speed Ros1Rm_msgsHand_Speed;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsHand_Status.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Status_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Hand_Status Ros1Rm_msgsHand_Status;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsIO_Update.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_IO_Update_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_IO_Update Ros1Rm_msgsIO_Update;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJointPos.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_JointPos_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_JointPos Ros1Rm_msgsJointPos;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJointPosCustom.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_JointPosCustom_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_JointPosCustom Ros1Rm_msgsJointPosCustom;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Current.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Current_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Current Ros1Rm_msgsJoint_Current;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_En_Flag.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_En_Flag_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_En_Flag Ros1Rm_msgsJoint_En_Flag;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Enable.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Enable_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Enable Ros1Rm_msgsJoint_Enable;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Error_Code.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Error_Code_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Error_Code Ros1Rm_msgsJoint_Error_Code;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Max_Speed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Max_Speed Ros1Rm_msgsJoint_Max_Speed;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_PoseEuler.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_PoseEuler Ros1Rm_msgsJoint_PoseEuler;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Speed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Speed_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Speed Ros1Rm_msgsJoint_Speed;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Step.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Step_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Step Ros1Rm_msgsJoint_Step;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Teach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Teach_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Teach Ros1Rm_msgsJoint_Teach;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Temperature.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Temperature_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Temperature Ros1Rm_msgsJoint_Temperature;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJoint_Voltage.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Voltage_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Joint_Voltage Ros1Rm_msgsJoint_Voltage;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsJointversion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Jointversion_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Jointversion Ros1Rm_msgsJointversion;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsLiftState.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_LiftState_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_LiftState Ros1Rm_msgsLiftState;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsLift_Height.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Lift_Height_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Lift_Height Ros1Rm_msgsLift_Height;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsLift_In_Position.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Lift_In_Position_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Lift_In_Position Ros1Rm_msgsLift_In_Position;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsLift_Speed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Lift_Speed_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Lift_Speed Ros1Rm_msgsLift_Speed;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsManual_Set_Force_Pose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose Ros1Rm_msgsManual_Set_Force_Pose;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsMastername.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Mastername_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Mastername Ros1Rm_msgsMastername;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsModbusreaddata.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Modbusreaddata_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Modbusreaddata Ros1Rm_msgsModbusreaddata;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsModbustcpmasterinfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo Ros1Rm_msgsModbustcpmasterinfo;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsModbustcpmasterlist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist Ros1Rm_msgsModbustcpmasterlist;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsMoveC.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveC_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_MoveC Ros1Rm_msgsMoveC;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsMoveJ.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveJ_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_MoveJ Ros1Rm_msgsMoveJ;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsMoveJ_P.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveJ_P_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_MoveJ_P Ros1Rm_msgsMoveJ_P;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsMoveL.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveL_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_MoveL Ros1Rm_msgsMoveL;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsMoveloffset.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Moveloffset_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Moveloffset Ros1Rm_msgsMoveloffset;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsOrt_Teach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Ort_Teach_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Ort_Teach Ros1Rm_msgsOrt_Teach;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsPlan_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Plan_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Plan_State Ros1Rm_msgsPlan_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsPos_Teach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Pos_Teach_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Pos_Teach Ros1Rm_msgsPos_Teach;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsProgramrunstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Programrunstate_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Programrunstate Ros1Rm_msgsProgramrunstate;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRS485_Mode.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_RS485_Mode_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_RS485_Mode Ros1Rm_msgsRS485_Mode;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRS485params.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_RS485params_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_RS485params Ros1Rm_msgsRS485params;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRead_ModbusRTU.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Read_ModbusRTU Ros1Rm_msgsRead_ModbusRTU;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRead_Register.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Read_Register_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Read_Register Ros1Rm_msgsRead_Register;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRead_TCPandRTU.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Read_TCPandRTU Ros1Rm_msgsRead_TCPandRTU;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRegister_Data.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Register_Data_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Register_Data Ros1Rm_msgsRegister_Data;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRm_Plus_Base.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Rm_Plus_Base Ros1Rm_msgsRm_Plus_Base;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsRm_Plus_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Rm_Plus_State Ros1Rm_msgsRm_Plus_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsServo_GetAngle.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Servo_GetAngle_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Servo_GetAngle Ros1Rm_msgsServo_GetAngle;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsServo_Move.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Servo_Move_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Servo_Move Ros1Rm_msgsServo_Move;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsSet_Force_Position.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Set_Force_Position_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Set_Force_Position Ros1Rm_msgsSet_Force_Position;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsSet_Modbus_Mode.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode Ros1Rm_msgsSet_Modbus_Mode;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsSet_Realtime_Push.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Set_Realtime_Push Ros1Rm_msgsSet_Realtime_Push;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsSix_Force.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Six_Force_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Six_Force Ros1Rm_msgsSix_Force;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsSocket_Command.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Socket_Command_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Socket_Command Ros1Rm_msgsSocket_Command;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsStart_Multi_Drag_Teach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach Ros1Rm_msgsStart_Multi_Drag_Teach;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsStop.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Stop_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Stop Ros1Rm_msgsStop;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsStop_Teach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Stop_Teach_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Stop_Teach Ros1Rm_msgsStop_Teach;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsTool_Analog_Output.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Tool_Analog_Output Ros1Rm_msgsTool_Analog_Output;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsTool_Digital_Output.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Tool_Digital_Output Ros1Rm_msgsTool_Digital_Output;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsTool_IO_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Tool_IO_State_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Tool_IO_State Ros1Rm_msgsTool_IO_State;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsTrajectoryinfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Trajectoryinfo_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Trajectoryinfo Ros1Rm_msgsTrajectoryinfo;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsTrajectorylist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Trajectorylist_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Trajectorylist Ros1Rm_msgsTrajectorylist;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsTurtle_Driver.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Turtle_Driver_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Turtle_Driver Ros1Rm_msgsTurtle_Driver;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsUpdateTCPmasterparam.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam Ros1Rm_msgsUpdateTCPmasterparam;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsWrite_ModbusRTU.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Write_ModbusRTU Ros1Rm_msgsWrite_ModbusRTU;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsWrite_Register.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Write_Register_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Write_Register Ros1Rm_msgsWrite_Register;
    /**
     * @brief Complete bounded storage for Ros1Rm_msgsWrite_TCPandRTU.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_valid
     */
    typedef roswasmc_bounded_1_rm_msgs_Write_TCPandRTU Ros1Rm_msgsWrite_TCPandRTU;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POINT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPoint>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Point_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Point_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPoint<T>::codec_identity = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Point_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPoint> : RecordMetadata_Ros1Geometry_msgsPoint<uwvm_custom::Ros1Geometry_msgsPoint>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Point_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Point_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Point_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPoint& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_QUATERNION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsQuaternion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsQuaternion>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsQuaternion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Quaternion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsQuaternion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsQuaternion<T>::codec_identity =
        "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsQuaternion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsQuaternion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Quaternion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsQuaternion> : RecordMetadata_Ros1Geometry_msgsQuaternion<uwvm_custom::Ros1Geometry_msgsQuaternion>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsQuaternion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Quaternion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsQuaternion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Quaternion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsQuaternion& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_GEOMETRY_MSGS_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Geometry_msgsPose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Geometry_msgsPose>
     */
    template <class T>
    struct RecordMetadata_Ros1Geometry_msgsPose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_geometry_msgs_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Geometry_msgsPose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Geometry_msgsPose<T>::codec_identity = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Geometry_msgsPose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Geometry_msgsPose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_geometry_msgs_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Geometry_msgsPose> : RecordMetadata_Ros1Geometry_msgsPose<uwvm_custom::Ros1Geometry_msgsPose>
    {
        /**
         * @brief Encode all fields of Ros1Geometry_msgsPose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_encode
         */
        static bool encode(uwvm_custom::Ros1Geometry_msgsPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_geometry_msgs_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_geometry_msgs_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_geometry_msgs_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Geometry_msgsPose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_geometry_msgs_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Geometry_msgsPose& out)
        {
            return !roswasmc_bounded_1_geometry_msgs_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARMSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARMSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArmState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArmState>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArmState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_ArmState_wire_size
         */
        static const size_t max_wire_bytes = 161;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_ArmState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArmState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArmState<T>::codec_identity = "UWVMROS1_f66af5e8f31c3b897559c988ef8a9fe8257199453c3973bcb9afe56a420d2f93";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArmState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArmState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ArmState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArmState> : RecordMetadata_Ros1Rm_msgsArmState<uwvm_custom::Ros1Rm_msgsArmState>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArmState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_ArmState_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArmState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_ArmState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_ArmState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_ArmState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArmState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_ArmState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArmState& out)
        {
            return !roswasmc_bounded_1_rm_msgs_ArmState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_ANALOG_OUTPUT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_ANALOG_OUTPUT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Analog_Output.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Analog_Output>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Analog_Output
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Analog_Output<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Analog_Output<T>::codec_identity =
        "UWVMROS1_c344d257e1e5f45d1f82e60e66a38a1714dbc06b8e9379357c308b34f2ed3c94";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Analog_Output<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Analog_Output.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Analog_Output> : RecordMetadata_Ros1Rm_msgsArm_Analog_Output<uwvm_custom::Ros1Rm_msgsArm_Analog_Output>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Analog_Output transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Analog_Output const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Analog_Output.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Analog_Output& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Analog_Output_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_CURRENT_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_CURRENT_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Current_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Current_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Current_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Current_State_wire_size
         */
        static const size_t max_wire_bytes = 129;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Current_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Current_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Current_State<T>::codec_identity =
        "UWVMROS1_b5c0206ba9eb0674b9a1ca4204aa63e41ce356ad38953a544760897d0d467844";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Current_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Current_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Current_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Current_State> : RecordMetadata_Ros1Rm_msgsArm_Current_State<uwvm_custom::Ros1Rm_msgsArm_Current_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Current_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Current_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Current_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Current_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Current_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Current_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Current_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Current_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Current_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Current_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_CURRENT_STATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_CURRENT_STATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Current_Status.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Current_Status>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Current_Status
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Current_Status_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Current_Status_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Current_Status<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Current_Status<T>::codec_identity =
        "UWVMROS1_871842ca4ff929b1851a43d9cf855a85ab37ccf147e1b24dfbdb8421f4133fd3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Current_Status<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Current_Status.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Current_Status_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Current_Status> : RecordMetadata_Ros1Rm_msgsArm_Current_Status<uwvm_custom::Ros1Rm_msgsArm_Current_Status>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Current_Status transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Current_Status_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Current_Status const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Current_Status_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Current_Status_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Current_Status_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Current_Status.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Current_Status_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Current_Status& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Current_Status_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_DIGITAL_OUTPUT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_DIGITAL_OUTPUT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Digital_Output.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Digital_Output>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Digital_Output
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Digital_Output<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Digital_Output<T>::codec_identity =
        "UWVMROS1_afc6da6c0b8f5e9dc9846b9c536ced62723c7e1479737bc5f4f31d14c2f5f029";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Digital_Output<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Digital_Output.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Digital_Output> : RecordMetadata_Ros1Rm_msgsArm_Digital_Output<uwvm_custom::Ros1Rm_msgsArm_Digital_Output>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Digital_Output transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Digital_Output const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Digital_Output.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Digital_Output& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Digital_Output_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_IO_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_IO_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_IO_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_IO_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_IO_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_IO_State_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_IO_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_IO_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_IO_State<T>::codec_identity = "UWVMROS1_bdcfa192917433b9ac60a589c42c06cc1092080e0d0410dbcd967b88298b315c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_IO_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_IO_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_IO_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_IO_State> : RecordMetadata_Ros1Rm_msgsArm_IO_State<uwvm_custom::Ros1Rm_msgsArm_IO_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_IO_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_IO_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_IO_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_IO_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_IO_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_IO_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_IO_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_IO_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_IO_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_IO_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_TIME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_TIME 1

    /**
     * @brief ODR-safe wire metadata for Ros1Time.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Time>
     */
    template <class T>
    struct RecordMetadata_Ros1Time
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_time_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_time_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Time<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Time<T>::codec_identity = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Time<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Time.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_time_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Time> : RecordMetadata_Ros1Time<uwvm_custom::Ros1Time>
    {
        /**
         * @brief Encode all fields of Ros1Time transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_time_encode
         */
        static bool encode(uwvm_custom::Ros1Time const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_time_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_time_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_time_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Time.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_time_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Time& out)
        {
            return !roswasmc_bounded_1_time_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_STD_MSGS_HEADER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Std_msgsHeader.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Std_msgsHeader>
     */
    template <class T>
    struct RecordMetadata_Ros1Std_msgsHeader
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_std_msgs_Header_wire_size
         */
        static const size_t max_wire_bytes = 272;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_std_msgs_Header_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Std_msgsHeader<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Std_msgsHeader<T>::codec_identity = "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Std_msgsHeader<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Std_msgsHeader.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_std_msgs_Header_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Std_msgsHeader> : RecordMetadata_Ros1Std_msgsHeader<uwvm_custom::Ros1Std_msgsHeader>
    {
        /**
         * @brief Encode all fields of Ros1Std_msgsHeader transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_std_msgs_Header_encode
         */
        static bool encode(uwvm_custom::Ros1Std_msgsHeader const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_std_msgs_Header_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_std_msgs_Header_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_std_msgs_Header_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Std_msgsHeader.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_std_msgs_Header_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Std_msgsHeader& out)
        {
            return !roswasmc_bounded_1_std_msgs_Header_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_JOINT_SPEED_MAX
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_JOINT_SPEED_MAX 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Joint_Speed_Max.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Joint_Speed_Max>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Joint_Speed_Max
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_wire_size
         */
        static const size_t max_wire_bytes = 4568;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Joint_Speed_Max<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Joint_Speed_Max<T>::codec_identity =
        "UWVMROS1_3e8703dc738f06e4e9e3ce64446ef46706350439309eb78b54801c95846f547d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Joint_Speed_Max<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Joint_Speed_Max.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Joint_Speed_Max> : RecordMetadata_Ros1Rm_msgsArm_Joint_Speed_Max<uwvm_custom::Ros1Rm_msgsArm_Joint_Speed_Max>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Joint_Speed_Max transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Joint_Speed_Max const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Joint_Speed_Max.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Joint_Speed_Max& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Joint_Speed_Max_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SOFTWAREBUILDINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SOFTWAREBUILDINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsSoftwarebuildinfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsSoftwarebuildinfo>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsSoftwarebuildinfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_wire_size
         */
        static const size_t max_wire_bytes = 520;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsSoftwarebuildinfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsSoftwarebuildinfo<T>::codec_identity =
        "UWVMROS1_c6ee342c433ac29a8e2b2484b8e3d5071c8a37baf95b1fb59883f43b8d2e1ec5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsSoftwarebuildinfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsSoftwarebuildinfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsSoftwarebuildinfo> : RecordMetadata_Ros1Rm_msgsSoftwarebuildinfo<uwvm_custom::Ros1Rm_msgsSoftwarebuildinfo>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsSoftwarebuildinfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsSoftwarebuildinfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsSoftwarebuildinfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsSoftwarebuildinfo& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Softwarebuildinfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_SOFTVERSION_V3
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_SOFTVERSION_V3 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Softversion_v3.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Softversion_v3>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Softversion_v3
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_wire_size
         */
        static const size_t max_wire_bytes = 1820;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Softversion_v3<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Softversion_v3<T>::codec_identity =
        "UWVMROS1_7965401d47a025c253634e60695689f086763ff15ed2a624c9219f67dc3bf394";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Softversion_v3<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Softversion_v3.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Softversion_v3> : RecordMetadata_Ros1Rm_msgsArm_Softversion_v3<uwvm_custom::Ros1Rm_msgsArm_Softversion_v3>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Softversion_v3 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Softversion_v3 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Softversion_v3.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Softversion_v3& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Softversion_v3_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_SOFTVERSION_V4
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_SOFTVERSION_V4 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Softversion_v4.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Softversion_v4>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Softversion_v4
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_wire_size
         */
        static const size_t max_wire_bytes = 2340;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Softversion_v4<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Softversion_v4<T>::codec_identity =
        "UWVMROS1_40f59f8af4a50464ab428e1246a58ca767b21950c19e7d565c9a2aea5bc95a0f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Softversion_v4<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Softversion_v4.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Softversion_v4> : RecordMetadata_Ros1Rm_msgsArm_Softversion_v4<uwvm_custom::Ros1Rm_msgsArm_Softversion_v4>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Softversion_v4 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Softversion_v4 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Softversion_v4.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Softversion_v4& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Softversion_v4_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_SOFTWARE_VERSION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ARM_SOFTWARE_VERSION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsArm_Software_Version.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsArm_Software_Version>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsArm_Software_Version
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Software_Version_wire_size
         */
        static const size_t max_wire_bytes = 3120;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Arm_Software_Version_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsArm_Software_Version<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsArm_Software_Version<T>::codec_identity =
        "UWVMROS1_73a8bbc2aae36edf9b7e16773c7c683e148f81269ed380e012d8a5e4cc79d5d5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsArm_Software_Version<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsArm_Software_Version.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Arm_Software_Version_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsArm_Software_Version> : RecordMetadata_Ros1Rm_msgsArm_Software_Version<uwvm_custom::Ros1Rm_msgsArm_Software_Version>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsArm_Software_Version transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Software_Version_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsArm_Software_Version const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Arm_Software_Version_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Arm_Software_Version_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Arm_Software_Version_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsArm_Software_Version.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Arm_Software_Version_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsArm_Software_Version& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Arm_Software_Version_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CABINET
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CABINET 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsCabinet.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsCabinet>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsCabinet
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Cabinet_wire_size
         */
        static const size_t max_wire_bytes = 334;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Cabinet_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsCabinet<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsCabinet<T>::codec_identity = "UWVMROS1_c87786d2d26af9f8d138443f251c69d46f60b011db9abd3b3d4f80dca8e1babf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsCabinet<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsCabinet.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Cabinet_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsCabinet> : RecordMetadata_Ros1Rm_msgsCabinet<uwvm_custom::Ros1Rm_msgsCabinet>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsCabinet transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Cabinet_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsCabinet const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Cabinet_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Cabinet_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Cabinet_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsCabinet.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Cabinet_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsCabinet& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Cabinet_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CARTEPOS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CARTEPOS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsCartePos.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsCartePos>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsCartePos
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_CartePos_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_CartePos_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsCartePos<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsCartePos<T>::codec_identity = "UWVMROS1_c57fa78db159ce841b371c7cad7490b2059aabfe9394776129ab3eab33b59ce9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsCartePos<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsCartePos.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_CartePos_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsCartePos> : RecordMetadata_Ros1Rm_msgsCartePos<uwvm_custom::Ros1Rm_msgsCartePos>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsCartePos transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_CartePos_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsCartePos const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_CartePos_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_CartePos_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_CartePos_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsCartePos.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_CartePos_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsCartePos& out)
        {
            return !roswasmc_bounded_1_rm_msgs_CartePos_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CARTEPOSCUSTOM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CARTEPOSCUSTOM 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsCartePosCustom.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsCartePosCustom>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsCartePosCustom
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_CartePosCustom_wire_size
         */
        static const size_t max_wire_bytes = 59;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_CartePosCustom_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsCartePosCustom<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsCartePosCustom<T>::codec_identity = "UWVMROS1_747920217625df52e54b9f69ea1e7375e2945ef08c1a9243d7cf88429f6f871c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsCartePosCustom<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsCartePosCustom.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_CartePosCustom_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsCartePosCustom> : RecordMetadata_Ros1Rm_msgsCartePosCustom<uwvm_custom::Ros1Rm_msgsCartePosCustom>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsCartePosCustom transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_CartePosCustom_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsCartePosCustom const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_CartePosCustom_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_CartePosCustom_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_CartePosCustom_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsCartePosCustom.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_CartePosCustom_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsCartePosCustom& out)
        {
            return !roswasmc_bounded_1_rm_msgs_CartePosCustom_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGETOOL_NAME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGETOOL_NAME 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsChangeTool_Name.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsChangeTool_Name>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsChangeTool_Name
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_ChangeTool_Name_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_ChangeTool_Name_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsChangeTool_Name<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsChangeTool_Name<T>::codec_identity =
        "UWVMROS1_e911c349e53bcce70562585461a9da98a2db38e964dc743d6eb49b334f7f2314";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsChangeTool_Name<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsChangeTool_Name.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeTool_Name_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsChangeTool_Name> : RecordMetadata_Ros1Rm_msgsChangeTool_Name<uwvm_custom::Ros1Rm_msgsChangeTool_Name>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsChangeTool_Name transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_ChangeTool_Name_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsChangeTool_Name const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_ChangeTool_Name_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_ChangeTool_Name_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_ChangeTool_Name_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsChangeTool_Name.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_ChangeTool_Name_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsChangeTool_Name& out)
        {
            return !roswasmc_bounded_1_rm_msgs_ChangeTool_Name_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGETOOL_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGETOOL_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsChangeTool_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsChangeTool_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsChangeTool_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_ChangeTool_State_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_ChangeTool_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsChangeTool_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsChangeTool_State<T>::codec_identity =
        "UWVMROS1_dd7214855c8334d6c5098ec2da0fd3ee89d02d7b17ad83c58f0b28740b044b86";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsChangeTool_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsChangeTool_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeTool_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsChangeTool_State> : RecordMetadata_Ros1Rm_msgsChangeTool_State<uwvm_custom::Ros1Rm_msgsChangeTool_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsChangeTool_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_ChangeTool_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsChangeTool_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_ChangeTool_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_ChangeTool_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_ChangeTool_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsChangeTool_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_ChangeTool_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsChangeTool_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_ChangeTool_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGEWORKFRAME_NAME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGEWORKFRAME_NAME 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsChangeWorkFrame_Name.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsChangeWorkFrame_Name>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsChangeWorkFrame_Name
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsChangeWorkFrame_Name<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsChangeWorkFrame_Name<T>::codec_identity =
        "UWVMROS1_47a75a37f6777b0aee5ad12e298e07359d1ffcbd26e4fafe5efe5a98f757cbce";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsChangeWorkFrame_Name<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsChangeWorkFrame_Name.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsChangeWorkFrame_Name> : RecordMetadata_Ros1Rm_msgsChangeWorkFrame_Name<uwvm_custom::Ros1Rm_msgsChangeWorkFrame_Name>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsChangeWorkFrame_Name transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsChangeWorkFrame_Name const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsChangeWorkFrame_Name.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsChangeWorkFrame_Name& out)
        {
            return !roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_Name_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGEWORKFRAME_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_CHANGEWORKFRAME_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsChangeWorkFrame_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsChangeWorkFrame_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsChangeWorkFrame_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsChangeWorkFrame_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsChangeWorkFrame_State<T>::codec_identity =
        "UWVMROS1_d5b387f63fb4c309d83fbdb046a8c8a0e6678d60fb521139250f15e8e5a56856";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsChangeWorkFrame_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsChangeWorkFrame_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsChangeWorkFrame_State> : RecordMetadata_Ros1Rm_msgsChangeWorkFrame_State<uwvm_custom::Ros1Rm_msgsChangeWorkFrame_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsChangeWorkFrame_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsChangeWorkFrame_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsChangeWorkFrame_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsChangeWorkFrame_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_ChangeWorkFrame_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ERR
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ERR 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsErr.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsErr>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsErr
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Err_wire_size
         */
        static const size_t max_wire_bytes = 36;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Err_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsErr<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsErr<T>::codec_identity = "UWVMROS1_dec53c41ca46496e0ac25a56a15fc255aa369f59d7add914de365b18acff2117";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsErr<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsErr.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Err_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsErr> : RecordMetadata_Ros1Rm_msgsErr<uwvm_custom::Ros1Rm_msgsErr>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsErr transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Err_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsErr const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Err_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Err_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Err_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsErr.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Err_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsErr& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Err_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FLOWCHARTRUNSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FLOWCHARTRUNSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsFlowchartrunstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsFlowchartrunstate>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsFlowchartrunstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Flowchartrunstate_wire_size
         */
        static const size_t max_wire_bytes = 524;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Flowchartrunstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsFlowchartrunstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsFlowchartrunstate<T>::codec_identity =
        "UWVMROS1_deafa818f1cf99a33c9443d1880f5744f721ac3c07d583a00ed269569f07e030";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsFlowchartrunstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsFlowchartrunstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Flowchartrunstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsFlowchartrunstate> : RecordMetadata_Ros1Rm_msgsFlowchartrunstate<uwvm_custom::Ros1Rm_msgsFlowchartrunstate>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsFlowchartrunstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Flowchartrunstate_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsFlowchartrunstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Flowchartrunstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Flowchartrunstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Flowchartrunstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsFlowchartrunstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Flowchartrunstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsFlowchartrunstate& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Flowchartrunstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_MOVE_JOINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_MOVE_JOINT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsForce_Position_Move_Joint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Joint>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsForce_Position_Move_Joint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_wire_size
         */
        static const size_t max_wire_bytes = 74;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsForce_Position_Move_Joint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsForce_Position_Move_Joint<T>::codec_identity =
        "UWVMROS1_40252f1cf60424f32d01c870d44e286a0138883d8db1302ffdbbe0300e38cd39";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsForce_Position_Move_Joint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsForce_Position_Move_Joint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Joint> :
        RecordMetadata_Ros1Rm_msgsForce_Position_Move_Joint<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Joint>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsForce_Position_Move_Joint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsForce_Position_Move_Joint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsForce_Position_Move_Joint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsForce_Position_Move_Joint& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Force_Position_Move_Joint_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_MOVE_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_MOVE_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsForce_Position_Move_Pose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_wire_size
         */
        static const size_t max_wire_bytes = 61;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose<T>::codec_identity =
        "UWVMROS1_6397e7691e6a886b0ec77927e87229edf7c7c4b3164e64e4898813d240206f02";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsForce_Position_Move_Pose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose> :
        RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsForce_Position_Move_Pose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsForce_Position_Move_Pose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_MOVE_POSE_CUSTOM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_MOVE_POSE_CUSTOM 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsForce_Position_Move_Pose_Custom.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose_Custom>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose_Custom
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_wire_size
         */
        static const size_t max_wire_bytes = 64;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose_Custom<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose_Custom<T>::codec_identity =
        "UWVMROS1_85e4ff181a274b8e87937ae0eaa56b94de2b7d524caf3f6fc89c0d33a487c1bd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose_Custom<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsForce_Position_Move_Pose_Custom.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose_Custom> :
        RecordMetadata_Ros1Rm_msgsForce_Position_Move_Pose_Custom<uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose_Custom>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsForce_Position_Move_Pose_Custom transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose_Custom const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsForce_Position_Move_Pose_Custom.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsForce_Position_Move_Pose_Custom& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Force_Position_Move_Pose_Custom_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_FORCE_POSITION_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsForce_Position_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsForce_Position_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsForce_Position_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_State_wire_size
         */
        static const size_t max_wire_bytes = 75;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Force_Position_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsForce_Position_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsForce_Position_State<T>::codec_identity =
        "UWVMROS1_8b817fc0422a9dcfc91e51ade9e0fc9d1d44ed315d9b813eaf88cf88d889b367";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsForce_Position_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsForce_Position_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Force_Position_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsForce_Position_State> : RecordMetadata_Ros1Rm_msgsForce_Position_State<uwvm_custom::Ros1Rm_msgsForce_Position_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsForce_Position_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsForce_Position_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Force_Position_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Force_Position_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Force_Position_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsForce_Position_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Force_Position_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsForce_Position_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Force_Position_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GETARMSTATE_COMMAND
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GETARMSTATE_COMMAND 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsGetArmState_Command.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsGetArmState_Command>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsGetArmState_Command
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_GetArmState_Command_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_GetArmState_Command_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsGetArmState_Command<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsGetArmState_Command<T>::codec_identity =
        "UWVMROS1_ae8d3621dd3742fc96f2dd06907f546f1def2e1d91cb2b652d4f7fc499755d4b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsGetArmState_Command<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsGetArmState_Command.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_GetArmState_Command_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsGetArmState_Command> : RecordMetadata_Ros1Rm_msgsGetArmState_Command<uwvm_custom::Ros1Rm_msgsGetArmState_Command>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsGetArmState_Command transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_GetArmState_Command_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsGetArmState_Command const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_GetArmState_Command_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_GetArmState_Command_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_GetArmState_Command_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsGetArmState_Command.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_GetArmState_Command_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsGetArmState_Command& out)
        {
            return !roswasmc_bounded_1_rm_msgs_GetArmState_Command_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GET_TCP_MASTER_LIST_PARAM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GET_TCP_MASTER_LIST_PARAM 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsGet_TCP_Master_List_Param.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsGet_TCP_Master_List_Param>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsGet_TCP_Master_List_Param
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_wire_size
         */
        static const size_t max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsGet_TCP_Master_List_Param<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsGet_TCP_Master_List_Param<T>::codec_identity =
        "UWVMROS1_8a8b20ec793a537927ce7190694ca820648b6492822a8284e2e072ea68a2ad00";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsGet_TCP_Master_List_Param<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsGet_TCP_Master_List_Param.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsGet_TCP_Master_List_Param> :
        RecordMetadata_Ros1Rm_msgsGet_TCP_Master_List_Param<uwvm_custom::Ros1Rm_msgsGet_TCP_Master_List_Param>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsGet_TCP_Master_List_Param transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsGet_TCP_Master_List_Param const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsGet_TCP_Master_List_Param.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsGet_TCP_Master_List_Param& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Get_TCP_Master_List_Param_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GETTRAJECTORYLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GETTRAJECTORYLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsGettrajectorylist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsGettrajectorylist>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsGettrajectorylist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Gettrajectorylist_wire_size
         */
        static const size_t max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Gettrajectorylist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsGettrajectorylist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsGettrajectorylist<T>::codec_identity =
        "UWVMROS1_da19e810ea29adcd43132897a49c6445e61cd18d1f06783162857b25b8c2cbe0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsGettrajectorylist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsGettrajectorylist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Gettrajectorylist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsGettrajectorylist> : RecordMetadata_Ros1Rm_msgsGettrajectorylist<uwvm_custom::Ros1Rm_msgsGettrajectorylist>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsGettrajectorylist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Gettrajectorylist_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsGettrajectorylist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Gettrajectorylist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Gettrajectorylist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Gettrajectorylist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsGettrajectorylist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Gettrajectorylist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsGettrajectorylist& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Gettrajectorylist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GRIPPER_PICK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GRIPPER_PICK 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsGripper_Pick.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsGripper_Pick>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsGripper_Pick
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Gripper_Pick_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Gripper_Pick_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsGripper_Pick<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsGripper_Pick<T>::codec_identity = "UWVMROS1_cd54942d53ad8167aaa7f2cfe1d0d4e6ad1092d015d59deff29080fa70a9a7a9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsGripper_Pick<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsGripper_Pick.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Gripper_Pick_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsGripper_Pick> : RecordMetadata_Ros1Rm_msgsGripper_Pick<uwvm_custom::Ros1Rm_msgsGripper_Pick>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsGripper_Pick transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Gripper_Pick_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsGripper_Pick const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Gripper_Pick_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Gripper_Pick_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Gripper_Pick_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsGripper_Pick.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Gripper_Pick_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsGripper_Pick& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Gripper_Pick_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GRIPPER_SET
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_GRIPPER_SET 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsGripper_Set.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsGripper_Set>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsGripper_Set
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Gripper_Set_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Gripper_Set_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsGripper_Set<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsGripper_Set<T>::codec_identity = "UWVMROS1_6095cdd3c0ac57ed78df3676ecc946e6cdc6ff48404dc7f205e1da3efeecabe3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsGripper_Set<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsGripper_Set.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Gripper_Set_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsGripper_Set> : RecordMetadata_Ros1Rm_msgsGripper_Set<uwvm_custom::Ros1Rm_msgsGripper_Set>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsGripper_Set transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Gripper_Set_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsGripper_Set const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Gripper_Set_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Gripper_Set_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Gripper_Set_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsGripper_Set.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Gripper_Set_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsGripper_Set& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Gripper_Set_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_ANGLE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_ANGLE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsHand_Angle.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsHand_Angle>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsHand_Angle
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Angle_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Hand_Angle_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsHand_Angle<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsHand_Angle<T>::codec_identity = "UWVMROS1_9d1bf1c63d0cd9feae75492e0610bd9f261bef5d9b774f042534ac5ff6b2ba48";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsHand_Angle<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsHand_Angle.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Angle_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsHand_Angle> : RecordMetadata_Ros1Rm_msgsHand_Angle<uwvm_custom::Ros1Rm_msgsHand_Angle>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsHand_Angle transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Angle_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsHand_Angle const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Hand_Angle_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Hand_Angle_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Hand_Angle_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsHand_Angle.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Angle_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsHand_Angle& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Hand_Angle_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_FORCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_FORCE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsHand_Force.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsHand_Force>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsHand_Force
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Force_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Hand_Force_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsHand_Force<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsHand_Force<T>::codec_identity = "UWVMROS1_530176ac18800838e1648e67dbc6f4ca83101e333adcae1b44dbf749ffafd71c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsHand_Force<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsHand_Force.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Force_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsHand_Force> : RecordMetadata_Ros1Rm_msgsHand_Force<uwvm_custom::Ros1Rm_msgsHand_Force>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsHand_Force transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Force_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsHand_Force const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Hand_Force_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Hand_Force_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Hand_Force_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsHand_Force.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Force_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsHand_Force& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Hand_Force_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_POSTURE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_POSTURE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsHand_Posture.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsHand_Posture>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsHand_Posture
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Posture_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Hand_Posture_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsHand_Posture<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsHand_Posture<T>::codec_identity = "UWVMROS1_0272a7a2465f613518f7bbcce5f31395faebe4b7f54c77bed3a076f0b9eb5785";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsHand_Posture<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsHand_Posture.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Posture_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsHand_Posture> : RecordMetadata_Ros1Rm_msgsHand_Posture<uwvm_custom::Ros1Rm_msgsHand_Posture>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsHand_Posture transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Posture_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsHand_Posture const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Hand_Posture_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Hand_Posture_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Hand_Posture_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsHand_Posture.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Posture_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsHand_Posture& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Hand_Posture_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_SEQ
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_SEQ 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsHand_Seq.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsHand_Seq>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsHand_Seq
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Seq_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Hand_Seq_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsHand_Seq<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsHand_Seq<T>::codec_identity = "UWVMROS1_f6fa34fdf69af4115af9d275026c35614ececda0084ac45bee579bae43f2d3f0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsHand_Seq<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsHand_Seq.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Seq_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsHand_Seq> : RecordMetadata_Ros1Rm_msgsHand_Seq<uwvm_custom::Ros1Rm_msgsHand_Seq>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsHand_Seq transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Seq_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsHand_Seq const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Hand_Seq_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Hand_Seq_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Hand_Seq_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsHand_Seq.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Seq_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsHand_Seq& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Hand_Seq_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_SPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_SPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsHand_Speed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsHand_Speed>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsHand_Speed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Speed_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Hand_Speed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsHand_Speed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsHand_Speed<T>::codec_identity = "UWVMROS1_f21faf03c07ab57120835321e699b27ec6f86e462930e83499bef2a155f827ca";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsHand_Speed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsHand_Speed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Speed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsHand_Speed> : RecordMetadata_Ros1Rm_msgsHand_Speed<uwvm_custom::Ros1Rm_msgsHand_Speed>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsHand_Speed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Speed_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsHand_Speed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Hand_Speed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Hand_Speed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Hand_Speed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsHand_Speed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Speed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsHand_Speed& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Hand_Speed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_STATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_HAND_STATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsHand_Status.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsHand_Status>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsHand_Status
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Status_wire_size
         */
        static const size_t max_wire_bytes = 50;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Hand_Status_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsHand_Status<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsHand_Status<T>::codec_identity = "UWVMROS1_2ff89c76aa0fc5924535b7de55609d74847aac91fc2ab8145ec7b8d958260ad8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsHand_Status<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsHand_Status.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Hand_Status_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsHand_Status> : RecordMetadata_Ros1Rm_msgsHand_Status<uwvm_custom::Ros1Rm_msgsHand_Status>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsHand_Status transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Status_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsHand_Status const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Hand_Status_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Hand_Status_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Hand_Status_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsHand_Status.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Hand_Status_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsHand_Status& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Hand_Status_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_IO_UPDATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_IO_UPDATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsIO_Update.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsIO_Update>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsIO_Update
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_IO_Update_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_IO_Update_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsIO_Update<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsIO_Update<T>::codec_identity = "UWVMROS1_6941f85ba773344ca73a917cfef68d8a6a99f67ff76bdf6eea4b9b1a7d1ddba7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsIO_Update<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsIO_Update.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_IO_Update_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsIO_Update> : RecordMetadata_Ros1Rm_msgsIO_Update<uwvm_custom::Ros1Rm_msgsIO_Update>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsIO_Update transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_IO_Update_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsIO_Update const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_IO_Update_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_IO_Update_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_IO_Update_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsIO_Update.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_IO_Update_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsIO_Update& out)
        {
            return !roswasmc_bounded_1_rm_msgs_IO_Update_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINTPOS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINTPOS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJointPos.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJointPos>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJointPos
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_JointPos_wire_size
         */
        static const size_t max_wire_bytes = 72;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_JointPos_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJointPos<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJointPos<T>::codec_identity = "UWVMROS1_55bb4d07f6901dfd381902cb71f0bfa8bb2e34b70e7c8cae455b68a8b57e5623";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJointPos<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJointPos.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_JointPos_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJointPos> : RecordMetadata_Ros1Rm_msgsJointPos<uwvm_custom::Ros1Rm_msgsJointPos>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJointPos transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_JointPos_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJointPos const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_JointPos_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_JointPos_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_JointPos_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJointPos.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_JointPos_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJointPos& out)
        {
            return !roswasmc_bounded_1_rm_msgs_JointPos_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINTPOSCUSTOM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINTPOSCUSTOM 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJointPosCustom.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJointPosCustom>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJointPosCustom
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_JointPosCustom_wire_size
         */
        static const size_t max_wire_bytes = 75;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_JointPosCustom_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJointPosCustom<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJointPosCustom<T>::codec_identity = "UWVMROS1_d4935ad5910358dea6a8902e472c01f413574a5db91a57e4e54dee65a0bac676";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJointPosCustom<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJointPosCustom.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_JointPosCustom_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJointPosCustom> : RecordMetadata_Ros1Rm_msgsJointPosCustom<uwvm_custom::Ros1Rm_msgsJointPosCustom>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJointPosCustom transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_JointPosCustom_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJointPosCustom const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_JointPosCustom_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_JointPosCustom_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_JointPosCustom_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJointPosCustom.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_JointPosCustom_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJointPosCustom& out)
        {
            return !roswasmc_bounded_1_rm_msgs_JointPosCustom_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_CURRENT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_CURRENT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Current.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Current>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Current
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Current_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Current_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Current<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Current<T>::codec_identity = "UWVMROS1_bc39b37164a42e1937db5e4404b2a9c869083a3b81e84f5d7beb34de93e04b7c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Current<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Current.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Current_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Current> : RecordMetadata_Ros1Rm_msgsJoint_Current<uwvm_custom::Ros1Rm_msgsJoint_Current>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Current transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Current_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Current const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Current_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Current_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Current_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Current.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Current_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Current& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Current_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_EN_FLAG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_EN_FLAG 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_En_Flag.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_En_Flag>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_En_Flag
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_En_Flag_wire_size
         */
        static const size_t max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_En_Flag_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_En_Flag<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_En_Flag<T>::codec_identity = "UWVMROS1_a5fc892ad2eb36348a3b49588393c82773299a8f7a8d73079c338864430e58b8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_En_Flag<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_En_Flag.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_En_Flag_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_En_Flag> : RecordMetadata_Ros1Rm_msgsJoint_En_Flag<uwvm_custom::Ros1Rm_msgsJoint_En_Flag>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_En_Flag transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_En_Flag_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_En_Flag const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_En_Flag_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_En_Flag_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_En_Flag_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_En_Flag.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_En_Flag_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_En_Flag& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_En_Flag_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_ENABLE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_ENABLE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Enable.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Enable>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Enable
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Enable_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Enable_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Enable<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Enable<T>::codec_identity = "UWVMROS1_0b54d5338f0c38491ecf9f0e9e6d7963384f45666ee235b18ae24649fa99bfb6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Enable<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Enable.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Enable_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Enable> : RecordMetadata_Ros1Rm_msgsJoint_Enable<uwvm_custom::Ros1Rm_msgsJoint_Enable>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Enable transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Enable_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Enable const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Enable_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Enable_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Enable_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Enable.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Enable_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Enable& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Enable_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_ERROR_CODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_ERROR_CODE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Error_Code.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Error_Code>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Error_Code
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Error_Code_wire_size
         */
        static const size_t max_wire_bytes = 36;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Error_Code_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Error_Code<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Error_Code<T>::codec_identity =
        "UWVMROS1_76bc10f3795648437b5021e1a3b7087d11dc1d85ddb429f6f3c87c7f00bed361";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Error_Code<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Error_Code.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Error_Code_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Error_Code> : RecordMetadata_Ros1Rm_msgsJoint_Error_Code<uwvm_custom::Ros1Rm_msgsJoint_Error_Code>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Error_Code transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Error_Code_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Error_Code const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Error_Code_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Error_Code_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Error_Code_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Error_Code.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Error_Code_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Error_Code& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Error_Code_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_MAX_SPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_MAX_SPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Max_Speed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Max_Speed>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Max_Speed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Max_Speed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Max_Speed<T>::codec_identity =
        "UWVMROS1_808b0661dec52a0bb942426d3cff85fa3cd025ea5e18efde14b7c3cbf12212fb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Max_Speed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Max_Speed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Max_Speed> : RecordMetadata_Ros1Rm_msgsJoint_Max_Speed<uwvm_custom::Ros1Rm_msgsJoint_Max_Speed>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Max_Speed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Max_Speed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Max_Speed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Max_Speed& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Max_Speed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_POSEEULER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_POSEEULER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_PoseEuler.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_PoseEuler>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_PoseEuler
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_PoseEuler<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_PoseEuler<T>::codec_identity =
        "UWVMROS1_5145fe7bbcebd72b80dbb5b09cb8e736049951d5c8011af97a05bfaccd1638e1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_PoseEuler<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_PoseEuler.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_PoseEuler> : RecordMetadata_Ros1Rm_msgsJoint_PoseEuler<uwvm_custom::Ros1Rm_msgsJoint_PoseEuler>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_PoseEuler transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_PoseEuler const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_PoseEuler.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_PoseEuler& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_PoseEuler_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_SPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_SPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Speed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Speed>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Speed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Speed_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Speed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Speed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Speed<T>::codec_identity = "UWVMROS1_fbc6add09d420c1cf11af125de1f13a40586dca5e374bd8cd970289468e6140f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Speed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Speed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Speed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Speed> : RecordMetadata_Ros1Rm_msgsJoint_Speed<uwvm_custom::Ros1Rm_msgsJoint_Speed>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Speed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Speed_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Speed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Speed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Speed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Speed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Speed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Speed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Speed& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Speed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_STEP
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_STEP 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Step.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Step>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Step
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Step_wire_size
         */
        static const size_t max_wire_bytes = 9;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Step_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Step<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Step<T>::codec_identity = "UWVMROS1_2f8f1683b5b2734e9fc105f61ed848e905a33abeb9e5f09028ea834991d4000b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Step<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Step.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Step_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Step> : RecordMetadata_Ros1Rm_msgsJoint_Step<uwvm_custom::Ros1Rm_msgsJoint_Step>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Step transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Step_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Step const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Step_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Step_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Step_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Step.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Step_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Step& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Step_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_TEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_TEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Teach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Teach>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Teach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Teach_wire_size
         */
        static const size_t max_wire_bytes = 264;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Teach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Teach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Teach<T>::codec_identity = "UWVMROS1_6191ef24dc181055dd0fb597fec470a8b583791e0a67edd14f3eb7a6fdac1717";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Teach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Teach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Teach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Teach> : RecordMetadata_Ros1Rm_msgsJoint_Teach<uwvm_custom::Ros1Rm_msgsJoint_Teach>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Teach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Teach_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Teach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Teach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Teach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Teach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Teach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Teach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Teach& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Teach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_TEMPERATURE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_TEMPERATURE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Temperature.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Temperature>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Temperature
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Temperature_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Temperature_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Temperature<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Temperature<T>::codec_identity =
        "UWVMROS1_6c3dd6374ed98e575b6e4db3a15691bdde6e174c9aa6e15ce5d2ada37e79507e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Temperature<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Temperature.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Temperature_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Temperature> : RecordMetadata_Ros1Rm_msgsJoint_Temperature<uwvm_custom::Ros1Rm_msgsJoint_Temperature>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Temperature transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Temperature_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Temperature const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Temperature_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Temperature_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Temperature_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Temperature.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Temperature_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Temperature& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Temperature_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_VOLTAGE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINT_VOLTAGE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJoint_Voltage.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJoint_Voltage>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJoint_Voltage
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Voltage_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Joint_Voltage_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJoint_Voltage<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJoint_Voltage<T>::codec_identity = "UWVMROS1_45e56529f780d399f86c70e4303dc63e49760f1247124a866d7830a656bf830d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJoint_Voltage<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJoint_Voltage.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Joint_Voltage_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJoint_Voltage> : RecordMetadata_Ros1Rm_msgsJoint_Voltage<uwvm_custom::Ros1Rm_msgsJoint_Voltage>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJoint_Voltage transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Voltage_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJoint_Voltage const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Joint_Voltage_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Joint_Voltage_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Joint_Voltage_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJoint_Voltage.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Joint_Voltage_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJoint_Voltage& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Joint_Voltage_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINTVERSION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_JOINTVERSION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsJointversion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsJointversion>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsJointversion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Jointversion_wire_size
         */
        static const size_t max_wire_bytes = 1820;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Jointversion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsJointversion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsJointversion<T>::codec_identity = "UWVMROS1_e49b2595327fcedf6a8a15f690deac2f4809eefb25957cf2c0ac9d7117579e1e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsJointversion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsJointversion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Jointversion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsJointversion> : RecordMetadata_Ros1Rm_msgsJointversion<uwvm_custom::Ros1Rm_msgsJointversion>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsJointversion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Jointversion_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsJointversion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Jointversion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Jointversion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Jointversion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsJointversion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Jointversion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsJointversion& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Jointversion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsLiftState.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsLiftState>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsLiftState
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_LiftState_wire_size
         */
        static const size_t max_wire_bytes = 7;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_LiftState_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsLiftState<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsLiftState<T>::codec_identity = "UWVMROS1_c09f03491729bb1f271578da29f8b68fba3da3e57a3b15dc1c835373d2406aea";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsLiftState<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsLiftState.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_LiftState_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsLiftState> : RecordMetadata_Ros1Rm_msgsLiftState<uwvm_custom::Ros1Rm_msgsLiftState>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsLiftState transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_LiftState_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsLiftState const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_LiftState_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_LiftState_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_LiftState_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsLiftState.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_LiftState_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsLiftState& out)
        {
            return !roswasmc_bounded_1_rm_msgs_LiftState_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFT_HEIGHT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFT_HEIGHT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsLift_Height.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsLift_Height>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsLift_Height
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Lift_Height_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Lift_Height_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsLift_Height<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsLift_Height<T>::codec_identity = "UWVMROS1_91f1e27a75ec4d5b8e9a677e5a3eb0493cc19067019121a2d6397a87ebff5c61";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsLift_Height<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsLift_Height.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Lift_Height_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsLift_Height> : RecordMetadata_Ros1Rm_msgsLift_Height<uwvm_custom::Ros1Rm_msgsLift_Height>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsLift_Height transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Lift_Height_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsLift_Height const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Lift_Height_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Lift_Height_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Lift_Height_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsLift_Height.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Lift_Height_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsLift_Height& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Lift_Height_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFT_IN_POSITION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFT_IN_POSITION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsLift_In_Position.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsLift_In_Position>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsLift_In_Position
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Lift_In_Position_wire_size
         */
        static const size_t max_wire_bytes = 263;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Lift_In_Position_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsLift_In_Position<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsLift_In_Position<T>::codec_identity =
        "UWVMROS1_eeb51df403cc708bf439f6a54b6d010981ad3d7919fd1d6cea84a77935ced787";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsLift_In_Position<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsLift_In_Position.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Lift_In_Position_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsLift_In_Position> : RecordMetadata_Ros1Rm_msgsLift_In_Position<uwvm_custom::Ros1Rm_msgsLift_In_Position>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsLift_In_Position transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Lift_In_Position_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsLift_In_Position const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Lift_In_Position_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Lift_In_Position_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Lift_In_Position_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsLift_In_Position.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Lift_In_Position_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsLift_In_Position& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Lift_In_Position_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFT_SPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_LIFT_SPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsLift_Speed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsLift_Speed>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsLift_Speed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Lift_Speed_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Lift_Speed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsLift_Speed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsLift_Speed<T>::codec_identity = "UWVMROS1_19aa9a2cffa38998503715ba68a5281d58933a12b16e1a2bfca7c8f96dcca0a8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsLift_Speed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsLift_Speed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Lift_Speed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsLift_Speed> : RecordMetadata_Ros1Rm_msgsLift_Speed<uwvm_custom::Ros1Rm_msgsLift_Speed>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsLift_Speed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Lift_Speed_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsLift_Speed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Lift_Speed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Lift_Speed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Lift_Speed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsLift_Speed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Lift_Speed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsLift_Speed& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Lift_Speed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MANUAL_SET_FORCE_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MANUAL_SET_FORCE_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsManual_Set_Force_Pose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsManual_Set_Force_Pose>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsManual_Set_Force_Pose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_wire_size
         */
        static const size_t max_wire_bytes = 392;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsManual_Set_Force_Pose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsManual_Set_Force_Pose<T>::codec_identity =
        "UWVMROS1_215450b7ec8f49bc87aea83627cc98d887c29b3a3c6377eee217d64eac2f3ea0";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsManual_Set_Force_Pose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsManual_Set_Force_Pose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsManual_Set_Force_Pose> : RecordMetadata_Ros1Rm_msgsManual_Set_Force_Pose<uwvm_custom::Ros1Rm_msgsManual_Set_Force_Pose>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsManual_Set_Force_Pose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsManual_Set_Force_Pose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsManual_Set_Force_Pose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsManual_Set_Force_Pose& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Manual_Set_Force_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MASTERNAME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MASTERNAME 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsMastername.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsMastername>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsMastername
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Mastername_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Mastername_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsMastername<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsMastername<T>::codec_identity = "UWVMROS1_a10623bdcabd2f64e702b69c6549bdb219796e9516dc9cf505070036353cc59f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsMastername<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsMastername.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Mastername_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsMastername> : RecordMetadata_Ros1Rm_msgsMastername<uwvm_custom::Ros1Rm_msgsMastername>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsMastername transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Mastername_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsMastername const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Mastername_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Mastername_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Mastername_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsMastername.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Mastername_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsMastername& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Mastername_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MODBUSREADDATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MODBUSREADDATA 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsModbusreaddata.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsModbusreaddata>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsModbusreaddata
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Modbusreaddata_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Modbusreaddata_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsModbusreaddata<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsModbusreaddata<T>::codec_identity = "UWVMROS1_107972f1e16052d7b327932447d7d704c7888041f715105f30a416fbf429dd20";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsModbusreaddata<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsModbusreaddata.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Modbusreaddata_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsModbusreaddata> : RecordMetadata_Ros1Rm_msgsModbusreaddata<uwvm_custom::Ros1Rm_msgsModbusreaddata>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsModbusreaddata transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Modbusreaddata_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsModbusreaddata const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Modbusreaddata_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Modbusreaddata_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Modbusreaddata_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsModbusreaddata.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Modbusreaddata_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsModbusreaddata& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Modbusreaddata_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MODBUSTCPMASTERINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MODBUSTCPMASTERINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsModbustcpmasterinfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsModbustcpmasterinfo>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsModbustcpmasterinfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_wire_size
         */
        static const size_t max_wire_bytes = 524;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsModbustcpmasterinfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsModbustcpmasterinfo<T>::codec_identity =
        "UWVMROS1_7f45c814efbc1268c68b7955f3c077f319f46ba4dc532f36914ccd3c55420680";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsModbustcpmasterinfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsModbustcpmasterinfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsModbustcpmasterinfo> : RecordMetadata_Ros1Rm_msgsModbustcpmasterinfo<uwvm_custom::Ros1Rm_msgsModbustcpmasterinfo>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsModbustcpmasterinfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsModbustcpmasterinfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsModbustcpmasterinfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsModbustcpmasterinfo& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Modbustcpmasterinfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MODBUSTCPMASTERLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MODBUSTCPMASTERLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsModbustcpmasterlist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsModbustcpmasterlist>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsModbustcpmasterlist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_wire_size
         */
        static const size_t max_wire_bytes = 8388;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsModbustcpmasterlist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsModbustcpmasterlist<T>::codec_identity =
        "UWVMROS1_a656fe16126d96dc7de6bdb80d60087d9ceb3f2680e403437283a1eaee3b5eb1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsModbustcpmasterlist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsModbustcpmasterlist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsModbustcpmasterlist> : RecordMetadata_Ros1Rm_msgsModbustcpmasterlist<uwvm_custom::Ros1Rm_msgsModbustcpmasterlist>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsModbustcpmasterlist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsModbustcpmasterlist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsModbustcpmasterlist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsModbustcpmasterlist& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Modbustcpmasterlist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEC
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEC 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsMoveC.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsMoveC>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsMoveC
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_MoveC_wire_size
         */
        static const size_t max_wire_bytes = 119;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_MoveC_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsMoveC<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsMoveC<T>::codec_identity = "UWVMROS1_a7c9838edb369a30428d4225ce45305e72ddd5a9a315147dfa47288e3a367a69";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsMoveC<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsMoveC.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveC_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsMoveC> : RecordMetadata_Ros1Rm_msgsMoveC<uwvm_custom::Ros1Rm_msgsMoveC>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsMoveC transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_MoveC_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsMoveC const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_MoveC_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_MoveC_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_MoveC_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsMoveC.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_MoveC_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsMoveC& out)
        {
            return !roswasmc_bounded_1_rm_msgs_MoveC_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEJ
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEJ 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsMoveJ.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsMoveJ>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsMoveJ
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_MoveJ_wire_size
         */
        static const size_t max_wire_bytes = 73;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_MoveJ_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsMoveJ<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsMoveJ<T>::codec_identity = "UWVMROS1_b06164ba46d0b515ea1b853f6e91af08ac358839fef3174797ba097b2f4a0d93";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsMoveJ<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsMoveJ.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveJ_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsMoveJ> : RecordMetadata_Ros1Rm_msgsMoveJ<uwvm_custom::Ros1Rm_msgsMoveJ>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsMoveJ transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_MoveJ_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsMoveJ const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_MoveJ_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_MoveJ_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_MoveJ_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsMoveJ.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_MoveJ_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsMoveJ& out)
        {
            return !roswasmc_bounded_1_rm_msgs_MoveJ_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEJ_P
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEJ_P 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsMoveJ_P.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsMoveJ_P>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsMoveJ_P
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_MoveJ_P_wire_size
         */
        static const size_t max_wire_bytes = 61;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_MoveJ_P_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsMoveJ_P<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsMoveJ_P<T>::codec_identity = "UWVMROS1_e2f03dd50bed12ea4e61705e6cb09bfb224e8dd92b02a0bacf3dfeb253f72b65";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsMoveJ_P<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsMoveJ_P.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveJ_P_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsMoveJ_P> : RecordMetadata_Ros1Rm_msgsMoveJ_P<uwvm_custom::Ros1Rm_msgsMoveJ_P>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsMoveJ_P transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_MoveJ_P_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsMoveJ_P const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_MoveJ_P_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_MoveJ_P_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_MoveJ_P_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsMoveJ_P.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_MoveJ_P_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsMoveJ_P& out)
        {
            return !roswasmc_bounded_1_rm_msgs_MoveJ_P_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVEL 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsMoveL.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsMoveL>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsMoveL
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_MoveL_wire_size
         */
        static const size_t max_wire_bytes = 61;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_MoveL_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsMoveL<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsMoveL<T>::codec_identity = "UWVMROS1_2816f8d5ff4be8578d2dfa17425b165a4263456573dfd23ade5bd679a685cd49";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsMoveL<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsMoveL.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_MoveL_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsMoveL> : RecordMetadata_Ros1Rm_msgsMoveL<uwvm_custom::Ros1Rm_msgsMoveL>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsMoveL transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_MoveL_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsMoveL const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_MoveL_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_MoveL_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_MoveL_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsMoveL.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_MoveL_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsMoveL& out)
        {
            return !roswasmc_bounded_1_rm_msgs_MoveL_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVELOFFSET
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_MOVELOFFSET 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsMoveloffset.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsMoveloffset>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsMoveloffset
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Moveloffset_wire_size
         */
        static const size_t max_wire_bytes = 67;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Moveloffset_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsMoveloffset<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsMoveloffset<T>::codec_identity = "UWVMROS1_886f3c1a20875ee75df0a4e50fd4dd0c3ec47ffd7bc3f868ac90ad9e7f0dec28";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsMoveloffset<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsMoveloffset.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Moveloffset_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsMoveloffset> : RecordMetadata_Ros1Rm_msgsMoveloffset<uwvm_custom::Ros1Rm_msgsMoveloffset>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsMoveloffset transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Moveloffset_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsMoveloffset const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Moveloffset_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Moveloffset_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Moveloffset_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsMoveloffset.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Moveloffset_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsMoveloffset& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Moveloffset_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ORT_TEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_ORT_TEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsOrt_Teach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsOrt_Teach>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsOrt_Teach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Ort_Teach_wire_size
         */
        static const size_t max_wire_bytes = 522;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Ort_Teach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsOrt_Teach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsOrt_Teach<T>::codec_identity = "UWVMROS1_42dfe53597ed6f1ba5ffaa6042babc85f1a5ff43e2880f2c6fb383211ebed497";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsOrt_Teach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsOrt_Teach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Ort_Teach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsOrt_Teach> : RecordMetadata_Ros1Rm_msgsOrt_Teach<uwvm_custom::Ros1Rm_msgsOrt_Teach>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsOrt_Teach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Ort_Teach_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsOrt_Teach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Ort_Teach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Ort_Teach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Ort_Teach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsOrt_Teach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Ort_Teach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsOrt_Teach& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Ort_Teach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_PLAN_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_PLAN_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsPlan_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsPlan_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsPlan_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Plan_State_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Plan_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsPlan_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsPlan_State<T>::codec_identity = "UWVMROS1_a9ac3bd0f8c096d42c8a5852fb71d9aac18315645cf0fb4669c38d6371fb2ba9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsPlan_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsPlan_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Plan_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsPlan_State> : RecordMetadata_Ros1Rm_msgsPlan_State<uwvm_custom::Ros1Rm_msgsPlan_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsPlan_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Plan_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsPlan_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Plan_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Plan_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Plan_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsPlan_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Plan_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsPlan_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Plan_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_POS_TEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_POS_TEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsPos_Teach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsPos_Teach>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsPos_Teach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Pos_Teach_wire_size
         */
        static const size_t max_wire_bytes = 522;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Pos_Teach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsPos_Teach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsPos_Teach<T>::codec_identity = "UWVMROS1_6cf8ac67bafa4470a0a338053f3bef98e6c4c97cc508fbade9ebe590e4bf691a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsPos_Teach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsPos_Teach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Pos_Teach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsPos_Teach> : RecordMetadata_Ros1Rm_msgsPos_Teach<uwvm_custom::Ros1Rm_msgsPos_Teach>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsPos_Teach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Pos_Teach_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsPos_Teach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Pos_Teach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Pos_Teach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Pos_Teach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsPos_Teach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Pos_Teach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsPos_Teach& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Pos_Teach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_PROGRAMRUNSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_PROGRAMRUNSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsProgramrunstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsProgramrunstate>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsProgramrunstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Programrunstate_wire_size
         */
        static const size_t max_wire_bytes = 164;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Programrunstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsProgramrunstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsProgramrunstate<T>::codec_identity =
        "UWVMROS1_33f9f3bf9c238c3b304fdb6f8394ff1efd76d312dafb908a2e39260dadd1434a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsProgramrunstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsProgramrunstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Programrunstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsProgramrunstate> : RecordMetadata_Ros1Rm_msgsProgramrunstate<uwvm_custom::Ros1Rm_msgsProgramrunstate>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsProgramrunstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Programrunstate_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsProgramrunstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Programrunstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Programrunstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Programrunstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsProgramrunstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Programrunstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsProgramrunstate& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Programrunstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RS485_MODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RS485_MODE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRS485_Mode.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRS485_Mode>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRS485_Mode
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_RS485_Mode_wire_size
         */
        static const size_t max_wire_bytes = 10;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_RS485_Mode_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRS485_Mode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRS485_Mode<T>::codec_identity = "UWVMROS1_47bf8f6bb74160b4acfea2fe14a2d75f35a0232f11419cda7c0d2333aab31424";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRS485_Mode<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRS485_Mode.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_RS485_Mode_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRS485_Mode> : RecordMetadata_Ros1Rm_msgsRS485_Mode<uwvm_custom::Ros1Rm_msgsRS485_Mode>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRS485_Mode transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_RS485_Mode_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRS485_Mode const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_RS485_Mode_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_RS485_Mode_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_RS485_Mode_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRS485_Mode.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_RS485_Mode_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRS485_Mode& out)
        {
            return !roswasmc_bounded_1_rm_msgs_RS485_Mode_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RS485PARAMS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RS485PARAMS 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRS485params.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRS485params>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRS485params
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_RS485params_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_RS485params_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRS485params<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRS485params<T>::codec_identity = "UWVMROS1_7c8cce477352cfa8e2647042f8734dad2ed44aa35f51701d528cd0d9931f4eec";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRS485params<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRS485params.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_RS485params_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRS485params> : RecordMetadata_Ros1Rm_msgsRS485params<uwvm_custom::Ros1Rm_msgsRS485params>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRS485params transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_RS485params_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRS485params const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_RS485params_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_RS485params_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_RS485params_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRS485params.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_RS485params_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRS485params& out)
        {
            return !roswasmc_bounded_1_rm_msgs_RS485params_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_READ_MODBUSRTU
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_READ_MODBUSRTU 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRead_ModbusRTU.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRead_ModbusRTU>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRead_ModbusRTU
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRead_ModbusRTU<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRead_ModbusRTU<T>::codec_identity = "UWVMROS1_a81a5257d7f140e3d988d283c4fa2fdabfda43ca1d0c80f5dfad3f498a776969";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRead_ModbusRTU<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRead_ModbusRTU.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRead_ModbusRTU> : RecordMetadata_Ros1Rm_msgsRead_ModbusRTU<uwvm_custom::Ros1Rm_msgsRead_ModbusRTU>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRead_ModbusRTU transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRead_ModbusRTU const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRead_ModbusRTU.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRead_ModbusRTU& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Read_ModbusRTU_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_READ_REGISTER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_READ_REGISTER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRead_Register.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRead_Register>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRead_Register
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Read_Register_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Read_Register_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRead_Register<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRead_Register<T>::codec_identity = "UWVMROS1_917ea5dfecf096965284116556b7d6e34011714da4cb369fbf3d9a497c630d4f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRead_Register<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRead_Register.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Read_Register_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRead_Register> : RecordMetadata_Ros1Rm_msgsRead_Register<uwvm_custom::Ros1Rm_msgsRead_Register>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRead_Register transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Read_Register_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRead_Register const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Read_Register_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Read_Register_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Read_Register_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRead_Register.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Read_Register_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRead_Register& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Read_Register_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_READ_TCPANDRTU
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_READ_TCPANDRTU 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRead_TCPandRTU.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRead_TCPandRTU>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRead_TCPandRTU
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_wire_size
         */
        static const size_t max_wire_bytes = 540;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRead_TCPandRTU<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRead_TCPandRTU<T>::codec_identity = "UWVMROS1_6380b88d7659fa5c4acc02f200882400b978c960d948edc551359a74bd3376b9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRead_TCPandRTU<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRead_TCPandRTU.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRead_TCPandRTU> : RecordMetadata_Ros1Rm_msgsRead_TCPandRTU<uwvm_custom::Ros1Rm_msgsRead_TCPandRTU>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRead_TCPandRTU transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRead_TCPandRTU const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRead_TCPandRTU.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRead_TCPandRTU& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Read_TCPandRTU_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_REGISTER_DATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_REGISTER_DATA 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRegister_Data.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRegister_Data>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRegister_Data
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Register_Data_wire_size
         */
        static const size_t max_wire_bytes = 37;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Register_Data_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRegister_Data<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRegister_Data<T>::codec_identity = "UWVMROS1_ba1d780495f79683c483081c8326ce806edc62e8402dcc0566dc34d86b3a8867";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRegister_Data<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRegister_Data.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Register_Data_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRegister_Data> : RecordMetadata_Ros1Rm_msgsRegister_Data<uwvm_custom::Ros1Rm_msgsRegister_Data>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRegister_Data transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Register_Data_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRegister_Data const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Register_Data_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Register_Data_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Register_Data_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRegister_Data.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Register_Data_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRegister_Data& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Register_Data_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RM_PLUS_BASE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RM_PLUS_BASE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRm_Plus_Base.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRm_Plus_Base>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRm_Plus_Base
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_wire_size
         */
        static const size_t max_wire_bytes = 1597;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRm_Plus_Base<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRm_Plus_Base<T>::codec_identity = "UWVMROS1_9ca40bb3db27ce29bdb768b19fbb9d83f54894b107844c5d127c99d45702c1d6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRm_Plus_Base<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRm_Plus_Base.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRm_Plus_Base> : RecordMetadata_Ros1Rm_msgsRm_Plus_Base<uwvm_custom::Ros1Rm_msgsRm_Plus_Base>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRm_Plus_Base transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRm_Plus_Base const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRm_Plus_Base.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRm_Plus_Base& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Rm_Plus_Base_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RM_PLUS_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_RM_PLUS_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsRm_Plus_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsRm_Plus_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsRm_Plus_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_State_wire_size
         */
        static const size_t max_wire_bytes = 892;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsRm_Plus_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsRm_Plus_State<T>::codec_identity = "UWVMROS1_430d17485316136f019ee6cda961a0152b7f024cb24aa235d2e048b0216f6db1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsRm_Plus_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsRm_Plus_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsRm_Plus_State> : RecordMetadata_Ros1Rm_msgsRm_Plus_State<uwvm_custom::Ros1Rm_msgsRm_Plus_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsRm_Plus_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsRm_Plus_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Rm_Plus_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Rm_Plus_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Rm_Plus_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsRm_Plus_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Rm_Plus_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsRm_Plus_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Rm_Plus_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SERVO_GETANGLE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SERVO_GETANGLE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsServo_GetAngle.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsServo_GetAngle>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsServo_GetAngle
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Servo_GetAngle_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Servo_GetAngle_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsServo_GetAngle<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsServo_GetAngle<T>::codec_identity = "UWVMROS1_f3f0398034088c5c94c1551f041a808898ea8f6bdc82226ef69099be11286784";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsServo_GetAngle<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsServo_GetAngle.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Servo_GetAngle_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsServo_GetAngle> : RecordMetadata_Ros1Rm_msgsServo_GetAngle<uwvm_custom::Ros1Rm_msgsServo_GetAngle>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsServo_GetAngle transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Servo_GetAngle_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsServo_GetAngle const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Servo_GetAngle_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Servo_GetAngle_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Servo_GetAngle_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsServo_GetAngle.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Servo_GetAngle_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsServo_GetAngle& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Servo_GetAngle_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SERVO_MOVE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SERVO_MOVE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsServo_Move.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsServo_Move>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsServo_Move
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Servo_Move_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Servo_Move_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsServo_Move<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsServo_Move<T>::codec_identity = "UWVMROS1_776097952cd219d20f95b4e953dc4b0a9fbbe2652475309fd976537988f241fb";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsServo_Move<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsServo_Move.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Servo_Move_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsServo_Move> : RecordMetadata_Ros1Rm_msgsServo_Move<uwvm_custom::Ros1Rm_msgsServo_Move>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsServo_Move transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Servo_Move_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsServo_Move const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Servo_Move_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Servo_Move_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Servo_Move_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsServo_Move.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Servo_Move_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsServo_Move& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Servo_Move_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SET_FORCE_POSITION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SET_FORCE_POSITION 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsSet_Force_Position.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsSet_Force_Position>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsSet_Force_Position
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Set_Force_Position_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Set_Force_Position_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsSet_Force_Position<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsSet_Force_Position<T>::codec_identity =
        "UWVMROS1_f2837e2588cbaabc85d66b6693a18ca1581be1ec09fbb4207d6e377d00fdbf87";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsSet_Force_Position<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsSet_Force_Position.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Set_Force_Position_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsSet_Force_Position> : RecordMetadata_Ros1Rm_msgsSet_Force_Position<uwvm_custom::Ros1Rm_msgsSet_Force_Position>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsSet_Force_Position transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Set_Force_Position_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsSet_Force_Position const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Set_Force_Position_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Set_Force_Position_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Set_Force_Position_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsSet_Force_Position.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Set_Force_Position_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsSet_Force_Position& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Set_Force_Position_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SET_MODBUS_MODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SET_MODBUS_MODE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsSet_Modbus_Mode.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsSet_Modbus_Mode>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsSet_Modbus_Mode
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_wire_size
         */
        static const size_t max_wire_bytes = 272;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsSet_Modbus_Mode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsSet_Modbus_Mode<T>::codec_identity =
        "UWVMROS1_007fd5321b9c408191b697ed67ff0a439220fdabdec81e94ef1cc53b35de028e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsSet_Modbus_Mode<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsSet_Modbus_Mode.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsSet_Modbus_Mode> : RecordMetadata_Ros1Rm_msgsSet_Modbus_Mode<uwvm_custom::Ros1Rm_msgsSet_Modbus_Mode>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsSet_Modbus_Mode transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsSet_Modbus_Mode const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsSet_Modbus_Mode.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsSet_Modbus_Mode& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Set_Modbus_Mode_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SET_REALTIME_PUSH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SET_REALTIME_PUSH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsSet_Realtime_Push.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsSet_Realtime_Push>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsSet_Realtime_Push
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_wire_size
         */
        static const size_t max_wire_bytes = 276;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsSet_Realtime_Push<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsSet_Realtime_Push<T>::codec_identity =
        "UWVMROS1_aa3d4add03b4a1d307e389813bf8337b34c8260c9eb186ac5a3aabee7e344375";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsSet_Realtime_Push<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsSet_Realtime_Push.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsSet_Realtime_Push> : RecordMetadata_Ros1Rm_msgsSet_Realtime_Push<uwvm_custom::Ros1Rm_msgsSet_Realtime_Push>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsSet_Realtime_Push transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsSet_Realtime_Push const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsSet_Realtime_Push.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsSet_Realtime_Push& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Set_Realtime_Push_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SIX_FORCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SIX_FORCE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsSix_Force.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsSix_Force>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsSix_Force
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Six_Force_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Six_Force_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsSix_Force<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsSix_Force<T>::codec_identity = "UWVMROS1_16909106e846dce81f6ff66583cdb569fecd956c7e08367b9d532ce096d5d720";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsSix_Force<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsSix_Force.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Six_Force_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsSix_Force> : RecordMetadata_Ros1Rm_msgsSix_Force<uwvm_custom::Ros1Rm_msgsSix_Force>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsSix_Force transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Six_Force_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsSix_Force const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Six_Force_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Six_Force_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Six_Force_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsSix_Force.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Six_Force_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsSix_Force& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Six_Force_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SOCKET_COMMAND
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_SOCKET_COMMAND 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsSocket_Command.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsSocket_Command>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsSocket_Command
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Socket_Command_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Socket_Command_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsSocket_Command<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsSocket_Command<T>::codec_identity = "UWVMROS1_f55143fcc5bf1da4e0fbf538f9faf480932d5b8405d6c1f880c6091a38f68d17";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsSocket_Command<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsSocket_Command.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Socket_Command_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsSocket_Command> : RecordMetadata_Ros1Rm_msgsSocket_Command<uwvm_custom::Ros1Rm_msgsSocket_Command>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsSocket_Command transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Socket_Command_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsSocket_Command const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Socket_Command_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Socket_Command_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Socket_Command_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsSocket_Command.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Socket_Command_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsSocket_Command& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Socket_Command_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_START_MULTI_DRAG_TEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_START_MULTI_DRAG_TEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsStart_Multi_Drag_Teach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsStart_Multi_Drag_Teach>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsStart_Multi_Drag_Teach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsStart_Multi_Drag_Teach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsStart_Multi_Drag_Teach<T>::codec_identity =
        "UWVMROS1_5bc8bea8dc6051a6ec45da2fabd12107e8b7a9731cc6031af49371cb2b6c64a8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsStart_Multi_Drag_Teach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsStart_Multi_Drag_Teach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsStart_Multi_Drag_Teach> :
        RecordMetadata_Ros1Rm_msgsStart_Multi_Drag_Teach<uwvm_custom::Ros1Rm_msgsStart_Multi_Drag_Teach>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsStart_Multi_Drag_Teach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsStart_Multi_Drag_Teach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsStart_Multi_Drag_Teach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsStart_Multi_Drag_Teach& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Start_Multi_Drag_Teach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_STOP
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_STOP 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsStop.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsStop>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsStop
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Stop_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Stop_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsStop<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsStop<T>::codec_identity = "UWVMROS1_87bbb0270d31ccd7e207da872d191cf01d4f10f9eed6bcffaef9f440a2c5378a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsStop<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsStop.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Stop_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsStop> : RecordMetadata_Ros1Rm_msgsStop<uwvm_custom::Ros1Rm_msgsStop>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsStop transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Stop_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsStop const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Stop_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Stop_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Stop_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsStop.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Stop_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsStop& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Stop_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_STOP_TEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_STOP_TEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsStop_Teach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsStop_Teach>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsStop_Teach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Stop_Teach_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Stop_Teach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsStop_Teach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsStop_Teach<T>::codec_identity = "UWVMROS1_d7e8a4419f9a4132ecad0fcb738953bc3dc029aba09bc8f4fa97e12ab088f97e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsStop_Teach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsStop_Teach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Stop_Teach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsStop_Teach> : RecordMetadata_Ros1Rm_msgsStop_Teach<uwvm_custom::Ros1Rm_msgsStop_Teach>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsStop_Teach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Stop_Teach_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsStop_Teach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Stop_Teach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Stop_Teach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Stop_Teach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsStop_Teach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Stop_Teach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsStop_Teach& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Stop_Teach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TOOL_ANALOG_OUTPUT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TOOL_ANALOG_OUTPUT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsTool_Analog_Output.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsTool_Analog_Output>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsTool_Analog_Output
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsTool_Analog_Output<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsTool_Analog_Output<T>::codec_identity =
        "UWVMROS1_8ce6b700a85d05fa99167fad521b7162b9a0e4670c9022782ed522d1c320979f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsTool_Analog_Output<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsTool_Analog_Output.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsTool_Analog_Output> : RecordMetadata_Ros1Rm_msgsTool_Analog_Output<uwvm_custom::Ros1Rm_msgsTool_Analog_Output>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsTool_Analog_Output transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsTool_Analog_Output const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsTool_Analog_Output.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsTool_Analog_Output& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Tool_Analog_Output_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TOOL_DIGITAL_OUTPUT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TOOL_DIGITAL_OUTPUT 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsTool_Digital_Output.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsTool_Digital_Output>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsTool_Digital_Output
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsTool_Digital_Output<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsTool_Digital_Output<T>::codec_identity =
        "UWVMROS1_10c924520a9c47a999bfebbf55c9474aa8e7770a8e8a58d446af0c1eacc1889e";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsTool_Digital_Output<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsTool_Digital_Output.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsTool_Digital_Output> : RecordMetadata_Ros1Rm_msgsTool_Digital_Output<uwvm_custom::Ros1Rm_msgsTool_Digital_Output>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsTool_Digital_Output transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsTool_Digital_Output const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsTool_Digital_Output.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsTool_Digital_Output& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Tool_Digital_Output_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TOOL_IO_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TOOL_IO_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsTool_IO_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsTool_IO_State>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsTool_IO_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Tool_IO_State_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Tool_IO_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsTool_IO_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsTool_IO_State<T>::codec_identity = "UWVMROS1_3259adff977d4832fc6ba1e9e2a13aca1e99f86c4f4177b54ccd7c459f86fb84";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsTool_IO_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsTool_IO_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Tool_IO_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsTool_IO_State> : RecordMetadata_Ros1Rm_msgsTool_IO_State<uwvm_custom::Ros1Rm_msgsTool_IO_State>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsTool_IO_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Tool_IO_State_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsTool_IO_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Tool_IO_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Tool_IO_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Tool_IO_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsTool_IO_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Tool_IO_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsTool_IO_State& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Tool_IO_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TRAJECTORYINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TRAJECTORYINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsTrajectoryinfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsTrajectoryinfo>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsTrajectoryinfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Trajectoryinfo_wire_size
         */
        static const size_t max_wire_bytes = 524;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Trajectoryinfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsTrajectoryinfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsTrajectoryinfo<T>::codec_identity = "UWVMROS1_16571d503b8ffbc3d3bbd71f2f4eea11e8d0c30ff1dc8a40349d00c6294bbebd";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsTrajectoryinfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsTrajectoryinfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Trajectoryinfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsTrajectoryinfo> : RecordMetadata_Ros1Rm_msgsTrajectoryinfo<uwvm_custom::Ros1Rm_msgsTrajectoryinfo>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsTrajectoryinfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Trajectoryinfo_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsTrajectoryinfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Trajectoryinfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Trajectoryinfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Trajectoryinfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsTrajectoryinfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Trajectoryinfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsTrajectoryinfo& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Trajectoryinfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TRAJECTORYLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TRAJECTORYLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsTrajectorylist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsTrajectorylist>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsTrajectorylist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Trajectorylist_wire_size
         */
        static const size_t max_wire_bytes = 8660;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Trajectorylist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsTrajectorylist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsTrajectorylist<T>::codec_identity = "UWVMROS1_2a6f11ce34da610b3a2c7738fbdc705ce549702edf8869972ab1126d86717fd9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsTrajectorylist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsTrajectorylist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Trajectorylist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsTrajectorylist> : RecordMetadata_Ros1Rm_msgsTrajectorylist<uwvm_custom::Ros1Rm_msgsTrajectorylist>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsTrajectorylist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Trajectorylist_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsTrajectorylist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Trajectorylist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Trajectorylist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Trajectorylist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsTrajectorylist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Trajectorylist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsTrajectorylist& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Trajectorylist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TURTLE_DRIVER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_TURTLE_DRIVER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsTurtle_Driver.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsTurtle_Driver>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsTurtle_Driver
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Turtle_Driver_wire_size
         */
        static const size_t max_wire_bytes = 532;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Turtle_Driver_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsTurtle_Driver<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsTurtle_Driver<T>::codec_identity = "UWVMROS1_d78bbc2b8ade4cc0f3a2807b674b87cf49f46faa33185187b579b7836c5bb7fe";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsTurtle_Driver<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsTurtle_Driver.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Turtle_Driver_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsTurtle_Driver> : RecordMetadata_Ros1Rm_msgsTurtle_Driver<uwvm_custom::Ros1Rm_msgsTurtle_Driver>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsTurtle_Driver transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Turtle_Driver_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsTurtle_Driver const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Turtle_Driver_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Turtle_Driver_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Turtle_Driver_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsTurtle_Driver.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Turtle_Driver_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsTurtle_Driver& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Turtle_Driver_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_UPDATETCPMASTERPARAM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_UPDATETCPMASTERPARAM 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsUpdateTCPmasterparam.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsUpdateTCPmasterparam>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsUpdateTCPmasterparam
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_wire_size
         */
        static const size_t max_wire_bytes = 784;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsUpdateTCPmasterparam<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsUpdateTCPmasterparam<T>::codec_identity =
        "UWVMROS1_588eaac57487dc2d7ab412bf221ca0157959d2826d310ff218c63ddbfa287872";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsUpdateTCPmasterparam<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsUpdateTCPmasterparam.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsUpdateTCPmasterparam> : RecordMetadata_Ros1Rm_msgsUpdateTCPmasterparam<uwvm_custom::Ros1Rm_msgsUpdateTCPmasterparam>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsUpdateTCPmasterparam transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsUpdateTCPmasterparam const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsUpdateTCPmasterparam.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsUpdateTCPmasterparam& out)
        {
            return !roswasmc_bounded_1_rm_msgs_UpdateTCPmasterparam_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_WRITE_MODBUSRTU
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_WRITE_MODBUSRTU 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsWrite_ModbusRTU.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsWrite_ModbusRTU>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsWrite_ModbusRTU
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_wire_size
         */
        static const size_t max_wire_bytes = 80;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsWrite_ModbusRTU<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsWrite_ModbusRTU<T>::codec_identity =
        "UWVMROS1_09caba0e331ca32e826368f575bcfd26ec1e0e2ae63da26bdbfdda5f7cc486c8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsWrite_ModbusRTU<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsWrite_ModbusRTU.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsWrite_ModbusRTU> : RecordMetadata_Ros1Rm_msgsWrite_ModbusRTU<uwvm_custom::Ros1Rm_msgsWrite_ModbusRTU>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsWrite_ModbusRTU transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsWrite_ModbusRTU const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsWrite_ModbusRTU.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsWrite_ModbusRTU& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Write_ModbusRTU_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_WRITE_REGISTER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_WRITE_REGISTER 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsWrite_Register.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsWrite_Register>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsWrite_Register
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Write_Register_wire_size
         */
        static const size_t max_wire_bytes = 49;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Write_Register_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsWrite_Register<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsWrite_Register<T>::codec_identity = "UWVMROS1_ef2fb0ea4f38aecce5111c39f35aa4195d9658fe6bbe4f9c059b85ee3ce32251";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsWrite_Register<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsWrite_Register.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Write_Register_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsWrite_Register> : RecordMetadata_Ros1Rm_msgsWrite_Register<uwvm_custom::Ros1Rm_msgsWrite_Register>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsWrite_Register transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Write_Register_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsWrite_Register const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Write_Register_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Write_Register_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Write_Register_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsWrite_Register.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Write_Register_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsWrite_Register& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Write_Register_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_WRITE_TCPANDRTU
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_1_RM_MSGS_WRITE_TCPANDRTU 1

    /**
     * @brief ODR-safe wire metadata for Ros1Rm_msgsWrite_TCPandRTU.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros1Rm_msgsWrite_TCPandRTU>
     */
    template <class T>
    struct RecordMetadata_Ros1Rm_msgsWrite_TCPandRTU
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_wire_size
         */
        static const size_t max_wire_bytes = 604;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros1Rm_msgsWrite_TCPandRTU<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros1Rm_msgsWrite_TCPandRTU<T>::codec_identity =
        "UWVMROS1_8e0690efe69c300dc98a90b00a785109bb3cf0b603a36e173a346383e6b7e16a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros1Rm_msgsWrite_TCPandRTU<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros1Rm_msgsWrite_TCPandRTU.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros1Rm_msgsWrite_TCPandRTU> : RecordMetadata_Ros1Rm_msgsWrite_TCPandRTU<uwvm_custom::Ros1Rm_msgsWrite_TCPandRTU>
    {
        /**
         * @brief Encode all fields of Ros1Rm_msgsWrite_TCPandRTU transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_encode
         */
        static bool encode(uwvm_custom::Ros1Rm_msgsWrite_TCPandRTU const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_valid(&value))
                return false;
            size_t n = roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros1Rm_msgsWrite_TCPandRTU.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros1Rm_msgsWrite_TCPandRTU& out)
        {
            return !roswasmc_bounded_1_rm_msgs_Write_TCPandRTU_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
