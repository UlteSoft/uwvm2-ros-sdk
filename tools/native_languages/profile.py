"""Language-specific build plans over Task 10's resolved shared profile v1.

Internal xmake adapter implementation, not a public configuration interface.
No process is executed here. The common launcher owns process invocation,
response-file/ABI conflict checks, artifact pins and the selected environment.
"""

from pathlib import Path
import tomllib

LANGUAGES = {"rust", "zig", "go", "tinygo", "swift", "haskell", "nim", "d", "odin"}


def validate_arguments(language, selected_profile, language_options, arguments, cwd):
    if __package__:
        from .arguments import validate as inspect
    else:
        from arguments import validate as inspect
    return inspect(language, selected_profile, language_options, arguments, cwd)


def validate(resolved, language, options, *, artifact_role=None):
    if language not in LANGUAGES:
        raise ValueError("unknown native language")
    if resolved.get("format") != "uwvm-sdk-resolved-profile-v1":
        raise ValueError("shared resolved profile required")
    p = resolved.get("profile", {})
    if set(p) != {"target", "address_bits", "wasi", "exceptions", "threads", "startup", "core_baseline"}:
        raise ValueError("exact shared seven-dimensional profile required")
    if p["wasi"] != "wasip1" or p["core_baseline"] != "3.0":
        raise ValueError("WASIp1/core 3.0 baseline required")
    if p["target"] != "wasm32-wasip1" or type(p["address_bits"]) is not int or p["address_bits"] != 32:
        raise ValueError("wasm64-wasip1 runtime/std/pointer ABI unqualified; refusing rather than downgrading")
    if p["exceptions"] is not False:
        raise ValueError("matching EH-on language library closure unqualified")
    if p["threads"] is not False:
        raise ValueError("single-thread source ownership contract; thread-spawn/runtime closure unqualified")
    if p["startup"] not in ("command", "reactor"):
        raise ValueError("unknown startup contract")
    if artifact_role not in (None, "scalar-reactor"):
        raise ValueError("unknown internal artifact role")
    if artifact_role == "scalar-reactor" and language not in ("rust", "tinygo"):
        raise ValueError("only the explicit original Rust/TinyGo scalar reactor recipes are implemented")
    if language != "rust" and p["startup"] != "command" and artifact_role != "scalar-reactor":
        raise ValueError(language + " reactor startup/export/runtime closure is unqualified")
    if resolved.get("default_authority") != []:
        raise ValueError("empty default extra authority required")
    for key in ("compiler", "sysroot"):
        value = resolved.get(key)
        if not isinstance(value, str) or not Path(value).is_absolute():
            raise ValueError("explicit resolved " + key + " required")
    linker = resolved.get("linker")
    if linker is not None and (not isinstance(linker, str) or not Path(linker).is_absolute()):
        raise ValueError("explicit resolved linker required")
    if linker is None and resolved.get("library_abi", {}).get("linker_kind") != "compiler-internal":
        raise ValueError("missing external linker or explicit compiler-internal linker contract")
    resource = resolved.get("resource_dir")
    if resource not in (None, "") and (not isinstance(resource, str) or not Path(resource).is_absolute()):
        raise ValueError("invalid selected compiler resource directory")
    for key in ("compiler_argv", "linker_argv"):
        values = resolved.get(key)
        if not isinstance(values, list) or any(not isinstance(v, str) or "\0" in v for v in values):
            raise ValueError("exact " + key + " array required")
    backend = options.get("backend")
    if backend not in (("none", "ros1", "ros2", "both") if language == "rust" else ("ros1", "ros2")):
        raise ValueError("explicit supported backend required")
    if not isinstance(options.get("version"), str) or not options["version"]:
        raise ValueError("pinned actual compiler version required")
    if language == "rust":
        if options.get("edition") not in ("2015", "2018", "2021", "2024"):
            raise ValueError("actual Rust edition required")
        if options.get("library_mode") not in ("core", "alloc", "std"):
            raise ValueError("explicit Rust core/alloc/std contract required")
        if options.get("panic") != "abort":
            raise ValueError("Rust panic-unwind target/runtime and FFI unwinding unqualified")


