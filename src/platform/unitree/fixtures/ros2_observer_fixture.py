#!/usr/bin/env python3
"""@brief Publish complete genuine ROS 2 Unitree observation fixtures, without a robot.

@details Native rclpy and official rosidl-generated unitree_go messages carry
all values over real ROS middleware. Every original field receives a finite,
nontrivial value. This native test participant does not execute a guest, expose
any command publisher, or connect to physical Unitree hardware.
"""

import argparse
import json
from pathlib import Path
import re
import struct

import rclpy
from rclpy.node import Node
from unitree_go.msg import LowState, SportModeState, WirelessController

SCALARS = {
    "boolean": "?",
    "bool": "?",
    "octet": "B",
    "byte": "B",
    "char": "B",
    "uint8": "B",
    "int8": "b",
    "uint16": "H",
    "int16": "h",
    "uint32": "I",
    "int32": "i",
    "uint64": "Q",
    "int64": "q",
    "float": "f",
    "double": "d",
    "float32": "f",
    "float64": "d",
}


def element(type_name, seed):
    """@brief Produce a finite nonzero primitive within its exact native width.

    @param type_name Actual installed rosidl field type, never a guessed SDK type.
    @param seed Deterministic positive integer varying across every field/element.
    @return Exact Python native scalar accepted by the generated message setter.
    @details Signed and floating fields include negative samples. No physical
    units, axis normalization, robot mode, or command semantics are inferred.
    """
    code = SCALARS[type_name]
    if code in ("f", "d"):
        return (seed + 1) / 8.0 * (-1 if seed % 2 else 1)
    if code == "?":
        return bool(seed % 2)
    if code in ("b", "h", "i", "q"):
        return -(seed % 63 + 1)
    return seed % 251 + 1


def populate(message, seed=1):
    """@brief Fill every original installed field, including all fixed nested arrays.

    @param message Genuine mutable rosidl-generated complete message instance.
    @param seed Deterministic initial value seed for independent expected bytes.
    @return The same complete initialized native message.
    @details All scalar widths, nested instances, and fixed-array extents come
    from the installed generated message. No field is projected or dropped.
    """
    for index, (name, type_name) in enumerate(
        message.get_fields_and_field_types().items()
    ):
        current = getattr(message, name)
        field_seed = seed + index * 7
        array = re.fullmatch(r"(.+)\[(\d+)\]", type_name)
        if array:
            subtype, count = array[1], int(array[2])
            assert len(current) == count
            for offset in range(count):
                if subtype in SCALARS:
                    current[offset] = element(subtype, field_seed + offset)
                else:
                    populate(current[offset], field_seed + offset)
        elif type_name in SCALARS:
            setattr(message, name, element(type_name, field_seed))
        elif hasattr(current, "get_fields_and_field_types"):
            populate(current, field_seed)
        else:
            raise ValueError(
                "Fixture requires a complete explicit native field: " + type_name
            )
    return message


def canonical(message):
    """@brief Independently encode every field from an actual native message value.

    @param message Genuine installed complete ROS message, borrowed immutably.
    @return Owned complete canonical little-endian bytes, with no CDR alignment.
    @details This test oracle follows installed field metadata in original order;
    it calls no guest codec or production native-adapter implementation.
    """
    result = bytearray()
    for name, type_name in message.get_fields_and_field_types().items():
        current = getattr(message, name)
        array = re.fullmatch(r"(.+)\[(\d+)\]", type_name)
        if array:
            subtype, count = array[1], int(array[2])
            assert len(current) == count
            for value in current:
                result += (
                    struct.pack("<" + SCALARS[subtype], value)
                    if subtype in SCALARS
                    else canonical(value)
                )
        elif type_name in SCALARS:
            result += struct.pack("<" + SCALARS[type_name], current)
        else:
            result += canonical(current)
    return bytes(result)


class ObservationFixture(Node):
    """@brief Own three real native observation publishers and a finite-period timer.

    @details The process has no robot address, service client, command topic, or
    control SDK. Its actual ROS domain and middleware come from the dedicated
    container environment, independent from all other package validation.
    """

    def __init__(self, expected):
        """@brief Create real native publishers and persist complete expected bytes.

        @param expected Owned output path for the independent canonical oracle.
        @details Complete official installed types and reliable depth-four QoS
        are used. A timer repeatedly publishes stable values for bounded guests.
        """
        super().__init__("uwvm_unitree_observation_fixture")
        self.messages = {
            "motion_state": populate(SportModeState(), 3),
            "low_state": populate(LowState(), 5),
            "wireless_controller": populate(WirelessController(), 7),
        }
        types = {
            "motion_state": SportModeState,
            "low_state": LowState,
            "wireless_controller": WirelessController,
        }
        resources = {
            "motion_state": "sportmodestate",
            "low_state": "lowstate",
            "wireless_controller": "wirelesscontroller",
        }
        self.publishers_owned = {
            name: self.create_publisher(
                types[name], "/unitree_sdk_fixture/" + resource, 4
            )
            for name, resource in resources.items()
        }
        expected.parent.mkdir(parents=True, exist_ok=True)
        expected.write_text(
            json.dumps(
                {name: canonical(value).hex() for name, value in self.messages.items()},
                indent=2,
            )
            + "\n"
        )
        self.timer_owned = self.create_timer(0.05, self.publish_all)

    def publish_all(self):
        """@brief Publish every entire stable original message through actual ROS transport."""
        for name, publisher in self.publishers_owned.items():
            publisher.publish(self.messages[name])


def main():
    """@brief Run only the native observation fixture until its owner terminates it."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--expected", type=Path, required=True)
    args = parser.parse_args()
    rclpy.init()
    fixture = ObservationFixture(args.expected)
    try:
        rclpy.spin(fixture)
    except (KeyboardInterrupt, rclpy.executors.ExternalShutdownException):
        pass
    finally:
        fixture.destroy_node()
        if rclpy.ok():
            rclpy.shutdown()


if __name__ == "__main__":
    main()
