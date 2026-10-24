#!/usr/bin/env python3
"""@brief Author formatted real-language read-only Unitree facades and examples.

@details Every generated example imports a public SDK path and owns an ordinary
standalone Xmake entry. No example embeds a parent-directory hop, native driver,
mock value, command publication, source interpreter, or substitute Wasm engine.
"""

import argparse
from pathlib import Path
from binding_sources import write
from source_quality import prepare_source

BOOTSTRAP = """-- @brief Locate the installed SDK without an encoded directory depth.
-- @details UWVM_ROS_SDK_ROOT selects an external installation. Otherwise walk actual
-- parent directories until the installed Unitree standalone entry is found.
-- Explicit architecture and platform requests are validated as requested;
-- unsupported selections cannot silently fall back to the defaults.
local sdk_root = os.getenv("UWVM_ROS_SDK_ROOT")
if not sdk_root then
    local candidate = path.absolute(os.scriptdir())
    while true do
        if os.isfile(path.join(candidate, "tools/xmake/ros.lua")) then
            sdk_root = candidate
            break
        end
        local parent = path.directory(candidate)
        if parent == candidate then error("Set UWVM_ROS_SDK_ROOT to the installed SDK root") end
        candidate = parent
    end
end
includes(path.join(sdk_root, "tools/xmake/ros.lua"))
-- @brief Running an existing Wasm must not invoke a language compiler.
set_policy("run.autobuild", false)
"""

SCENARIOS = {
    2: [
        (
            "motion_state",
            "motion_state",
            "SportModeState",
            "Observe the complete native locomotion, odometry, IMU, and foot state.",
        ),
        (
            "low_state",
            "low_state",
            "LowState",
            "Observe every native motor, BMS, force, remote, temperature, reserve, and CRC field.",
        ),
        (
            "wireless_controller",
            "wireless_controller",
            "WirelessController",
            "Observe all four joystick axes and the complete key bitmask without generating input.",
        ),
    ],
    1: [
        (
            "motion_state",
            "motion_state",
            "HighState",
            "Observe the complete native ROS 1 high-level state and every nested field.",
        ),
        (
            "low_state",
            "low_state",
            "LowState",
            "Observe the complete native ROS 1 low-level state with all twenty motors.",
        ),
        (
            "motor_state",
            "motor_state",
            "MotorState",
            "Observe a native Gazebo joint-controller state, preserving every original motor field.",
        ),
    ],
}


def publish(sdk, relative, body, language=None):
    """@brief Format in temporary storage before writing a reviewed source file."""
    extension = Path(relative).suffix[1:]
    if extension in ("h", "hpp", "c", "cpp", "m", "ts", "rs", "go", "mjs", "lua", "py"):
        body = prepare_source(sdk, language or extension, extension, body)
    write(sdk / relative, body)


