# SPDX-License-Identifier: Apache-2.0
"""Mandatory non-success until the actual guest legacy-ROS path is qualified.

The portable C algorithm is not an upstream rcl/rclcpp or rclpy/Java port.
Native query, observer and callback substitutes are absent from this candidate.
"""
API_VERSION = 1


def run_case(context, scenario):
    """Report the missing guest products through the published shared API."""
    context.block(
        "BLOCKED_LEGACY_ROS_TRANSPLATE_GUEST_PRODUCTS: " + scenario["id"]
        + " requires actual rcl/rclcpp Wasm libraries, guest callbacks and "
        "controller/result/sensor state, plus the VM-owned permission/session/"
        "native-operation producer. No host client or observer supplies them."
    )
