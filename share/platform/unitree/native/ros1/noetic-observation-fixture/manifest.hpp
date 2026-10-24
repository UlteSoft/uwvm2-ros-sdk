/**
 * @file manifest.hpp
 * @brief Describe the immutable complete canonical Unitree registry.
 * @details Installed native identities were read independently and are checked again by the native provider.
 * Only the selected observation topics are registered. Schema registration grants no alias or ROS operation.
 */

#pragma once
#define UWVM_ROS_CUSTOM_BOUNDED_INTERFACES 1

namespace uwvm2::imported::ros::ipc
{
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsBmsState_6 = {custom_wire_kind::i8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsBmsState_7 = {custom_wire_kind::i8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsBmsState_8 = {custom_wire_kind::u16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsBmsState[] = {
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::i32,   0,  nullptr,                                           0},
        {custom_wire_kind::u16,   0,  nullptr,                                           0},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsBmsState_6, 1},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsBmsState_7, 1},
        {custom_wire_kind::array, 10, &custom_element_Ros1Unitree_legged_msgsBmsState_8, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsBmsState{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros1Unitree_legged_msgsBmsState,
                                                                                    9};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsBmsState{
        1,
        "unitree_legged_msgs/BmsState",
        "8e007c660c590388bca7c2464d80df54",
        "UWVMROS1_ef0f93501f54d0ff760039d86bd1ba1739cb0c888b3a873611679484ccec094a",
        34,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsBmsState,
        34,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsCartesian[] = {
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsCartesian{custom_wire_kind::record,
                                                                                     0,
                                                                                     custom_children_Ros1Unitree_legged_msgsCartesian,
                                                                                     3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsCartesian{
        1,
        "unitree_legged_msgs/Cartesian",
        "cc153912f1453b708d221682bc23d9ac",
        "UWVMROS1_43c7c62ba2a689751a0a15e326c5c9690a9b1f166b6726a0f803b98d2b3fa722",
        12,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsCartesian,
        12,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsIMU_0 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsIMU_1 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsIMU_2 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsIMU_3 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsIMU[] = {
        {custom_wire_kind::array, 4, &custom_element_Ros1Unitree_legged_msgsIMU_0, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros1Unitree_legged_msgsIMU_1, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros1Unitree_legged_msgsIMU_2, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros1Unitree_legged_msgsIMU_3, 1},
        {custom_wire_kind::i8,    0, nullptr,                                      0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsIMU{custom_wire_kind::record, 0, custom_children_Ros1Unitree_legged_msgsIMU, 5};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsIMU{
        1,
        "unitree_legged_msgs/IMU",
        "c2bcd83820da00fff261b67d6490da58",
        "UWVMROS1_29d9ec99e676fe8747665da588b78c8ab77a3197e281ba892ab389d2d81fa276",
        53,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsIMU,
        53,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsMotorState_9 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsMotorState[] = {
        {custom_wire_kind::u8,    0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::f32,   0, nullptr,                                             0},
        {custom_wire_kind::i8,    0, nullptr,                                             0},
        {custom_wire_kind::array, 2, &custom_element_Ros1Unitree_legged_msgsMotorState_9, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsMotorState{custom_wire_kind::record,
                                                                                      0,
                                                                                      custom_children_Ros1Unitree_legged_msgsMotorState,
                                                                                      10};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsMotorState{
        1,
        "unitree_legged_msgs/MotorState",
        "94c55ee3b7852be2bd437b20ce12a254",
        "UWVMROS1_be540cb22db5f08b6b9a8082777c76244e80f3148e9cfd63f510e4b2acdc0abf",
        38,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsMotorState,
        38,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_7 = custom_schema_Ros1Unitree_legged_msgsMotorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_9 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_10 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_15 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_17 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_19 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_20 = custom_schema_Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_21 = custom_schema_Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighState_22 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsHighState[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighState_0,  1},
        {custom_wire_kind::u8,    0,  nullptr,                                             0},
        {custom_wire_kind::u8,    0,  nullptr,                                             0},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighState_3,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighState_4,  1},
        {custom_wire_kind::u16,   0,  nullptr,                                             0},
        custom_schema_Ros1Unitree_legged_msgsIMU,
        {custom_wire_kind::array, 20, &custom_element_Ros1Unitree_legged_msgsHighState_7,  1},
        custom_schema_Ros1Unitree_legged_msgsBmsState,
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsHighState_9,  1},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsHighState_10, 1},
        {custom_wire_kind::u8,    0,  nullptr,                                             0},
        {custom_wire_kind::f32,   0,  nullptr,                                             0},
        {custom_wire_kind::u8,    0,  nullptr,                                             0},
        {custom_wire_kind::f32,   0,  nullptr,                                             0},
        {custom_wire_kind::array, 3,  &custom_element_Ros1Unitree_legged_msgsHighState_15, 1},
        {custom_wire_kind::f32,   0,  nullptr,                                             0},
        {custom_wire_kind::array, 3,  &custom_element_Ros1Unitree_legged_msgsHighState_17, 1},
        {custom_wire_kind::f32,   0,  nullptr,                                             0},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsHighState_19, 1},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsHighState_20, 1},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsHighState_21, 1},
        {custom_wire_kind::array, 40, &custom_element_Ros1Unitree_legged_msgsHighState_22, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                             0},
        {custom_wire_kind::u32,   0,  nullptr,                                             0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsHighState{custom_wire_kind::record,
                                                                                     0,
                                                                                     custom_children_Ros1Unitree_legged_msgsHighState,
                                                                                     25};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsHighState{
        1,
        "unitree_legged_msgs/HighState",
        "7904f43019dadf7640d573b4c14b9066",
        "UWVMROS1_82ee0efaab21b5cb89e99f5c0f5daec583b48dd5feb2dd6a7e09ba9d9110b53d",
        1087,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsHighState,
        1087,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_7 = custom_schema_Ros1Unitree_legged_msgsMotorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_9 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_10 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_12 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_15 = custom_schema_Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowState_16 = custom_schema_Ros1Unitree_legged_msgsCartesian;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsLowState[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsLowState_0,  1},
        {custom_wire_kind::u8,    0,  nullptr,                                            0},
        {custom_wire_kind::u8,    0,  nullptr,                                            0},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsLowState_3,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsLowState_4,  1},
        {custom_wire_kind::u16,   0,  nullptr,                                            0},
        custom_schema_Ros1Unitree_legged_msgsIMU,
        {custom_wire_kind::array, 20, &custom_element_Ros1Unitree_legged_msgsLowState_7,  1},
        custom_schema_Ros1Unitree_legged_msgsBmsState,
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsLowState_9,  1},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsLowState_10, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                            0},
        {custom_wire_kind::array, 40, &custom_element_Ros1Unitree_legged_msgsLowState_12, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                            0},
        {custom_wire_kind::u32,   0,  nullptr,                                            0},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsLowState_15, 1},
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsLowState_16, 1},
        custom_schema_Ros1Unitree_legged_msgsCartesian,
        custom_schema_Ros1Unitree_legged_msgsCartesian,
        custom_schema_Ros1Unitree_legged_msgsCartesian
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsLowState{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros1Unitree_legged_msgsLowState,
                                                                                    20};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsLowState{
        1,
        "unitree_legged_msgs/LowState",
        "481f8a83f729a25e7cc170da192f80f9",
        "UWVMROS1_37425ed49c0eebd762b6084ee413c7706fc43defc524414d3f50cdd2d25552c0",
        1069,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsLowState,
        1069,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_generated_topics[] = {custom_record_Ros1Unitree_legged_msgsHighState,
                                                                          custom_record_Ros1Unitree_legged_msgsLowState,
                                                                          custom_record_Ros1Unitree_legged_msgsMotorState};

    /**
     * @brief Return the selected immutable topic registry view.
     * @details The view borrows program-lifetime descriptor storage. Empty registries remain empty. No endpoint,
     * allocation, alias, or communication permission is created.
     * @return A non-owning descriptor pointer/count pair, valid for program lifetime.
     */
    inline constexpr custom_topic_registry custom_topic_entries() noexcept
    {
        return {custom_generated_topics, sizeof(custom_generated_topics) / sizeof(custom_generated_topics[0])};
    }

    /**
     * @brief Return the selected immutable service registry view.
     * @details The view borrows program-lifetime descriptor storage. Empty registries remain empty. No endpoint,
     * allocation, alias, or communication permission is created.
     * @return A non-owning descriptor pointer/count pair, valid for program lifetime.
     */
    inline constexpr custom_service_registry custom_service_entries() noexcept
    {
        return {nullptr, 0};
    }

    /**
     * @brief Return the selected immutable action registry view.
     * @details The view borrows program-lifetime descriptor storage. Empty registries remain empty. No endpoint,
     * allocation, alias, or communication permission is created.
     * @return A non-owning descriptor pointer/count pair, valid for program lifetime.
     */
    inline constexpr custom_action_registry custom_action_entries() noexcept
    {
        return {nullptr, 0};
    }
}  // namespace uwvm2::imported::ros::ipc
