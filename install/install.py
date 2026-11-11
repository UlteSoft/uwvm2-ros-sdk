#!/usr/bin/env python3
"""Stage B: select and materialize packages from this exact SDK commit."""
from __future__ import annotations
import argparse
import hashlib
import json
from pathlib import Path
import platform as host_platform
import sys

import bootstrap
import guest_profile

ROOT = Path(__file__).resolve().parents[1]


def sha256(path):
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def select_many(title, options, input_fn=input, output_fn=print):
    """A dependency-free terminal checkbox menu; empty input confirms selection."""
    chosen = set()
    while True:
        output_fn(title)
        for number, value in enumerate(options, 1):
            output_fn(f" {number:2d} [{'x' if value in chosen else ' '}] {value}")
        response = input_fn("Toggle numbers (comma/space), 'all', 'none'; Enter confirms: ").strip()
        if not response:
            if chosen:
                return sorted(chosen)
            output_fn("Select at least one item.")
            continue
        if response == "all":
            chosen = set(options)
        elif response == "none":
            chosen.clear()
        else:
            try:
                numbers = [int(n) for n in response.replace(",", " ").split()]
                if not numbers or any(n < 1 or n > len(options) for n in numbers):
                    raise ValueError()
            except ValueError:
                output_fn("Enter only displayed numbers, all, or none.")
                continue
            for n in set(numbers):
                chosen.symmetric_difference_update([options[n - 1]])


def selections(catalog, values, interactive=False):
    result = {}
    for value in values:
        name, separator, languages = value.partition(":")
        if not separator or not languages or name not in catalog["platforms"]:
            raise ValueError("use --select PLATFORM:LANGUAGE[,LANGUAGE...] from --list")
        available = catalog["platforms"][name]["languages"]
        selected = languages.split(",")
        if any(lang not in available for lang in selected):
            raise ValueError(f"unsupported platform/language selection: {value}; available: {', '.join(available)}")
        result.setdefault(name, set()).update(selected)
    if not result and interactive:
        for name in select_many("Platforms", sorted(catalog["platforms"])):
            result[name] = set(select_many("Languages for " + name, catalog["platforms"][name]["languages"]))
    if not result:
        raise ValueError("no selection; use --select or run interactively in a terminal")
    return {name: sorted(result[name]) for name in sorted(result)}


def make_plan(catalog, selection, profile, host, source=False):
    if host not in catalog["hosts"]:
        raise ValueError("unsupported compiler host: " + host + "; available: " + ", ".join(catalog["hosts"]))
    required, errors = set(), []
    # Compiler installation does not grant WASI or ROS runtime authority.
    paths = {"install", "tools/xmake", "tools/shared", "tools/wasm", "tools/native_languages",
             "include/wasm", "lib/wasm", "share/wasm", "tools/language/native", "src/language/native",
             "include/language/cfamily", "lib/language/cfamily", "tools/language/cfamily"}
    for name, languages in selection.items():
        for kind in ("tools", "src", "include", "lib", "share"):
            paths.add(f"{kind}/platform/{name}")
            paths.add(f"{kind}/platform/ros")
        for language in languages:
            entry = catalog["languages"][language]
            if profile.identity not in entry["qualified_profiles"]:
                errors.append(f"{name}/{language}: no qualified closure for {profile.identity}: " + "; ".join(entry.get("pending", [])))
            required.update(entry["packages"])
            directory = entry["source_directory"]
            for kind in ("tools", "src", "include", "lib", "share"):
                paths.add(f"{kind}/language/{directory}")
            if language in ("cpp", "objectc"):
                paths.add("include/language/c++")
            paths.add(f"example/platform/{name}/{language}")
            paths.add(f"example/language/{language}")
    packages = []
    for name in sorted(required):
        entry = catalog["packages"][host][name]
        if source and not entry.get("source_recipe"):
            errors.append(name + ": no complete pinned source-build recipe")
        paths.add(entry["manifest"])
        if source:
            if entry.get("source_recipe"):
                paths.add(entry["source_recipe"])
        else:
            paths.add(entry["archive"])
        packages.append(dict(name=name, **entry))
    return dict(schema="uwvm-sdk-install-plan-v1", host=host, selection=selection,
                profile=profile.to_dict(), profile_id=profile.identity, packages=packages,
                paths=sorted(paths), source=source, errors=errors)


def materialize(plan, commit):
    if plan["errors"]:
        raise ValueError("installation cannot satisfy the requested profile:\n" + "\n".join(plan["errors"]))
    bootstrap.state(ROOT)
    paths = []
    for path in plan["paths"]:
        # Optional language/platform directory families need not all exist.
        # Required manifests/archives are verified independently below.
        try:
            bootstrap.git(ROOT, "cat-file", "-e", commit + ":" + bootstrap.confined_path(path))
        except RuntimeError:
            continue
        paths.append(path)
    for name in ("xmake.lua", "README.md", "LICENSE", "THIRD_PARTY_NOTICES.md", ".gitattributes", ".gitignore"):
        try:
            bootstrap.git(ROOT, "cat-file", "-e", commit + ":" + name)
        except RuntimeError:
            continue
        paths.append(name)
    bootstrap.materialize(ROOT, commit, paths, lfs=True)
    for package in plan["packages"]:
        manifest = ROOT / package["manifest"]
        if sha256(manifest) != package["manifest_sha256"]:
            raise ValueError("package manifest mismatch: " + package["name"])
        if not plan["source"] and sha256(ROOT / package["archive"]) != package["sha256"]:
            raise ValueError("package archive mismatch: " + package["name"])
    receipt = dict(plan, commit=commit, status="materialized", authority_grants=[])
    destination = ROOT / ".git/uwvm-sdk-install.json"
    destination.write_text(json.dumps(receipt, indent=2) + "\n")
    return destination


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--commit", help="exact commit supplied by bootstrap.py")
    parser.add_argument("--select", action="append", default=[])
    parser.add_argument("--host", default=host_platform.system().lower() + "-" + host_platform.machine().lower())
    parser.add_argument("--list", action="store_true")
    parser.add_argument("--plan", action="store_true", help="print the exact plan, including unsupported combinations; do not fetch packages")
    parser.add_argument("--from-source", action="store_true")
    guest_profile.add_arguments(parser)
    args = parser.parse_args(argv)
    try:
        catalog = json.loads((ROOT / "install/catalog.json").read_text())
        if args.list:
            for name, entry in catalog["platforms"].items():
                print(name + ": " + ", ".join(entry["languages"]))
            return 0
        profile = guest_profile.from_arguments(args)
        selection = selections(catalog, args.select, interactive=sys.stdin.isatty())
        plan = make_plan(catalog, selection, profile, args.host, source=args.from_source)
        if args.plan:
            print(json.dumps(plan, indent=2))
            return 2 if plan["errors"] else 0
        if not args.commit or not bootstrap.COMMIT.fullmatch(args.commit):
            raise ValueError("install through bootstrap.py so the installer and payload share a verified commit")
        print(materialize(plan, args.commit))
        return 0
    except (OSError, ValueError, RuntimeError, KeyError) as error:
        parser.error(str(error))


if __name__ == "__main__":
    raise SystemExit(main())