def cxx_facade(sdk):
    publish(
        sdk,
        "include/platform/unitree/cpp/observation.hpp",
        """/**
 * @file observation.hpp
 * @brief Provide typed C++ value results for complete Unitree observations.
 * @details This header requires C++11 or later and borrows the genuine C
 * capability transport. Templates preserve the original full record types.
 * No exception, RTTI, standard-library allocation, or native C++ ABI is needed.
 */
#ifndef UWVM_UNITREE_CPP_OBSERVATION_HPP
#define UWVM_UNITREE_CPP_OBSERVATION_HPP
#include <unitree/c/observation.h>
namespace unitree
{
    /**
     * @brief Own a complete typed record and its independent observation facts.
     * @tparam T Original generated Unitree record supported by Observer<T>.
     * @details value is usable only when facts.response_present is true. The
     * object owns inline storage and no native capability. Copying it grants
     * no ROS authority. Serialize mutable access to the same value.
     */
    template<typename T> struct Outcome
    {
        unitree_observation facts; /**< @brief Original operation, last poll, and close facts. */
        T value; /**< @brief Entire owned record, governed by facts.response_present. */
        /** @brief Construct empty local result storage without any host call. */
        Outcome() : facts(), value() {}
        /**
         * @brief Select the original primary error before cleanup failure.
         * @return Full unsigned numeric status; zero requires both to succeed.
         * @details Pure immutable local read, with no ownership transfer.
         */
        uint32_t status() const { return unitree_observation_status(&facts); }
    };
    /** @brief Closed type dispatch; unsupported original records fail to instantiate. */
    template<typename T> struct Observer;
#define UWVM_UNITREE_CPP_OBSERVER(Type, Function) \\
    template<> struct Observer<Type> \\
    { \\
        static unitree_observation read(roswasmc_context const* context, char const* alias, uint32_t attempts, unitree_pause_fn pause, Type* output) \\
        { return Function(context, alias, attempts, pause, output); } \\
    }
    UWVM_UNITREE_CPP_OBSERVER(unitree_motion_state, unitree_wait_motion_state);
    UWVM_UNITREE_CPP_OBSERVER(unitree_low_state, unitree_wait_low_state);
#if UWVM_UNITREE_ROS_VERSION == 2
    UWVM_UNITREE_CPP_OBSERVER(unitree_wireless_controller, unitree_wait_wireless_controller);
#else
    UWVM_UNITREE_CPP_OBSERVER(unitree_motor_state, unitree_wait_motor_state);
#endif
#undef UWVM_UNITREE_CPP_OBSERVER
    /**
     * @brief Read one complete original Unitree record through typed dispatch.
     * @tparam T Supported complete original message, never a projection.
     * @param[in] context Borrowed selected-backend context, stable through return.
     * @param[in] alias Existing exact native type subscription alias.
     * @param[in] attempts Poll budget in [1,250], including the immediate poll.
     * @param[in] pause Caller wait between idle polls; required above one attempt.
     * @return Owned complete value and independent operation/cleanup facts.
     * @details Every normal successful acquisition is closed once before the
     * value is returned. No native allocation, background task, automatic
     * capacity replay, or robot command is created. Fatal traps cannot promise
     * normal cleanup. All borrowed inputs remain stable through the call.
     */
    template<typename T> Outcome<T> observe(roswasmc_context const& context, char const* alias,
        uint32_t attempts = 1, unitree_pause_fn pause = 0)
    {
        Outcome<T> result;
        result.facts = Observer<T>::read(&context, alias, attempts, pause, &result.value);
        return result;
    }
}
#endif
""",
    )
    publish(
        sdk,
        "include/platform/unitree/objectc/observation.h",
        """/**
 * @file observation.h
 * @brief Use complete Unitree records from the genuine Objective-C frontend.
 * @details This freestanding subset uses @encode for compiler layout metadata.
 * It requires no Foundation, ARC, Objective-C messaging, or host object runtime.
 * Those facilities require their own separately qualified WASI runtime closure.
 */
#ifndef UWVM_UNITREE_OBJC_OBSERVATION_H
#define UWVM_UNITREE_OBJC_OBSERVATION_H
#ifndef __OBJC__
#error "Compile this header with the genuine Objective-C frontend"
#endif
#include <unitree/c/observation.h>
/** @brief Own complete observation facts; no Objective-C object is allocated. */
typedef unitree_observation UWUnitreeObservation;
/**
 * @brief Return the actual Objective-C compiler's observation type encoding.
 * @return Borrowed immutable process-lifetime string; never free or modify it.
 * @details Local layout metadata is neither ROS wire serialization nor a native
 * type identity. Calling this function performs no host operation or grant.
 */
static inline char const* UWUnitreeObservationEncoding(void) { return @encode(UWUnitreeObservation); }
#endif
""",
    )
    publish(
        sdk,
        "include/platform/unitree/c_ffi_bridge/observation.h",
        """/**
 * @file observation.h
 * @brief Route Unitree observations through the genuine shared numeric C FFI shim.
 * @details Link the maintained shim.c with ROSWASM_C_FFI_BACKEND matching the
 * selected ROS version. These are C examples; they establish no consumer-language
 * qualification. All handles, memory offsets, and lengths retain full u64 width.
 */
#ifndef UWVM_UNITREE_C_FFI_OBSERVATION_H
#define UWVM_UNITREE_C_FFI_OBSERVATION_H
#include <unitree/c/observation.h>
#include <platform/ros/c_ffi_bridge/roswasm_c_ffi.h>
/** @brief Query the real selected bridge ABI; returns version 1, not an errno. */
static inline uint32_t unitree_ffi_version(void) { return roswasm_c_ffi_invoke(0,0,0,0,0,0,0,0); }
/**
 * @brief Open an already granted exact alias through the numeric bridge.
 * @param[in] memory Actual Guest linear memory index; convenience calls use 0.
 * @param[in] alias Full u64 Guest byte offset of borrowed strict UTF-8 alias bytes.
 * @param[in] length Alias extent in bytes, without a NUL terminator.
 * @param[out] output Guest offset of an exclusive eight-byte little-endian handle slot.
 * @return Original unsigned status; zero admits one opaque full-width handle.
 * @details Referenced input/output storage stays alive through this synchronous call.
 */
static inline uint32_t unitree_ffi_open(uint32_t memory,uint64_t alias,uint64_t length,uint64_t output)
{ return roswasm_c_ffi_invoke(9,memory,alias,length,output,0,0,0); }
/**
 * @brief Close this acquired bridge handle once; failed cleanup is not replayed.
 * @param[in] handle Full-width opaque owner obtained from the same backend/instance.
 * @return Independent original unsigned cleanup status.
 * @details Retirement is not physical robot stopping or command rollback.
 */
static inline uint32_t unitree_ffi_close(uint64_t handle) { return roswasm_c_ffi_invoke(8,handle,0,0,0,0,0,0); }
/**
 * @brief Activate the already granted exact native subscription alias.
 * @param[in] handle Full-width same-instance topic subscription owner.
 * @return Original unsigned status; zero is admission, not delivered data.
 * @details No publish permission, worker, or native source is inferred.
 */
static inline uint32_t unitree_ffi_subscribe(uint64_t handle) { return roswasm_c_ffi_invoke(46,handle,0,0,0,0,0,0); }
/**
 * @brief Poll one actual native record through the full-width numeric bridge.
 * @param[in] handle Existing owned subscription handle.
 * @param[in] memory Actual Guest memory index, normally 0.
 * @param[out] output Exclusive canonical output-buffer byte offset.
 * @param[in] capacity Complete writable extent in bytes.
 * @param[out] length Eight-byte little-endian output-length slot offset.
 * @return Original unsigned status; 11 is idle, 90 remains a capacity failure.
 * @details Every addressed region remains live through return. A consuming
 * capacity failure is never automatically retried with a larger buffer.
 */
static inline uint32_t unitree_ffi_poll(uint64_t handle,uint32_t memory,uint64_t output,uint64_t capacity,uint64_t length)
{ return roswasm_c_ffi_invoke(11,handle,memory,output,capacity,length,0,0); }
/**
 * @brief Borrow an immutable dispatch table for these observation operations.
 * @return Static process-lifetime table; never mutate or free it.
 * @details This local selection creates no capability or native connection.
 */
static inline roswasmc_backend const* unitree_ffi_backend(void)
{
    static roswasmc_backend const backend = {.version=UWVM_UNITREE_ROS_VERSION,
        .abi_version=unitree_ffi_version,.open=unitree_ffi_open,.close=unitree_ffi_close,
        .subscribe=unitree_ffi_subscribe,.poll=unitree_ffi_poll};
    return &backend;
}
#endif
""",
    )


