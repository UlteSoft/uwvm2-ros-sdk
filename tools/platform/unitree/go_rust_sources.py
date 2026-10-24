#!/usr/bin/env python3
"""@brief Author genuine Go, TinyGo, and Rust Unitree observations and examples.

@details Each source imports actual numeric ROS capabilities and full original
record codecs. All outputs are formatted before entering the review SDK. Host
language execution and compilation are deliberately absent from this generator.
"""

import argparse
from pathlib import Path
from facades_examples import publish, SCENARIOS, BOOTSTRAP


def xmake(sdk, language, version, scenario, extension):
    """@brief Publish one source-language and ROS-version-specific Xmake entry."""
    relative = f"example/platform/unitree/{language}/ros{version}/{scenario}"
    publish(
        sdk,
        relative + "/xmake.lua",
        BOOTSTRAP + f"""
-- @brief Build genuine {language} source into the sole distributable Wasm command.
target("unitree-{language}-ros{version}-{scenario}")
set_language("{language}")
set_ros_platform("unitree")
{'set_ros2_version("jazzy")' if version==2 else 'set_ros1_version("noetic")'}
set_plat(get_config("plat") or "wasm-wasip1")
set_arch(get_config("arch") or "wasm32")
add_files("main.{extension}")
target_end()
""",
    )


