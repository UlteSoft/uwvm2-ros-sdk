# SPDX-License-Identifier: Apache-2.0
# @file SdkLayout.cmake
# @brief Resolve the distributed RMW source, public headers and data separately.
# @details Generated native ROS types remain dependencies supplied by genuine
# find_package targets. Compatibility facade include trees are never added.
include_guard(GLOBAL)
get_filename_component(UWVM_ROS_LAYOUT_ROOT "${CMAKE_CURRENT_LIST_DIR}/../../../.." ABSOLUTE)
set(UWVM_RMW_C_SOURCE_DIR "${UWVM_ROS_LAYOUT_ROOT}/src/platform/ros2/c/rmw")
set(UWVM_RMW_CPP_SOURCE_DIR "${UWVM_ROS_LAYOUT_ROOT}/src/platform/ros2/cpp/rmw")
set(UWVM_RMW_SHARE_DIR "${UWVM_ROS_LAYOUT_ROOT}/share/platform/ros2/rmw")
# @brief Keep source and public-header selections in one coherent SDK tree.
function(_uwvm_rmw_bind_headers variable relative)
    set(expected "${UWVM_ROS_LAYOUT_ROOT}/${relative}")
    if(DEFINED ${variable})
        if(NOT IS_ABSOLUTE "${${variable}}")
            message(FATAL_ERROR "${variable} must select the canonical absolute SDK header directory")
        endif()
        get_filename_component(selected "${${variable}}" ABSOLUTE)
        if(NOT selected STREQUAL expected)
            message(FATAL_ERROR "${variable} must match the source SDK headers at ${expected}")
        endif()
    endif()
    set(${variable} "${expected}" PARENT_SCOPE)
endfunction()
_uwvm_rmw_bind_headers(UWVM_RMW_GLOBAL_INCLUDE_DIR include)
_uwvm_rmw_bind_headers(UWVM_RMW_INCLUDE_DIR include/platform/ros2/c)
_uwvm_rmw_bind_headers(UWVM_RMW_CPP_INCLUDE_DIR include/platform/ros2/cpp)
_uwvm_rmw_bind_headers(UWVM_ROS_SDK_INCLUDE_DIR include/platform/ros/c)
_uwvm_rmw_bind_headers(UWVM_SDK_INCLUDE include/platform/ros/c)
foreach(input IN ITEMS
        "${UWVM_RMW_INCLUDE_DIR}/uwvm_rmw/codec.h"
        "${UWVM_RMW_INCLUDE_DIR}/uwvm_rmw_c/provider.h"
        "${UWVM_RMW_CPP_INCLUDE_DIR}/uwvm_rmw/cpp_codecs.hpp"
        "${UWVM_ROS_SDK_INCLUDE_DIR}/roswasm/codec.h")
    if(NOT EXISTS "${input}" OR IS_DIRECTORY "${input}")
        message(FATAL_ERROR "The installed SDK lacks a required RMW source header: ${input}")
    endif()
endforeach()

# @brief Add only the shared SDK headers needed by an existing RMW component.
# @param target Real library target; original ROS headers come from its packages.
function(uwvm_ros_rmw_target_headers target)
    if(NOT TARGET "${target}")
        message(FATAL_ERROR "Create the actual RMW target before attaching headers")
    endif()
    get_target_property(kind "${target}" TYPE)
    if(kind STREQUAL "INTERFACE_LIBRARY")
        set(scope INTERFACE)
    else()
        set(scope PUBLIC)
    endif()
    target_include_directories("${target}" ${scope}
        "$<BUILD_INTERFACE:${UWVM_RMW_GLOBAL_INCLUDE_DIR}>"
        "$<BUILD_INTERFACE:${UWVM_RMW_INCLUDE_DIR}>"
        "$<BUILD_INTERFACE:${UWVM_RMW_CPP_INCLUDE_DIR}>"
        "$<BUILD_INTERFACE:${UWVM_ROS_SDK_INCLUDE_DIR}>"
        "$<INSTALL_INTERFACE:include>"
        "$<INSTALL_INTERFACE:include/platform/ros2/c>"
        "$<INSTALL_INTERFACE:include/platform/ros2/cpp>"
        "$<INSTALL_INTERFACE:include/platform/ros/c>")
endfunction()

# @brief Install one canonical header layout, preserving qualified public imports.
function(uwvm_ros_rmw_install_headers)
    get_property(scheduled GLOBAL PROPERTY UWVM_ROS_RMW_HEADERS_SCHEDULED)
    if(NOT scheduled)
        install(DIRECTORY "${UWVM_RMW_INCLUDE_DIR}/uwvm_rmw" "${UWVM_RMW_INCLUDE_DIR}/uwvm_rmw_c"
            DESTINATION include/platform/ros2/c)
        install(FILES "${UWVM_RMW_INCLUDE_DIR}/uwvm_rmw_platform.h" DESTINATION include/platform/ros2/c)
        install(DIRECTORY "${UWVM_RMW_CPP_INCLUDE_DIR}/uwvm_rmw" DESTINATION include/platform/ros2/cpp)
        install(DIRECTORY "${UWVM_ROS_SDK_INCLUDE_DIR}/roswasm" DESTINATION include/platform/ros/c)
        set_property(GLOBAL PROPERTY UWVM_ROS_RMW_HEADERS_SCHEDULED TRUE)
    endif()
endfunction()
