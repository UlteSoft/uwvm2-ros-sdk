"""@file backend_layout.py
@brief Map an immutable ROS profile selector to its public backend hierarchy.
@details Catalog selector keys retain their identity. Source directories and
public module names separate that identity into the ROS backend and its profile.
"""

import re


def profile_path(profile):
    """@brief Resolve one normalized selector without creating a filesystem path.
    @param profile Canonical selector such as ros2_main or ros1_noetic.
    @return Relative public hierarchy such as ros2/main or ros1/noetic.
    @exception ValueError The selector has no supported backend or safe profile.
    @details This function creates no compatibility aliases and never changes
    catalog identities, record fields, native registration or authority.
    """
    if not isinstance(profile, str):
        raise ValueError("A ROS profile selector must be a string")
    match = re.fullmatch(r"(ros[12])(?:_([a-z][a-z0-9_]*))?", profile)
    if match is None:
        raise ValueError("Use a ros1 or ros2 selector with a normalized profile")
    backend, selected = match.groups()
    return backend if selected is None else backend + "/" + selected


def profile_module(profile):
    """@brief Resolve the same profile as a dot-separated public module name.
    @param profile Immutable ROS profile selector accepted by profile_path.
    @return A module suffix with the same backend and profile components.
    @exception ValueError The selector is invalid or contains path separators.
    """
    return profile_path(profile).replace("/", ".")
