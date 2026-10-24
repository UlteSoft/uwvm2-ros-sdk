# @file build_backend.py
# @brief Provide the selected typed SDK binding and ownership boundary for nvidia.
# @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
# for the documented operation and propagate status or language errors without treating a refused call as success.

"""Internal real backend for selected installed NVIDIA xmake examples.

Only build/package operations live here. No native owner, model, simulator or
Wasm Guest is started. Commands and failed outputs remain in the selected run.
"""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys


def require(value, message):
    if not value:
        raise ValueError(message)


def strict_json(raw):
    def members(pairs):
        result = {}
        for key, value in pairs:
            require(key not in result, "duplicate JSON member: " + key)
            result[key] = value
        return result

    return json.loads(
        raw,
        object_pairs_hook=members,
        parse_constant=lambda value: (_ for _ in ()).throw(ValueError(value)),
    )


def digest(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def ordinary(path):
    path = Path(path)
    require(
        path.is_absolute() and path.is_file(),
        "absolute existing input file required: " + str(path),
    )
    require(path.stat().st_size <= 64 * 1024 * 1024, "bounded input required")
    return path


def pinned_tool(config, name):
    pin = config[name]
    require(
        type(pin) is dict and set(pin) == {"path", "sha256"},
        "exact tool pin required: " + name,
    )
    path = ordinary(pin["path"])
    require(
        len(pin["sha256"]) == 64 and digest(path) == pin["sha256"],
        "selected real tool hash changed: " + name,
    )
    return path


def cmake_literal(value):
    value = str(value)
    delimiter = "="
    while "]" + delimiter + "]" in value:
        delimiter += "="
    return "[" + delimiter + "[" + value + "]" + delimiter + "]"


def resolved_pins(resolved, sdk):
    require(
        resolved.get("format") == "uwvm-sdk-resolved-profile-v1",
        "actual shared resolved profile required",
    )
    roots = (("tool_pins", Path(resolved["toolchain_root"])), ("artifact_pins", sdk))
    for key, root in roots:
        root = root.resolve(strict=True)
        for pin in resolved[key]:
            selected = (root / pin["path"]).resolve(strict=True)
            require(
                selected.is_relative_to(root), "shared pin escaped its selected root"
            )
            require(
                selected.stat().st_size == pin["bytes"]
                and digest(selected) == pin["sha256"],
                "selected shared tool/library pin changed",
            )
    manifest = resolved["manifest"]
    require(
        digest(ordinary(manifest["path"])) == manifest["sha256"],
        "shared profile manifest changed",
    )


def main():
    require(len(sys.argv) == 2, "one internal xmake request is required")
    request_path = ordinary(sys.argv[1])
    request = strict_json(request_path.read_bytes())
    config_path = ordinary(request["configuration"])
    config = strict_json(config_path.read_bytes())
    require(
        config.get("format") == "uwvm-nvidia-example-config-v1",
        "explicit NVIDIA backend configuration required",
    )
    sdk = Path(request["sdk_root"]).resolve(strict=True)
    source = Path(request["source_dir"]).resolve(strict=True)
    require(
        source.is_dir() and (source.is_relative_to(sdk / "example")
            or (request["operation"] == "cmake-interfaces"
                and source == sdk / "share/platform/nvidia-groot/schemas/uwvm_groot_bridge")),
        "installed example source required",
    )
    output = Path(request["output_dir"]).absolute()
    require(
        not output.exists() and output.parent.resolve(strict=True) == output.parent,
        "fresh owned backend directory required",
    )
    require(
        not output.is_relative_to(sdk), "build output must be outside the installed SDK"
    )
    # Validation in this repository uses its external finite Linux owner. The
    # installed SDK remains independent of that private harness: ordinary SDK
    # consumers may supply their own bounded build environment. Never forge
    # harness variables to make a rejected repository run appear admitted.
    if os.environ.get("UWVM_RESOURCE_RUN"):
        require(
            os.environ.get("UWVM_RESOURCE_HEAVY_LOCK_HELD") == "1",
            "incomplete finite-owner environment",
        )
        run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
        require(
            output.is_relative_to(run / "work"),
            "backend output must stay inside this finite owner work directory",
        )
    output.mkdir(mode=0o700)
    rows, pins = [], {}
    for path in sorted(source.rglob("*")):
        if not path.is_file():
            continue
        require(
            path.resolve(strict=True).is_relative_to(source),
            "example source link escapes its package",
        )
        require(
            not any(
                part in ("tests", "test", "__pycache__")
                for part in path.relative_to(source).parts
            )
            and not path.name.endswith("_test.go"),
            "tests do not belong in an installed example package",
        )
        ordinary(path)
        pins[str(path)] = {"bytes": path.stat().st_size, "sha256": digest(path)}
    receipt = {
        "format": "uwvm-nvidia-example-backend-v1",
        "status": "BUILDING",
        "operation": request["operation"],
        "configuration_sha256": digest(config_path),
        "commands": rows,
        "source_pins": pins,
        "default_authority": [],
        "guest_executions": 0,
        "native_ros_exchanges": 0,
        "model_calls": 0,
        "simulator_runs": 0,
        "official_suite_credit": 0,
    }
    receipt_path = output / "backend-receipt.json"

    def save(status):
        receipt["status"] = status
        receipt_path.write_text(json.dumps(receipt, indent=2, sort_keys=True) + "\n")

    def command(name, argv):
        argv = [str(value) for value in argv]
        row = {"name": name, "argv": argv, "cwd": str(output)}
        environment = dict(os.environ)
        if request["operation"] in ("cmake-guest", "cmake-component-programs"):
            # CMake otherwise prepends ambient CXXFLAGS/LDFLAGS even when its
            # compiler is explicit. Guest builds additionally use shared Clang
            # configs. Preserve the selected tools and flags in both routes.
            removed = []
            for key in (
                "CC",
                "CXX",
                "CFLAGS",
                "CXXFLAGS",
                "CPPFLAGS",
                "LDFLAGS",
                "CPATH",
                "C_INCLUDE_PATH",
                "CPLUS_INCLUDE_PATH",
                "OBJC_INCLUDE_PATH",
                "LIBRARY_PATH",
                "COMPILER_PATH",
                "GCC_EXEC_PREFIX",
                "SDKROOT",
                "CCC_OVERRIDE_OPTIONS",
                "CLANG_CONFIG_FILE_SYSTEM_DIR",
                "CLANG_CONFIG_FILE_USER_DIR",
                "LD_LIBRARY_PATH",
                "LD_PRELOAD",
                "LD_AUDIT",
                "CMAKE_TOOLCHAIN_FILE",
                "CMAKE_PREFIX_PATH",
                "CMAKE_GENERATOR",
                "CMAKE_GENERATOR_PLATFORM",
                "CMAKE_GENERATOR_TOOLSET",
            ):
                if key in environment:
                    environment.pop(key)
                    removed.append(key)
            row["removed_ambient_override_names"] = removed
        rows.append(row)
        save("BUILDING")
        with (
            (output / (name + ".stdout")).open("xb") as stdout,
            (output / (name + ".stderr")).open("xb") as stderr,
        ):
            result = subprocess.run(
                argv,
                cwd=output,
                stdin=subprocess.DEVNULL,
                stdout=stdout,
                stderr=stderr,
                timeout=240,
                env=environment,
            )
        row["exit_code"] = result.returncode
        save("BUILDING")
        require(
            result.returncode == 0,
            "actual " + name + " failed; original stdout/stderr retained",
        )

    try:
        operation = request["operation"]
        if operation in (
            "cmake-guest",
            "cmake-cpu-native",
            "cmake-interfaces",
            "cmake-component-programs",
        ):
            cmake = pinned_tool(config, "cmake")
            build = output / "cmake"
            arguments = [cmake, "-S", source, "-B", build, "-DCMAKE_BUILD_TYPE=Release",
                         "-DUWVM_SDK_ROOT=" + str(sdk)]
            if operation == "cmake-guest":
                require(
                    set(config) == {"format", "cmake"},
                    "Guest backend accepts only the pinned CMake program",
                )
                resolved = strict_json(ordinary(request["resolved"]).read_bytes())
                resolved_pins(resolved, sdk)
                exported = strict_json(ordinary(request["clang_commands"]).read_bytes())
                require(
                    resolved["profile"]["target"] == "wasm32-wasip1"
                    and resolved["profile"]["startup"] == "command",
                    "these real C++ Guest applications require wasm32 WASIp1 command startup",
                )
                for phase in ("compile", "link"):
                    pin = exported["phases"][phase]
                    require(
                        digest(ordinary(pin["config"])) == pin["sha256"],
                        "shared Clang configuration changed",
                    )
                # Keep the actual shared compile/link closures distinct. CMake
                # retains its real object, dependency and executable build rules.
                toolchain = output / "selected-toolchain.cmake"
                compiler = cmake_literal(resolved["compiler"])
                compile_cfg = exported["phases"]["compile"]["config"]
                link_cfg = exported["phases"]["link"]["config"]
                require(
                    not any(
                        c in compile_cfg + link_cfg for c in ('"', "\n", "\r", ";", "$")
                    ),
                    "CMake command-template configuration path is not representable; use an ordinary owned path",
                )
                toolchain.write_text(
                    "set(CMAKE_SYSTEM_NAME WASI)\nset(CMAKE_SYSTEM_PROCESSOR wasm32)\n"
                    + "set(CMAKE_CXX_COMPILER "
                    + compiler
                    + ")\n"
                    + "set(CMAKE_CXX_FLAGS_INIT "
                    + cmake_literal('--config="' + compile_cfg + '"')
                    + ")\n"
                    + "set(CMAKE_CXX_COMPILE_OBJECT "
                    + cmake_literal(
                        "<CMAKE_CXX_COMPILER> <DEFINES> <INCLUDES> <FLAGS> -o <OBJECT> -c <SOURCE>"
                    )
                    + ")\n"
                    + "set(CMAKE_CXX_LINK_EXECUTABLE "
                    + cmake_literal(
                        '<CMAKE_CXX_COMPILER> --config="'
                        + link_cfg
                        + '" <FLAGS> <LINK_FLAGS> <OBJECTS> -o <TARGET> <LINK_LIBRARIES>'
                    )
                    + ")\n"
                )
                arguments += [
                    "-DCMAKE_TOOLCHAIN_FILE=" + str(toolchain),
                    "-DUWVM_SDK_ROOT=" + str(sdk),
                    "-DCMAKE_CXX_STANDARD=" + request["standard"],
                    "-DUWVM_NVIDIA_POSITIVE="
                    + ("ON" if request["positive"] is True else "OFF"),
                ]
                if request.get("bundle"):
                    bundle = Path(request["bundle"]).resolve(strict=True)
                    require(
                        bundle.is_relative_to(sdk / "include"),
                        "selected bound family must be installed SDK input",
                    )
                    family_receipt = ordinary(request["family_receipt"])
                    require(
                        family_receipt.resolve(strict=True).is_relative_to(
                            sdk / "share"
                        ),
                        "installed family receipt required",
                    )
                    family = strict_json(family_receipt.read_bytes())
                    require(
                        family.get("format") == "uwvm-ros-vendor-complete-bounded-v1",
                        "whole actual family receipt required",
                    )
                    if request["positive"] is True:
                        require(
                            family.get("native_registry_emitted") is True
                            and family.get("records")
                            and all(
                                row.get("native_identity") for row in family["records"]
                            ),
                            "positive build requires a genuinely native-bound complete family; source preparation is insufficient",
                        )
                    receipt["family_receipt_sha256"] = digest(family_receipt)
                    arguments += ["-DUWVM_NVIDIA_BOUND_BUNDLE=" + str(bundle)]
            elif operation == "cmake-component-programs":
                require(
                    set(config)
                    == {
                        "format",
                        "cmake",
                        "cxx",
                        "ninja",
                        "prefixes",
                        "enable_native_components",
                        "enable_usb_pipeline",
                    },
                    "exact actual component-program tool/prefix/enable configuration required",
                )
                cxx = pinned_tool(config, "cxx")
                ninja = pinned_tool(config, "ninja")
                require(
                    type(config["enable_native_components"]) is bool
                    and type(config["enable_usb_pipeline"]) is bool,
                    "independent native-component and USB build enables must be booleans",
                )
                require(
                    type(config["prefixes"]) is list and config["prefixes"],
                    "actual installed native ROS/NVIDIA prefixes required",
                )
                for prefix in config["prefixes"]:
                    require(
                        type(prefix) is str
                        and Path(prefix).is_absolute()
                        and Path(prefix).is_dir()
                        and Path(prefix).resolve(strict=True) == Path(prefix)
                        and ";" not in prefix,
                        "physical absolute native prefix required",
                    )
                arguments += [
                    "-G",
                    "Ninja",
                    "-DCMAKE_MAKE_PROGRAM=" + str(ninja),
                    "-DCMAKE_CXX_COMPILER=" + str(cxx),
                    "-DCMAKE_PREFIX_PATH=" + ";".join(config["prefixes"]),
                    "-DUWVM_NVIDIA_ENABLE_COMPONENT_PROGRAMS="
                    + ("ON" if config["enable_native_components"] else "OFF"),
                    "-DUWVM_NVIDIA_ENABLE_USB_PIPELINE="
                    + ("ON" if config["enable_usb_pipeline"] else "OFF"),
                ]
            elif operation == "cmake-cpu-native":
                allowed = {
                    "format",
                    "cmake",
                    "python",
                    "prefixes",
                    "rosidl_buffer_include",
                    "enable_native_exchange",
                    "enable_cuda",
                    "cuda_buffer_include",
                }
                require(
                    set(config) <= allowed
                    and allowed - {"cuda_buffer_include"} <= set(config),
                    "exact native CPU backend settings required",
                )
                python = pinned_tool(config, "python")
                require(
                    type(config["enable_native_exchange"]) is bool
                    and type(config["enable_cuda"]) is bool,
                    "explicit independent native build enables required",
                )
                require(
                    type(config["prefixes"]) is list and config["prefixes"],
                    "actual installed ROS prefixes required",
                )
                for prefix in config["prefixes"]:
                    require(
                        Path(prefix).is_absolute()
                        and Path(prefix).is_dir()
                        and ";" not in prefix,
                        "actual absolute ROS prefix required",
                    )
                arguments += [
                    "-DCMAKE_PREFIX_PATH=" + ";".join(config["prefixes"]),
                    "-DPython3_EXECUTABLE=" + str(python),
                    "-DUWVM_CPU_SENSOR_INCLUDE="
                    + str(sdk / "include/platform/nvidia-isaac-ros/c"),
                    "-DUWVM_ROSIDL_BUFFER_INCLUDE=" + config["rosidl_buffer_include"],
                    "-DUWVM_NVIDIA_ENABLE_CPU_EXCHANGE="
                    + ("ON" if config["enable_native_exchange"] else "OFF"),
                    "-DUWVM_NVIDIA_CPU_CUDA="
                    + ("ON" if config["enable_cuda"] else "OFF"),
                ]
                if config["enable_cuda"]:
                    arguments += [
                        "-DUWVM_CUDA_BUFFER_INCLUDE=" + config["cuda_buffer_include"]
                    ]
            else:
                require(
                    set(config) == {"format", "cmake", "python", "prefixes"},
                    "exact real ROSIDL producer configuration required",
                )
                python = pinned_tool(config, "python")
                require(
                    type(config["prefixes"]) is list and config["prefixes"],
                    "actual installed ROS prefixes required",
                )
                for prefix in config["prefixes"]:
                    require(
                        Path(prefix).is_absolute()
                        and Path(prefix).is_dir()
                        and ";" not in prefix,
                        "actual absolute ROS prefix required",
                    )
                arguments += [
                    "-DCMAKE_PREFIX_PATH=" + ";".join(config["prefixes"]),
                    "-DPython3_EXECUTABLE=" + str(python),
                    "-DCMAKE_INSTALL_PREFIX=" + str(output / "install"),
                ]
            command("cmake-configure", arguments)
            command(
                "cmake-build",
                [
                    cmake,
                    "--build",
                    build,
                    "--parallel",
                    "1",
                    "--target",
                    request["target"],
                ],
            )
            if operation == "cmake-guest":
                resolved_pins(resolved, sdk)
                if request.get("bundle"):
                    require(
                        digest(family_receipt) == receipt["family_receipt_sha256"],
                        "selected family receipt changed during build",
                    )
            if operation == "cmake-component-programs":
                for name in ("cmake", "cxx", "ninja"):
                    pinned_tool(config, name)
            if operation == "cmake-interfaces":
                command("cmake-install", [cmake, "--install", build])
                product = (
                    output
                    / "install/share/uwvm_groot_bridge/cmake/uwvm_groot_bridgeConfig.cmake"
                )
            else:
                product = build / (
                    request["target"] + (".wasm" if operation == "cmake-guest" else "")
                )
            require(
                product.is_file() and product.stat().st_size > 0,
                "actual selected CMake product missing",
            )
            receipt["artifact"] = str(product)
        elif operation == "package-python":
            require(
                set(config) == {"format", "python"},
                "Python packaging accepts only the explicit pinned interpreter",
            )
            python = pinned_tool(config, "python")
            compile_arguments = [
                python,
                "-I",
                "-S",
                "-B",
                sdk / "tools/platform/nvidia/examples/compile_sources.py",
                "--sdk-root",
                sdk,
                "--input",
                source,
                "--output",
                output / "package",
            ]
            if request.get("python_entry") is not None:
                compile_arguments += ["--entry", request["python_entry"]]
            command("python-compile", compile_arguments)
            package_receipt = strict_json(
                (output / "package/python-build.json").read_bytes()
            )
            receipt["artifact"] = package_receipt["entry_pyc"]
        elif operation == "tinygo-stage":
            require(
                set(config) == {"format", "version", "goroot"},
                "explicit TinyGo version/matching Go root only",
            )
            resolved = strict_json(ordinary(request["resolved"]).read_bytes())
            require(
                resolved["language"] == "tinygo"
                and resolved["language_options"]["version"] == config["version"]
                and resolved["language_options"]["goroot"] == config["goroot"],
                "TinyGo settings conflict with the shared provider",
            )
            resolved_pins(resolved, sdk)
            go = ordinary(Path(config["goroot"]) / "bin/go").resolve(strict=True)
            toolchain = Path(resolved["toolchain_root"]).resolve(strict=True)
            require(
                any(
                    (toolchain / pin["path"]).resolve(strict=True) == go
                    for pin in resolved["tool_pins"]
                ),
                "matching actual Go binary is absent from the common provider tool pins",
            )
            package = sdk / "include/platform/ros/tinygo"
            require(
                (package / "go.mod").is_file(),
                "actual installed TinyGo SDK module missing",
            )
            project = output / "project"
            project.mkdir()
            if request["default_denial"] is True:
                shutil.copyfile(source / "default_denial/main.go", project / "main.go")
            else:
                for name in ("client.go", "input.go"):
                    shutil.copyfile(source / name, project / name)
                generated = (
                    sdk
                    / "include/platform/nvidia-groot/tinygo/ros2/groot-bridge-complete/bounded_records.go"
                )
                ordinary(generated)
                (project / "customtypes").mkdir()
                shutil.copyfile(generated, project / "customtypes/bounded_records.go")
                receipt["generated_records_sha256"] = digest(generated)
            (project / "go.mod").write_text(
                "module uwvm2.local/groot-example\n\ngo 1.23\n\n"
                + "require uwvm2.local/roswasm v0.0.0\nreplace uwvm2.local/roswasm => "
                + json.dumps(str(package), ensure_ascii=False)
                + "\n"
            )
            receipt["project"] = str(project)
        else:
            raise ValueError("unsupported internal NVIDIA backend operation")
        for spelling, pin in pins.items():
            path = Path(spelling)
            require(
                path.stat().st_size == pin["bytes"] and digest(path) == pin["sha256"],
                "example source changed during build",
            )
        if operation != "tinygo-stage":
            product = ordinary(receipt["artifact"])
            receipt["artifact_sha256"] = digest(product)
            receipt["artifact_bytes"] = product.stat().st_size
        require(
            digest(config_path) == receipt["configuration_sha256"],
            "backend configuration changed during build",
        )
        save(
            "SOURCE_PREPARED_NOT_COMPILED"
            if operation == "tinygo-stage"
            else "BUILT_NOT_EXECUTED"
        )
    except BaseException:
        save("FAILED_RETAINED")
        raise


if __name__ == "__main__":
    main()
