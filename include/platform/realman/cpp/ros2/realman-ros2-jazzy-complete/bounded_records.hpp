/**
 * @file bounded_records.hpp
 * @brief Bind complete original C storage to checked C++ canonical codecs and declared defaults.
 * @details Owned inline fields retain original widths, bounds and units. Encode/decode commit
 * only complete accepted values. Metadata describes a codec and creates no ROS authority.
 */
// roswasm-cpp-documented-facade-v3
#pragma once
#include <ros/cpp/roswasm/roswasmcpp.hpp>
#include <realman/c/ros2/realman-ros2-jazzy-complete/bounded_records.h>

namespace uwvm_custom
{
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Point_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Point Ros2Geometry_msgsMsgPoint;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgQuaternion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Quaternion Ros2Geometry_msgsMsgQuaternion;
    /**
     * @brief Complete bounded storage for Ros2Geometry_msgsMsgPose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_valid
     */
    typedef roswasmc_bounded_2_geometry_msgs_msg_Pose Ros2Geometry_msgsMsgPose;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgAlohastate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate Ros2Rm_ros_interfacesMsgAlohastate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgArmcurrentstatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus Ros2Rm_ros_interfacesMsgArmcurrentstatus;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgArmoriginalstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate Ros2Rm_ros_interfacesMsgArmoriginalstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo Ros2Rm_ros_interfacesMsgSoftwarebuildinfo;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgArmsoftversion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion Ros2Rm_ros_interfacesMsgArmsoftversion;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgArmsoftversionv3.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3 Ros2Rm_ros_interfacesMsgArmsoftversionv3;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgArmsoftversionv4.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4 Ros2Rm_ros_interfacesMsgArmsoftversionv4;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgArmstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate Ros2Rm_ros_interfacesMsgArmstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgCartepos.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos Ros2Rm_ros_interfacesMsgCartepos;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgCarteposcustom.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom Ros2Rm_ros_interfacesMsgCarteposcustom;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgExpandpos.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos Ros2Rm_ros_interfacesMsgExpandpos;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgExpandstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate Ros2Rm_ros_interfacesMsgExpandstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgFlowchartrunstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate Ros2Rm_ros_interfacesMsgFlowchartrunstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgForce_Position_State.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State Ros2Rm_ros_interfacesMsgForce_Position_State;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgForcepositionmove.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove Ros2Rm_ros_interfacesMsgForcepositionmove;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgForcepositionmovejoint.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint Ros2Rm_ros_interfacesMsgForcepositionmovejoint;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgForcepositionmovepose.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose Ros2Rm_ros_interfacesMsgForcepositionmovepose;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgGetArmState_Command.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command Ros2Rm_ros_interfacesMsgGetArmState_Command;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgGetallframe.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe Ros2Rm_ros_interfacesMsgGetallframe;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgGettrajectorylist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist Ros2Rm_ros_interfacesMsgGettrajectorylist;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgGripperpick.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick Ros2Rm_ros_interfacesMsgGripperpick;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgGripperset.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset Ros2Rm_ros_interfacesMsgGripperset;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgHandangle.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle Ros2Rm_ros_interfacesMsgHandangle;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgHandforce.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce Ros2Rm_ros_interfacesMsgHandforce;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgHandposture.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture Ros2Rm_ros_interfacesMsgHandposture;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgHandseq.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq Ros2Rm_ros_interfacesMsgHandseq;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgHandspeed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed Ros2Rm_ros_interfacesMsgHandspeed;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgHandstatus.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus Ros2Rm_ros_interfacesMsgHandstatus;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointcurrent.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent Ros2Rm_ros_interfacesMsgJointcurrent;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointenflag.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag Ros2Rm_ros_interfacesMsgJointenflag;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointerrclear.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear Ros2Rm_ros_interfacesMsgJointerrclear;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointerrorcode.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode Ros2Rm_ros_interfacesMsgJointerrorcode;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointpos.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos Ros2Rm_ros_interfacesMsgJointpos;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointposcustom.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom Ros2Rm_ros_interfacesMsgJointposcustom;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointposeeuler.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler Ros2Rm_ros_interfacesMsgJointposeeuler;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointspeed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed Ros2Rm_ros_interfacesMsgJointspeed;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointteach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach Ros2Rm_ros_interfacesMsgJointteach;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointtemperature.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature Ros2Rm_ros_interfacesMsgJointtemperature;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointversion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion Ros2Rm_ros_interfacesMsgJointversion;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgJointvoltage.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage Ros2Rm_ros_interfacesMsgJointvoltage;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgLiftheight.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight Ros2Rm_ros_interfacesMsgLiftheight;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgLiftspeed.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed Ros2Rm_ros_interfacesMsgLiftspeed;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgLiftstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate Ros2Rm_ros_interfacesMsgLiftstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgMastername.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername Ros2Rm_ros_interfacesMsgMastername;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbusreaddata.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata Ros2Rm_ros_interfacesMsgModbusreaddata;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbusrtureadparams.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams Ros2Rm_ros_interfacesMsgModbusrtureadparams;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams Ros2Rm_ros_interfacesMsgModbusrtuwriteparams;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo Ros2Rm_ros_interfacesMsgModbustcpmasterinfo;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbustcpmasterlist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist Ros2Rm_ros_interfacesMsgModbustcpmasterlist;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata Ros2Rm_ros_interfacesMsgModbustcpmasterupdata;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbustcpreadparams.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams Ros2Rm_ros_interfacesMsgModbustcpreadparams;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgModbustcpwriteparams.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams Ros2Rm_ros_interfacesMsgModbustcpwriteparams;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgMovec.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Movec Ros2Rm_ros_interfacesMsgMovec;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgMovej.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Movej Ros2Rm_ros_interfacesMsgMovej;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgMovejp.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp Ros2Rm_ros_interfacesMsgMovejp;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgMovel.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Movel Ros2Rm_ros_interfacesMsgMovel;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgMoveloffset.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset Ros2Rm_ros_interfacesMsgMoveloffset;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgOrtteach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach Ros2Rm_ros_interfacesMsgOrtteach;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgPosteach.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach Ros2Rm_ros_interfacesMsgPosteach;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgProgramrunstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate Ros2Rm_ros_interfacesMsgProgramrunstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgRS485params.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params Ros2Rm_ros_interfacesMsgRS485params;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgRmerr.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr Ros2Rm_ros_interfacesMsgRmerr;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgRmplusbase.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase Ros2Rm_ros_interfacesMsgRmplusbase;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgRmplusstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate Ros2Rm_ros_interfacesMsgRmplusstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgRmversion.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion Ros2Rm_ros_interfacesMsgRmversion;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgRobotInfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo Ros2Rm_ros_interfacesMsgRobotInfo;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgSendproject.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject Ros2Rm_ros_interfacesMsgSendproject;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgSetforceposition.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition Ros2Rm_ros_interfacesMsgSetforceposition;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgSetrealtimepush.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush Ros2Rm_ros_interfacesMsgSetrealtimepush;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgSixforce.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce Ros2Rm_ros_interfacesMsgSixforce;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgStop.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Stop Ros2Rm_ros_interfacesMsgStop;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4 Ros2Rm_ros_interfacesMsgToolsoftwareversionv4;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgTrajectoryinfo.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo Ros2Rm_ros_interfacesMsgTrajectoryinfo;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgTrajectorylist.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist Ros2Rm_ros_interfacesMsgTrajectorylist;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgUdpexpandstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate Ros2Rm_ros_interfacesMsgUdpexpandstate;
    /**
     * @brief Complete bounded storage for Ros2Rm_ros_interfacesMsgUdpliftstate.
     * @details This alias preserves every field, capacity and constant of the C record. It owns its
     * inline storage; it is not a native ROS object. No permission or synchronization is provided.
     * Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_valid
     */
    typedef roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate Ros2Rm_ros_interfacesMsgUdpliftstate;
}  // namespace uwvm_custom

