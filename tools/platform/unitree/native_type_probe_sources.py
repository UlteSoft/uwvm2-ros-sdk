#!/usr/bin/env python3
"""@brief Prepare a cold native compatibility probe for every original Unitree type.

@details The independently bound metadata must already exist. The generated
native program compiles every actual field assertion and checks complete local
conversion plus truncated/trailing-byte refusal. It creates no ROS participant,
transport grant, command publication, or physical hardware connection.
"""

import argparse
import json
from pathlib import Path
from binding_sources import api_for, write
from source_quality import prepare_source


def prepare(sdk, catalog, output):
    """@brief Author a native-only probe without compiling or executing it locally.

    @param sdk Reviewed SDK root providing formatter and complete schema tooling.
    @param catalog Independently native-bound catalog containing all original types.
    @param output Owned source folder beside the matching bound native headers.
    @details Default values exercise complete native/canonical layouts; they are
    not robot commands and do not replace native transport observation acceptance.
    """
    api = api_for(sdk)
    records, ordered, interfaces, pins = api.load_catalog(catalog, True)
    versions = {record.version for record in ordered}
    if len(versions) != 1:
        raise ValueError("A cold probe selects exactly one actual native ROS backend")
    version = versions.pop()
    packages = sorted({record.name.split("/", 1)[0] for record in ordered})
    source = """/**
 * @file native_type_probe.cc
 * @brief Check complete genuine installed Unitree layouts without ROS communication.
 * @details Every selected type is independently native-bound. These cold value
 * checks create no node, publisher, subscriber, service, action, or hardware link.
 */
#include "bound/native_rosVERSION.hpp"
#include <cstdio>
#include <vector>

/**
 * @brief Check one entire installed native message and both exact byte boundaries.
 * @tparam Codec Complete native adapter selected by independently bound metadata.
 * @return True after full round-trip equality and both malformed-body refusals.
 * @details All values and buffers remain local and exclusively owned. A default
 * value is never published. Allocation failure may throw to the program boundary.
 */
template <class Codec>
bool check()
{
    typename Codec::Native input{}, output{};
    std::vector<uint8_t> bytes, repeated;
    size_t extent{};
    bool valid = Codec::valid(input) && Codec::encoded_size(input, extent) &&
                 Codec::encode(input, bytes) && bytes.size() == extent &&
                 Codec::decode(bytes.data(), bytes.size(), output) &&
                 Codec::encode(output, repeated) && repeated == bytes;
    if(!bytes.empty())
    {
        valid = valid && !Codec::decode(bytes.data(), bytes.size() - 1, output);
    }
    bytes.push_back(0);
    valid = valid && !Codec::decode(bytes.data(), bytes.size(), output);
    if(std::printf("{\\"type\\":\\"%s\\",\\"complete_default_roundtrip\\":%s,"
                   "\\"truncated_and_trailing_refused\\":%s}\\n",
                   Codec::type, valid ? "true" : "false", valid ? "true" : "false") < 0)
    {
        return false;
    }
    return valid;
}

/**
 * @brief Check every selected original Unitree type with no transport operation.
 * @return Zero only if every complete conversion and byte-boundary check succeeds.
 * @details Every native field type and array extent is also compiled into its
 * exact adapter. This result qualifies cold layouts only, not endpoint behavior.
 */
int main()
{
    bool valid = true;
""".replace("VERSION", str(version))
    for record in ordered:
        source += (
            "    valid = check<uwvm_custom_bounded_native::"
            + record.symbol
            + "Codec>() && valid;\n"
        )
    source += "    return valid ? 0 : 1;\n}\n"
    write(output / "native_type_probe.cc", prepare_source(sdk, "cpp", "cpp", source))
    cmake = """# Compile actual installed ROS headers; the probe creates no participant.
cmake_minimum_required(VERSION 3.16)
project(unitree_cold_type_probe LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
if(NOT UWVM_ROS_SOURCE_ROOT)
    message(FATAL_ERROR "Select the matching maintained uwvm2-ros source root")
endif()
add_executable(unitree-native-type-probe native_type_probe.cc)
target_include_directories(unitree-native-type-probe PRIVATE ${UWVM_ROS_SOURCE_ROOT}/src)
target_compile_definitions(unitree-native-type-probe PRIVATE
    UWVM_ROS_CUSTOM_TOPIC_MANIFEST="${CMAKE_CURRENT_SOURCE_DIR}/bound/manifest.hpp")
"""
    if version == 1:
        cmake += (
            "find_package(catkin REQUIRED COMPONENTS roscpp "
            + " ".join(packages)
            + ")\n"
        )
        cmake += "target_include_directories(unitree-native-type-probe PRIVATE ${catkin_INCLUDE_DIRS})\n"
        cmake += "target_link_libraries(unitree-native-type-probe PRIVATE ${catkin_LIBRARIES})\n"
    else:
        cmake += "find_package(ament_cmake REQUIRED)\nfind_package(rclcpp REQUIRED)\n"
        cmake += "".join(
            "find_package(" + package + " REQUIRED)\n" for package in packages
        )
        cmake += (
            "ament_target_dependencies(unitree-native-type-probe rclcpp "
            + " ".join(packages)
            + ")\n"
        )
    write(output / "CMakeLists.txt", cmake)
    write(
        output / "probe-selection.json",
        json.dumps(
            {"ros_version": version, "types": [record.name for record in ordered]},
            indent=2,
        )
        + "\n",
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--catalog", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    prepare(
        args.sdk.resolve(strict=True),
        args.catalog.resolve(strict=True),
        args.output.resolve(),
    )
