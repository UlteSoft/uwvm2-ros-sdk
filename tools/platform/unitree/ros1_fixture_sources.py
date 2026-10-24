#!/usr/bin/env python3
"""@brief Prepare complete genuine ROS 1 Unitree messages and a native metadata reader.

@details This local preparation copies audited original declarations and emits
readable catkin/CMake source. Compilation and execution take place separately
inside the isolated Linux Noetic environment; no physical robot is contacted.
"""

import argparse
import json
from pathlib import Path
import shutil
from binding_sources import api_for, write
from native_source_quality import prepare_native_source
from source_quality import prepare_source

SELECTED = {
    "unitree_legged_msgs/HighState",
    "unitree_legged_msgs/LowState",
    "unitree_legged_msgs/MotorState",
}


def prepare(sdk, output, all_types=False):
    """@brief Write an isolated original-source catkin package and metadata reader.

    @param sdk Reviewed SDK root containing the exact audited ROS 1 declarations.
    @param output Owned source directory, synchronized as a whole to Linux.
    @param all_types Retain every original type for cold compatibility with no transport operation.
    @details All three selected state topics retain every transitive dependency.
    Only these three types are registered for the eventual observation fixture.
    Generated source does not establish an installed native identity or grant.
    """
    api = api_for(sdk)
    catalog_path = sdk / "share/platform/unitree/catalogs/ros1/catalog.preparation.json"
    records, ordered, interfaces, pins = api.load_catalog(catalog_path, False)
    selected = (
        {name for version, name in records if version == 1}
        if all_types
        else set(SELECTED)
    )
    wanted = set(selected)

    def visit(name):
        """@brief Retain every transitive original native record dependency."""
        for member in records[(1, name)].members:
            if (1, member.type) in records and member.type not in wanted:
                wanted.add(member.type)
                visit(member.type)

    for name in selected:
        visit(name)
    catalog = json.loads(catalog_path.read_text())
    catalog["types"] = [
        dict(row, registered=row["type"] in selected)
        for row in catalog["types"]
        if row["type"] in wanted
    ]
    for row in catalog["types"]:
        destination = output / "catalog" / row["file"]
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(catalog_path.parent / row["file"], destination)
    selected = output / "catalog/catalog.preparation.json"
    write(selected, json.dumps(catalog, indent=2) + "\n")
    helper = sdk / "tools/platform/unitree/native/metadata_reader.cc.in"
    products, proof = api.products(
        selected, guest_only=True, helper_source=helper.read_bytes()
    )
    source = products["native_identity.cc"].replace(
        "test/0073.ros-tests/support/source/ros_custom_types/bounded-v2/native_protocol.h",
        "native_protocol.h",
    )
    write(output / "native_identity.cc", prepare_source(sdk, "cpp", "cpp", source))
    write(
        output / "native_constants.hpp",
        prepare_native_source(
            sdk, "native_constants.hpp", products["native_constants.hpp"]
        ),
    )
    write(
        output / "native_protocol.h",
        (sdk / "tools/platform/unitree/native/native_protocol.h").read_text(),
    )
    write(
        output / "CMakeLists.txt",
        """# Read actual installed ROS 1 traits; this program constructs no ROS node.
cmake_minimum_required(VERSION 3.10)
project(unitree_native_metadata LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
find_package(catkin REQUIRED COMPONENTS roscpp unitree_legged_msgs)
add_executable(unitree-native-metadata native_identity.cc)
target_compile_definitions(unitree-native-metadata PRIVATE UWVM_CUSTOM_NATIVE_ROS_VERSION=1)
target_include_directories(unitree-native-metadata PRIVATE ${catkin_INCLUDE_DIRS})
target_link_libraries(unitree-native-metadata PRIVATE ${catkin_LIBRARIES})
""",
    )
    package = output / "native_ros_ws/src/unitree_legged_msgs"
    definitions = sorted(
        (catalog_path.parent / "unitree_legged_msgs/msg").glob("*.msg")
    )
    for source in definitions:
        destination = package / "msg" / source.name
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, destination)
    write(
        package / "CMakeLists.txt",
        """# Compile every original audited Unitree ROS 1 declaration without projection.
cmake_minimum_required(VERSION 3.10)
project(unitree_legged_msgs)
find_package(catkin REQUIRED COMPONENTS std_msgs message_generation)
add_message_files(FILES
"""
        + "".join("    " + source.name + "\n" for source in definitions)
        + """)
generate_messages(DEPENDENCIES std_msgs)
catkin_package(CATKIN_DEPENDS message_runtime std_msgs)
""",
    )
    write(
        package / "package.xml",
        """<?xml version="1.0"?>
<package format="2">
  <name>unitree_legged_msgs</name><version>0.0.0</version>
  <description>Original Unitree messages for isolated native observation acceptance.</description>
  <maintainer email="sdk@example.invalid">uwvm SDK validation</maintainer>
  <license>BSD-3-Clause</license>
  <buildtool_depend>catkin</buildtool_depend>
  <build_depend>message_generation</build_depend>
  <depend>std_msgs</depend>
  <exec_depend>message_runtime</exec_depend>
</package>
""",
    )
    write(output / "generation.json", json.dumps(proof, indent=2) + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", required=True, type=Path)
    parser.add_argument("--output", required=True, type=Path)
    parser.add_argument("--all-types", action="store_true")
    args = parser.parse_args()
    prepare(args.sdk.resolve(strict=True), args.output.resolve(), args.all_types)