namespace roswasmcpp
{
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POINT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPoint>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Point_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::codec_identity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Point_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPoint> : RecordMetadata_Ros2Geometry_msgsMsgPoint<uwvm_custom::Ros2Geometry_msgsMsgPoint>
    {
        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Point_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Point_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Point_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Point_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPoint& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Point_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_QUATERNION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgQuaternion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgQuaternion>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgQuaternion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size
         */
        static const size_t max_wire_bytes = 32;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::codec_identity =
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgQuaternion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgQuaternion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgQuaternion> : RecordMetadata_Ros2Geometry_msgsMsgQuaternion<uwvm_custom::Ros2Geometry_msgsMsgQuaternion>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgQuaternion.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgQuaternion default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgQuaternion value = uwvm_custom::Ros2Geometry_msgsMsgQuaternion();
            (void)roswasmc_bounded_2_geometry_msgs_msg_Quaternion_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgQuaternion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgQuaternion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Quaternion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Quaternion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Quaternion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgQuaternion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgQuaternion& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Quaternion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_GEOMETRY_MSGS_MSG_POSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Geometry_msgsMsgPose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Geometry_msgsMsgPose>
     */
    template <class T>
    struct RecordMetadata_Ros2Geometry_msgsMsgPose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size
         */
        static const size_t max_wire_bytes = 56;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Geometry_msgsMsgPose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Geometry_msgsMsgPose<T>::codec_identity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Geometry_msgsMsgPose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Geometry_msgsMsgPose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Geometry_msgsMsgPose> : RecordMetadata_Ros2Geometry_msgsMsgPose<uwvm_custom::Ros2Geometry_msgsMsgPose>
    {
        /**
         * @brief Construct the declared defaults of Ros2Geometry_msgsMsgPose.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_default
         */
        static uwvm_custom::Ros2Geometry_msgsMsgPose default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Geometry_msgsMsgPose value = uwvm_custom::Ros2Geometry_msgsMsgPose();
            (void)roswasmc_bounded_2_geometry_msgs_msg_Pose_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Geometry_msgsMsgPose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_encode
         */
        static bool encode(uwvm_custom::Ros2Geometry_msgsMsgPose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_geometry_msgs_msg_Pose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_geometry_msgs_msg_Pose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_geometry_msgs_msg_Pose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Geometry_msgsMsgPose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_geometry_msgs_msg_Pose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Geometry_msgsMsgPose& out)
        {
            return !roswasmc_bounded_2_geometry_msgs_msg_Pose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ALOHASTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ALOHASTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgAlohastate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgAlohastate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgAlohastate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_wire_size
         */
        static const size_t max_wire_bytes = 4;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgAlohastate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgAlohastate<T>::codec_identity =
        "UWVMROS1_b7a68ce1f12539a9373d1f0247bf4ea39a109525ae650c23c027103d071cf8ab";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgAlohastate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgAlohastate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgAlohastate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgAlohastate<uwvm_custom::Ros2Rm_ros_interfacesMsgAlohastate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgAlohastate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgAlohastate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgAlohastate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgAlohastate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Alohastate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMCURRENTSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMCURRENTSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgArmcurrentstatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmcurrentstatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgArmcurrentstatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgArmcurrentstatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgArmcurrentstatus<T>::codec_identity =
        "UWVMROS1_b7a53dc8378d2b76cf8a1872289030302e994f37f026f44da38d2a53a974b3dc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgArmcurrentstatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgArmcurrentstatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmcurrentstatus> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgArmcurrentstatus<uwvm_custom::Ros2Rm_ros_interfacesMsgArmcurrentstatus>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgArmcurrentstatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgArmcurrentstatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgArmcurrentstatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgArmcurrentstatus& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Armcurrentstatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMORIGINALSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMORIGINALSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgArmoriginalstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmoriginalstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgArmoriginalstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_wire_size
         */
        static const size_t max_wire_bytes = 96;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgArmoriginalstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgArmoriginalstate<T>::codec_identity =
        "UWVMROS1_72f48f6c5542e0c0eed997cfd22554b16a8936ff3376dd1d60cb9aae274c8d2c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgArmoriginalstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgArmoriginalstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmoriginalstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgArmoriginalstate<uwvm_custom::Ros2Rm_ros_interfacesMsgArmoriginalstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgArmoriginalstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgArmoriginalstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgArmoriginalstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgArmoriginalstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Armoriginalstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SOFTWAREBUILDINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SOFTWAREBUILDINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSoftwarebuildinfo>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_wire_size
         */
        static const size_t max_wire_bytes = 520;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo<T>::codec_identity =
        "UWVMROS1_d84d8da289dce8e1735e963b652e574a78f5dcf7549ffe3a84a870c30f6901bc";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSoftwarebuildinfo> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgSoftwarebuildinfo<uwvm_custom::Ros2Rm_ros_interfacesMsgSoftwarebuildinfo>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgSoftwarebuildinfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgSoftwarebuildinfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgSoftwarebuildinfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgSoftwarebuildinfo& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Softwarebuildinfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSOFTVERSION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSOFTVERSION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgArmsoftversion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversion>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_wire_size
         */
        static const size_t max_wire_bytes = 4421;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversion<T>::codec_identity =
        "UWVMROS1_3b92125820667f7d207022aa8b2d078c9e70724c037c261b1e9dd07764e14d9c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgArmsoftversion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversion> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversion<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversion>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgArmsoftversion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgArmsoftversion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversion& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSOFTVERSIONV3
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSOFTVERSIONV3 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgArmsoftversionv3.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv3>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv3
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_wire_size
         */
        static const size_t max_wire_bytes = 2080;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv3<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv3<T>::codec_identity =
        "UWVMROS1_ea5589dc88dc36fc961682ec2d46be8a9909d28c3c26372614cfa6b153b76e8b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv3<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgArmsoftversionv3.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv3> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv3<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv3>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgArmsoftversionv3 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv3 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgArmsoftversionv3.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv3& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv3_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSOFTVERSIONV4
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSOFTVERSIONV4 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgArmsoftversionv4.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv4>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv4
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_wire_size
         */
        static const size_t max_wire_bytes = 2340;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv4<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv4<T>::codec_identity =
        "UWVMROS1_b496d4a867605c13dbc7387895bd4f333ec435ed10a3b5a82c246c7f99d6de0d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv4<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgArmsoftversionv4.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv4> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgArmsoftversionv4<uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv4>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgArmsoftversionv4 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv4 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgArmsoftversionv4.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgArmsoftversionv4& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Armsoftversionv4_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ARMSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgArmstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgArmstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_wire_size
         */
        static const size_t max_wire_bytes = 128;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgArmstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgArmstate<T>::codec_identity =
        "UWVMROS1_00bcb934e0cb6bd35e60269a9620381834adf8e33234bafa6f678ecf59ffdde7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgArmstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgArmstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate> : RecordMetadata_Ros2Rm_ros_interfacesMsgArmstate<uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgArmstate.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate value = uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgArmstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgArmstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgArmstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Armstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_CARTEPOS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_CARTEPOS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgCartepos.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgCartepos
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_wire_size
         */
        static const size_t max_wire_bytes = 57;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgCartepos<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgCartepos<T>::codec_identity =
        "UWVMROS1_378453679d2951117a929eb7c976fc94961c57c93ef3444fbea04fe1a6f35b13";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgCartepos<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgCartepos.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos> : RecordMetadata_Ros2Rm_ros_interfacesMsgCartepos<uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgCartepos.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos value = uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgCartepos transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgCartepos.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgCartepos& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Cartepos_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_CARTEPOSCUSTOM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_CARTEPOSCUSTOM 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgCarteposcustom.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgCarteposcustom
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_wire_size
         */
        static const size_t max_wire_bytes = 59;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgCarteposcustom<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgCarteposcustom<T>::codec_identity =
        "UWVMROS1_6d61e6f37210c02d518a084147de131bc437839101278c95653814d2bb32d67c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgCarteposcustom<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgCarteposcustom.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgCarteposcustom<uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgCarteposcustom.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom value = uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgCarteposcustom transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgCarteposcustom.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgCarteposcustom& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Carteposcustom_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_EXPANDPOS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_EXPANDPOS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgExpandpos.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgExpandpos>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgExpandpos
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_wire_size
         */
        static const size_t max_wire_bytes = 7;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgExpandpos<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgExpandpos<T>::codec_identity =
        "UWVMROS1_0e0290c8170fde709b7208f29a8711e103283040e3447d0d68a03e5cf0762f6c";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgExpandpos<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgExpandpos.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgExpandpos> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgExpandpos<uwvm_custom::Ros2Rm_ros_interfacesMsgExpandpos>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgExpandpos transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgExpandpos const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgExpandpos.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgExpandpos& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Expandpos_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_EXPANDSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_EXPANDSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgExpandstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgExpandstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgExpandstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_wire_size
         */
        static const size_t max_wire_bytes = 12;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgExpandstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgExpandstate<T>::codec_identity =
        "UWVMROS1_3f4b075ae44707e2ce086829663fb4d774d74e0c40be23a0a6e73f2da07249e4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgExpandstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgExpandstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgExpandstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgExpandstate<uwvm_custom::Ros2Rm_ros_interfacesMsgExpandstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgExpandstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgExpandstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgExpandstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgExpandstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Expandstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FLOWCHARTRUNSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FLOWCHARTRUNSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgFlowchartrunstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgFlowchartrunstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgFlowchartrunstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_wire_size
         */
        static const size_t max_wire_bytes = 525;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgFlowchartrunstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgFlowchartrunstate<T>::codec_identity =
        "UWVMROS1_61b4e904b5818c2eca883f9842bd69695c8b47737cb8066aefefd24fb9f6422f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgFlowchartrunstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgFlowchartrunstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgFlowchartrunstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgFlowchartrunstate<uwvm_custom::Ros2Rm_ros_interfacesMsgFlowchartrunstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgFlowchartrunstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgFlowchartrunstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgFlowchartrunstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgFlowchartrunstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Flowchartrunstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCE_POSITION_STATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCE_POSITION_STATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgForce_Position_State.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForce_Position_State>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgForce_Position_State
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_wire_size
         */
        static const size_t max_wire_bytes = 30;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgForce_Position_State<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgForce_Position_State<T>::codec_identity =
        "UWVMROS1_98c23957f0547ada86fa7d65a0c53a1d4f994995541d821e38e7d8e6e86678c7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgForce_Position_State<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgForce_Position_State.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForce_Position_State> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgForce_Position_State<uwvm_custom::Ros2Rm_ros_interfacesMsgForce_Position_State>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgForce_Position_State transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgForce_Position_State const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgForce_Position_State.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgForce_Position_State& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Force_Position_State_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCEPOSITIONMOVE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCEPOSITIONMOVE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgForcepositionmove.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmove
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_wire_size
         */
        static const size_t max_wire_bytes = 185;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmove<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmove<T>::codec_identity =
        "UWVMROS1_ff24ba9bda14e6d5a9ddafa24b3e8d72f5de5b99ba1161416fe2d8a8140fc224";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmove<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgForcepositionmove.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmove<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgForcepositionmove.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove value = uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgForcepositionmove transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgForcepositionmove.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmove& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmove_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCEPOSITIONMOVEJOINT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCEPOSITIONMOVEJOINT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgForcepositionmovejoint.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovejoint>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovejoint
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_wire_size
         */
        static const size_t max_wire_bytes = 78;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovejoint<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovejoint<T>::codec_identity =
        "UWVMROS1_1a8435bfb309f07ef73c7ec8295b87918d6182fb718ebdf0c24ade35895d1bed";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovejoint<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgForcepositionmovejoint.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovejoint> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovejoint<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovejoint>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgForcepositionmovejoint transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovejoint const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgForcepositionmovejoint.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovejoint& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovejoint_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCEPOSITIONMOVEPOSE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_FORCEPOSITIONMOVEPOSE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgForcepositionmovepose.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovepose
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_wire_size
         */
        static const size_t max_wire_bytes = 62;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovepose<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovepose<T>::codec_identity =
        "UWVMROS1_1440c6075db6349d807d6a57247bd59711eb72afe9ba4d6c4a3c809e15a8f8a3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovepose<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgForcepositionmovepose.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgForcepositionmovepose<uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgForcepositionmovepose.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose value = uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgForcepositionmovepose transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgForcepositionmovepose.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgForcepositionmovepose& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Forcepositionmovepose_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETARMSTATE_COMMAND
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETARMSTATE_COMMAND 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgGetArmState_Command.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGetArmState_Command>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgGetArmState_Command
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgGetArmState_Command<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgGetArmState_Command<T>::codec_identity =
        "UWVMROS1_8e1d91f4b8d1801b92f1b8b2c2e2d6fa07b32ade96a6984d692be1fde986cb30";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgGetArmState_Command<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgGetArmState_Command.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGetArmState_Command> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgGetArmState_Command<uwvm_custom::Ros2Rm_ros_interfacesMsgGetArmState_Command>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgGetArmState_Command transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgGetArmState_Command const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgGetArmState_Command.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgGetArmState_Command& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_GetArmState_Command_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETALLFRAME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETALLFRAME 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgGetallframe.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGetallframe>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgGetallframe
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_wire_size
         */
        static const size_t max_wire_bytes = 2600;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgGetallframe<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgGetallframe<T>::codec_identity =
        "UWVMROS1_f63c4069d35368010998526b3db41b2ccedab8adb990d3b4e7214edfc4c566ef";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgGetallframe<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgGetallframe.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGetallframe> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgGetallframe<uwvm_custom::Ros2Rm_ros_interfacesMsgGetallframe>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgGetallframe transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgGetallframe const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgGetallframe.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgGetallframe& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Getallframe_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETMODBUSTCPMASTERLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETMODBUSTCPMASTERLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_wire_size
         */
        static const size_t max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist<T>::codec_identity =
        "UWVMROS1_09604efe1f3cef804f05d3f5c7cc8db9c468fa17e2343675e96920f1555a9686";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist<uwvm_custom::Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgGetmodbustcpmasterlist& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Getmodbustcpmasterlist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETTRAJECTORYLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GETTRAJECTORYLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgGettrajectorylist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGettrajectorylist>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgGettrajectorylist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_wire_size
         */
        static const size_t max_wire_bytes = 268;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgGettrajectorylist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgGettrajectorylist<T>::codec_identity =
        "UWVMROS1_58b7256031125746972a86fabed4beaf76a44b780cdd76908697169ae909cf8b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgGettrajectorylist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgGettrajectorylist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGettrajectorylist> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgGettrajectorylist<uwvm_custom::Ros2Rm_ros_interfacesMsgGettrajectorylist>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgGettrajectorylist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgGettrajectorylist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgGettrajectorylist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgGettrajectorylist& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Gettrajectorylist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GRIPPERPICK
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GRIPPERPICK 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgGripperpick.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGripperpick>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgGripperpick
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_wire_size
         */
        static const size_t max_wire_bytes = 7;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgGripperpick<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgGripperpick<T>::codec_identity =
        "UWVMROS1_fa6da630bd224eff4924d45c471eefae227314781b28c271ff34295d60616ce2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgGripperpick<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgGripperpick.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGripperpick> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgGripperpick<uwvm_custom::Ros2Rm_ros_interfacesMsgGripperpick>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgGripperpick transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgGripperpick const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgGripperpick.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgGripperpick& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperpick_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GRIPPERSET
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_GRIPPERSET 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgGripperset.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGripperset>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgGripperset
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgGripperset<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgGripperset<T>::codec_identity =
        "UWVMROS1_71e19bd655b84b8e1cb948c0180331b23e1cabfc02b6f8883209113d0fa8626b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgGripperset<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgGripperset.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgGripperset> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgGripperset<uwvm_custom::Ros2Rm_ros_interfacesMsgGripperset>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgGripperset transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgGripperset const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgGripperset.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgGripperset& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Gripperset_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDANGLE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDANGLE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgHandangle.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandangle>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgHandangle
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgHandangle<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgHandangle<T>::codec_identity =
        "UWVMROS1_a213f476b5734891798b4e19c4200fdf496486b913fb4f43808905f087b1cabf";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgHandangle<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgHandangle.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandangle> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgHandangle<uwvm_custom::Ros2Rm_ros_interfacesMsgHandangle>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgHandangle transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgHandangle const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgHandangle.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgHandangle& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Handangle_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDFORCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDFORCE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgHandforce.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandforce>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgHandforce
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgHandforce<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgHandforce<T>::codec_identity =
        "UWVMROS1_910b9c8f264852d96c22d01fd2e38471ec596fe0be4dbab44c93f495061dfab2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgHandforce<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgHandforce.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandforce> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgHandforce<uwvm_custom::Ros2Rm_ros_interfacesMsgHandforce>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgHandforce transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgHandforce const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgHandforce.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgHandforce& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Handforce_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDPOSTURE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDPOSTURE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgHandposture.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandposture>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgHandposture
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgHandposture<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgHandposture<T>::codec_identity =
        "UWVMROS1_78080b4fd20c87b0f05ce5cb42983ccc0242c3e114c7ba984398aa00f60c204f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgHandposture<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgHandposture.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandposture> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgHandposture<uwvm_custom::Ros2Rm_ros_interfacesMsgHandposture>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgHandposture transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgHandposture const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgHandposture.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgHandposture& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Handposture_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDSEQ
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDSEQ 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgHandseq.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandseq>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgHandseq
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgHandseq<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgHandseq<T>::codec_identity =
        "UWVMROS1_29f300b4608a4ea140cfb38eeb316c376002638012efc5b9e6b19f95788ba842";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgHandseq<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgHandseq.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandseq> : RecordMetadata_Ros2Rm_ros_interfacesMsgHandseq<uwvm_custom::Ros2Rm_ros_interfacesMsgHandseq>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgHandseq transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgHandseq const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgHandseq.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgHandseq& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Handseq_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDSPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDSPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgHandspeed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandspeed>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgHandspeed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgHandspeed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgHandspeed<T>::codec_identity =
        "UWVMROS1_85e90353ad0e2d1c14b390080d13d447de9acfa563f046ab7a89929183dbc684";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgHandspeed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgHandspeed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandspeed> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgHandspeed<uwvm_custom::Ros2Rm_ros_interfacesMsgHandspeed>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgHandspeed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgHandspeed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgHandspeed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgHandspeed& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Handspeed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDSTATUS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_HANDSTATUS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgHandstatus.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandstatus>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgHandstatus
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_wire_size
         */
        static const size_t max_wire_bytes = 50;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgHandstatus<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgHandstatus<T>::codec_identity =
        "UWVMROS1_1f7a21721b551df6853b1ce4166cabf2058b705f854bacda8fe692f7544688f3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgHandstatus<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgHandstatus.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgHandstatus> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgHandstatus<uwvm_custom::Ros2Rm_ros_interfacesMsgHandstatus>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgHandstatus transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgHandstatus const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgHandstatus.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgHandstatus& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Handstatus_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTCURRENT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTCURRENT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointcurrent.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointcurrent>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointcurrent
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointcurrent<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointcurrent<T>::codec_identity =
        "UWVMROS1_0e7a72e78bd556b1ea6fc796b88097b8c03c612de0cc7e5063d722eee2bdef91";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointcurrent<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointcurrent.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointcurrent> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointcurrent<uwvm_custom::Ros2Rm_ros_interfacesMsgJointcurrent>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointcurrent transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointcurrent const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointcurrent.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointcurrent& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointcurrent_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTENFLAG
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTENFLAG 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointenflag.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointenflag>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointenflag
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_wire_size
         */
        static const size_t max_wire_bytes = 20;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointenflag<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointenflag<T>::codec_identity =
        "UWVMROS1_ffa9e21886e47f6af286452c886cc0f0dd7be24dabd373e05866a675962c6187";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointenflag<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointenflag.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointenflag> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointenflag<uwvm_custom::Ros2Rm_ros_interfacesMsgJointenflag>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointenflag transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointenflag const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointenflag.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointenflag& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointenflag_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTERRCLEAR
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTERRCLEAR 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointerrclear.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrclear>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrclear
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrclear<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrclear<T>::codec_identity =
        "UWVMROS1_c575447e4110836ee8d0ffa2833ab702379cb0c1cd5f7bd87be315edb85cff45";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrclear<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointerrclear.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrclear> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrclear<uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrclear>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointerrclear transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrclear const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointerrclear.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrclear& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrclear_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTERRORCODE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTERRORCODE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointerrorcode.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrorcode>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrorcode
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_wire_size
         */
        static const size_t max_wire_bytes = 37;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrorcode<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrorcode<T>::codec_identity =
        "UWVMROS1_78839a57795d363e53861265202facab5c8bc8ee6c21ba7548af68e49abbd99b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrorcode<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointerrorcode.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrorcode> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointerrorcode<uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrorcode>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointerrorcode transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrorcode const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointerrorcode.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointerrorcode& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointerrorcode_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointpos.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointpos>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointpos
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_wire_size
         */
        static const size_t max_wire_bytes = 74;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointpos<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointpos<T>::codec_identity =
        "UWVMROS1_f093835b430211359eca6939f16762efb33ebbd732878a54d60c405355c2cae9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointpos<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointpos.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointpos> : RecordMetadata_Ros2Rm_ros_interfacesMsgJointpos<uwvm_custom::Ros2Rm_ros_interfacesMsgJointpos>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointpos transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointpos const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointpos.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointpos& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointpos_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOSCUSTOM
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOSCUSTOM 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointposcustom.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointposcustom>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointposcustom
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_wire_size
         */
        static const size_t max_wire_bytes = 76;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointposcustom<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointposcustom<T>::codec_identity =
        "UWVMROS1_a8342c466e6de5036f06f8eb54492af807c2c72478bc9c613c45ef0f36d43128";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointposcustom<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointposcustom.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointposcustom> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointposcustom<uwvm_custom::Ros2Rm_ros_interfacesMsgJointposcustom>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointposcustom transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointposcustom const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointposcustom.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointposcustom& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposcustom_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOSEEULER
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTPOSEEULER 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointposeeuler.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointposeeuler>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointposeeuler
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointposeeuler<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointposeeuler<T>::codec_identity =
        "UWVMROS1_f629f726ea37ea8117468b93977e518cd14b15e0ba59db57baaccc7645563a61";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointposeeuler<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointposeeuler.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointposeeuler> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointposeeuler<uwvm_custom::Ros2Rm_ros_interfacesMsgJointposeeuler>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointposeeuler transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointposeeuler const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointposeeuler.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointposeeuler& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointposeeuler_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTSPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTSPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointspeed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointspeed>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointspeed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointspeed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointspeed<T>::codec_identity =
        "UWVMROS1_fe8c4201f8ce64b32defc98be2c587cce8c4ced032a8d9d4ab5f40849ae8855f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointspeed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointspeed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointspeed> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointspeed<uwvm_custom::Ros2Rm_ros_interfacesMsgJointspeed>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointspeed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointspeed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointspeed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointspeed& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointspeed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTTEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTTEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointteach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointteach>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointteach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointteach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointteach<T>::codec_identity =
        "UWVMROS1_ec3fa3fab05b88842b98fe91feab43fd24883090b27c7d791c77044df2ec7795";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointteach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointteach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointteach> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointteach<uwvm_custom::Ros2Rm_ros_interfacesMsgJointteach>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointteach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointteach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointteach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointteach& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointteach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTTEMPERATURE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTTEMPERATURE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointtemperature.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointtemperature>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointtemperature
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointtemperature<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointtemperature<T>::codec_identity =
        "UWVMROS1_cd4f782ab0c44d6542411d0e27612ad69a5607797634fdf106695a37fee355d9";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointtemperature<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointtemperature.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointtemperature> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointtemperature<uwvm_custom::Ros2Rm_ros_interfacesMsgJointtemperature>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointtemperature transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointtemperature const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointtemperature.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointtemperature& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointtemperature_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTVERSION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTVERSION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointversion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointversion>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointversion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_wire_size
         */
        static const size_t max_wire_bytes = 4165;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointversion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointversion<T>::codec_identity =
        "UWVMROS1_ec4c6257d44d793efb960169834aa5364d28d874e1e82c68867ad39927bcb962";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointversion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointversion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointversion> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointversion<uwvm_custom::Ros2Rm_ros_interfacesMsgJointversion>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointversion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointversion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointversion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointversion& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointversion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTVOLTAGE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_JOINTVOLTAGE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgJointvoltage.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointvoltage>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgJointvoltage
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_wire_size
         */
        static const size_t max_wire_bytes = 68;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgJointvoltage<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgJointvoltage<T>::codec_identity =
        "UWVMROS1_db1925898d4173459af2cd3006f9b16d058ea1dac52ba3fa3daad369af77d791";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgJointvoltage<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgJointvoltage.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgJointvoltage> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgJointvoltage<uwvm_custom::Ros2Rm_ros_interfacesMsgJointvoltage>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgJointvoltage transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgJointvoltage const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgJointvoltage.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgJointvoltage& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Jointvoltage_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_LIFTHEIGHT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_LIFTHEIGHT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgLiftheight.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftheight>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgLiftheight
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgLiftheight<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgLiftheight<T>::codec_identity =
        "UWVMROS1_069897e24e5d2ab8792f17309fd78237ef749275aa7ce8002c10745effbaf5c2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgLiftheight<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgLiftheight.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftheight> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgLiftheight<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftheight>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgLiftheight transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgLiftheight const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgLiftheight.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgLiftheight& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Liftheight_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_LIFTSPEED
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_LIFTSPEED 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgLiftspeed.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftspeed>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgLiftspeed
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_wire_size
         */
        static const size_t max_wire_bytes = 2;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgLiftspeed<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgLiftspeed<T>::codec_identity =
        "UWVMROS1_a2dffb64c850113dbf21eadc10be768ca45895b848d718dfa51a639832c26b29";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgLiftspeed<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgLiftspeed.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftspeed> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgLiftspeed<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftspeed>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgLiftspeed transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgLiftspeed const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgLiftspeed.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgLiftspeed& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Liftspeed_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_LIFTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_LIFTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgLiftstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgLiftstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_wire_size
         */
        static const size_t max_wire_bytes = 8;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgLiftstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgLiftstate<T>::codec_identity =
        "UWVMROS1_3d4d81e28af889981b06f0876afd85f9552495f97f9cb2c0ca497106f3481d87";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgLiftstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgLiftstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgLiftstate<uwvm_custom::Ros2Rm_ros_interfacesMsgLiftstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgLiftstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgLiftstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgLiftstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgLiftstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Liftstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MASTERNAME
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MASTERNAME 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgMastername.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMastername>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgMastername
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgMastername<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgMastername<T>::codec_identity =
        "UWVMROS1_139229cd2fb36838100463930d44a9451f9325fc0ab30386d86695fc6a6fd7e6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgMastername<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgMastername.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMastername> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgMastername<uwvm_custom::Ros2Rm_ros_interfacesMsgMastername>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgMastername transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgMastername const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgMastername.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgMastername& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Mastername_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSREADDATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSREADDATA 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbusreaddata.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusreaddata>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbusreaddata
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_wire_size
         */
        static const size_t max_wire_bytes = 69;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbusreaddata<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbusreaddata<T>::codec_identity =
        "UWVMROS1_a2305fd01b5801de653361a6a8423c175b5a09619510d6fc52d3c6b6efcc61a4";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbusreaddata<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbusreaddata.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusreaddata> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbusreaddata<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusreaddata>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbusreaddata transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbusreaddata const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbusreaddata.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbusreaddata& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusreaddata_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSRTUREADPARAMS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSRTUREADPARAMS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbusrtureadparams.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtureadparams>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtureadparams
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_wire_size
         */
        static const size_t max_wire_bytes = 16;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtureadparams<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtureadparams<T>::codec_identity =
        "UWVMROS1_693c1477a64d83682ffe6c3e3b74ab774880599b01a5e7cd476ac815aa75347d";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtureadparams<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbusrtureadparams.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtureadparams> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtureadparams<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtureadparams>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbusrtureadparams transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtureadparams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbusrtureadparams.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtureadparams& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtureadparams_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSRTUWRITEPARAMS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSRTUWRITEPARAMS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtuwriteparams>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_wire_size
         */
        static const size_t max_wire_bytes = 84;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams<T>::codec_identity =
        "UWVMROS1_01403c6213c6c470c16c3c2b8b249db85ab20700c15f46f3a96561d6aab6cb18";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtuwriteparams> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbusrtuwriteparams<uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtuwriteparams>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbusrtuwriteparams transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtuwriteparams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbusrtuwriteparams.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbusrtuwriteparams& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbusrtuwriteparams_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPMASTERINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPMASTERINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterinfo>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_wire_size
         */
        static const size_t max_wire_bytes = 525;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo<T>::codec_identity =
        "UWVMROS1_6b81b28c45a124529e96888975b122b33c869fd74368d64f60d43cd56698e8aa";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterinfo> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterinfo<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterinfo>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbustcpmasterinfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterinfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbustcpmasterinfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterinfo& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterinfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPMASTERLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPMASTERLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbustcpmasterlist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterlist>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterlist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_wire_size
         */
        static const size_t max_wire_bytes = 8668;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterlist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterlist<T>::codec_identity =
        "UWVMROS1_79e01c84e9ca23b339485c5720ea9c973161d03944ec0c74079840d04f9774a1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterlist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbustcpmasterlist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterlist> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterlist<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterlist>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbustcpmasterlist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterlist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbustcpmasterlist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterlist& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterlist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPMASTERUPDATA
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPMASTERUPDATA 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterupdata>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_wire_size
         */
        static const size_t max_wire_bytes = 784;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata<T>::codec_identity =
        "UWVMROS1_0b2b3932e2862e95368c47f6a94ec604f12b76d5c8098808a23de6b2f9df68ad";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterupdata> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpmasterupdata<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterupdata>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbustcpmasterupdata transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterupdata const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbustcpmasterupdata.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpmasterupdata& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpmasterupdata_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPREADPARAMS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPREADPARAMS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbustcpreadparams.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpreadparams>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpreadparams
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_wire_size
         */
        static const size_t max_wire_bytes = 532;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpreadparams<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpreadparams<T>::codec_identity =
        "UWVMROS1_091439cacdc77a5c2d9087a75e112cb174b255a8bd6776a79800a69146e4b7e7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpreadparams<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbustcpreadparams.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpreadparams> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpreadparams<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpreadparams>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbustcpreadparams transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpreadparams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbustcpreadparams.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpreadparams& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpreadparams_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPWRITEPARAMS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MODBUSTCPWRITEPARAMS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgModbustcpwriteparams.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpwriteparams>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpwriteparams
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_wire_size
         */
        static const size_t max_wire_bytes = 600;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpwriteparams<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpwriteparams<T>::codec_identity =
        "UWVMROS1_4a64e731b883a1dde6928a5f16a5760b7f6ac64eaf578066d859d8b5a8c0f59b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpwriteparams<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgModbustcpwriteparams.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpwriteparams> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgModbustcpwriteparams<uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpwriteparams>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgModbustcpwriteparams transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpwriteparams const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgModbustcpwriteparams.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgModbustcpwriteparams& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Modbustcpwriteparams_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEC
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEC 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgMovec.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovec>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgMovec
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_wire_size
         */
        static const size_t max_wire_bytes = 116;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgMovec<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgMovec<T>::codec_identity =
        "UWVMROS1_38ff7f7728a8e7dbf41a13933af66970695ea84b7f574103e4787164bf4c139b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgMovec<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgMovec.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovec> : RecordMetadata_Ros2Rm_ros_interfacesMsgMovec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovec>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgMovec.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgMovec default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgMovec value = uwvm_custom::Ros2Rm_ros_interfacesMsgMovec();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgMovec transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgMovec const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgMovec.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgMovec& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Movec_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEJ
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEJ 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgMovej.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovej>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgMovej
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_wire_size
         */
        static const size_t max_wire_bytes = 72;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgMovej<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgMovej<T>::codec_identity =
        "UWVMROS1_312993173527a5b6dde9ea4a53329acb4db998fd018e48571d5fe67cfd41b37b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgMovej<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgMovej.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovej> : RecordMetadata_Ros2Rm_ros_interfacesMsgMovej<uwvm_custom::Ros2Rm_ros_interfacesMsgMovej>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgMovej transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgMovej const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgMovej.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgMovej& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Movej_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEJP
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEJP 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgMovejp.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgMovejp
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_wire_size
         */
        static const size_t max_wire_bytes = 59;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgMovejp<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgMovejp<T>::codec_identity =
        "UWVMROS1_582d06c87282798190aadeffec820a654c3eb6d4cdb7dd600acff05aa0be5d72";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgMovejp<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgMovejp.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp> : RecordMetadata_Ros2Rm_ros_interfacesMsgMovejp<uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgMovejp.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp value = uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgMovejp transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgMovejp.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgMovejp& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Movejp_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEL
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVEL 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgMovel.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovel>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgMovel
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_wire_size
         */
        static const size_t max_wire_bytes = 59;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgMovel<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgMovel<T>::codec_identity =
        "UWVMROS1_bedd323ae798e9ee8c9bdfd37723bcd04da6d4ea2be2ea3b135617b9896fa5e8";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgMovel<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgMovel.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMovel> : RecordMetadata_Ros2Rm_ros_interfacesMsgMovel<uwvm_custom::Ros2Rm_ros_interfacesMsgMovel>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgMovel.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgMovel default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgMovel value = uwvm_custom::Ros2Rm_ros_interfacesMsgMovel();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgMovel transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgMovel const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgMovel.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgMovel& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Movel_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVELOFFSET
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_MOVELOFFSET 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgMoveloffset.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgMoveloffset
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_wire_size
         */
        static const size_t max_wire_bytes = 67;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgMoveloffset<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgMoveloffset<T>::codec_identity =
        "UWVMROS1_8db628a7aa137fd0a632e9a613158da09b3f8c779d3bd626cd6fc66c1b926493";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgMoveloffset<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgMoveloffset.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgMoveloffset<uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset>
    {
        /**
         * @brief Construct the declared defaults of Ros2Rm_ros_interfacesMsgMoveloffset.
         * @details Starts from zero C storage and applies the generated schema-default initializer to every
         * declared field. Plain value-initialization alone does not apply nonzero schema defaults. No
         * allocation or Host permission is required.
         * @return An independent complete C record containing its declared defaults.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_default
         */
        static uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset default_value() ROSWASM_CPP_NOEXCEPT
        {
            uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset value = uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset();
            (void)roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_default(&value);
            return value;
        }

        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgMoveloffset transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgMoveloffset.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgMoveloffset& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Moveloffset_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ORTTEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ORTTEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgOrtteach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgOrtteach>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgOrtteach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgOrtteach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgOrtteach<T>::codec_identity =
        "UWVMROS1_828e6ff29149aa578dcf551d9ad3e97087a267dd0bbe20f8da158ea9dff2a7e3";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgOrtteach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgOrtteach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgOrtteach> : RecordMetadata_Ros2Rm_ros_interfacesMsgOrtteach<uwvm_custom::Ros2Rm_ros_interfacesMsgOrtteach>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgOrtteach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgOrtteach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgOrtteach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgOrtteach& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Ortteach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_POSTEACH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_POSTEACH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgPosteach.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgPosteach>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgPosteach
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_wire_size
         */
        static const size_t max_wire_bytes = 3;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgPosteach<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgPosteach<T>::codec_identity =
        "UWVMROS1_bc647691f20ce4406973651c48148a74c7e080ec9916ab10fc85087b16ab9439";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgPosteach<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgPosteach.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgPosteach> : RecordMetadata_Ros2Rm_ros_interfacesMsgPosteach<uwvm_custom::Ros2Rm_ros_interfacesMsgPosteach>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgPosteach transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgPosteach const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgPosteach.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgPosteach& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Posteach_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_PROGRAMRUNSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_PROGRAMRUNSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgProgramrunstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgProgramrunstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgProgramrunstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_wire_size
         */
        static const size_t max_wire_bytes = 165;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgProgramrunstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgProgramrunstate<T>::codec_identity =
        "UWVMROS1_8177293c0a3c1aeee271d02ae322c7ae3494084d37ada682224566ec830f2964";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgProgramrunstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgProgramrunstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgProgramrunstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgProgramrunstate<uwvm_custom::Ros2Rm_ros_interfacesMsgProgramrunstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgProgramrunstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgProgramrunstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgProgramrunstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgProgramrunstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Programrunstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RS485PARAMS
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RS485PARAMS 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgRS485params.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRS485params>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgRS485params
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_wire_size
         */
        static const size_t max_wire_bytes = 9;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgRS485params<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgRS485params<T>::codec_identity =
        "UWVMROS1_232cdd997f067a79a7b7fb4f80fcf650de9da72f55545aeb786b45f281a5d5d7";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgRS485params<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgRS485params.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRS485params> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgRS485params<uwvm_custom::Ros2Rm_ros_interfacesMsgRS485params>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgRS485params transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgRS485params const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgRS485params.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgRS485params& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_RS485params_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMERR
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMERR 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgRmerr.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmerr>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgRmerr
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_wire_size
         */
        static const size_t max_wire_bytes = 69;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgRmerr<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgRmerr<T>::codec_identity =
        "UWVMROS1_0214f854e52c466ae60250c310e46d762242fe3a0ae85bf7b266949c8d10c74b";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgRmerr<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgRmerr.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmerr> : RecordMetadata_Ros2Rm_ros_interfacesMsgRmerr<uwvm_custom::Ros2Rm_ros_interfacesMsgRmerr>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgRmerr transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgRmerr const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgRmerr.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgRmerr& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Rmerr_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMPLUSBASE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMPLUSBASE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgRmplusbase.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusbase>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusbase
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_wire_size
         */
        static const size_t max_wire_bytes = 1437;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusbase<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusbase<T>::codec_identity =
        "UWVMROS1_624630b927c67066221f379ec58ca895880e86576a803448636fdfe0b4f2f3d6";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusbase<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgRmplusbase.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusbase> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusbase<uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusbase>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgRmplusbase transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusbase const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgRmplusbase.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusbase& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusbase_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMPLUSSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMPLUSSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgRmplusstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_wire_size
         */
        static const size_t max_wire_bytes = 724;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusstate<T>::codec_identity =
        "UWVMROS1_d01da3123f147e3c5eb51c8ea9e08c56b224d49ea8a41afa60d81af99cf894a1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgRmplusstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgRmplusstate<uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgRmplusstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgRmplusstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgRmplusstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Rmplusstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMVERSION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_RMVERSION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgRmversion.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmversion>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgRmversion
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_wire_size
         */
        static const size_t max_wire_bytes = 260;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgRmversion<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgRmversion<T>::codec_identity =
        "UWVMROS1_74ea4fcf0c1b128d73ea1b321af8bc72f281eec2755d43969497d34295484eff";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgRmversion<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgRmversion.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRmversion> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgRmversion<uwvm_custom::Ros2Rm_ros_interfacesMsgRmversion>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgRmversion transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgRmversion const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgRmversion.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgRmversion& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Rmversion_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ROBOTINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_ROBOTINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgRobotInfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRobotInfo>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgRobotInfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgRobotInfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgRobotInfo<T>::codec_identity =
        "UWVMROS1_cfe5e9cc7c94b43607d08a463a12d3f15b2a91f9a35ed5c77e9fb333bed3a2d2";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgRobotInfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgRobotInfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgRobotInfo> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgRobotInfo<uwvm_custom::Ros2Rm_ros_interfacesMsgRobotInfo>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgRobotInfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgRobotInfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgRobotInfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgRobotInfo& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_RobotInfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SENDPROJECT
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SENDPROJECT 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgSendproject.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSendproject>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgSendproject
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_wire_size
         */
        static const size_t max_wire_bytes = 288;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgSendproject<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgSendproject<T>::codec_identity =
        "UWVMROS1_625ceba69efce5e5797055d9139300b83f9c8c506b49c55d0ce45f22e022f330";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgSendproject<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgSendproject.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSendproject> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgSendproject<uwvm_custom::Ros2Rm_ros_interfacesMsgSendproject>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgSendproject transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgSendproject const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgSendproject.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgSendproject& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Sendproject_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SETFORCEPOSITION
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SETFORCEPOSITION 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgSetforceposition.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSetforceposition>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgSetforceposition
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_wire_size
         */
        static const size_t max_wire_bytes = 5;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgSetforceposition<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgSetforceposition<T>::codec_identity =
        "UWVMROS1_5789fffaac8dbc81a98dba271defe524caa2400ed010026b1236a1635d0af157";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgSetforceposition<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgSetforceposition.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSetforceposition> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgSetforceposition<uwvm_custom::Ros2Rm_ros_interfacesMsgSetforceposition>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgSetforceposition transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgSetforceposition const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgSetforceposition.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgSetforceposition& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Setforceposition_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SETREALTIMEPUSH
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SETREALTIMEPUSH 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgSetrealtimepush.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSetrealtimepush>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgSetrealtimepush
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_wire_size
         */
        static const size_t max_wire_bytes = 274;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgSetrealtimepush<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgSetrealtimepush<T>::codec_identity =
        "UWVMROS1_ce4398bb4bc2a30a854b9f2e610ce31867b4b01d1979bb1ca7c27ee8e0356368";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgSetrealtimepush<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgSetrealtimepush.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSetrealtimepush> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgSetrealtimepush<uwvm_custom::Ros2Rm_ros_interfacesMsgSetrealtimepush>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgSetrealtimepush transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgSetrealtimepush const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgSetrealtimepush.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgSetrealtimepush& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Setrealtimepush_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SIXFORCE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_SIXFORCE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgSixforce.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSixforce>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgSixforce
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_wire_size
         */
        static const size_t max_wire_bytes = 24;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgSixforce<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgSixforce<T>::codec_identity =
        "UWVMROS1_004ddf4ebf23f01c921ea38e652f7ab45bf6b17e747ac33e55f08838b760a288";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgSixforce<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgSixforce.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgSixforce> : RecordMetadata_Ros2Rm_ros_interfacesMsgSixforce<uwvm_custom::Ros2Rm_ros_interfacesMsgSixforce>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgSixforce transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgSixforce const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgSixforce.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgSixforce& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Sixforce_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_STOP
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_STOP 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgStop.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgStop>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgStop
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_wire_size
         */
        static const size_t max_wire_bytes = 1;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgStop<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgStop<T>::codec_identity =
        "UWVMROS1_b515c85f83dde19caf6ae3e504952314ba9be77064556d3aed9fbab6ee8d778a";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgStop<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgStop.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgStop> : RecordMetadata_Ros2Rm_ros_interfacesMsgStop<uwvm_custom::Ros2Rm_ros_interfacesMsgStop>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgStop transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgStop const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgStop.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgStop& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Stop_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_TOOLSOFTWAREVERSIONV4
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_TOOLSOFTWAREVERSIONV4 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgToolsoftwareversionv4>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_wire_size
         */
        static const size_t max_wire_bytes = 261;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4<T>::codec_identity =
        "UWVMROS1_ab5015e1cb20be291a6a66c7e169b79f59b41558b05095438fc8fb9f14e44991";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgToolsoftwareversionv4> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgToolsoftwareversionv4<uwvm_custom::Ros2Rm_ros_interfacesMsgToolsoftwareversionv4>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgToolsoftwareversionv4 const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgToolsoftwareversionv4.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgToolsoftwareversionv4& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Toolsoftwareversionv4_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_TRAJECTORYINFO
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_TRAJECTORYINFO 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgTrajectoryinfo.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectoryinfo>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectoryinfo
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_wire_size
         */
        static const size_t max_wire_bytes = 525;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectoryinfo<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectoryinfo<T>::codec_identity =
        "UWVMROS1_99a949e7baea68f6d2c4e2811bb45e47ce4c3e49fd572429adf1bb5501753af1";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectoryinfo<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgTrajectoryinfo.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectoryinfo> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectoryinfo<uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectoryinfo>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgTrajectoryinfo transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectoryinfo const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgTrajectoryinfo.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectoryinfo& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectoryinfo_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_TRAJECTORYLIST
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_TRAJECTORYLIST 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgTrajectorylist.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectorylist>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectorylist
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_wire_size
         */
        static const size_t max_wire_bytes = 8677;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectorylist<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectorylist<T>::codec_identity =
        "UWVMROS1_9498185ae3b53a6877f05feb80b72a7471f52105f7c394fd7ee091798391dc9f";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectorylist<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgTrajectorylist.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectorylist> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgTrajectorylist<uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectorylist>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgTrajectorylist transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectorylist const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgTrajectorylist.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgTrajectorylist& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Trajectorylist_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_UDPEXPANDSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_UDPEXPANDSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgUdpexpandstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgUdpexpandstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgUdpexpandstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_wire_size
         */
        static const size_t max_wire_bytes = 14;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgUdpexpandstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgUdpexpandstate<T>::codec_identity =
        "UWVMROS1_d3704bef2217ad73435bc3b958f185335ecdcd9ba3112d99f5dd29664a76a7c5";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgUdpexpandstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgUdpexpandstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgUdpexpandstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgUdpexpandstate<uwvm_custom::Ros2Rm_ros_interfacesMsgUdpexpandstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgUdpexpandstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgUdpexpandstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgUdpexpandstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgUdpexpandstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Udpexpandstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
#ifndef ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_UDPLIFTSTATE
# define ROSWASM_CPP_CODEC_ROSWASMC_BOUNDED_2_RM_ROS_INTERFACES_MSG_UDPLIFTSTATE 1

    /**
     * @brief ODR-safe wire metadata for Ros2Rm_ros_interfacesMsgUdpliftstate.
     * @details Template storage gives one program-wide address for each selected record identity,
     * including C++98/03 callers taking its address. These constants describe the schema and confer no
     * Host authority.
     * @tparam T Record type used to instantiate the metadata storage.
     * @see roswasmcpp::Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgUdpliftstate>
     */
    template <class T>
    struct RecordMetadata_Ros2Rm_ros_interfacesMsgUdpliftstate
    {
        /**
         * @brief Maximum admitted serialized extent in bytes.
         * @details This is a schema bound, not the size of the C storage or a grant of transport quota. The
         * actual value can encode to fewer bytes.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_wire_size
         */
        static const size_t max_wire_bytes = 13;
/**
 * @brief Exact generated canonical codec identity.
 * @details The pointed-to terminated string has static storage duration. Its bytes identify the
 * codec contract; they are not an alias grant and must not be replaced by a source-file hash.
 * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_valid
 */
# if ROSWASM_CPP_LEGACY
        static char const* const codec_identity;
# else
        static constexpr char const* codec_identity = "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817";
# endif
    };
    template <class T>
    const size_t RecordMetadata_Ros2Rm_ros_interfacesMsgUdpliftstate<T>::max_wire_bytes;
# if ROSWASM_CPP_LEGACY
    template <class T>
    char const* const RecordMetadata_Ros2Rm_ros_interfacesMsgUdpliftstate<T>::codec_identity =
        "UWVMROS1_8ba0450948ef53ead53ed721c81f39548616ee59820b96c7e7d5b3385edc8817";
# else
    template <class T>
    constexpr char const* RecordMetadata_Ros2Rm_ros_interfacesMsgUdpliftstate<T>::codec_identity;
# endif
    /**
     * @brief Canonical complete-value codec for Ros2Rm_ros_interfacesMsgUdpliftstate.
     * @details Uses the generated C validator and codec rather than C++ object layout. No Host imports
     * occur. Separate destination objects may be used concurrently; allocation failure follows the
     * selected standard library. Available in C++98 and newer.
     * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_encode
     */
    template <>
    struct Codec<uwvm_custom::Ros2Rm_ros_interfacesMsgUdpliftstate> :
        RecordMetadata_Ros2Rm_ros_interfacesMsgUdpliftstate<uwvm_custom::Ros2Rm_ros_interfacesMsgUdpliftstate>
    {
        /**
         * @brief Encode all fields of Ros2Rm_ros_interfacesMsgUdpliftstate transactionally.
         * @details Validates bounded lengths and semantic fields before allocating a temporary byte vector.
         * The original output remains unchanged on a false result. Input is borrowed only for this call;
         * the successful output owns its bytes. No Host operation or replay occurs.
         * @param[in] value Complete source record with live inline storage.
         * @param[in,out] out Owning destination, replaced only after complete encoding.
         * @return True on exact encoding; false for invalid fields or a C codec refusal. Allocation failure
         * follows the active exception/termination profile.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_encode
         */
        static bool encode(uwvm_custom::Ros2Rm_ros_interfacesMsgUdpliftstate const& value, wire::bytes& out)
        {
            if(!roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_valid(&value))
                return false;
            size_t n = roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_wire_size(&value), used = 0;
            wire::bytes next(n);
            if(roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_encode(&value, ::roswasmcpp::buffer_data(next), next.size(), &used) || used != n)
                return false;
            out.swap(next);
            return true;
        }

        /**
         * @brief Decode exact canonical bytes into Ros2Rm_ros_interfacesMsgUdpliftstate.
         * @details The C decoder checks the full record and exact consumption before committing a
         * temporary. Truncated, trailing, over-bound or invalid input leaves out unchanged. The input range
         * and output storage must not overlap. No borrowed input pointer is retained or Host call made.
         * @param[in] bytes Live immutable byte range for this synchronous call.
         * @param[in,out] out Complete owning record; unchanged on refusal.
         * @return True only for a complete validated record; otherwise false.
         * @see roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_decode
         */
        static bool decode(::roswasmcpp::ByteView bytes, uwvm_custom::Ros2Rm_ros_interfacesMsgUdpliftstate& out)
        {
            return !roswasmc_bounded_2_rm_ros_interfaces_msg_Udpliftstate_decode(bytes.data(), bytes.size(), &out);
        }
    };
#endif
}  // namespace roswasmcpp
