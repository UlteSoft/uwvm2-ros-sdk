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
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgRequestIdentity[] = {
        {custom_wire_kind::i64, 0, nullptr, 0},
        {custom_wire_kind::i64, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgRequestIdentity{custom_wire_kind::record,
                                                                                      0,
                                                                                      custom_children_Ros2Unitree_apiMsgRequestIdentity,
                                                                                      2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgRequestIdentity{
        2,
        "unitree_api/msg/RequestIdentity",
        "RIHS01_912fcf308a7cd6e27ea3aeea02515f587fa666b76af1963660429995f0e381c6",
        "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2",
        16,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgRequestIdentity,
        16,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgRequestLease[] = {
        {custom_wire_kind::i64, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgRequestLease{custom_wire_kind::record,
                                                                                   0,
                                                                                   custom_children_Ros2Unitree_apiMsgRequestLease,
                                                                                   1};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgRequestLease{
        2,
        "unitree_api/msg/RequestLease",
        "RIHS01_16b5c2257d5280a095e3e4fe26a48e782e294fa3d68760ce38599260a344bf4e",
        "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e",
        8,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgRequestLease,
        8,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgRequestPolicy[] = {
        {custom_wire_kind::i32,     0, nullptr, 0},
        {custom_wire_kind::boolean, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgRequestPolicy{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros2Unitree_apiMsgRequestPolicy,
                                                                                    2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgRequestPolicy{
        2,
        "unitree_api/msg/RequestPolicy",
        "RIHS01_742c3612b991be55430d1847af4afb2f119069f2e16e3a2143c6352a94ef35e4",
        "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8",
        5,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgRequestPolicy,
        5,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgRequestHeader[] = {custom_schema_Ros2Unitree_apiMsgRequestIdentity,
                                                                                           custom_schema_Ros2Unitree_apiMsgRequestLease,
                                                                                           custom_schema_Ros2Unitree_apiMsgRequestPolicy};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgRequestHeader{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros2Unitree_apiMsgRequestHeader,
                                                                                    3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgRequestHeader{
        2,
        "unitree_api/msg/RequestHeader",
        "RIHS01_4273d5fbe6bee52502f55a6a73427e4ae2f12329f175d7c07b95341fd527acff",
        "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0",
        29,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgRequestHeader,
        29,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_apiMsgRequest_2 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgRequest[] = {
        custom_schema_Ros2Unitree_apiMsgRequestHeader,
        {custom_wire_kind::utf8,     2048, nullptr,                                     0},
        {custom_wire_kind::sequence, 2048, &custom_element_Ros2Unitree_apiMsgRequest_2, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgRequest{custom_wire_kind::record, 0, custom_children_Ros2Unitree_apiMsgRequest, 3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgRequest{
        2,
        "unitree_api/msg/Request",
        "RIHS01_60dda80d19538b06c8f79b77222b1b7642dd753b8439a6bd535ff0cba08c5378",
        "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192",
        4133,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgRequest,
        37,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgResponseStatus[] = {
        {custom_wire_kind::i32, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgResponseStatus{custom_wire_kind::record,
                                                                                     0,
                                                                                     custom_children_Ros2Unitree_apiMsgResponseStatus,
                                                                                     1};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgResponseStatus{
        2,
        "unitree_api/msg/ResponseStatus",
        "RIHS01_282afd2a97771014abb1f5aead0fd244d648d475f55a82b0c3c41232a8c527f7",
        "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1",
        4,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgResponseStatus,
        4,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgResponseHeader[] = {custom_schema_Ros2Unitree_apiMsgRequestIdentity,
                                                                                            custom_schema_Ros2Unitree_apiMsgResponseStatus};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgResponseHeader{custom_wire_kind::record,
                                                                                     0,
                                                                                     custom_children_Ros2Unitree_apiMsgResponseHeader,
                                                                                     2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgResponseHeader{
        2,
        "unitree_api/msg/ResponseHeader",
        "RIHS01_eba136c930271eec2fc582cfccc5948f8af3fe4431492842a03a3dacb1b0d765",
        "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0",
        20,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgResponseHeader,
        20,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_apiMsgResponse_2 = {custom_wire_kind::i8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_apiMsgResponse[] = {
        custom_schema_Ros2Unitree_apiMsgResponseHeader,
        {custom_wire_kind::utf8,     2048, nullptr,                                      0},
        {custom_wire_kind::sequence, 32,   &custom_element_Ros2Unitree_apiMsgResponse_2, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_apiMsgResponse{custom_wire_kind::record, 0, custom_children_Ros2Unitree_apiMsgResponse, 3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_apiMsgResponse{
        2,
        "unitree_api/msg/Response",
        "RIHS01_5300d019bb652073e7248995c878765c68ab519bcbdbad2e2a17c81abd8888b9",
        "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f",
        2108,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_apiMsgResponse,
        28,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgAudioData_1 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgAudioData[] = {
        {custom_wire_kind::u64,      0,    nullptr,                                      0},
        {custom_wire_kind::sequence, 2048, &custom_element_Ros2Unitree_goMsgAudioData_1, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgAudioData{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgAudioData, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgAudioData{
        2,
        "unitree_go/msg/AudioData",
        "RIHS01_55973ff982f53f02855ff34a184f00ee63b68a3f65b19152448f9fd7558e7dc5",
        "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe",
        2060,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgAudioData,
        12,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgBmsCmd_1 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgBmsCmd[] = {
        {custom_wire_kind::u8,    0, nullptr,                                   0},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_goMsgBmsCmd_1, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgBmsCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgBmsCmd, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgBmsCmd{2,
                                                                                   "unitree_go/msg/BmsCmd",
                                                                                   "RIHS01_815310dff4ebba1e0d37802dfdc56d4b5a849761f613954172bdb4476aed5aa2",
                                                                                   "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339",
                                                                                   4,
                                                                                   nullptr,
                                                                                   0,
                                                                                   &custom_schema_Ros2Unitree_goMsgBmsCmd,
                                                                                   4,
                                                                                   false,
                                                                                   false,
                                                                                   true};
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
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgError[] = {
        {custom_wire_kind::u32, 0, nullptr, 0},
        {custom_wire_kind::u32, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgError{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgError, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgError{2,
                                                                                  "unitree_go/msg/Error",
                                                                                  "RIHS01_7b40e63303d9092153a3914bb136ecee44ba37d8b827b11b142444eda9bc9450",
                                                                                  "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd",
                                                                                  8,
                                                                                  nullptr,
                                                                                  0,
                                                                                  &custom_schema_Ros2Unitree_goMsgError,
                                                                                  8,
                                                                                  false,
                                                                                  false,
                                                                                  true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgGo2FrontVideoData_1 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgGo2FrontVideoData_2 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgGo2FrontVideoData_3 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgGo2FrontVideoData[] = {
        {custom_wire_kind::u64,      0,    nullptr,                                              0},
        {custom_wire_kind::sequence, 2048, &custom_element_Ros2Unitree_goMsgGo2FrontVideoData_1, 1},
        {custom_wire_kind::sequence, 2048, &custom_element_Ros2Unitree_goMsgGo2FrontVideoData_2, 1},
        {custom_wire_kind::sequence, 2048, &custom_element_Ros2Unitree_goMsgGo2FrontVideoData_3, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgGo2FrontVideoData{custom_wire_kind::record,
                                                                                       0,
                                                                                       custom_children_Ros2Unitree_goMsgGo2FrontVideoData,
                                                                                       4};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgGo2FrontVideoData{
        2,
        "unitree_go/msg/Go2FrontVideoData",
        "RIHS01_f548f7ccf101bb0255b0541484ab42aaac31305ccba06db976a8a19a3dbb1a33",
        "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad",
        6164,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgGo2FrontVideoData,
        20,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgHeightMap_5 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgHeightMap_6 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgHeightMap[] = {
        {custom_wire_kind::f64,      0,    nullptr,                                      0},
        {custom_wire_kind::utf8,     2048, nullptr,                                      0},
        {custom_wire_kind::f32,      0,    nullptr,                                      0},
        {custom_wire_kind::u32,      0,    nullptr,                                      0},
        {custom_wire_kind::u32,      0,    nullptr,                                      0},
        {custom_wire_kind::array,    2,    &custom_element_Ros2Unitree_goMsgHeightMap_5, 1},
        {custom_wire_kind::sequence, 32,   &custom_element_Ros2Unitree_goMsgHeightMap_6, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgHeightMap{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgHeightMap, 7};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgHeightMap{
        2,
        "unitree_go/msg/HeightMap",
        "RIHS01_68275718093f292da4fa0cb893b0e77660de92eb950691e1fe9f499d6cf5bff3",
        "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d",
        2212,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgHeightMap,
        36,
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
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgInterfaceConfig_2 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgInterfaceConfig[] = {
        {custom_wire_kind::u8,    0, nullptr,                                            0},
        {custom_wire_kind::u8,    0, nullptr,                                            0},
        {custom_wire_kind::array, 2, &custom_element_Ros2Unitree_goMsgInterfaceConfig_2, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgInterfaceConfig{custom_wire_kind::record,
                                                                                     0,
                                                                                     custom_children_Ros2Unitree_goMsgInterfaceConfig,
                                                                                     3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgInterfaceConfig{
        2,
        "unitree_go/msg/InterfaceConfig",
        "RIHS01_78cdda3cfbbfeb9b32fca9a056727419ed88f908ed99c64e7b810f35281be61b",
        "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110",
        4,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgInterfaceConfig,
        4,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLidarState_13 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgLidarState[] = {
        {custom_wire_kind::f64,   0,    nullptr,                                        0},
        {custom_wire_kind::utf8,  2048, nullptr,                                        0},
        {custom_wire_kind::utf8,  2048, nullptr,                                        0},
        {custom_wire_kind::utf8,  2048, nullptr,                                        0},
        {custom_wire_kind::f32,   0,    nullptr,                                        0},
        {custom_wire_kind::f32,   0,    nullptr,                                        0},
        {custom_wire_kind::u8,    0,    nullptr,                                        0},
        {custom_wire_kind::f32,   0,    nullptr,                                        0},
        {custom_wire_kind::f32,   0,    nullptr,                                        0},
        {custom_wire_kind::u32,   0,    nullptr,                                        0},
        {custom_wire_kind::u32,   0,    nullptr,                                        0},
        {custom_wire_kind::f32,   0,    nullptr,                                        0},
        {custom_wire_kind::f32,   0,    nullptr,                                        0},
        {custom_wire_kind::array, 3,    &custom_element_Ros2Unitree_goMsgLidarState_13, 1},
        {custom_wire_kind::f64,   0,    nullptr,                                        0},
        {custom_wire_kind::u32,   0,    nullptr,                                        0},
        {custom_wire_kind::u32,   0,    nullptr,                                        0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgLidarState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgLidarState, 17};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgLidarState{
        2,
        "unitree_go/msg/LidarState",
        "RIHS01_3a1405d747c51d6b5cf548ee67bc7b63d54b71673a54365fd67d6d09b7599d18",
        "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb",
        6225,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgLidarState,
        81,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgMotorCmd_6 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgMotorCmd[] = {
        {custom_wire_kind::u8,    0, nullptr,                                     0},
        {custom_wire_kind::f32,   0, nullptr,                                     0},
        {custom_wire_kind::f32,   0, nullptr,                                     0},
        {custom_wire_kind::f32,   0, nullptr,                                     0},
        {custom_wire_kind::f32,   0, nullptr,                                     0},
        {custom_wire_kind::f32,   0, nullptr,                                     0},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_goMsgMotorCmd_6, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgMotorCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgMotorCmd, 7};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgMotorCmd{
        2,
        "unitree_go/msg/MotorCmd",
        "RIHS01_4581f18a3bf58baad04f12f51747f2dd388f64aa2ac997d1d64777563c627fbf",
        "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989",
        33,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgMotorCmd,
        33,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_6 = custom_schema_Ros2Unitree_goMsgMotorCmd;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_8 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_9 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgLowCmd_10 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgLowCmd[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowCmd_0,  1},
        {custom_wire_kind::u8,    0,  nullptr,                                    0},
        {custom_wire_kind::u8,    0,  nullptr,                                    0},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowCmd_3,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowCmd_4,  1},
        {custom_wire_kind::u16,   0,  nullptr,                                    0},
        {custom_wire_kind::array, 20, &custom_element_Ros2Unitree_goMsgLowCmd_6,  1},
        custom_schema_Ros2Unitree_goMsgBmsCmd,
        {custom_wire_kind::array, 40, &custom_element_Ros2Unitree_goMsgLowCmd_8,  1},
        {custom_wire_kind::array, 12, &custom_element_Ros2Unitree_goMsgLowCmd_9,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgLowCmd_10, 1},
        {custom_wire_kind::u8,    0,  nullptr,                                    0},
        {custom_wire_kind::u32,   0,  nullptr,                                    0},
        {custom_wire_kind::u32,   0,  nullptr,                                    0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgLowCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgLowCmd, 14};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgLowCmd{2,
                                                                                   "unitree_go/msg/LowCmd",
                                                                                   "RIHS01_0da1142c994d184f6102948c3acf52b9557836cfe5062b924a1f08ac8b72dc34",
                                                                                   "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63",
                                                                                   749,
                                                                                   nullptr,
                                                                                   0,
                                                                                   &custom_schema_Ros2Unitree_goMsgLowCmd,
                                                                                   749,
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
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgMotorCmds_0 = custom_schema_Ros2Unitree_goMsgMotorCmd;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgMotorCmds[] = {
        {custom_wire_kind::sequence, 32, &custom_element_Ros2Unitree_goMsgMotorCmds_0, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgMotorCmds{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgMotorCmds, 1};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgMotorCmds{
        2,
        "unitree_go/msg/MotorCmds",
        "RIHS01_42477c00fd1a43909adb05ac604791f230536f7f4d558aabb9c1433acc0cb39b",
        "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3",
        1060,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgMotorCmds,
        4,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgMotorStates_0 = custom_schema_Ros2Unitree_goMsgMotorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgMotorStates[] = {
        {custom_wire_kind::sequence, 32, &custom_element_Ros2Unitree_goMsgMotorStates_0, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgMotorStates{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgMotorStates, 1};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgMotorStates{
        2,
        "unitree_go/msg/MotorStates",
        "RIHS01_0451336d1b203b1fc0e378d8a8e2f04a95a8346dcf988f0bb84ac4ff7ee508d6",
        "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e",
        1348,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgMotorStates,
        4,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgPathPoint[] = {
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgPathPoint{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgPathPoint, 7};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgPathPoint{
        2,
        "unitree_go/msg/PathPoint",
        "RIHS01_c8bcdd0b29c28f9e853ffa2f4d404718c058f4c084dc13737540d81edb1ccd17",
        "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4",
        28,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgPathPoint,
        28,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgReq[] = {
        {custom_wire_kind::utf8, 2048, nullptr, 0},
        {custom_wire_kind::utf8, 2048, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgReq{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgReq, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgReq{2,
                                                                                "unitree_go/msg/Req",
                                                                                "RIHS01_7fda909d42424777c947f9c33a7a243eb1a4a1e89af5124a3a2ca7d3fa043b6e",
                                                                                "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8",
                                                                                4104,
                                                                                nullptr,
                                                                                0,
                                                                                &custom_schema_Ros2Unitree_goMsgReq,
                                                                                8,
                                                                                false,
                                                                                false,
                                                                                true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgRes_1 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgRes[] = {
        {custom_wire_kind::utf8,     2048, nullptr,                                0},
        {custom_wire_kind::sequence, 2048, &custom_element_Ros2Unitree_goMsgRes_1, 1},
        {custom_wire_kind::utf8,     2048, nullptr,                                0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgRes{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgRes, 3};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgRes{2,
                                                                                "unitree_go/msg/Res",
                                                                                "RIHS01_5e730fb54d81a32e7e28ef519c9b108c99ab6be7dd77c1ef4e66f7c1e69dde16",
                                                                                "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963",
                                                                                6156,
                                                                                nullptr,
                                                                                0,
                                                                                &custom_schema_Ros2Unitree_goMsgRes,
                                                                                12,
                                                                                false,
                                                                                false,
                                                                                true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeCmd_5 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeCmd_6 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeCmd_7 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgSportModeCmd_10 = custom_schema_Ros2Unitree_goMsgPathPoint;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgSportModeCmd[] = {
        {custom_wire_kind::u8,    0,  nullptr,                                          0},
        {custom_wire_kind::u8,    0,  nullptr,                                          0},
        {custom_wire_kind::u8,    0,  nullptr,                                          0},
        {custom_wire_kind::f32,   0,  nullptr,                                          0},
        {custom_wire_kind::f32,   0,  nullptr,                                          0},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgSportModeCmd_5,  1},
        {custom_wire_kind::array, 3,  &custom_element_Ros2Unitree_goMsgSportModeCmd_6,  1},
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_goMsgSportModeCmd_7,  1},
        {custom_wire_kind::f32,   0,  nullptr,                                          0},
        custom_schema_Ros2Unitree_goMsgBmsCmd,
        {custom_wire_kind::array, 30, &custom_element_Ros2Unitree_goMsgSportModeCmd_10, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgSportModeCmd{custom_wire_kind::record,
                                                                                  0,
                                                                                  custom_children_Ros2Unitree_goMsgSportModeCmd,
                                                                                  11};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgSportModeCmd{
        2,
        "unitree_go/msg/SportModeCmd",
        "RIHS01_22c42d22e75a8d419fa6473b1d3ae92b3fa7473ca9d7bc9e336785659e7ab928",
        "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c",
        887,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgSportModeCmd,
        887,
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
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgUwbState_0 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_goMsgUwbState_13 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgUwbState[] = {
        {custom_wire_kind::array, 2, &custom_element_Ros2Unitree_goMsgUwbState_0,  1},
        {custom_wire_kind::u8,    0, nullptr,                                      0},
        {custom_wire_kind::u8,    0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::f32,   0, nullptr,                                      0},
        {custom_wire_kind::array, 2, &custom_element_Ros2Unitree_goMsgUwbState_13, 1},
        {custom_wire_kind::u8,    0, nullptr,                                      0},
        {custom_wire_kind::u8,    0, nullptr,                                      0},
        {custom_wire_kind::u8,    0, nullptr,                                      0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgUwbState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgUwbState, 17};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgUwbState{
        2,
        "unitree_go/msg/UwbState",
        "RIHS01_d02a3bf8330a002373281a2888a9ea92d6135d7eba55c918403dabc38edce7f5",
        "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34",
        55,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgUwbState,
        55,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_goMsgUwbSwitch[] = {
        {custom_wire_kind::u8, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_goMsgUwbSwitch{custom_wire_kind::record, 0, custom_children_Ros2Unitree_goMsgUwbSwitch, 1};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_goMsgUwbSwitch{
        2,
        "unitree_go/msg/UwbSwitch",
        "RIHS01_de3a330c27e9a44eb3a7dcf3547d97fdafb74230bf679e6f04e4563935a6a270",
        "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5",
        1,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_goMsgUwbSwitch,
        1,
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
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgBmsCmd_1 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgBmsCmd[] = {
        {custom_wire_kind::u8,    0,  nullptr,                                   0},
        {custom_wire_kind::array, 40, &custom_element_Ros2Unitree_hgMsgBmsCmd_1, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgBmsCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgBmsCmd, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgBmsCmd{2,
                                                                                   "unitree_hg/msg/BmsCmd",
                                                                                   "RIHS01_7b7d2f71ab061902dd207e6f243109167b3fed94427066f40180d563290b6e15",
                                                                                   "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de",
                                                                                   41,
                                                                                   nullptr,
                                                                                   0,
                                                                                   &custom_schema_Ros2Unitree_hgMsgBmsCmd,
                                                                                   41,
                                                                                   false,
                                                                                   false,
                                                                                   true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgBmsState_3 = {custom_wire_kind::u16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgBmsState_4 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgBmsState_8 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgBmsState_11 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgBmsState_12 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgBmsState[] = {
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::array, 40, &custom_element_Ros2Unitree_hgMsgBmsState_3,  1},
        {custom_wire_kind::array, 3,  &custom_element_Ros2Unitree_hgMsgBmsState_4,  1},
        {custom_wire_kind::i32,   0,  nullptr,                                      0},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::u8,    0,  nullptr,                                      0},
        {custom_wire_kind::array, 12, &custom_element_Ros2Unitree_hgMsgBmsState_8,  1},
        {custom_wire_kind::u16,   0,  nullptr,                                      0},
        {custom_wire_kind::u16,   0,  nullptr,                                      0},
        {custom_wire_kind::array, 5,  &custom_element_Ros2Unitree_hgMsgBmsState_11, 1},
        {custom_wire_kind::array, 3,  &custom_element_Ros2Unitree_hgMsgBmsState_12, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgBmsState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgBmsState, 13};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgBmsState{
        2,
        "unitree_hg/msg/BmsState",
        "RIHS01_59d9c2459ddf390072902896850ce13ea5de394157907c7dc514d2187ff3e51f",
        "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d",
        161,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgBmsState,
        161,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgMotorCmd[] = {
        {custom_wire_kind::u8,  0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::f32, 0, nullptr, 0},
        {custom_wire_kind::u32, 0, nullptr, 0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgMotorCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgMotorCmd, 7};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgMotorCmd{
        2,
        "unitree_hg/msg/MotorCmd",
        "RIHS01_b47468413c7037d0e2c0227fced04b91224cc165e5befe2b8cefacbe08391329",
        "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb",
        25,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgMotorCmd,
        25,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgHandCmd_0 = custom_schema_Ros2Unitree_hgMsgMotorCmd;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgHandCmd_1 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgHandCmd[] = {
        {custom_wire_kind::sequence, 32, &custom_element_Ros2Unitree_hgMsgHandCmd_0, 1},
        {custom_wire_kind::array,    4,  &custom_element_Ros2Unitree_hgMsgHandCmd_1, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgHandCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgHandCmd, 2};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgHandCmd{2,
                                                                                    "unitree_hg/msg/HandCmd",
                                                                                    "RIHS01_aa5efb217dfce9bba4a5c51be7d09b6426ea5ad20bb919b2033f285a2b98a8f4",
                                                                                    "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006",
                                                                                    820,
                                                                                    nullptr,
                                                                                    0,
                                                                                    &custom_schema_Ros2Unitree_hgMsgHandCmd,
                                                                                    20,
                                                                                    false,
                                                                                    false,
                                                                                    true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMotorState_5 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMotorState_7 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMotorState_9 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgMotorState[] = {
        {custom_wire_kind::u8,    0, nullptr,                                       0},
        {custom_wire_kind::f32,   0, nullptr,                                       0},
        {custom_wire_kind::f32,   0, nullptr,                                       0},
        {custom_wire_kind::f32,   0, nullptr,                                       0},
        {custom_wire_kind::f32,   0, nullptr,                                       0},
        {custom_wire_kind::array, 2, &custom_element_Ros2Unitree_hgMsgMotorState_5, 1},
        {custom_wire_kind::f32,   0, nullptr,                                       0},
        {custom_wire_kind::array, 2, &custom_element_Ros2Unitree_hgMsgMotorState_7, 1},
        {custom_wire_kind::u32,   0, nullptr,                                       0},
        {custom_wire_kind::array, 4, &custom_element_Ros2Unitree_hgMsgMotorState_9, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgMotorState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgMotorState, 10};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgMotorState{
        2,
        "unitree_hg/msg/MotorState",
        "RIHS01_9fb0c7e50cef1769037c580304750df0da54b7a6a5fbfa92880f97add4945345",
        "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934",
        53,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgMotorState,
        53,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgPressSensorState_0 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgPressSensorState_1 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgPressSensorState[] = {
        {custom_wire_kind::array, 12, &custom_element_Ros2Unitree_hgMsgPressSensorState_0, 1},
        {custom_wire_kind::array, 12, &custom_element_Ros2Unitree_hgMsgPressSensorState_1, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                             0},
        {custom_wire_kind::u32,   0,  nullptr,                                             0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgPressSensorState{custom_wire_kind::record,
                                                                                      0,
                                                                                      custom_children_Ros2Unitree_hgMsgPressSensorState,
                                                                                      4};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgPressSensorState{
        2,
        "unitree_hg/msg/PressSensorState",
        "RIHS01_3c61bae23b785ee850c57df73a948d53ca5cb00ccbdb82ee526994c77ae8d908",
        "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5",
        104,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgPressSensorState,
        104,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgIMUState_0 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgIMUState_1 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgIMUState_2 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgIMUState_3 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgIMUState[] = {
        {custom_wire_kind::array, 4, &custom_element_Ros2Unitree_hgMsgIMUState_0, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_hgMsgIMUState_1, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_hgMsgIMUState_2, 1},
        {custom_wire_kind::array, 3, &custom_element_Ros2Unitree_hgMsgIMUState_3, 1},
        {custom_wire_kind::i16,   0, nullptr,                                     0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgIMUState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgIMUState, 5};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgIMUState{
        2,
        "unitree_hg/msg/IMUState",
        "RIHS01_6fbba1a672360bf41e4393ad73d247036fd802d08adfb436d0c99a2a7b3ceec2",
        "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420",
        54,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgIMUState,
        54,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgHandState_0 = custom_schema_Ros2Unitree_hgMsgMotorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgHandState_1 = custom_schema_Ros2Unitree_hgMsgPressSensorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgHandState_7 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgHandState_8 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgHandState[] = {
        {custom_wire_kind::sequence, 32, &custom_element_Ros2Unitree_hgMsgHandState_0, 1},
        {custom_wire_kind::sequence, 32, &custom_element_Ros2Unitree_hgMsgHandState_1, 1},
        custom_schema_Ros2Unitree_hgMsgIMUState,
        {custom_wire_kind::f32,      0,  nullptr,                                      0},
        {custom_wire_kind::f32,      0,  nullptr,                                      0},
        {custom_wire_kind::f32,      0,  nullptr,                                      0},
        {custom_wire_kind::f32,      0,  nullptr,                                      0},
        {custom_wire_kind::array,    2,  &custom_element_Ros2Unitree_hgMsgHandState_7, 1},
        {custom_wire_kind::array,    2,  &custom_element_Ros2Unitree_hgMsgHandState_8, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgHandState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgHandState, 9};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgHandState{
        2,
        "unitree_hg/msg/HandState",
        "RIHS01_f8f161522deb4e58d5c1d679826c2a405b63b409db7e4ea9d17628f3029c4d2f",
        "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6",
        5118,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgHandState,
        94,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgLowCmd_2 = custom_schema_Ros2Unitree_hgMsgMotorCmd;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgLowCmd_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgLowCmd[] = {
        {custom_wire_kind::u8,    0,  nullptr,                                   0},
        {custom_wire_kind::u8,    0,  nullptr,                                   0},
        {custom_wire_kind::array, 35, &custom_element_Ros2Unitree_hgMsgLowCmd_2, 1},
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_hgMsgLowCmd_3, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                   0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgLowCmd{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgLowCmd, 5};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgLowCmd{2,
                                                                                   "unitree_hg/msg/LowCmd",
                                                                                   "RIHS01_b0eec4778db3ad67ffade328b063bea700bd1558f3f359ea5e4c86e3c3f25bc5",
                                                                                   "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461",
                                                                                   897,
                                                                                   nullptr,
                                                                                   0,
                                                                                   &custom_schema_Ros2Unitree_hgMsgLowCmd,
                                                                                   897,
                                                                                   false,
                                                                                   false,
                                                                                   true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgLowState_0 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgLowState_5 = custom_schema_Ros2Unitree_hgMsgMotorState;
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgLowState_6 = {custom_wire_kind::u8, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgLowState_7 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgLowState[] = {
        {custom_wire_kind::array, 2,  &custom_element_Ros2Unitree_hgMsgLowState_0, 1},
        {custom_wire_kind::u8,    0,  nullptr,                                     0},
        {custom_wire_kind::u8,    0,  nullptr,                                     0},
        {custom_wire_kind::u32,   0,  nullptr,                                     0},
        custom_schema_Ros2Unitree_hgMsgIMUState,
        {custom_wire_kind::array, 35, &custom_element_Ros2Unitree_hgMsgLowState_5, 1},
        {custom_wire_kind::array, 40, &custom_element_Ros2Unitree_hgMsgLowState_6, 1},
        {custom_wire_kind::array, 4,  &custom_element_Ros2Unitree_hgMsgLowState_7, 1},
        {custom_wire_kind::u32,   0,  nullptr,                                     0}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgLowState{custom_wire_kind::record, 0, custom_children_Ros2Unitree_hgMsgLowState, 9};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgLowState{
        2,
        "unitree_hg/msg/LowState",
        "RIHS01_aee6c5bd4b4d2eeca854bf47e32e4e3d34c47c2cafa05c08b6b0fa4bc51c6b3a",
        "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d",
        1983,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgLowState,
        1983,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMainBoardState_0 = {custom_wire_kind::u16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMainBoardState_1 = {custom_wire_kind::i16, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMainBoardState_2 = {custom_wire_kind::f32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_element_Ros2Unitree_hgMsgMainBoardState_3 = {custom_wire_kind::u32, 0, nullptr, 0};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_children_Ros2Unitree_hgMsgMainBoardState[] = {
        {custom_wire_kind::array, 6, &custom_element_Ros2Unitree_hgMsgMainBoardState_0, 1},
        {custom_wire_kind::array, 6, &custom_element_Ros2Unitree_hgMsgMainBoardState_1, 1},
        {custom_wire_kind::array, 6, &custom_element_Ros2Unitree_hgMsgMainBoardState_2, 1},
        {custom_wire_kind::array, 6, &custom_element_Ros2Unitree_hgMsgMainBoardState_3, 1}
    };
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_wire_node custom_schema_Ros2Unitree_hgMsgMainBoardState{custom_wire_kind::record,
                                                                                    0,
                                                                                    custom_children_Ros2Unitree_hgMsgMainBoardState,
                                                                                    4};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_record_Ros2Unitree_hgMsgMainBoardState{
        2,
        "unitree_hg/msg/MainBoardState",
        "RIHS01_1420200fd0eedd8dbabb47d0ea2c3bdb38a7ee47c682c84301326db51baa5450",
        "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6",
        72,
        nullptr,
        0,
        &custom_schema_Ros2Unitree_hgMsgMainBoardState,
        72,
        false,
        false,
        true};
    /**
     * @brief Describe one complete canonical record, field shape, or selected native topic.
     * @details Immutable descriptor storage has program lifetime. Every child, field order, quota, and independently
     * bound identity belongs to this exact profile; no operation authority is granted.
     */
    inline constexpr custom_topic_descriptor custom_generated_topics[] = {custom_record_Ros2Unitree_apiMsgRequest,
                                                                          custom_record_Ros2Unitree_apiMsgRequestHeader,
                                                                          custom_record_Ros2Unitree_apiMsgRequestIdentity,
                                                                          custom_record_Ros2Unitree_apiMsgRequestLease,
                                                                          custom_record_Ros2Unitree_apiMsgRequestPolicy,
                                                                          custom_record_Ros2Unitree_apiMsgResponse,
                                                                          custom_record_Ros2Unitree_apiMsgResponseHeader,
                                                                          custom_record_Ros2Unitree_apiMsgResponseStatus,
                                                                          custom_record_Ros2Unitree_goMsgAudioData,
                                                                          custom_record_Ros2Unitree_goMsgBmsCmd,
                                                                          custom_record_Ros2Unitree_goMsgBmsState,
                                                                          custom_record_Ros2Unitree_goMsgError,
                                                                          custom_record_Ros2Unitree_goMsgGo2FrontVideoData,
                                                                          custom_record_Ros2Unitree_goMsgHeightMap,
                                                                          custom_record_Ros2Unitree_goMsgIMUState,
                                                                          custom_record_Ros2Unitree_goMsgInterfaceConfig,
                                                                          custom_record_Ros2Unitree_goMsgLidarState,
                                                                          custom_record_Ros2Unitree_goMsgLowCmd,
                                                                          custom_record_Ros2Unitree_goMsgLowState,
                                                                          custom_record_Ros2Unitree_goMsgMotorCmd,
                                                                          custom_record_Ros2Unitree_goMsgMotorCmds,
                                                                          custom_record_Ros2Unitree_goMsgMotorState,
                                                                          custom_record_Ros2Unitree_goMsgMotorStates,
                                                                          custom_record_Ros2Unitree_goMsgPathPoint,
                                                                          custom_record_Ros2Unitree_goMsgReq,
                                                                          custom_record_Ros2Unitree_goMsgRes,
                                                                          custom_record_Ros2Unitree_goMsgSportModeCmd,
                                                                          custom_record_Ros2Unitree_goMsgSportModeState,
                                                                          custom_record_Ros2Unitree_goMsgTimeSpec,
                                                                          custom_record_Ros2Unitree_goMsgUwbState,
                                                                          custom_record_Ros2Unitree_goMsgUwbSwitch,
                                                                          custom_record_Ros2Unitree_goMsgWirelessController,
                                                                          custom_record_Ros2Unitree_hgMsgBmsCmd,
                                                                          custom_record_Ros2Unitree_hgMsgBmsState,
                                                                          custom_record_Ros2Unitree_hgMsgHandCmd,
                                                                          custom_record_Ros2Unitree_hgMsgHandState,
                                                                          custom_record_Ros2Unitree_hgMsgIMUState,
                                                                          custom_record_Ros2Unitree_hgMsgLowCmd,
                                                                          custom_record_Ros2Unitree_hgMsgLowState,
                                                                          custom_record_Ros2Unitree_hgMsgMainBoardState,
                                                                          custom_record_Ros2Unitree_hgMsgMotorCmd,
                                                                          custom_record_Ros2Unitree_hgMsgMotorState,
                                                                          custom_record_Ros2Unitree_hgMsgPressSensorState};

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
