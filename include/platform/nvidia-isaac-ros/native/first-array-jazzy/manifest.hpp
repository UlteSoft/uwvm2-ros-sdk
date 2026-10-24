/**
 * @file manifest.hpp
 * @brief Immutable native identity and canonical schema registry for one original ROS2 Array topic.
 * @details The operator supplies matching native products and explicit per-module deployment authority. Source
 * metadata alone does not qualify execution, GPU access or NITROS.
 */
#pragma once
#define UWVM_ROS_CUSTOM_BOUNDED_INTERFACES 1

namespace uwvm2::imported::ros::ipc
{
    inline constexpr custom_wire_node custom_children_Ros2Builtin_interfacesMsgTime[] = {
        {custom_wire_kind::i32, 0, nullptr, 0}, {custom_wire_kind::u32, 0, nullptr, 0}};
    inline constexpr custom_wire_node custom_schema_Ros2Builtin_interfacesMsgTime{
        custom_wire_kind::record, 0, custom_children_Ros2Builtin_interfacesMsgTime, 2};
    inline constexpr custom_topic_descriptor custom_record_Ros2Builtin_interfacesMsgTime{
        2,
        "builtin_interfaces/msg/Time",
        "RIHS01_b106235e25a4c5ed35098aa0a61a3ee9c9b18d197f398b0e4206cea9acf9c197",
        "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
        8,
        nullptr,
        0,
        &custom_schema_Ros2Builtin_interfacesMsgTime,
        8,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_children_Ros2Std_msgsMsgHeader[] = {
        custom_schema_Ros2Builtin_interfacesMsgTime, {custom_wire_kind::utf8, 64, nullptr, 0}};
    inline constexpr custom_wire_node custom_schema_Ros2Std_msgsMsgHeader{
        custom_wire_kind::record, 0, custom_children_Ros2Std_msgsMsgHeader, 2};
    inline constexpr custom_topic_descriptor custom_record_Ros2Std_msgsMsgHeader{
        2,
        "std_msgs/msg/Header",
        "RIHS01_f49fb3ae2cf070f793645ff749683ac6b06203e41c891e17701b1cb597ce6a01",
        "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
        76,
        nullptr,
        0,
        &custom_schema_Ros2Std_msgsMsgHeader,
        12,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_children_Ros2Geometry_msgsMsgPoint[] = {
        {custom_wire_kind::f64, 0, nullptr, 0},
        {custom_wire_kind::f64, 0, nullptr, 0},
        {custom_wire_kind::f64, 0, nullptr, 0}};
    inline constexpr custom_wire_node custom_schema_Ros2Geometry_msgsMsgPoint{
        custom_wire_kind::record, 0, custom_children_Ros2Geometry_msgsMsgPoint, 3};
    inline constexpr custom_topic_descriptor custom_record_Ros2Geometry_msgsMsgPoint{
        2,
        "geometry_msgs/msg/Point",
        "RIHS01_6963084842a9b04494d6b2941d11444708d892da2f4b09843b9c43f42a7f6881",
        "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
        24,
        nullptr,
        0,
        &custom_schema_Ros2Geometry_msgsMsgPoint,
        24,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_children_Ros2Geometry_msgsMsgQuaternion[] = {
        {custom_wire_kind::f64, 0, nullptr, 0},
        {custom_wire_kind::f64, 0, nullptr, 0},
        {custom_wire_kind::f64, 0, nullptr, 0},
        {custom_wire_kind::f64, 0, nullptr, 0}};
    inline constexpr custom_wire_node custom_schema_Ros2Geometry_msgsMsgQuaternion{
        custom_wire_kind::record, 0, custom_children_Ros2Geometry_msgsMsgQuaternion, 4};
    inline constexpr custom_topic_descriptor custom_record_Ros2Geometry_msgsMsgQuaternion{
        2,
        "geometry_msgs/msg/Quaternion",
        "RIHS01_8a765f66778c8ff7c8ab94afcc590a2ed5325a1d9a076ffff38fbce36f458684",
        "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
        32,
        nullptr,
        0,
        &custom_schema_Ros2Geometry_msgsMsgQuaternion,
        32,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_children_Ros2Geometry_msgsMsgPose[] = {
        custom_schema_Ros2Geometry_msgsMsgPoint, custom_schema_Ros2Geometry_msgsMsgQuaternion};
    inline constexpr custom_wire_node custom_schema_Ros2Geometry_msgsMsgPose{
        custom_wire_kind::record, 0, custom_children_Ros2Geometry_msgsMsgPose, 2};
    inline constexpr custom_topic_descriptor custom_record_Ros2Geometry_msgsMsgPose{
        2,
        "geometry_msgs/msg/Pose",
        "RIHS01_d501954e9476cea2996984e812054b68026ae0bfae789d9a10b23daf35cc90fa",
        "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
        56,
        nullptr,
        0,
        &custom_schema_Ros2Geometry_msgsMsgPose,
        56,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_element_Ros2Geometry_msgsMsgPoseWithCovariance_1 = {
        custom_wire_kind::f64, 0, nullptr, 0};
    inline constexpr custom_wire_node custom_children_Ros2Geometry_msgsMsgPoseWithCovariance[] = {
        custom_schema_Ros2Geometry_msgsMsgPose,
        {custom_wire_kind::array, 36, &custom_element_Ros2Geometry_msgsMsgPoseWithCovariance_1, 1}};
    inline constexpr custom_wire_node custom_schema_Ros2Geometry_msgsMsgPoseWithCovariance{
        custom_wire_kind::record, 0, custom_children_Ros2Geometry_msgsMsgPoseWithCovariance, 2};
    inline constexpr custom_topic_descriptor custom_record_Ros2Geometry_msgsMsgPoseWithCovariance{
        2,
        "geometry_msgs/msg/PoseWithCovariance",
        "RIHS01_9a7c0fd234b7f45c6098745ecccd773ca1085670e64107135397aee31c02e1bb",
        "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2",
        344,
        nullptr,
        0,
        &custom_schema_Ros2Geometry_msgsMsgPoseWithCovariance,
        344,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_children_Ros2Geometry_msgsMsgPoseWithCovarianceStamped[] = {
        custom_schema_Ros2Std_msgsMsgHeader, custom_schema_Ros2Geometry_msgsMsgPoseWithCovariance};
    inline constexpr custom_wire_node custom_schema_Ros2Geometry_msgsMsgPoseWithCovarianceStamped{
        custom_wire_kind::record, 0, custom_children_Ros2Geometry_msgsMsgPoseWithCovarianceStamped, 2};
    inline constexpr custom_topic_descriptor custom_record_Ros2Geometry_msgsMsgPoseWithCovarianceStamped{
        2,
        "geometry_msgs/msg/PoseWithCovarianceStamped",
        "RIHS01_26432f9803e43727d3c8f668d1fdb3c630f548af631e2f4e31382371bfea3b6e",
        "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3",
        420,
        nullptr,
        0,
        &custom_schema_Ros2Geometry_msgsMsgPoseWithCovarianceStamped,
        356,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_element_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_3 =
        custom_schema_Ros2Geometry_msgsMsgPoint;
    inline constexpr custom_wire_node custom_children_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection[] = {
        {custom_wire_kind::utf8, 64, nullptr, 0},
        {custom_wire_kind::i32, 0, nullptr, 0},
        custom_schema_Ros2Geometry_msgsMsgPoint,
        {custom_wire_kind::array, 4, &custom_element_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection_3, 1},
        custom_schema_Ros2Geometry_msgsMsgPoseWithCovarianceStamped};
    inline constexpr custom_wire_node custom_schema_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{
        custom_wire_kind::record, 0, custom_children_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection, 5};
    inline constexpr custom_topic_descriptor custom_record_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{
        2,
        "isaac_ros_apriltag_interfaces/msg/AprilTagDetection",
        "RIHS01_ea7673ade75e4204d36c7af5ebd2a35417b26c2209b7764bcf9cd1a3441259c6",
        "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7",
        612,
        nullptr,
        0,
        &custom_schema_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection,
        484,
        false,
        false,
        true};
    inline constexpr custom_wire_node custom_element_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_1 =
        custom_schema_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection;
    inline constexpr custom_wire_node custom_children_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray[] = {
        custom_schema_Ros2Std_msgsMsgHeader,
        {custom_wire_kind::sequence,
         16,
         &custom_element_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray_1,
         1}};
    inline constexpr custom_wire_node custom_schema_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{
        custom_wire_kind::record, 0, custom_children_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray, 2};
    inline constexpr custom_topic_descriptor custom_record_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{
        2,
        "isaac_ros_apriltag_interfaces/msg/AprilTagDetectionArray",
        "RIHS01_45595f343aa66856ae56aee87f959a0b0ceed2132b038a7f6c6d24be707bcbff",
        "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5",
        9872,
        nullptr,
        0,
        &custom_schema_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray,
        16,
        false,
        false,
        true};
    inline constexpr custom_topic_descriptor custom_generated_topics[] = {
        custom_record_Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray};

    /**
     * @brief Borrow the immutable one-entry AprilTagDetectionArray registry.
     * @details The view has static lifetime. Dependency descriptors are not independent topic registrations.
     * Actual native identity matching and an explicit operator grant remain necessary before endpoint creation.
     */
    inline constexpr custom_topic_registry custom_topic_entries() noexcept
    {
        return {custom_generated_topics, sizeof(custom_generated_topics) / sizeof(custom_generated_topics[0])};
    }

    /**
     * @brief Report that this message-only family registers no services.
     * @details Returns an empty borrowed registry. No service operation or permission is created.
     */
    inline constexpr custom_service_registry custom_service_entries() noexcept
    {
        return {nullptr, 0};
    }

    /**
     * @brief Report that this message-only family registers no actions.
     * @details Returns an empty borrowed registry. No action operation or permission is created.
     */
    inline constexpr custom_action_registry custom_action_entries() noexcept
    {
        return {nullptr, 0};
    }
} // namespace uwvm2::imported::ros::ipc
