#!/usr/bin/env python3
"""@brief Author isolated genuine ROS interface and metadata fixtures before SCP.

@details Native rosidl compiles the exact official .msg bytes. Only observation
publishers are created by the fixture. Production gateway/runtime compilation
uses their existing maintained sources with this exact native-bound catalog.
"""

import argparse
import json
from pathlib import Path
import shutil
import sys
from binding_sources import api_for, write
from source_quality import prepare_source

SELECTED = {
    "unitree_go/msg/SportModeState",
    "unitree_go/msg/LowState",
    "unitree_go/msg/WirelessController",
}


def prepare(sdk, output, all_types=False):
    """@brief Prepare exact native declarations and a metadata reader.

    @param sdk Existing authored SDK root.
    @param output Owned local fixture folder, synchronized to a dedicated host.
    @param all_types Retain every original type for cold native type compatibility; still grant no operation.
    @details This function only generates/copies source. No local compiler,
    source interpreter for a guest, ROS participant, or physical robot is run.
    """
    api = api_for(sdk)
    catalog_path = sdk / "share/platform/unitree/catalogs/ros2/catalog.preparation.json"
    records, ordered, interfaces, pins = api.load_catalog(catalog_path, False)
    selected = (
        {name for version, name in records if version == 2}
        if all_types
        else set(SELECTED)
    )
    wanted = set(selected)

    def visit(name):
        for member in records[(2, name)].members:
            if (2, member.type) in records and member.type not in wanted:
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
    write(
        output / "catalog/catalog.preparation.json",
        json.dumps(catalog, indent=2) + "\n",
    )
    helper = sdk / "tools/platform/unitree/native/metadata_reader.cc.in"
    products, proof = api.products(
        output / "catalog/catalog.preparation.json",
        guest_only=True,
        helper_source=helper.read_bytes(),
    )
    for name in ("native_identity.cc", "native_constants.hpp"):
        write(
            output / name,
            prepare_source(
                sdk,
                "cpp",
                "cpp" if name.endswith(".cc") else "hpp",
                products[name].replace(
                    "test/0073.ros-tests/support/source/ros_custom_types/bounded-v2/native_protocol.h",
                    "native_protocol.h",
                ),
            ),
        )
    protocol = (sdk / "tools/platform/unitree/native/native_protocol.h").read_text()
    write(output / "native_protocol.h", protocol)
    packages = sorted({name.split("/", 1)[0] for name in wanted})
    write(
        output / "CMakeLists.txt",
        """# Build a genuine installed ROS metadata reader; creates no ROS node.
cmake_minimum_required(VERSION 3.16)
project(unitree_native_metadata LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 17)
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
"""
        + "".join("find_package(" + package + " REQUIRED)\n" for package in packages)
        + """add_executable(unitree-native-metadata native_identity.cc)
target_compile_definitions(unitree-native-metadata PRIVATE UWVM_CUSTOM_NATIVE_ROS_VERSION=2)
ament_target_dependencies(unitree-native-metadata rclcpp """
        + " ".join(packages)
        + ")\n",
    )
    for package_name in packages:
        package = output / "native_ros_ws/src" / package_name
        definitions = sorted((catalog_path.parent / package_name / "msg").glob("*.msg"))
        for source in definitions:
            target = package / "msg" / source.name
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(source, target)
        write(
            package / "CMakeLists.txt",
            """# Preserve every original audited Unitree declaration without projection.
cmake_minimum_required(VERSION 3.16)
project("""
            + package_name
            + """)
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
rosidl_generate_interfaces(${PROJECT_NAME}
"""
            + "".join(f'    "msg/{source.name}"\n' for source in definitions)
            + """)
ament_export_dependencies(rosidl_default_runtime)
ament_package()
""",
        )
        write(
            package / "package.xml",
            """<?xml version="1.0"?>
<package format="3">
  <name>"""
            + package_name
            + """</name><version>0.0.0</version>
  <description>Unmodified Unitree ROS declarations for isolated observation validation.</description>
  <maintainer email="sdk@example.invalid">uwvm SDK validation</maintainer>
  <license>BSD-3-Clause</license>
  <buildtool_depend>ament_cmake</buildtool_depend>
  <build_depend>rosidl_default_generators</build_depend>
  <exec_depend>rosidl_default_runtime</exec_depend>
  <member_of_group>rosidl_interface_packages</member_of_group>
  <export><build_type>ament_cmake</build_type></export>
</package>
""",
        )
    write(output / "generation.json", json.dumps(proof, indent=2) + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--all-types", action="store_true")
    args = parser.parse_args()
    prepare(args.sdk.resolve(strict=True), args.output.resolve(), args.all_types)
