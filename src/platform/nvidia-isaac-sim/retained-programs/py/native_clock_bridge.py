# SPDX-FileCopyrightText: Copyright (c) 2020-2026 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
# Modifications: authored allowlisted retained-service interface for SDK clients.
"""Genuine Kit backend for language-specific complete clock-program SDKs.

This server executes the same native graph and Clock callbacks as native_clock.
The language application owns START/two20-frame phases/FINISH orchestration.
No generic Kit command, model path, plugin loading or physical control is exposed.
"""

import argparse
import json
import os
from pathlib import Path
import re
import sys
import time


from roswasm_nvidia_isaac_sim_native.clock_bridge import ClockProgramOwner


def main(argv=None):
    """@brief Run the genuine finite native backend for complete language SDK apps.

    @details Missing simulation/command admission returns13 before SDK access;
    enabled non-CPython3.12 returns95. Requires actual Kit/bundled rclpy/generated
    ClockControl interfaces. No mock, subprocess launcher or synthetic Clock is
    used. Native owner chooses all resources; service input cannot select paths,
    plugins, models, domains or arbitrary topics. Calls require a separate trusted
    peer-bound loopback policy and the external finite process owner.
    @param[in] argv Optional CLI list; None uses sys.argv. Explicit physical SDK,
    domain0..232, three distinct absolute service/clock resources, positive uint64
    session nonce, lifetime1..120000ms and fresh absolute evidence file required.
    @return Primary/cleanup0/5/13/22/95/110/125; argparse can raise SystemExit.
    Metadata/bytecode/source checks confer no native Kit/ROS or Guest acceptance.
    @see ClockProgramOwner
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--enable-native-simulation", action="store_true")
    parser.add_argument("--enable-sim-commands", action="store_true")
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--domain", type=int, required=True)
    parser.add_argument("--service", required=True)
    parser.add_argument("--automatic-topic", required=True)
    parser.add_argument("--manual-topic", required=True)
    parser.add_argument("--session-nonce", type=int, required=True)
    parser.add_argument("--lifetime-ms", type=int, required=True)
    parser.add_argument("--evidence", required=True)
    args = parser.parse_args(argv)
    if not (args.enable_native_simulation and args.enable_sim_commands):
        return 13
    if sys.implementation.name != "cpython" or sys.version_info[:2] != (3, 12):
        return 95
    names = (args.service, args.automatic_topic, args.manual_topic)
    if (
        not 0 <= args.domain <= 232
        or not 0 < args.session_nonce < 1 << 64
        or not 1 <= args.lifetime_ms <= 120000
        or len(set(names)) != 3
        or any(
            len(name) > 255
            or re.fullmatch(
                r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*", name
            )
            is None
            for name in names
        )
    ):
        return 22
    sdk, output = Path(args.sdk_root), Path(args.evidence)
    try:
        if (
            not sdk.is_absolute()
            or sdk.resolve(strict=True) != sdk
            or not sdk.is_dir()
            or not output.is_absolute()
            or output.exists()
            or output.parent.resolve(strict=True) != output.parent
        ):
            return 22
        if os.environ.get("UWVM_RESOURCE_RUN"):
            run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
            if os.environ.get(
                "UWVM_RESOURCE_HEAVY_LOCK_HELD"
            ) != "1" or not output.is_relative_to(run / "work"):
                return 13
    except OSError:
        return 22
    if any(
        os.environ.get(key)
        for key in (
            "ROS_DISCOVERY_SERVER",
            "ROS_STATIC_PEERS",
            "CYCLONEDDS_URI",
            "FASTDDS_DEFAULT_PROFILES_FILE",
            "FASTRTPS_DEFAULT_PROFILES_FILE",
        )
    ):
        return 22
    os.environ["ROS_DOMAIN_ID"] = str(args.domain)
    os.environ["ROS_LOCALHOST_ONLY"] = "1"
    os.environ["ROS_AUTOMATIC_DISCOVERY_RANGE"] = "LOCALHOST"
    owner = None
    primary = 0
    try:
        owner = ClockProgramOwner(
            sdk,
            args.domain,
            args.service,
            names[1:],
            args.session_nonce,
            args.lifetime_ms,
        )
        primary = owner.serve()
    except PermissionError:
        primary = 13
    except ImportError:
        primary = 95
    except Exception:
        primary = 5
    finally:
        cleanup = owner.close() if owner is not None else 0
        primary = primary or cleanup
        result = (
            owner.evidence()
            if owner is not None
            else {"format": "uwvm-real-kit-clock-control-v1"}
        )
        result["primary"] = primary
        with output.open("x") as stream:
            json.dump(result, stream, indent=2, allow_nan=False)
            stream.write("\n")
    return primary


if __name__ == "__main__":
    raise SystemExit(main())
