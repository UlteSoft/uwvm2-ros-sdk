#!/usr/bin/env python3
"""@brief Prepare one recorded deterministic-math Lua5.4.8 source adaptation.

@details The original extracted upstream source remains unchanged. Hash/pivot hooks
and unsupported tmpfile behavior are separately supplied by guest_config.h.
This tool runs no compiler, interpreter, application or upstream test suite.
@see build.py
"""

import argparse
import hashlib
import json
import os
from pathlib import Path

MATH_SHA256 = "da5c7d74cffce22f0a9eb468e6e7e80b543ea6bec5c21aefb8cf285a3556722a"
BEFORE = b"""static void randseed (lua_State *L, RanState *state) {
  lua_Unsigned seed1 = (lua_Unsigned)time(NULL);
  lua_Unsigned seed2 = (lua_Unsigned)(size_t)L;
  setseed(L, state->s, seed1, seed2);
}"""
AFTER = b"""static void randseed (lua_State *L, RanState *state) {
  /* Explicit deterministic WASI SDK profile; this is not entropy. */
  setseed(L, state->s, (lua_Unsigned)0, (lua_Unsigned)1);
}"""


def main():
    """@brief Write the exact deterministic math-library copy and its receipt.

    @details CLI arguments supply the explicit unmodified Lua5.4.8 source
    directory and a fresh output directory. The actual complete lmathlib.c hash
    and unique upstream anchor must match before emission. No original file,
    RNG caller seed, resource grant or host configuration is changed. Invalid
    source/owner/output raises an error and cannot produce a success receipt.
    @see build.py
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source-dir", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    args = parser.parse_args()
    source = (args.source_dir / "lmathlib.c").resolve(strict=True)
    raw = source.read_bytes()
    if hashlib.sha256(raw).hexdigest() != MATH_SHA256 or raw.count(BEFORE) != 1:
        raise ValueError("exact unmodified official Lua5.4.8 math source required")
    args.out.mkdir(parents=True, exist_ok=False)
    body = raw.replace(BEFORE, AFTER)
    target = args.out / "lmathlib.c"
    with target.open("xb") as stream:
        stream.write(body)
    report = dict(
        format="uwvm-lua548-bounded-stdlib-profile-v1",
        source=dict(path=str(source), bytes=len(raw), sha256=MATH_SHA256),
        output=dict(path=str(target), bytes=len(body), sha256=hashlib.sha256(body).hexdigest()),
        adaptation="Only no-argument math.randomseed/initial PRNG state uses deterministic seeds0/1; explicit caller seeds retain upstream behavior",
        entropy_or_cryptography=False,
        upstream_source_modified=False,
        guest_executed=False,
        default_authority=[],
    )
    (args.out / "profile.json").write_text(json.dumps(report, indent=2) + "\n")


if __name__ == "__main__":
    main()