def go_sources(sdk, language):
    """@brief Create original Go/TinyGo source with their distinct genuine transports."""
    tiny = language == "tinygo"
    module = "uwvm2.local/roswasm" if tiny else "uwvm2.local/roswasmgo"
    tag = "tinygo && (wasm || tinygo.wasm)" if tiny else "wasip1 && wasm"
    body = f"""//go:build {tag}

// Package unitree owns complete Unitree observations in a genuine {language} Wasm guest.
// @brief Preserve every original message field and independent cleanup/error fact.
// @details Every ordinary acquisition closes once after a bounded sequence of actual
// polls. No native pointer, host interpreter, command publication, or retry worker exists.
package unitree

import ros "{module}"

// Outcome owns an entire accepted original record and all independent status facts.
// @brief Complete typed message result with explicit response and cleanup presence.
// @tparam T Original generated complete Unitree record value.
// @details Value and Wire are valid only when ResponsePresent is true. Ordinary
// values own their storage and no native capability. Serialize shared mutation.
type Outcome[T any] struct {{
    Primary uint32 // @brief First validation/open/subscription/poll/decode error.
    Cleanup uint32 // @brief Independent original single close result.
    CleanupPresent bool // @brief True only after closing an acquired native owner.
    ResponsePresent bool // @brief True only after full checked decoding.
    RPCPresent bool // @brief True only after an actual poll returned.
    RPCStatus uint32 // @brief Original final poll status before local decoding.
    Polls uint32 // @brief Total actual polls, including idle results.
    RequiredPresent bool // @brief True only after an actual size observation.
    Required uint64 // @brief Original successful extent or observed required extent.
    Value T // @brief Entire owned decoded record, governed by ResponsePresent.
    Wire []byte // @brief Complete owned canonical body, without native padding.
}}

// Status selects primary failure before the independent close failure.
// @brief Read the full unsigned status without a native operation.
// @param[in] value Immutable initialized observation.
// @return Primary when nonzero, otherwise Cleanup.
// @details Copying or reading this value creates no native owner or permission.
func (value Outcome[T]) Status() uint32 {{
    if value.Primary != 0 {{ return value.Primary }}
    return value.Cleanup
}}

// receive retains one real exact-type subscription for a finite caller poll budget.
// @brief Internal complete typed message observation implementation.
// @param[in] alias Existing exact native type subscription policy alias.
// @param[in] capacity Exact complete generated schema maximum in bytes.
// @param[in] attempts Total poll budget in [1,250], including the immediate poll.
// @param[in] pause Caller-controlled wait after idle; required for multiple attempts.
// @param[in] decode Exact complete transactional generated message decoder.
// @return Owned complete record and independent first/last-poll/cleanup facts.
// @details Idle 11 alone permits another poll. No capacity/timeout/error is
// automatically replayed. Allocation failure or a panic can prevent normal
// cleanup. Borrowed arguments stay unchanged through synchronous completion.
func receive[T any](alias string, capacity uint32, attempts uint32, pause func() uint32,
    decode func([]byte) (T,error)) Outcome[T] {{
    var out Outcome[T]
    if attempts == 0 || attempts > 250 || (attempts > 1 && pause == nil) {{ out.Primary = 22; return out }}
"""
    if tiny:
        body += """    if ros.RawAbiVersion() != 1 { out.Primary = 95; return out }
    owner, opened := ros.Open(alias)
    out.Primary = errorCode(opened)
    if out.Primary != 0 { return out }
    out.Primary = errorCode(owner.Subscribe())
    output := make([]byte, capacity)
    if out.Primary == 0 {
        for index := uint32(0); index < attempts; index++ {
            length, err := owner.Poll(output)
            out.RPCPresent = true
            out.RPCStatus = errorCode(err)
            out.Primary = out.RPCStatus
            out.Polls++
            if err == nil {
                if length > uint64(len(output)) { out.Primary = 22 } else {
                    out.Required, out.RequiredPresent = length, true
                    value, decoded := decode(output[:length])
                    if decoded != nil { out.Primary = errorCode(decoded) } else {
                        out.Value, out.Wire, out.ResponsePresent = value, output[:length], true
                    }
                }
            } else if actual, ok := err.(ros.Error); ok && actual.HasRequired {
                out.Required, out.RequiredPresent = actual.Required, true
            }
            if out.Primary != 11 || index + 1 == attempts { break }
            out.Primary = pause()
            if out.Primary != 0 { break }
        }
    }
    out.CleanupPresent = true
    out.Cleanup = errorCode(owner.Close())
    return out
}

// errorCode preserves the original numeric TinyGo or generated codec error.
// @brief Internal status conversion; unexpected non-ROS errors are invalid 22.
// @param[in] err Immutable language error, or nil for success.
// @return Full unsigned original error code, zero for nil, otherwise 22.
// @details Pure local conversion; no retry or ownership change is performed.
func errorCode(err error) uint32 {
    if err == nil { return 0 }
    if value, ok := err.(ros.Error); ok { return value.Code }
    if value, ok := err.(*ros.Error); ok { return value.Code }
    return 22
}
"""
    else:
        body += """    if ros.AbiVersion() != 1 { out.Primary = 95; return out }
    owner, status := ros.Open(alias)
    out.Primary = status
    if status != 0 { return out }
    out.Primary = owner.Subscribe()
    if out.Primary == 0 {
        for index := uint32(0); index < attempts; index++ {
            rpc, code := owner.Poll(capacity)
            out.RPCPresent, out.RPCStatus, out.Primary = true, code, code
            out.Polls++
            if code == 0 {
                out.Required, out.RequiredPresent = uint64(len(rpc.Data)), true
                value, err := decode(rpc.Data)
                if err != nil { out.Primary = 22 } else {
                    out.Value, out.Wire, out.ResponsePresent = value, rpc.Data, true
                }
            } else if rpc.HasRequired {
                out.Required, out.RequiredPresent = rpc.Required, true
            }
            if code != 11 || index + 1 == attempts { break }
            out.Primary = pause()
            if out.Primary != 0 { break }
        }
    }
    out.CleanupPresent = true
    out.Cleanup = owner.Close()
    return out
}
"""
    publish(sdk, f"include/platform/unitree/{language}/observation.go", body, "go")
    requires = f"""module uwvm2.local/unitree-{language}

go 1.24

require (
    {module} v0.0.0
    uwvm2.local/unitree-records-{language}-ros1 v0.0.0
    uwvm2.local/unitree-records-{language}-ros2 v0.0.0
)
"""
    publish(sdk, f"include/platform/unitree/{language}/go.mod", requires)
    for version, scenarios in SCENARIOS.items():
        body = f"""//go:build {tag} && ros{version} && !ros{3-version}

// @brief Select only genuine ROS {version} complete original Unitree messages.
// @details Every public function retains one real owner and closes it once.
package unitree

import records "uwvm2.local/unitree-records-{language}-ros{version}"
"""
        for scenario, typename, native, description in scenarios:
            method = "Wait" + "".join(part.title() for part in scenario.split("_"))
            symbol = f"Ros{version}" + ("Unitree_goMsg" if version == 2 else "Unitree_legged_msgs") + native
            body += f"""
// {method} reads every field of the original native {native} message.
// @brief {description}
// @param[in] alias Existing exact native type topic-subscription policy alias.
// @param[in] attempts Finite total poll budget in [1,250].
// @param[in] pause Caller wait after idle, required above one attempt.
// @return Entire owned record, complete canonical bytes, and independent errors.
// @details Inputs stay alive through the synchronous operation. No command,
// service request, source interpreter, backend fallback, or grant is created.
func {method}(alias string, attempts uint32, pause func() uint32) Outcome[records.{symbol}] {{
    return receive(alias, records.{symbol}MaxWireBytes, attempts, pause, records.Decode{symbol})
}}
"""
            relative = f"example/platform/unitree/{language}/ros{version}/{scenario}"
            main = f"""// @file main.go
// @brief {description}
// @details Genuine {language} source is compiled into one standalone Wasm command.
// The production uwvm2-ros native gateway supplies all real ROS transport.
package main

import (
    "encoding/hex"
    "encoding/json"
    "fmt"
    "os"
    "time"
    unitree "uwvm2.local/unitree-{language}"
)

// main observes exactly one complete original native {native} message.
// @brief Execute a finite real subscription and print all accepted record bytes.
// @details One explicit alias argument is required. A monotonic twenty-millisecond
// wait separates idle polls. Host clock/random permissions are explicit. The
// owner closes once before stdout. No physical robot or actuation is involved.
func main() {{
    if len(os.Args) != 2 {{
        os.Exit(22)
    }}
    value := unitree.{method}(os.Args[1], 250, func() uint32 {{
        time.Sleep(20*time.Millisecond)
        return 0
    }})
    report := map[string]any{{
        "primary": value.Primary,
        "cleanup": value.Cleanup,
        "cleanup_present": value.CleanupPresent,
        "response_present": value.ResponsePresent,
        "rpc_present": value.RPCPresent,
        "rpc_status": value.RPCStatus,
        "polls": value.Polls,
        "required_present": value.RequiredPresent,
        "required": value.Required,
        "encoding": 0,
        "wire_hex": hex.EncodeToString(value.Wire),
    }}
    bytes, err := json.Marshal(report)
    status := value.Status()
    if err != nil {{
        if status == 0 {{
            status = 22
        }}
    }} else if _, err := fmt.Println(string(bytes)); err != nil && status == 0 {{
        status = 5
    }}
    if status > 125 {{
        status = 125
    }}
    os.Exit(int(status))
}}
"""
            publish(sdk, relative + "/main.go", main, "go")
            publish(
                sdk,
                relative + "/go.mod",
                f"""module unitree-example-{language}-ros{version}-{scenario.replace('_','-')}

go 1.24

require uwvm2.local/unitree-{language} v0.0.0
""",
            )
            xmake(sdk, language, version, scenario, "go")
        publish(
            sdk,
            f"include/platform/unitree/{language}/observation_ros{version}.go",
            body,
            "go",
        )