def c_examples(sdk):
    for version, scenarios in SCENARIOS.items():
        for language in ("c", "cpp", "objectc", "c_ffi_bridge"):
            for scenario, typename, native, description in scenarios:
                extension = {"objectc": "m", "c_ffi_bridge": "c"}.get(
                    language, language
                )
                include = {
                    "cpp": "cpp/observation.hpp",
                    "objectc": "objectc/observation.h",
                    "c_ffi_bridge": "c_ffi_bridge/observation.h",
                }.get(language, "c/observation.h")
                body = f"""/**
 * @file main.{extension}
 * @brief {description}
 * @details A finite observation retains one actual native subscription and
 * closes its owner once. No robot command or service operation is issued.
 * Build this directory with Xmake; run the sole .wasm through uwvm2-ros.
 */
#include <unitree/{include}>
#include <unitree/support/command_io.h>
/**
 * @brief Execute one exact-type native ROS {version} observation.
 * @param[in] argc Exactly two arguments including the program name.
 * @param[in] argv Borrowed arguments: application EXISTING_ALIAS.
 * @return Original operation/cleanup/encoding/output status, clamped to 125.
 * @details Output includes the entire canonical record and independent error
 * facts. Host policy supplies the exact real topic, native identity, QoS, and
 * limits. All owners are closed before stdout; no physical robot is required.
 */
int main(int argc, char** argv)
{{
    if(argc != 2) {{ return 22; }}
"""
                if language == "objectc":
                    body += "    if(!*UWUnitreeObservationEncoding()) { return 22; }\n"
                backend = (
                    "unitree_ffi_backend"
                    if language == "c_ffi_bridge"
                    else "unitree_backend"
                )
                body += f"    roswasmc_context context = {{{backend}()}};\n"
                if language == "cpp":
                    body += f"""    auto result = unitree::observe<unitree_{typename}>(context, argv[1], 250, unitree_command_pause);
    unitree_observation const& facts = result.facts;
    auto const& value = result.value;
"""
                else:
                    body += f"""    unitree_{typename} value = {{0}};
    unitree_observation facts = unitree_wait_{typename}(&context, argv[1], 250, unitree_command_pause, &value);
"""
                body += f"""    unsigned char wire[UNITREE_{typename.upper()}_WIRE_BYTES];
    size_t length = 0;
    uint32_t encoding = facts.response_present ? unitree_{typename}_encode(&value, wire, sizeof wire, &length) : 0;
    return unitree_command_output(&facts, wire, length, encoding);
}}
"""
                relative = (
                    f"example/platform/unitree/{language}/ros{version}/{scenario}"
                )
                publish(sdk, relative + "/main." + extension, body)
                manifest = BOOTSTRAP + f"""
-- @brief Compile genuine {language} source to one selected WASI command.
target("unitree-{language}-ros{version}-{scenario}")
set_language("{language}")
set_ros_platform("unitree")
{'set_ros2_version("jazzy")' if version == 2 else 'set_ros1_version("noetic")'}
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
add_files("main.{extension}")
target_end()
"""
                publish(sdk, relative + "/xmake.lua", manifest)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    cxx_facade(sdk)
    c_examples(sdk)


if __name__ == "__main__":
    main()
