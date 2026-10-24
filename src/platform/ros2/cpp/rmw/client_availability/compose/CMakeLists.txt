# @file CMakeLists.txt
# @brief Build the compose native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
# SPDX-License-Identifier: Apache-2.0
cmake_minimum_required(VERSION 3.20)
project(uwvm_original_rmw_availability_composition LANGUAGES C CXX)
if(NOT IS_ABSOLUTE "${UWVM_COMPOSED_SOURCE_ROOT}" OR
   NOT EXISTS "${UWVM_COMPOSED_SOURCE_ROOT}/sdk/tools/platform/ros/cmake/SdkLayout.cmake")
    message(FATAL_ERROR "Select the repository containing the complete migrated sdk source layout")
endif()
if(NOT UWVM_RMW_AVAILABILITY_MODE STREQUAL "STATIC_WASI" AND
   NOT UWVM_RMW_AVAILABILITY_MODE STREQUAL "NATIVE_CONTRACT")
    message(FATAL_ERROR "Select the actual static WASI or original-native contract toolchain")
endif()
include("${UWVM_COMPOSED_SOURCE_ROOT}/sdk/tools/platform/ros/cmake/SdkLayout.cmake")
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/cmake" "${CMAKE_CURRENT_BINARY_DIR}/actual-rmw")
if(UWVM_RMW_AVAILABILITY_BUILD_MODELS OR UWVM_RMW_AVAILABILITY_BUILD_CPP_EXAMPLE)
    include("${UWVM_ROS_LAYOUT_ROOT}/tools/platform/ros/cmake/CppCodecs.cmake")
    uwvm_rmw_attach_cpp_codecs(rmw_uwvm "${UWVM_RMW_AVAILABILITY_MODE}")
endif()
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/subscription_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-subscription")
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/service_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-service")
if(UWVM_RMW_AVAILABILITY_BUILD_C_EXAMPLE)
    add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/publisher_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-publisher")
    set(UWVM_RMW_C_CODECS_MODE "${UWVM_RMW_AVAILABILITY_MODE}")
    add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/c_codecs" "${CMAKE_CURRENT_BINARY_DIR}/actual-pure-c-codecs")
endif()
add_subdirectory("${UWVM_RMW_CPP_SOURCE_DIR}/client_availability" "${CMAKE_CURRENT_BINARY_DIR}/actual-availability")
