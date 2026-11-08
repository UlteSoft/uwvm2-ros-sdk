# SPDX-License-Identifier: Apache-2.0
from pathlib import Path
from physics_scene import prepare as prepare_physics, start_native
def prepare(run):
    return prepare_physics(Path(__file__).resolve().parent, run)
