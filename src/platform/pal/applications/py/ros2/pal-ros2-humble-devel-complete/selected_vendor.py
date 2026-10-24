# @file selected_vendor.py
# @brief Select the complete pal ros2_humble_devel state and command classes.
# @details The chosen profile fixes source types and ROS family; it does not infer a model or grant authority.
# Returned class aliases preserve the original complete canonical values and shared error semantics.
"""Explicit complete source-profile selection; grants no authority."""
from bounded_records import Ros2Pal_device_msgsMsgBatteryState as State
from bounded_records import Ros2Pal_device_msgsMsgLedEffectParams as Command
ROS_VERSION = 2
