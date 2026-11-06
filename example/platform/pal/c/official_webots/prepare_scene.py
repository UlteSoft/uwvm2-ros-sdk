# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
from webots_scene import prepare as prepare_webots, start_native


def prepare(run):
    return prepare_webots(Path(__file__).resolve().parent, run)