def rust_sources(sdk):
    """@brief Create original typed Rust ownership and full-record observations."""
    body = """//! @brief Own complete Unitree native observations in a genuine Rust Wasm command.
//! @details Every synchronous operation retains one exact-type subscription and
//! closes its owner once. No command, native pointer, timer, callback, retry task,
//! host interpreter, or implicit authority is created. Fatal panic/traps can
//! prevent normal cleanup; ordinary numeric errors preserve both failure stages.
extern crate alloc;
use alloc::{vec, vec::Vec};
use roswasm::{codes, Backend, Capability, Error};
use roswasm::typed::Canonical;

/// @brief Complete original ROS 1 field-preserving canonical record types.
/// @details Selecting this source module creates no native endpoint or grant.
#[cfg(feature = "ros1")]
#[path = "ros1/records.rs"]
pub mod records;
/// @brief Complete original ROS 2 field-preserving canonical record types.
/// @details Selecting this source module creates no native endpoint or grant.
#[cfg(feature = "ros2")]
#[path = "ros2/records.rs"]
pub mod records;
#[cfg(all(feature = "ros1", feature = "ros2"))]
compile_error!("Select exactly one Unitree ROS import family");

/// @brief Own one complete typed message and independent operation/close facts.
/// @tparam T Complete generated original Unitree record type.
/// @details Read value only when Some. Owned wire bytes contain every accepted
/// original field; copying this structure creates no native capability.
pub struct Outcome<T> {
    /// @brief First original validation/open/subscribe/poll/decode refusal.
    pub primary: u32,
    /// @brief Original final poll error, including any actually written size hint.
    pub rpc_error: Option<Error>,
    /// @brief True only after an actual event poll returned.
    pub rpc_present: bool,
    /// @brief Original complete extent or actual required-length observation.
    pub length: Option<u64>,
    /// @brief Actual event poll count, including idle results.
    pub polls: u32,
    /// @brief Original once-only close result; None means no owner was acquired.
    pub cleanup: Option<u32>,
    /// @brief Entire accepted original record, or None on every decode refusal.
    pub value: Option<T>,
    /// @brief Entire owned canonical message body; empty without an accepted value.
    pub wire: Vec<u8>,
}
impl<T> Outcome<T> {
    /// @brief Construct local absent-result storage without acquiring an owner.
    fn empty() -> Self { Self { primary:0, rpc_error:None, rpc_present:false, length:None,
        polls:0, cleanup:None, value:None, wire:Vec::new() } }
    /// @brief Select the original primary error before independent close failure.
    /// @return Full unsigned numeric status; zero requires both stages to succeed.
    /// @details Pure immutable read with no host operation or ownership transfer.
    pub fn status(&self) -> u32 { if self.primary != 0 { self.primary } else { self.cleanup.unwrap_or(0) } }
}

/// @brief Retain one actual native subscription and decode one entire original message.
/// @tparam T Exact selected complete original canonical record.
/// @param[in] alias Borrowed exact-type subscription policy alias, stable until return.
/// @param[in] capacity Exact complete schema maximum in bytes.
/// @param[in] attempts Finite poll budget in [1,250], including the immediate poll.
/// @param[in] pause Caller-controlled wait after idle; no SDK timer is created.
/// @return Entire owned record and independent operation/poll/length/close facts.
/// @details Idle 11 alone permits another poll. All normal successful acquisitions
/// close once. No capacity/timeout/error is automatically replayed; fatal traps or
/// allocation failure cannot guarantee ordinary cleanup. Serialize shared mutation.
fn receive<T: Canonical>(alias: &str, capacity: usize, attempts:u32, pause:fn()->u32) -> Outcome<T> {
    let mut out = Outcome::empty();
    if attempts == 0 || attempts > 250 { out.primary = codes::INVALID; return out; }
    #[cfg(feature = "ros1")]
    let backend = Backend::Ros1;
    #[cfg(feature = "ros2")]
    let backend = Backend::Ros2;
    let mut owner = match Capability::open(backend,alias) { Ok(owner) => owner,
        Err(error) => { out.primary=error.code; return out; } };
    let mut buffer = vec![0; capacity];
    if let Err(error) = owner.subscribe() { out.primary=error.code; }
    if out.primary == 0 {
        for index in 0..attempts {
            out.rpc_present=true;
            out.polls+=1;
            match owner.poll(&mut buffer) {
                Err(error) => { out.primary=error.code; out.length=error.required; out.rpc_error=Some(error); }
                Ok(length) => {
                    out.primary=0;
                    out.rpc_error=None;
                    out.length=Some(length as u64);
                    match T::decode(&buffer[..length]) {
                        Err(error) => { out.primary=error.code; }
                        Ok(value) => { buffer.truncate(length); out.wire=buffer; out.value=Some(value); break; }
                    }
                }
            }
            if out.primary != 11 || index + 1 == attempts { break; }
            out.primary=pause();
            if out.primary != 0 { break; }
        }
    }
    out.cleanup=Some(owner.close().err().map_or(0,|error|error.code));
    out
}
"""
    for version, scenarios in SCENARIOS.items():
        for scenario, typename, native, description in scenarios:
            symbol = f"Ros{version}" + ("Unitree_goMsg" if version == 2 else "Unitree_legged_msgs") + native
            body += f"""
/// @brief {description}
/// @param[in] alias Existing exact native {native} subscription policy alias.
/// @param[in] attempts Total finite poll budget, one through 250.
/// @param[in] pause Caller wait after idle; no hidden timer/thread is started.
/// @return Whole owned original record and independent operation/poll/close facts.
/// @details Borrow input storage synchronously. Ordinary failures close the owner
/// once and expose no partial record; no robot command or authority is created.
#[cfg(feature = "ros{version}")]
pub fn wait_{scenario}(alias:&str, attempts:u32, pause:fn()->u32)->Outcome<records::{symbol}> {{
    receive(alias,records::{symbol}::MAX_WIRE_BYTES,attempts,pause)
}}
"""
            relative = f"example/platform/unitree/rs/ros{version}/{scenario}"
            main = f"""//! @brief {description}
//! @details Genuine Rust source is compiled into one WASI command. The actual
//! uwvm2-ros runtime and production native gateway provide all ROS transport.
use std::fmt::Write as FmtWrite;
use std::io::{{self, Write as IoWrite}};
use std::time::Duration;

/// @brief Wait twenty milliseconds between idle polls through real WASI clocks.
/// @return Zero after the wait; the host independently grants clock access.
/// @details No additional owner, worker, timer thread, or ROS operation is created.
fn pause() -> u32 {{
    std::thread::sleep(Duration::from_millis(20));
    0
}}

/// @brief Observe one whole original native {native} message and print its full bytes.
/// @return Process status preserves the primary error before cleanup, otherwise
/// output failure is 5; every final process status is clamped to 125.
/// @details Exactly one explicit alias argument is required. All normal owners
/// close before stdout. The finite poll budget does not replay capacity errors
/// or publish any robot command. A fatal Rust panic cannot promise normal cleanup.
fn main() {{
    let input: Vec<String> = std::env::args().collect();
    if input.len() != 2 {{
        std::process::exit(22);
    }}
    let value = unitree::wait_{scenario}(&input[1], 250, pause);
    let mut status = value.status();
    let mut wire = String::new();
    for byte in &value.wire {{
        if write!(&mut wire, "{{:02x}}", byte).is_err() {{
            if status == 0 {{
                status = 5;
            }}
            std::process::exit(status.min(125) as i32);
        }}
    }}
    let stdout = io::stdout();
    let mut output = stdout.lock();
    let written = writeln!(output, concat!(
        "{{{{\\"primary\\":{{}},\\"cleanup\\":{{}},\\"cleanup_present\\":{{}},",
        "\\"response_present\\":{{}},\\"rpc_present\\":{{}},\\"rpc_status\\":{{}},",
        "\\"polls\\":{{}},\\"required_present\\":{{}},\\"required\\":{{}},",
        "\\"encoding\\":0,\\"wire_hex\\":\\"{{}}\\"}}}}"),
        value.primary,
        value.cleanup.unwrap_or(0),
        value.cleanup.is_some(),
        value.value.is_some(),
        value.rpc_present,
        value.rpc_error.as_ref().map_or(0, |error| error.code),
        value.polls,
        value.length.is_some(),
        value.length.unwrap_or(0),
        wire
    ).is_ok();
    let flushed = output.flush().is_ok();
    if status == 0 && (!written || !flushed) {{
        status = 5;
    }}
    std::process::exit(status.min(125) as i32);
}}
"""
            publish(sdk, relative + "/main.rs", main, "rs")
            xmake(sdk, "rs", version, scenario, "rs")
    publish(sdk, "include/platform/unitree/rs/lib.rs", body, "rs")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    sdk = parser.parse_args().sdk.resolve(strict=True)
    go_sources(sdk, "go")
    go_sources(sdk, "tinygo")
    from tinygo_command_sources import prepare as tinygo_commands

    tinygo_commands(sdk)
    rust_sources(sdk)
