"""Independent guest profile axes; a request is not a compiler qualification."""
from __future__ import annotations
from dataclasses import asdict, dataclass


@dataclass(frozen=True)
class Profile:
    address_bits: int = 32
    wasm_version: str = "3.0"
    threads: bool = True
    mte: bool = True
    exceptions: str = "noeh"

    def __post_init__(self):
        if type(self.address_bits) is not int or self.address_bits not in (32, 64):
            raise ValueError("address_bits must be 32 or 64")
        if self.wasm_version not in ("1.0", "2.0", "3.0"):
            raise ValueError("wasm_version must be 1.0, 2.0 or 3.0")
        if type(self.threads) is not bool or type(self.mte) is not bool:
            raise ValueError("threads and mte must be explicit booleans")
        if self.exceptions not in ("noeh", "eh"):
            raise ValueError("exceptions must be noeh or eh")
        if self.address_bits == 64 and self.wasm_version != "3.0":
            raise ValueError("memory64 requires Wasm Core 3.0; address width is not silently downgraded")
        if self.exceptions == "eh" and self.wasm_version != "3.0":
            raise ValueError("standard exception handling requires Wasm Core 3.0")
        if self.threads and self.wasm_version == "1.0":
            raise ValueError("the WASIp1 thread startup requires Core 2.0 bulk memory; select --no-threads for Core 1.0")

    def llvm_feature_flags(self):
        """Stable LLVM feature selection, independent of pointer width and MTE.

        Core feature membership follows the specification's change history:
        https://webassembly.github.io/spec/core/appendix/changes.html
        A development CPU preset can silently enable unstandardized features;
        start at MVP and list the requested standard features explicitly.
        """
        flags = ["-mcpu=mvp"]
        if self.wasm_version in ("2.0", "3.0"):
            flags += ["-mbulk-memory", "-mbulk-memory-opt", "-mmultivalue",
                      "-mmutable-globals", "-mnontrapping-fptoint",
                      "-mreference-types", "-msign-ext", "-msimd128"]
        if self.wasm_version == "3.0":
            flags += ["-mextended-const", "-mtail-call", "-mmultimemory",
                      "-mgc", "-mrelaxed-simd"]
        if self.threads:
            flags += ["-matomics", "-pthread"]
        return flags

    def uwvm_feature_flags(self):
        """Select the declared Core grammar without granting any host API."""
        if self.wasm_version == "1.0":
            return ["--wasm-feature-wasmmvp"]
        core2 = ["multi-value", "reference-types", "table-instructions",
                 "multiple-tables", "bulk-memory", "sign-extension",
                 "nontrapping-float-to-int", "simd"]
        core3 = ["extended-const", "table-initializer", "relaxed-simd",
                 "multi-memory", "tail-call", "function-references", "gc",
                 "exceptions"]
        enabled = set(core2)
        if self.wasm_version == "3.0":
            enabled.update(core3)
        if self.address_bits == 64:
            enabled.update(["memory64", "table64"])
        if self.threads:
            enabled.add("threads")
        return ["--wasm-feature-" + ("enable-" if name in enabled else "disable-") + name
                for name in core2 + core3 + ["memory64", "table64", "threads"]]

    @property
    def triple(self):
        return f"wasm{self.address_bits}-wasip1" + ("-threads" if self.threads else "")

    @property
    def abi(self):
        return "wasi_snapshot_preview1" if self.address_bits == 32 else "uwvm-preview1-memory64-extension"

    @property
    def identity(self):
        return f"{self.triple}-core{self.wasm_version}-{self.exceptions}-" + ("mte" if self.mte else "nomte")

    def to_dict(self):
        return dict(asdict(self), triple=self.triple, abi=self.abi,
                    memtag_wire="packed-v1" if self.mte else None,
                    extensions=(["wasmmte"] if self.mte else []) + (["threads"] if self.threads else []))


def add_arguments(parser):
    import argparse
    parser.add_argument("--address-bits", type=int, choices=(32, 64), default=32)
    parser.add_argument("--wasm-version", choices=("1.0", "2.0", "3.0"), default="3.0")
    parser.add_argument("--threads", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--mte", action=argparse.BooleanOptionalAction, default=True)
    parser.add_argument("--exceptions", choices=("noeh", "eh"), default="noeh")


def from_arguments(args):
    return Profile(**{key: getattr(args, key) for key in Profile.__dataclass_fields__})