def argv(resolved, language, options, source, output, extra=()):
    """Build-system source plan, preserving all ordered argument values.

    Secondary compiler/startup/runtime artifacts must be supplied through the
    selected provider's common manifest pins, never ambient PATH or host roots.
    These plans are candidates; emitting argv is not compilation evidence.
    """
    validate(resolved, language, options)
    if (
        not isinstance(source, str)
        or not isinstance(output, str)
        or any(not isinstance(v, str) or "\0" in v for v in [source, output, *extra])
    ):
        raise ValueError("NUL-free string arguments required")
    compiler = resolved["compiler"]
    p = resolved["profile"]
    backend = options["backend"]
    args = list(resolved["compiler_argv"])
    if language == "rust":
        # Direct rustc library compilation. Cargo consumers keep their own
        # manifest edition; never pass a duplicate edition option through Cargo.
        flags = [
            "--crate-name",
            "roswasm",
            "--crate-type",
            "rlib",
            "--edition=" + options["edition"],
            "--target",
            "wasm32-wasip1",
            "-C",
            "panic=abort",
            "-C",
            "opt-level=s",
        ]
        if backend in ("ros1", "both"):
            flags += ["--cfg", 'feature="ros1"']
        if backend in ("ros2", "both"):
            flags += ["--cfg", 'feature="ros2"']
        if options["library_mode"] in ("alloc", "std"):
            flags += ["--cfg", 'feature="alloc"']
        return [compiler, *args, *flags, source, "-o", output, *extra]
    if p["startup"] == "reactor":
        raise ValueError(language + " reactor startup/exports/runtime is not qualified")
    if language == "zig":
        return [
            compiler,
            "build-exe",
            *args,
            "-target",
            "wasm32-wasi",
            "-O",
            "ReleaseSmall",
            source,
            "-femit-bin=" + output,
            *extra,
        ]
    if language == "go":
        return [compiler, "build", *args, "-trimpath", "-tags", backend, "-o", output, source, *extra]
    if language == "tinygo":
        return [
            compiler,
            "build",
            *args,
            "-target=wasi",
            "-panic=trap",
            "-tags=" + backend,
            "-o",
            output,
            source,
            *extra,
        ]
    if language == "d":
        return [compiler, *args, "-betterC", "-mtriple=wasm32-unknown-wasi", "-c", source, "-of=" + output, *extra]
    if language == "odin":
        return [
            compiler,
            "build",
            source,
            *args,
            "-target:wasi_wasm32",
            "-thread-count:1",
            "-build-mode:obj",
            "-o:size",
            "-out:" + output,
            *extra,
        ]
    if language == "swift":
        sdk = options.get("swift_sdk")
        if not isinstance(sdk, str) or not sdk:
            raise ValueError("exact compiler-matching Swift WASI SDK ID required")
        return [
            compiler,
            "build",
            "--package-path",
            source,
            "--swift-sdk",
            sdk,
            "-j",
            "1",
            "-c",
            "release",
            "-Xcc",
            "-DROSWASM_C_FFI_BACKEND=" + ("1" if backend == "ros1" else "2"),
            *args,
            *extra,
        ]
    if language == "haskell":
        # The provider compiler must be the genuine wasm32-wasi GHC cross build.
        # Cabal dispatch is the caller's separately pinned build-system action.
        return [
            compiler,
            *args,
            "-O2",
            "-isrc",
            "-Ibridge",
            "-optc-DROSWASM_C_FFI_BACKEND=" + ("1" if backend == "ros1" else "2"),
            source,
            "bridge/shim.c",
            "-o",
            output,
            *extra,
        ]
    if language == "nim":
        cc = options.get("target_c_compiler")
        if not isinstance(cc, str) or not Path(cc).is_absolute():
            raise ValueError("pinned target WASI C compiler required for Nim")
        return [
            compiler,
            "c",
            *args,
            "--mm:arc",
            "--threads:off",
            "--exceptions:goto",
            "--cpu:wasm32",
            "--os:any",
            "-d:wasm",
            "-d:useMalloc",
            "-d:noSignalHandler",
            "--stackTrace:off",
            "--lineTrace:off",
            "--parallelBuild:1",
            "--cc:clang",
            "--clang.exe:" + cc,
            "--clang.linkerexe:" + cc,
            "--passC:--target=wasm32-wasip1",
            "--passL:--target=wasm32-wasip1",
            "--passC:-DROSWASM_C_FFI_BACKEND=" + ("1" if backend == "ros1" else "2"),
            "--out:" + output,
            source,
            *extra,
        ]
    raise ValueError("unimplemented actual build-system plan")


