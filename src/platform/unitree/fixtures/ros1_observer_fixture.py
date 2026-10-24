#!/usr/bin/env python3
"""@brief Publish complete genuine ROS 1 Unitree observation fixtures without a robot.

@details Native rospy and catkin-generated original unitree_legged_msgs classes
carry every value through the actual ROS master and TCPROS. The process never
publishes commands, constructs a vendor DDS client, or contacts physical hardware.
"""

import argparse
import json
from pathlib import Path
import re
import struct
import roslib.message
import rospy
from unitree_legged_msgs.msg import HighState, LowState, MotorState

SCALARS = {
    "bool": "?",
    "uint8": "B",
    "int8": "b",
    "uint16": "H",
    "int16": "h",
    "uint32": "I",
    "int32": "i",
    "uint64": "Q",
    "int64": "q",
    "float32": "f",
    "float64": "d",
}


def element(type_name, seed):
    """@brief Produce a nontrivial finite native scalar within its installed width.

    @param type_name Exact primitive name from installed genpy slot metadata.
    @param seed Positive deterministic field/element seed.
    @return A scalar admitted by the actual original ROS 1 serializer.
    @details Signed values and floats include negative samples. No robot mode,
    physical unit, normalized joystick axis, or command semantics are inferred.
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
    """@brief Initialize every original field and every nested fixed-array element.

    @param message Genuine mutable installed genpy complete message instance.
    @param seed Positive deterministic seed varying across all fields/elements.
    @return The same entirely initialized native message.
    @details Field names, order, primitive widths, and array extents come from
    actual installed metadata. No canonical SDK record or codec is consulted.
    """
    for index, (name, type_name) in enumerate(
        zip(message.__slots__, message._slot_types)
    ):
        field_seed = seed + index * 7
        array = re.fullmatch(r"(.+)\[(\d+)\]", type_name)
        if array:
            subtype, count = array[1], int(array[2])
            values = []
            for offset in range(count):
                if subtype in SCALARS:
                    values.append(element(subtype, field_seed + offset))
                else:
                    nested = roslib.message.get_message_class(subtype)
                    if nested is None:
                        raise ValueError(
                            "Installed nested ROS 1 type is unavailable: " + subtype
                        )
                    values.append(populate(nested(), field_seed + offset))
            setattr(message, name, values)
        elif type_name in SCALARS:
            setattr(message, name, element(type_name, field_seed))
        else:
            populate(getattr(message, name), field_seed)
    return message


def canonical(message):
    """@brief Encode the complete oracle independently from installed genpy metadata.

    @param message Genuine initialized native ROS 1 message, borrowed immutably.
    @return Owned complete little-endian bytes without native layout padding.
    @details This independent test oracle calls no guest binding or production
    native adapter. It preserves every declared field, nested value and element.
    """
    result = bytearray()
    for name, type_name in zip(message.__slots__, message._slot_types):
        current = getattr(message, name)
        array = re.fullmatch(r"(.+)\[(\d+)\]", type_name)
        if array:
            subtype, count = array[1], int(array[2])
            if len(current) != count:
                raise ValueError("Installed fixed array extent changed")
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


def main():
    """@brief Own three actual read-only fixture topics until process shutdown.

    @details rospy owns its native XMLRPC/TCPROS participants. Explicit shutdown
    unregisters each publisher. The isolated master's address comes from the
    container environment and never shares the ROS 2 test domain.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--expected", type=Path, required=True)
    args = parser.parse_args()
    rospy.init_node("uwvm_unitree_observation_fixture", anonymous=False)
    messages = {
        "motion_state": populate(HighState(), 3),
        "low_state": populate(LowState(), 5),
        "motor_state": populate(MotorState(), 7),
    }
    publishers = {
        name: rospy.Publisher(
            "/unitree_sdk_fixture/" + name, type(value), queue_size=4, latch=False
        )
        for name, value in messages.items()
    }
    args.expected.parent.mkdir(parents=True, exist_ok=True)
    args.expected.write_text(
        json.dumps(
            {name: canonical(value).hex() for name, value in messages.items()}, indent=2
        )
        + "\n"
    )
    rate = rospy.Rate(20)
    try:
        while not rospy.is_shutdown():
            for name, value in messages.items():
                publishers[name].publish(value)
            rate.sleep()
    except rospy.ROSInterruptException:
        pass
    finally:
        for publisher in publishers.values():
            publisher.unregister()
        rospy.signal_shutdown("Complete isolated observation fixture shutdown")


if __name__ == "__main__":
    main()
