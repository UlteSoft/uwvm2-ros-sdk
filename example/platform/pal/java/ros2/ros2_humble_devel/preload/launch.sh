#!/bin/sh
# @file launch.sh
# @brief Submit the complete explicit four-module runtime policy unchanged.
# @details The caller supplies the runtime and independently provisioned native
# gateway. This script grants ROS only to the loaded ros_comm module identity.
set -eu
: "${UWVM_RUNTIME:?Set the absolute uwvm2-ros executable or installed launcher}"
: "${UWVM_ROS_GATEWAY_SOCKET:?Set the absolute native gateway AF_UNIX socket}"
: "${UWVM_ROS_GATEWAY_UID:?Set the explicitly trusted native gateway numeric UID}"

exec "$UWVM_RUNTIME" \
  --runtime-int \
  --wasm-set-main-module-name main \
  --wasm-preload-library build/io.wasm io \
  --wasm-preload-library build/algorithm.wasm algorithm \
  --wasm-preload-library build/ros_comm.wasm ros_comm \
  --wasip1-global-noinherit-system-environment \
  --wasip1-single-create main \
  --wasip1-single-noinherit-system-environment main \
  --wasip1-single-create io \
  --wasip1-single-noinherit-system-environment io \
  --wasip1-single-create algorithm \
  --wasip1-single-noinherit-system-environment algorithm \
  --wasip1-single-create ros_comm \
  --wasip1-single-noinherit-system-environment ros_comm \
  --ros2-global-disable \
  --ros2-single-create main \
  --ros2-single-disable main \
  --ros2-single-create io \
  --ros2-single-disable io \
  --ros2-single-create algorithm \
  --ros2-single-disable algorithm \
  --ros2-single-create ros_comm \
  --ros2-single-enable ros_comm \
  --ros2-single-gateway-socket ros_comm "$UWVM_ROS_GATEWAY_SOCKET" \
  --ros2-single-gateway-uid ros_comm "$UWVM_ROS_GATEWAY_UID" \
  --ros2-single-connect-timeout-ms ros_comm 5000 \
  --ros2-single-audit-deny-max-rate-hz ros_comm 10 \
  --ros2-single-audit-deny-burst ros_comm 4 \
  --ros2-single-audit-deny-max-records ros_comm 32 \
  --ros2-single-audit-deny-max-bytes ros_comm 8192 \
  --ros2-single-node-name ros_comm sdk_managed_preload \
  --ros2-single-namespace ros_comm /sdk/shared \
  --ros2-single-domain-id ros_comm 42 \
  --ros2-single-rmw-implementation ros_comm rmw_fastrtps_cpp \
  --ros2-single-security-mode ros_comm disabled-test \
  --ros2-single-keystore ros_comm not-applicable \
  --ros2-single-enclave ros_comm not-applicable \
  --ros2-single-grant ros_comm shared_pub topic.publish /sdk/shared/chatter std_msgs/msg/String RIHS01_df668c740482bbd48fb39d76a70dfd4bd59db1288021743503259e948f6b1a18 \
  --ros2-single-set ros_comm shared_pub max-message-bytes 256 \
  --ros2-single-set ros_comm shared_pub max-rate-hz 10 \
  --ros2-single-set ros_comm shared_pub burst 4 \
  --ros2-single-set ros_comm shared_pub max-bytes-per-second 1024 \
  --ros2-single-set ros_comm shared_pub max-queue-bytes 256 \
  --ros2-single-set ros_comm shared_pub max-publishers 1 \
  --ros2-single-set ros_comm shared_pub max-inflight 1 \
  --ros2-single-set ros_comm shared_pub overflow-policy reject \
  --ros2-single-set ros_comm shared_pub validator none \
  --ros2-single-set ros_comm shared_pub audit allow-and-deny \
  --ros2-single-set ros_comm shared_pub audit-max-rate-hz 10 \
  --ros2-single-set ros_comm shared_pub audit-burst 4 \
  --ros2-single-set ros_comm shared_pub audit-max-records 32 \
  --ros2-single-set ros_comm shared_pub audit-max-bytes 8192 \
  --ros2-single-set ros_comm shared_pub qos.reliability reliable \
  --ros2-single-set ros_comm shared_pub qos.durability volatile \
  --ros2-single-set ros_comm shared_pub qos.history keep-last \
  --ros2-single-set ros_comm shared_pub qos.depth 1 \
  --ros2-single-set ros_comm shared_pub qos.deadline infinite \
  --ros2-single-set ros_comm shared_pub qos.lifespan infinite \
  --ros2-single-set ros_comm shared_pub qos.liveliness automatic \
  --ros2-single-set ros_comm shared_pub qos.liveliness-lease-duration infinite \
  --run build/main.wasm
