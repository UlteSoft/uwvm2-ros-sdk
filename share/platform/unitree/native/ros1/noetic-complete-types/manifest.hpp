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
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsBmsCmd_1 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsBmsCmd[] = {
        {custom_wire_kind::u8,    0, nullptr,                                         0},
        {custom_wire_kind::array, 3, &custom_element_Ros1Unitree_legged_msgsBmsCmd_1, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsBmsCmd{custom_wire_kind::record,
                                                                                  0,
                                                                                  custom_children_Ros1Unitree_legged_msgsBmsCmd,
                                                                                  2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsBmsCmd{
        1,
        "unitree_legged_msgs/BmsCmd",
        "c09195f3200bd8917201f8805a3fe1d1",
        "UWVMROS1_75732753b156fff8db3ba7e39541444bed2b71e139389a9b5bfbc49a4fa14928",
        4,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsBmsCmd,
        4,
        false,
        false,
        true};
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
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsLED[] = {
        {custom_wire_kind::u8, 0, nullptr, 0},
        {custom_wire_kind::u8, 0, nullptr, 0},
        {custom_wire_kind::u8, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsLED{custom_wire_kind::record, 0, custom_children_Ros1Unitree_legged_msgsLED, 3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsLED{
        1,
        "unitree_legged_msgs/LED",
        "353891e354491c51aabe32df673fb446",
        "UWVMROS1_b4efac59eaf4d3f09c069e4833dd82b5422980f6a9f27db84950243a47164ea5",
        3,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsLED,
        3,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_11 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_12 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_13 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_16 = custom_schema_Ros1Unitree_legged_msgsLED;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsHighCmd_17 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsHighCmd[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighCmd_0,  1},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighCmd_3,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighCmd_4,  1},
        {custom_wire_kind::u16,   0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::u8,    0,  nullptr,                                           0},
        {custom_wire_kind::f32,   0,  nullptr,                                           0},
        {custom_wire_kind::f32,   0,  nullptr,                                           0},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighCmd_11, 1},
        {custom_wire_kind::array, 3,  &custom_element_Ros1Unitree_legged_msgsHighCmd_12, 1},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsHighCmd_13, 1},
        {custom_wire_kind::f32,   0,  nullptr,                                           0},
        custom_schema_Ros1Unitree_legged_msgsBmsCmd,
        {custom_wire_kind::array, 4,  &custom_element_Ros1Unitree_legged_msgsHighCmd_16, 1},
        {custom_wire_kind::array, 40, &custom_element_Ros1Unitree_legged_msgsHighCmd_17, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                           0},
        {custom_wire_kind::u32,   0,  nullptr,                                           0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsHighCmd{custom_wire_kind::record,
                                                                                   0,
                                                                                   custom_children_Ros1Unitree_legged_msgsHighCmd,
                                                                                   20};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsHighCmd{
        1,
        "unitree_legged_msgs/HighCmd",
        "b4825051cf66ae8183b54c57dba16b66",
        "UWVMROS1_ec6ec8937b2629a4441adc4a21eed83fca940b18d46b970d96e05c957ac90b38",
        129,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsHighCmd,
        129,
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
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsMotorCmd_6 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsMotorCmd[] = {
        {custom_wire_kind::u8,    0, nullptr,                                           0},
        {custom_wire_kind::f32,   0, nullptr,                                           0},
        {custom_wire_kind::f32,   0, nullptr,                                           0},
        {custom_wire_kind::f32,   0, nullptr,                                           0},
        {custom_wire_kind::f32,   0, nullptr,                                           0},
        {custom_wire_kind::f32,   0, nullptr,                                           0},
        {custom_wire_kind::array, 3, &custom_element_Ros1Unitree_legged_msgsMotorCmd_6, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsMotorCmd{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros1Unitree_legged_msgsMotorCmd,
                                                                                    7};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsMotorCmd{
        1,
        "unitree_legged_msgs/MotorCmd",
        "bbb3b7d91319c3a1b99055f0149ba221",
        "UWVMROS1_632b25f209e72857182d92752aa72e3ab47a45e895cc352ee6dc05f1c1168083",
        33,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsMotorCmd,
        33,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowCmd_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowCmd_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowCmd_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowCmd_6 = custom_schema_Ros1Unitree_legged_msgsMotorCmd;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros1Unitree_legged_msgsLowCmd_8 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros1Unitree_legged_msgsLowCmd[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsLowCmd_0, 1},
        {custom_wire_kind::u8,    0,  nullptr,                                         0},
        {custom_wire_kind::u8,    0,  nullptr,                                         0},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsLowCmd_3, 1},
        {custom_wire_kind::array, 2,  &custom_element_Ros1Unitree_legged_msgsLowCmd_4, 1},
        {custom_wire_kind::u16,   0,  nullptr,                                         0},
        {custom_wire_kind::array, 20, &custom_element_Ros1Unitree_legged_msgsLowCmd_6, 1},
        custom_schema_Ros1Unitree_legged_msgsBmsCmd,
        {custom_wire_kind::array, 40, &custom_element_Ros1Unitree_legged_msgsLowCmd_8, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                         0},
        {custom_wire_kind::u32,   0,  nullptr,                                         0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros1Unitree_legged_msgsLowCmd{custom_wire_kind::record,
                                                                                  0,
                                                                                  custom_children_Ros1Unitree_legged_msgsLowCmd,
                                                                                  11};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros1Unitree_legged_msgsLowCmd{
        1,
        "unitree_legged_msgs/LowCmd",
        "7a33b01032a894134df9b65b5cd356d1",
        "UWVMROS1_11d3ac7c497f01fbf6624c39ec71fa613c462cd62acb20c1f263cdde672e9181",
        734,
        nullptr,
        0,
        &custom_schema_Ros1Unitree_legged_msgsLowCmd,
        734,
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
    inline constexpr custom_topic_descriptor custom_generated_topics[] = {custom_record_Ros1Unitree_legged_msgsBmsCmd,
                                                                          custom_record_Ros1Unitree_legged_msgsBmsState,
                                                                          custom_record_Ros1Unitree_legged_msgsCartesian,
                                                                          custom_record_Ros1Unitree_legged_msgsHighCmd,
                                                                          custom_record_Ros1Unitree_legged_msgsHighState,
                                                                          custom_record_Ros1Unitree_legged_msgsIMU,
                                                                          custom_record_Ros1Unitree_legged_msgsLED,
                                                                          custom_record_Ros1Unitree_legged_msgsLowCmd,
                                                                          custom_record_Ros1Unitree_legged_msgsLowState,
                                                                          custom_record_Ros1Unitree_legged_msgsMotorCmd,
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
