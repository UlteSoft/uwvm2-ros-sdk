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
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgBmsState_6 = {custom_wire_kind::i8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgBmsState_7 = {custom_wire_kind::i8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgBmsState_8 = {custom_wire_kind::u16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgBmsState[] = {
        {custom_wire_kind::u8,    0,  nullptr,                                     0},
        {custom_wire_kind::u8,    0,  nullptr,                                     0},
        {custom_wire_kind::u8,    0,  nullptr,                                     0},
        {custom_wire_kind::u8,    0,  nullptr,                                     0},
        {custom_wire_kind::i32,   0,  nullptr,                                     0},
        {custom_wire_kind::u16,   0,  nullptr,                                     0},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgBmsState_6, 1},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgBmsState_7, 1},
        {custom_wire_kind::array, 15, &custom_element_Ros2Unitree_goMsgBmsState_8, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgBmsState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgBmsState, 9};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgBmsState{
        2,
        "unitree_go/msg/BmsState",
        "RIHS01_a7fe45fbbb6a908bdee78baa3b93e962ed924c143481a696f95b6911ce30b871",
        "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0",
        44,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgBmsState,
        44,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgIMUState_0 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgIMUState_1 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgIMUState_2 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgIMUState_3 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgIMUState[] = {
        {custom_wire_kind::array, 4, &custom_element_Ros2Unitree_goMsgIMUState_0, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_goMsgIMUState_1, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_goMsgIMUState_2, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_goMsgIMUState_3, 1},
        {custom_wire_kind::i8,    0, nullptr,                                     0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgIMUState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgIMUState, 5};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgIMUState{
        2,
        "unitree_go/msg/IMUState",
        "RIHS01_226772531e06ca5768dad7ae264221622e92ba1dbc7fcd7f8074351a23fe1c11",
        "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc",
        53,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgIMUState,
        53,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgMotorState_10 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgMotorState[] = {
        {custom_wire_kind::u8,    0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::f32,   0, nullptr,                                        0},
        {custom_wire_kind::i8,    0, nullptr,                                        0},
        {custom_wire_kind::u32,   0, nullptr,                                        0},
        {custom_wire_kind::array, 2, &custom_element_Ros2Unitree_goMsgMotorState_10, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgMotorState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgMotorState, 11};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgMotorState{
        2,
        "unitree_go/msg/MotorState",
        "RIHS01_86fb56a4f6bebcba854e9b510225e6666ef46cf4ea13355870c2dd3c3478a88c",
        "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62",
        42,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgMotorState,
        42,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_7 = custom_schema_Ros2Unitree_goMsgMotorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_9 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_10 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_12 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowState_19 = {custom_wire_kind::u16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgLowState[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowState_0,  1},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowState_3,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowState_4,  1},
        {custom_wire_kind::u16,   0,  nullptr,                                      0},
        custom_schema_Ros2Unitree_goMsgIMUState,
        {custom_wire_kind::array, 20, &custom_element_Ros2Unitree_goMsgLowState_7,  1},
        custom_schema_Ros2Unitree_goMsgBmsState,
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_goMsgLowState_9,  1},
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_goMsgLowState_10, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                      0},
        {custom_wire_kind::array, 40, &custom_element_Ros2Unitree_goMsgLowState_12, 1},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::f32,   0,  nullptr,                                      0},
        {custom_wire_kind::i8,    0,  nullptr,                                      0},
        {custom_wire_kind::i8,    0,  nullptr,                                      0},
        {custom_wire_kind::f32,   0,  nullptr,                                      0},
        {custom_wire_kind::f32,   0,  nullptr,                                      0},
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_goMsgLowState_19, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                      0},
        {custom_wire_kind::u32,   0,  nullptr,                                      0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgLowState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgLowState, 22};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgLowState{
        2,
        "unitree_go/msg/LowState",
        "RIHS01_db5172cac933e3cfc0e705903343eb4eea42e65e224e9d726d3e672aec0caf0f",
        "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab",
        1050,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgLowState,
        1050,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgTimeSpec[] = {
        {custom_wire_kind::i32, 0, nullptr, 0},
        {custom_wire_kind::u32, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgTimeSpec{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgTimeSpec, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgTimeSpec{
        2,
        "unitree_go/msg/TimeSpec",
        "RIHS01_0cac3f0605af323add43e1ed3ae7fc01f7c7857f41380170b3ea3a899b28cb76",
        "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4",
        8,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgTimeSpec,
        8,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeState_7 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeState_9 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeState_11 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeState_12 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeState_13 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeState_14 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgSportModeState[] = {
        custom_schema_Ros2Unitree_goMsgTimeSpec,
        {custom_wire_kind::u32,   0,  nullptr,                                            0},
        custom_schema_Ros2Unitree_goMsgIMUState,
        {custom_wire_kind::u8,    0,  nullptr,                                            0},
        {custom_wire_kind::f32,   0,  nullptr,                                            0},
        {custom_wire_kind::u8,    0,  nullptr,                                            0},
        {custom_wire_kind::f32,   0,  nullptr,                                            0},
        {custom_wire_kind::array, 3,  &custom_element_Ros2Unitree_goMsgSportModeState_7,  1},
        {custom_wire_kind::f32,   0,  nullptr,                                            0},
        {custom_wire_kind::array, 3,  &custom_element_Ros2Unitree_goMsgSportModeState_9,  1},
        {custom_wire_kind::f32,   0,  nullptr,                                            0},
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_goMsgSportModeState_11, 1},
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_goMsgSportModeState_12, 1},
        {custom_wire_kind::array, 12, &custom_element_Ros2Unitree_goMsgSportModeState_13, 1},
        {custom_wire_kind::array, 12, &custom_element_Ros2Unitree_goMsgSportModeState_14, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgSportModeState{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros2Unitree_goMsgSportModeState,
                                                                                    15};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgSportModeState{
        2,
        "unitree_go/msg/SportModeState",
        "RIHS01_814b4692a904d586a0c6fe49ce344480434364d0fb410d06df2986a16e79fcd4",
        "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760",
        227,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgSportModeState,
        227,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgWirelessController[] = {
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::u16, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgWirelessController{custom_wire_kind::record,
                                                                                        0,
                                                                                        custom_children_Ros2Unitree_goMsgWirelessController,
                                                                                        5};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgWirelessController{
        2,
        "unitree_go/msg/WirelessController",
        "RIHS01_83a5bbbf022f060aa36716ee78afb802528f26ce16238b9c3787939c830cbde5",
        "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438",
        18,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgWirelessController,
        18,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_generated_topics[] = {custom_record_Ros2Unitree_goMsgLowState,
                                                                          custom_record_Ros2Unitree_goMsgSportModeState,
                                                                          custom_record_Ros2Unitree_goMsgWirelessController};

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
