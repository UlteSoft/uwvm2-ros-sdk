# @file selected_vendor.py
# @brief Select the complete trossen ros1_main state and command classes.
# @details The chosen profile fixes source types and ROS family; it does not infer a model or grant authority.
# Returned class aliases preserve the original complete canonical values and shared error semantics.
"""Explicit complete source-profile selection; grants no authority."""
from bounded_records import Ros1Interbotix_xs_msgsJointTemps as State
from bounded_records import Ros1Interbotix_xs_msgsJointGroupCommand as Command
ROS_VERSION = 1
