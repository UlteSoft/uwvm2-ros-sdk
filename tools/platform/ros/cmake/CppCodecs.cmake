# SPDX-License-Identifier: Apache-2.0
# @file CppCodecs.cmake
# @brief Attach the shared ROS2 C++ object codecs to an explicit consumer.
# @details Compile the maintained implementation against actual generated ROS2
# types and their installed or in-tree type-support targets. This function does
# not register a native identity, select an endpoint, or grant ROS authority.
include_guard(GLOBAL)

# @brief Add the C++ codecs exactly once to an existing build target.
# @param target Existing native gateway or Wasm RMW target with CXX enabled.
# @param mode STATIC_WASI for static guest type support, or NATIVE_CONTRACT for
# the native gateway and its separately executed qualification programs.
# @details All consumers must use the same public codec headers and generated
# interface packages. A STATIC_WASI selection rejects dynamic type support.
function(uwvm_rmw_attach_cpp_codecs target mode)
    if(NOT TARGET "${target}" OR NOT CMAKE_CXX_COMPILER_LOADED)
        message(FATAL_ERROR "C++ codecs require an existing target and the CXX language")
    endif()
    if(NOT mode STREQUAL "STATIC_WASI" AND NOT mode STREQUAL "NATIVE_CONTRACT")
        message(FATAL_ERROR "Select STATIC_WASI or NATIVE_CONTRACT explicitly")
    endif()
    get_property(attached TARGET "${target}" PROPERTY UWVM_RMW_CPP_CODECS_ATTACHED)
    if(attached)
        message(FATAL_ERROR "C++ codecs may be attached only once to a target")
    endif()

    get_filename_component(sdk_root "${CMAKE_CURRENT_FUNCTION_LIST_DIR}/../../../.." ABSOLUTE)
    set(codec_source "${sdk_root}/src/platform/ros2/cpp/rmw/src/cpp_codecs.cpp")
    foreach(input IN ITEMS
            "${codec_source}"
            "${sdk_root}/include/platform/ros2/cpp/uwvm_rmw/cpp_codecs.hpp"
            "${sdk_root}/include/platform/ros2/c/uwvm_rmw/codec.h")
        if(NOT EXISTS "${input}" OR IS_DIRECTORY "${input}")
            message(FATAL_ERROR "Required public C++ codec input is missing: ${input}")
        endif()
    endforeach()

    find_package(rosidl_cmake REQUIRED)
    find_package(rosidl_runtime_cpp REQUIRED)
    find_package(rosidl_typesupport_cpp REQUIRED)
    find_package(rosidl_typesupport_introspection_cpp REQUIRED)
    set(type_support_targets)
    foreach(package IN ITEMS std_msgs std_srvs example_interfaces service_msgs builtin_interfaces)
        find_package(${package} REQUIRED)
        foreach(provider IN ITEMS rosidl_typesupport_cpp rosidl_typesupport_introspection_cpp)
            # Installed packages export namespaced targets. The rosidl helper
            # instead resolves a package generated within the current build.
            if(TARGET "${package}::${package}__${provider}")
                set(type_support "${package}::${package}__${provider}")
            elseif(TARGET "${package}")
                rosidl_get_typesupport_target(type_support "${package}" "${provider}")
            else()
                message(FATAL_ERROR "Generated type-support package is missing: ${package}")
            endif()
            if(NOT type_support OR NOT TARGET "${type_support}")
                message(FATAL_ERROR "Generated type-support target is missing: ${package}/${provider}")
            endif()
            if(mode STREQUAL "STATIC_WASI")
                get_target_property(target_type "${type_support}" TYPE)
                if(NOT target_type STREQUAL "STATIC_LIBRARY")
                    message(FATAL_ERROR "Wasm codecs require static generated type support: ${type_support}")
                endif()
            endif()
            list(APPEND type_support_targets "${type_support}")
        endforeach()
    endforeach()

    target_sources("${target}" PRIVATE "${codec_source}")
    target_compile_features("${target}" PUBLIC cxx_std_20)
    target_include_directories("${target}" PUBLIC
        "${sdk_root}/include"
        "${sdk_root}/include/platform/ros/c")
    target_link_libraries("${target}" PUBLIC ${type_support_targets})
    set_property(TARGET "${target}" PROPERTY UWVM_RMW_CPP_CODECS_ATTACHED TRUE)
    set_property(TARGET "${target}" PROPERTY UWVM_RMW_CPP_CODECS_MODE "${mode}")
endfunction()
