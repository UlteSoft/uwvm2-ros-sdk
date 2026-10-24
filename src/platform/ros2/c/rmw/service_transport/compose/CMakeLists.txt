# @file CMakeLists.txt
# @brief Build the compose native ROS integration from the canonical SDK layout.
# @details Original ROS packages supply type support; SDK headers and definitions
# remain in their public include and share roots. Configuration grants no ROS rights.
# SPDX-License-Identifier: Apache-2.0
cmake_minimum_required(VERSION 3.20)
project(uwvm_rmw_service_explicit_composition LANGUAGES C CXX)
set(UWVM_COMPOSED_SOURCE_ROOT "" CACHE PATH "Repository containing the complete migrated SDK")
set(UWVM_RMW_CPP_MODE "" CACHE STRING "Explicit STATIC_WASI or NATIVE_CONTRACT")
option(UWVM_RMW_SERVICE_BUILD_MODELS "Actual SDK/local synthetic protocol models" OFF)
option(UWVM_RMW_SERVICE_BUILD_INTEROP_EXAMPLES "Actual C API plus real C++ object companion" OFF)
option(UWVM_RMW_SERVICE_BUILD_PURE_C_ADD_EXAMPLE "Actual C objects and actual C AddTwoInts codec" OFF)
if(NOT IS_ABSOLUTE "${UWVM_COMPOSED_SOURCE_ROOT}" OR
   NOT EXISTS "${UWVM_COMPOSED_SOURCE_ROOT}/sdk/tools/platform/ros/cmake/SdkLayout.cmake")
    message(FATAL_ERROR "Select the repository containing the complete migrated sdk source layout")
endif()
include("${UWVM_COMPOSED_SOURCE_ROOT}/sdk/tools/platform/ros/cmake/SdkLayout.cmake")
if(NOT EXISTS "${UWVM_RMW_C_SOURCE_DIR}/service_transport/src/service_transport.c")
    message(FATAL_ERROR "The complete genuine service transport source is required")
endif()
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/cmake" "${CMAKE_CURRENT_BINARY_DIR}/actual-rmw")
if(UWVM_RMW_SERVICE_BUILD_MODELS OR UWVM_RMW_SERVICE_BUILD_INTEROP_EXAMPLES)
    include("${UWVM_ROS_LAYOUT_ROOT}/tools/platform/ros/cmake/CppCodecs.cmake")
    uwvm_rmw_attach_cpp_codecs(rmw_uwvm "${UWVM_RMW_CPP_MODE}")
endif()
if(UWVM_RMW_SERVICE_BUILD_MODELS)
    add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/subscription_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-subscription")
endif()
add_subdirectory("${UWVM_RMW_C_SOURCE_DIR}/service_transport" "${CMAKE_CURRENT_BINARY_DIR}/actual-service")
