# @file CMakeLists.txt
# @brief Build the compose native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
# SPDX-License-Identifier: Apache-2.0
cmake_minimum_required(VERSION 3.20)
project(uwvm_rmw_pure_c_complete_composition LANGUAGES C CXX)
if(NOT IS_ABSOLUTE "${UWVM_COMPOSED_SOURCE_ROOT}" OR
   NOT EXISTS "${UWVM_COMPOSED_SOURCE_ROOT}/sdk/tools/platform/ros/cmake/SdkLayout.cmake")
    message(FATAL_ERROR "Select the repository containing the complete migrated sdk source layout")
endif()
include("${UWVM_COMPOSED_SOURCE_ROOT}/sdk/tools/platform/ros/cmake/SdkLayout.cmake")
foreach(component IN ITEMS cmake publisher_transport subscription_transport service_transport c_codecs)
    if(NOT EXISTS "${UWVM_RMW_C_SOURCE_DIR}/${component}/CMakeLists.txt")
        message(FATAL_ERROR "Missing genuine RMW component: ${component}")
    endif()
endforeach()
if(NOT UWVM_RMW_C_CODECS_BUILD_EXAMPLES)
    message(FATAL_ERROR "Explicitly opt in to the complete pure-C example targets")
endif()
# The selected toolchain must provide complete original static ROS2 packages.
# This composition never substitutes compatibility facade types or a C++ codec.
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/cmake" "${CMAKE_CURRENT_BINARY_DIR}/actual-rmw")
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/publisher_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-publisher")
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/subscription_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-subscription")
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/service_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-service")
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/c_codecs" "${CMAKE_CURRENT_BINARY_DIR}/actual-c-codecs")
