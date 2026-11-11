#!/usr/bin/env python3
"""Stage A: fetch one SDK commit and execute that commit's installer.

This file owns Git transport only. Language/profile/package policy belongs to
install/install.py from the selected commit, never to the bootstrap revision.
"""
from __future__ import annotations
import argparse
import json
import os
from pathlib import Path, PurePosixPath
import re
import subprocess
import sys

DEFAULT_REPOSITORY = "https://github.com/UlteSoft/uwvm2-ros-sdk.git"
COMMIT = re.compile(r"[0-9a-f]{40}\Z")


def git(root, *args, capture=True, input=None):
    env = dict(os.environ, GIT_LFS_SKIP_SMUDGE="1", GIT_TERMINAL_PROMPT="0")
    # A caller's Git directory/work-tree override must not redirect this install.
    for key in tuple(env):
        if key.startswith("GIT_") and key not in ("GIT_LFS_SKIP_SMUDGE", "GIT_TERMINAL_PROMPT", "GIT_SSH_COMMAND"):
            env.pop(key)
    command = ["git", "-c", "core.hooksPath=/dev/null"]
    if root is not None:
        command += ["-C", str(root)]
    result = subprocess.run(command + list(args), text=True, input=input,
                            stdout=subprocess.PIPE if capture else None,
                            stderr=subprocess.PIPE if capture else None, env=env)
    if result.returncode:
        raise RuntimeError("Git failed: " + " ".join(args[:3]) + "\n" + (result.stderr or ""))
    return (result.stdout or "").strip()


def repository_url(value):
    if not re.fullmatch(r"https://github\.com/[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+(?:\.git)?", value):
        raise ValueError("use an explicit https://github.com/owner/repository URL")
    return value


def resolve_commit(repository, revision):
    if COMMIT.fullmatch(revision):
        return revision
    if revision != "main":
        raise ValueError("--revision must be main or a complete lowercase 40-digit Git commit ID")
    lines = git(None, "ls-remote", "--exit-code", repository, "refs/heads/main").splitlines()
    if len(lines) != 1 or not COMMIT.fullmatch(lines[0].split()[0]):
        raise ValueError("the repository has no unambiguous main branch; specify --revision with a full commit ID")
    return lines[0].split()[0]


def confined_path(value):
    p = PurePosixPath(value)
    if (not value or p.is_absolute() or p.as_posix() != value or
            any(x in (".", "..", ".git", ".tmp") for x in p.parts) or
            re.search(r"[\\\x00-\x20\x7f*?!\[\]]", value)):
        raise ValueError("invalid installation path: " + value)
    return value


def state(root):
    marker = root / ".git/uwvm-sdk-bootstrap.json"
    if not marker.is_file() or root.is_symlink() or (root / ".git").is_symlink():
        raise ValueError("destination is not a bootstrap-managed SDK checkout")
    value = json.loads(marker.read_text())
    if git(root, "rev-parse", "HEAD") != value["commit"]:
        raise ValueError("checkout HEAD changed after pinning")
    if git(root, "status", "--porcelain", "--untracked-files=normal"):
        raise ValueError("destination has local edits; use a fresh directory")
    return value


def materialize(root, commit, paths, lfs=False):
    value = state(root)
    if value["commit"] != commit:
        raise ValueError("refusing to mix SDK revisions")
    paths = sorted(set(confined_path(p) for p in paths) | {"install"})
    # Non-cone patterns select exact files as well as directories. A directory
    # selection recursively includes descendants; no unrelated language bundle.
    patterns = ["/" + p + ("/" if git(root, "cat-file", "-t", commit + ":" + p) == "tree" else "") for p in paths]
    git(root, "sparse-checkout", "set", "--no-cone", "--stdin", input="\n".join(patterns) + "\n")
    if lfs:
        git(root, "lfs", "pull", "--include=" + ",".join(p + "/**" if q.endswith("/") else p for p, q in zip(paths, patterns)), "--exclude=", capture=False)
    return value


def checkout(repository, revision, destination):
    destination = destination.absolute()
    if destination.exists():
        if not destination.is_dir() or any(destination.iterdir()):
            current = state(destination)
            if current["repository"] != repository or (revision != "main" and current["commit"] != revision):
                raise ValueError("destination belongs to another repository/revision; use a fresh directory")
            # Resume the original pin. Never advance main during a partial install.
            return current["commit"]
    commit = resolve_commit(repository, revision)
    destination.mkdir(parents=True, exist_ok=True)
    git(destination, "init", "--quiet")
    git(destination, "remote", "add", "origin", repository)
    git(destination, "config", "core.autocrlf", "false")
    git(destination, "sparse-checkout", "init", "--no-cone")
    git(destination, "sparse-checkout", "set", "--no-cone", "/install/")
    git(destination, "fetch", "--filter=blob:none", "--depth=1", "origin", commit, capture=False)
    if git(destination, "rev-parse", "FETCH_HEAD^{commit}") != commit:
        raise ValueError("fetched commit does not match the selected ID")
    git(destination, "checkout", "--detach", commit, capture=False)
    record = dict(repository=repository, commit=commit, requested_revision=revision)
    (destination / ".git/uwvm-sdk-bootstrap.json").write_text(json.dumps(record, indent=2) + "\n")
    return commit


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repository", type=repository_url, default=DEFAULT_REPOSITORY)
    parser.add_argument("--revision", default="main")
    parser.add_argument("--destination", type=Path, required=True)
    parser.add_argument("installer_arguments", nargs=argparse.REMAINDER, help="arguments after -- go to the selected commit's installer")
    args = parser.parse_args(argv)
    try:
        commit = checkout(args.repository, args.revision, args.destination)
        installer = args.destination.absolute() / "install/install.py"
        if not installer.is_file() or installer.is_symlink():
            raise ValueError(f"commit {commit} does not contain install/install.py; select a revision that provides an installer")
        forwarded = args.installer_arguments
        if forwarded[:1] == ["--"]:
            forwarded = forwarded[1:]
        print("SDK commit: " + commit, flush=True)
        return subprocess.call([sys.executable, "-B", str(installer), "--commit", commit, *forwarded], cwd=args.destination.absolute())
    except (OSError, ValueError, RuntimeError, KeyError) as error:
        parser.error(str(error))


if __name__ == "__main__":
    raise SystemExit(main())
