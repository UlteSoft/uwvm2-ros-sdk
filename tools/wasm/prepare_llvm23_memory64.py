"""@brief Apply the Uwvm memory64 compiler-rt ABI correction to pinned LLVM sources."""

from __future__ import annotations

from pathlib import Path
import shutil


def prepare(source: Path, destination: Path) -> Path:
    """@brief Adapt binary128 comparison libcalls to the Wasm memory64 return ABI.

    @param source Extracted LLVM tree with the exact pinned revision stamp.
    @param destination Private copy of compiler-rt, with linked support sources.
    @return Adapted compiler-rt source root.
    @details Wasm comparison libcalls return i32 even with 64-bit pointers. The
    restricted patch prevents the generic LP64 long return from emitting i64.
    @throws RuntimeError If revision or the unique patch anchor differs.
    """
    revision = "ca7933e47d3a3451d81e72ac174dcb5aa28b59d1"
    if (source / ".uwvm-source-revision").read_text().strip() != revision:
        raise RuntimeError("the memory64 compiler-rt adapter requires the pinned LLVM revision")
    destination.mkdir(parents=True, exist_ok=True)
    shutil.copytree(source / "compiler-rt", destination / "compiler-rt", dirs_exist_ok=True)
    for name in ("cmake", "llvm", "third-party"):
        link = destination / name
        if not link.exists():
            link.symlink_to(source / name, target_is_directory=True)
        elif link.resolve() != (source / name).resolve():
            raise RuntimeError("unexpected compiler-rt support directory: " + str(link))
    header = destination / "compiler-rt/lib/builtins/fp_compare_impl.inc"
    text = header.read_text()
    original = "#if defined(__aarch64__) || defined(__arm64ec__)"
    if text.count(original) != 1:
        raise RuntimeError("the compiler-rt soft-float adapter no longer matches its pinned source")
    # LLVM's Wasm soft-float comparison libcalls return i32 even on memory64.
    # The generic LP64 'long' return would create an incompatible i64 symbol.
    text = text.replace(original, "#if defined(__aarch64__) || defined(__arm64ec__) || defined(__wasm__)")
    header.write_text(text)
    return destination
