#!/usr/bin/env bash
# @file manual-run.sh
# @brief Apply this fully visible operator-reviewed module-local offline fixture policy.
# @details No xmake hook invokes this script or creates grants. Default WASI
# retains basic stdio; only ros_comm receives the additional clock/ROS grant.
set -euo pipefail
: "${UWVM_EXECUTABLE:?Set the installed genuine runtime executable}"
: "${SDK_GATEWAY_SOCKET:?Set the actual matching controlled native gateway socket}"
: "${SDK_GATEWAY_UID:?Set the actual expected native gateway user id}"
: "${DOBOT_NATIVE_IDENTITY:?Set the independently exported exact installed RobotStatus native identity}"
: "${DOBOT_CODEC_IDENTITY:?Set RobotStatus adapter-codec-identity from the same compiled paired manifest}"
exec "${UWVM_EXECUTABLE}" \
    --wasm-preload-library build/targets/696f/io.wasm io \
    --wasm-preload-library build/targets/616c676f726974686d/algorithm.wasm algorithm \
    --wasm-preload-library build/targets/726f735f636f6d6d/ros_comm.wasm ros_comm \
    --wasm-set-main-module-name main \
    --wasip1-single-create main \
    --wasip1-single-enable main \
    --wasip1-single-create io \
    --wasip1-single-enable io \
    --wasip1-single-create algorithm \
    --wasip1-single-enable algorithm \
    --wasip1-single-create ros_comm \
    --wasip1-single-enable ros_comm \
    --wasip1-single-grant ros_comm monotonic-clock \
    --ros2-single-create ros_comm \
    --ros2-single-enable ros_comm \
    --ros2-single-call-boundary ros_comm module-exports \
    --ros2-single-gateway-socket ros_comm "${SDK_GATEWAY_SOCKET}" \
    --ros2-single-gateway-uid ros_comm "${SDK_GATEWAY_UID}" \
    --ros2-single-node-name ros_comm dobot_module_observer \
    --ros2-single-namespace ros_comm /dobot_module_fixture \
    --ros2-single-connect-timeout-ms ros_comm 5000 \
    --ros2-single-audit-deny-max-rate-hz ros_comm 100 \
    --ros2-single-audit-deny-burst ros_comm 100 \
    --ros2-single-audit-deny-max-records ros_comm 10000 \
    --ros2-single-audit-deny-max-bytes ros_comm 1048576 \
    --ros2-single-domain-id ros_comm 211 \
    --ros2-single-rmw-implementation ros_comm rmw_fastrtps_cpp \
    --ros2-single-security-mode ros_comm disabled-test \
    --ros2-single-keystore ros_comm not-applicable \
    --ros2-single-enclave ros_comm not-applicable \
    --ros2-single-grant ros_comm dobot.status topic.subscribe /dobot_module_fixture/status dobot_msgs_v4/msg/RobotStatus "${DOBOT_NATIVE_IDENTITY}" \
    --ros2-single-set ros_comm dobot.status qos.reliability reliable \
    --ros2-single-set ros_comm dobot.status qos.durability volatile \
    --ros2-single-set ros_comm dobot.status qos.history keep-last \
    --ros2-single-set ros_comm dobot.status qos.depth 4 \
    --ros2-single-set ros_comm dobot.status qos.deadline infinite \
    --ros2-single-set ros_comm dobot.status qos.lifespan infinite \
    --ros2-single-set ros_comm dobot.status qos.liveliness automatic \
    --ros2-single-set ros_comm dobot.status qos.liveliness-lease-duration infinite \
    --ros2-single-set ros_comm dobot.status validator none \
    --ros2-single-set ros_comm dobot.status max-rate-hz 100 \
    --ros2-single-set ros_comm dobot.status burst 1 \
    --ros2-single-set ros_comm dobot.status max-inflight 1 \
    --ros2-single-set ros_comm dobot.status max-bytes-per-second 1048576 \
    --ros2-single-set ros_comm dobot.status max-subscribers 1 \
    --ros2-single-set ros_comm dobot.status max-message-bytes 2 \
    --ros2-single-set ros_comm dobot.status max-queue-bytes 8 \
    --ros2-single-set ros_comm dobot.status overflow-policy drop-oldest \
    --ros2-single-set ros_comm dobot.status audit allow-and-deny \
    --ros2-single-set ros_comm dobot.status audit-max-rate-hz 100 \
    --ros2-single-set ros_comm dobot.status audit-burst 100 \
    --ros2-single-set ros_comm dobot.status audit-max-records 10000 \
    --ros2-single-set ros_comm dobot.status audit-max-bytes 1048576 \
    --ros2-single-set ros_comm dobot.status adapter-codec-identity "${DOBOT_CODEC_IDENTITY}" \
    --run build/targets/6d61696e/main.wasm