def environment(language, resolved):
    """Explicit overrides passed to the common launcher, with no ambient flags."""
    if language == "go":
        compiler = Path(resolved["compiler"])
        if compiler.parent.name != "bin":
            raise ValueError("official Go provider must locate its genuine relocated GOROOT/bin/go")
        return {
            "GOOS": "wasip1",
            "GOARCH": "wasm",
            "CGO_ENABLED": "0",
            "GOTOOLCHAIN": "local",
            "GOWORK": "off",
            "GOFLAGS": "",
            "GOPROXY": "off",
            "GOSUMDB": "off",
            "GOROOT": str(compiler.parent.parent),
        }
    if language == "rust":
        return {"RUSTC": resolved["compiler"], "RUSTFLAGS": "", "CARGO_BUILD_JOBS": "1", "CARGO_ENCODED_RUSTFLAGS": ""}
    return {}


def cargo_arguments(resolved, manifest, output):
    """Actual offline Cargo route; application manifest owns its edition.

    Task 10's shared build:cargo action must execute the separately pinned Cargo
    tool and pass cargo_environment below. A rustc compiler action cannot be
    relabeled Cargo, and no Cargo target directory is shared between profiles.
    """
    options = resolved["language_options"]
    validate(resolved, "rust", options)
    path = Path(manifest).resolve(strict=True)
    if path.name != "Cargo.toml" or path.stat().st_size > 1024 * 1024:
        raise ValueError("bounded actual Cargo manifest required")
    package = tomllib.loads(path.read_text()).get("package", {})
    edition = package.get("edition", "2015")
    if edition != options["edition"]:
        raise ValueError("Cargo package edition conflicts with requested consumer edition; no override is injected")
    if not (path.parent / "Cargo.lock").is_file():
        raise ValueError("offline frozen Cargo route requires an existing lockfile")
    if not isinstance(resolved.get("build_tools", {}).get("cargo"), dict):
        raise ValueError("shared manifest must pin the actual Cargo build tool")
    features = []
    if options["backend"] in ("ros1", "both"):
        features.append("ros1")
    if options["backend"] in ("ros2", "both"):
        features.append("ros2")
    if options["library_mode"] in ("alloc", "std"):
        features.append("alloc")
    args = [
        "rustc",
        "--frozen",
        "--offline",
        "--jobs",
        "1",
        "--manifest-path",
        str(path),
        "--target",
        resolved["profile"]["target"],
        "--target-dir",
        str(Path(output).absolute()),
        "--no-default-features",
        "--release",
    ]
    if features:
        args += ["--features", ",".join(features)]
    return args


def cargo_environment(resolved):
    options = resolved["language_options"]
    validate(resolved, "rust", options)
    # Cargo emits its own --target/--edition options. Preserve every other
    # selected rustc flag exactly through Cargo's unit-separator array encoding.
    selected = []
    values = iter([*resolved["compiler_argv"], *resolved["linker_argv"]])
    panic_seen = False
    for value in values:
        if value == "--target":
            if next(values, None) != resolved["profile"]["target"]:
                raise ValueError("Cargo/rustc target conflict")
        elif value.startswith("--target="):
            if value.split("=", 1)[1] != resolved["profile"]["target"]:
                raise ValueError("Cargo/rustc target conflict")
        elif value == "--edition":
            if next(values, None) != options["edition"]:
                raise ValueError("Cargo/rustc edition conflict")
        elif value.startswith("--edition="):
            if value.split("=", 1)[1] != options["edition"]:
                raise ValueError("Cargo/rustc edition conflict")
        elif value == "--crate-type" or value.startswith("--crate-type="):
            raise ValueError("Cargo package targets own crate type; use a Cargo-specific provider flag closure")
        else:
            if "\x1f" in value:
                raise ValueError("Rust flag contains Cargo array delimiter")
            if value.startswith("-Cpanic=") or (value.startswith("panic=") and selected and selected[-1] == "-C"):
                if value.split("=", 1)[1] != "abort":
                    raise ValueError("selected Rust panic strategy conflicts with the requested abort strategy")
                panic_seen = True
            selected.append(value)
    if not panic_seen:
        selected += ["-C", "panic=abort"]
    return {
        "RUSTC": resolved["compiler"],
        "RUSTFLAGS": "",
        "CARGO_ENCODED_RUSTFLAGS": "\x1f".join(selected),
        "CARGO_BUILD_JOBS": "1",
        "CARGO_NET_OFFLINE": "true",
        "RUSTC_WRAPPER": "",
        "RUSTC_WORKSPACE_WRAPPER": "",
    }
