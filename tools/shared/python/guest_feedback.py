"""Verify fresh VM-to-guest state delivery for the frozen joint-step guest.

This is an independent SDK evidence consumer. It issues no ROS queries or
commands. A state-copy flag is not guest processing: exact source/Wasm identity,
actual after-exec actor evidence and the guest's checked exit path are required.
"""
from pathlib import Path
import hashlib
import json
import re
import struct
from runtime_boundary import Blocked, digest, read_document

WASM_SHA256 = "c0d886e864243938999e4adf4c0f4ce6fb3c2c001723b855cd8b203bfafe2043"
SOURCE_PINS = {
    "include/platform/ros/portable/v0_1_0/abi.h": "9feeb5eb1354edfa06274b77cbe83d24569366fd49e2bf67400bab970ddd902d",
    "example/platform/ros/portable/v0_1_0/joint_step/main.c": "46f6bac6268cc9a4e338f75c57d7b9df508ec98a4b63d9f95bc427186d6fa616",
    "example/platform/ros/portable/v0_1_0/joint_step/xmake.lua": "57da5ffa3fed362bcefaed7a36853636316a0816bf1a2f44ab7de14b084cd730"}
STATE_FORMAT = "uwvm-sdk-simulation-state-delivery-v1"
BINDING_FORMAT = "uwvm-sdk-simulation-command-binding-v1"
AUDIT_FORMAT = "uwvm-portable-robot-audit-v1"
HEX64 = re.compile("[0-9a-f]{64}")
HEX32 = re.compile("[0-9a-f]{32}")


class FeedbackError(RuntimeError):
    """Actual runtime evidence is malformed, foreign, stale or inconsistent."""


def require(condition, reason):
    if not condition:
        raise FeedbackError("FAILED_" + reason)


def uint(value, name):
    require(type(value) is int and 0 <= value < (1 << 64), "FEEDBACK_INTEGER_" + name)
    return value


def decode_json(raw):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            require(key not in result, "FEEDBACK_DUPLICATE_JSON_KEY")
            result[key] = value
        return result
    def invalid(value):
        raise FeedbackError("FAILED_FEEDBACK_NONINTEGER_OR_NONFINITE_JSON: " + value)
    return json.loads(raw, object_pairs_hook=unique, parse_float=invalid, parse_constant=invalid)


def stream_rows(actor, run_id, require_finished=True):
    with Path(actor["stdout"]).open("rb") as stream:
        raw = stream.read(8 * 1024 * 1024 + 1)
    require(len(raw) <= 8 * 1024 * 1024, "FEEDBACK_RAW_STDOUT_BOUND")
    require(actor.get("actual_exec_receipt") and actor.get("approved_executable_sha256"), "FEEDBACK_ACTUAL_AFTER_EXEC_IMAGE")
    receipt, receipt_sha = read_document(actor["actual_exec_receipt"])
    require(receipt_sha == actor.get("actual_exec_receipt_sha256")
            and receipt.get("format") == "uwvm-sdk-actual-actor-exec-v1"
            and type(receipt.get("pid")) is int and receipt["pid"] == actor["pid"]
            and receipt.get("birth") == actor["birth"]
            and receipt.get("actual_executable_descriptor", {}).get("sha256")
                == actor["approved_executable_sha256"], "FEEDBACK_ACTUAL_EXEC_RECEIPT_IDENTITY")
    import time
    finished = actor["process"].poll() is not None
    require(not require_finished or finished and actor.get("finished_ns"), "FEEDBACK_ACTOR_FINISHED")
    end_ns = actor.get("finished_ns", time.monotonic_ns())
    lines = raw.splitlines()
    if not finished and raw and not raw.endswith(bytes([10])):
        lines = lines[:-1]
    rows = []
    previous_ns = actor["started_ns"]
    for line in lines:
        if not line.startswith(b"{"):
            continue
        require(len(line) <= 4095, "FEEDBACK_AUDIT_RECORD_EXTENT")
        row = decode_json(line)
        require(type(row) is dict, "FEEDBACK_AUDIT_JSON_OBJECT")
        if row.get("format") not in (STATE_FORMAT, BINDING_FORMAT, AUDIT_FORMAT):
            continue
        require(row.get("run_id") == run_id and type(row.get("pid")) is int
                and row["pid"] == actor["pid"], "FEEDBACK_FRESH_RUN_AND_ACTUAL_PID")
        timestamp = uint(row["monotonic_ns"], "audit_timestamp")
        require(previous_ns <= timestamp <= end_ns, "FEEDBACK_ACTOR_TIME_INTERVAL_OR_ORDER")
        previous_ns = timestamp
        rows.append(row)
    return rows, hashlib.sha256(raw).hexdigest()


def snapshot(record):
    require(record.get("producer") == "uwvm2-ros/runtime/portable-host" and record.get("portable_call") == "read_state"
            and record.get("decision") == "ALLOW" and record.get("guest_memory_written") is True
            and record.get("guest_processing_proven") is False, "FEEDBACK_REAL_COPY_NOT_PROCESSING_CLAIM")
    require(type(record.get("payload_hex")) is str and re.fullmatch("[0-9a-f]+", record["payload_hex"])
            and len(record["payload_hex"]) <= 640, "FEEDBACK_PAYLOAD_HEX")
    raw = bytes.fromhex(record["payload_hex"])
    require(record["memory_index"] == 0 and type(record["memory_index"]) is int, "FEEDBACK_COPY_MEMORY_INDEX")
    offset = uint(record["output_offset"], "output_offset")
    require(type(record["output_bytes"]) is int and record["output_bytes"] == len(raw)
            and 0 <= offset <= (1 << 64) - 1 - len(raw), "FEEDBACK_COPY_EXTENT")
    require(64 <= len(raw) <= 320 and raw[:4] == bytes.fromhex("55525031"), "FEEDBACK_STATE_FRAME_MAGIC_OR_EXTENT")
    version, kind, total, count = struct.unpack_from("<HHII", raw, 4)
    require(version == 1 and kind == 2 and total == len(raw) == 64 + 16 * count and 1 <= count <= 16, "FEEDBACK_STATE_FRAME_SCHEMA")
    require(HEX64.fullmatch(record["payload_sha256"]) and hashlib.sha256(raw).hexdigest() == record["payload_sha256"], "FEEDBACK_STATE_PAYLOAD_SHA256")
    epoch, sequence, observed, valid_until = struct.unpack_from("<QQQQ", raw, 16)
    require(raw[48:64] == bytes(16) and epoch > 0 and sequence > 0, "FEEDBACK_STATE_RESERVED_EPOCH_SEQUENCE")
    for key, value in [("mapping_epoch", epoch), ("observed_sequence", sequence), ("native_observed_ns", observed), ("valid_until_ns", valid_until)]:
        require(uint(record[key], key) == value, "FEEDBACK_STATE_FRAME_RECORD_CORRELATION")
    require(observed <= record["monotonic_ns"] < valid_until and 0 < valid_until - observed <= 250_000_000, "FEEDBACK_STATE_FRESH_AT_COPY")
    positions = []
    for i in range(count):
        slot, flags, position = struct.unpack_from("<IIq", raw, 64 + 16 * i)
        require(slot == i and flags == 1, "FEEDBACK_STATE_SLOT_FLAGS")
        positions.append(position)
    return {"positions": positions, "epoch": epoch, "sequence": sequence, "native_observed_ns": observed,
            "payload_sha256": record["payload_sha256"], "output_offset": offset, "output_bytes": len(raw)}


class JointFeedback:
    """Exact frozen joint-step algorithm; other guest formats remain required gaps."""

    def __init__(self, sdk, wasm):
        self.sdk, self.wasm = Path(sdk), Path(wasm)
        if self.wasm.stat().st_size != 4449 or digest(self.wasm) != WASM_SHA256:
            raise Blocked("BLOCKED_UNSUPPORTED_FROZEN_GUEST_FEEDBACK_PROFILE")
        for name, expected in SOURCE_PINS.items():
            require(digest(self.sdk / name) == expected, "FEEDBACK_FROZEN_SOURCE_IDENTITY")

    def verify(self, run_id, vm, native, adapter, binding_inputs):
        require(vm["process"].returncode == 0, "FEEDBACK_GUEST_CHECKED_SUCCESS_EXIT")
        rows, raw_sha = stream_rows(vm, run_id)
        native_rows, native_raw_sha = stream_rows(native, run_id, require_finished=False)
        states = [row for row in rows if row.get("format") == STATE_FORMAT]
        accepted = [row for row in rows if row.get("event") == "vm_goal_accepted"]
        terminal = [row for row in rows if row.get("event") == "vm_terminal"]
        bindings = [row for row in rows if row.get("format") == BINDING_FORMAT and row.get("decision") == "ALLOW"]
        confirmed = [row for row in native_rows if row.get("event") == "native_terminal"]
        require(len(rows) <= 8 and len(states) == 2 and len(accepted) == len(terminal) == len(bindings) == len(confirmed) == 1, "FEEDBACK_COMPLETE_ACTUAL_RECORD_CENSUS")
        baseline, final = states
        goal, end, binding, native_end = accepted[0], terminal[0], bindings[0], confirmed[0]
        require([rows.index(row) for row in [baseline, goal, binding, end, final]] == sorted(rows.index(row) for row in [baseline, goal, binding, end, final]), "FEEDBACK_CANONICAL_VM_RECORD_ORDER")
        for record in [baseline, final, goal, end, binding, native_end]:
            require(record.get("module_sha256", record.get("wasm_sha256")) == WASM_SHA256, "FEEDBACK_WHOLE_WASM_IDENTITY")
            for key, value in binding_inputs.items():
                require(record.get(key) == value, "FEEDBACK_ADAPTER_POLICY_IDENTITY")
        require(binding.get("producer") == "uwvm2-ros/runtime/portable-host" and binding.get("phase") == "native-goal-accepted"
                and binding.get("portable_call") == "submit" and binding.get("receipt_delivered") is True, "FEEDBACK_ACCEPTED_GUEST_RECEIPT")
        operation, command = binding["native_operation_id"], binding["guest_command_sha256"]
        require(type(operation) is str and HEX32.fullmatch(operation) and type(command) is str and HEX64.fullmatch(command), "FEEDBACK_ACTUAL_UUID_COMMAND_DIGEST")
        require(baseline.get("native_operation_id") is None and "guest_command_sha256" not in baseline
                and all(uint(baseline[key], key) == 0 for key in ("command_id", "command_outcome", "command_observed_sequence")), "FEEDBACK_BASELINE_WITHOUT_FUTURE_COMMAND")
        for record in [goal, end, native_end]:
            require(record.get("goal_uuid") == operation and record.get("command_sha256") == command, "FEEDBACK_ACCEPTED_TERMINAL_UUID_AND_DIGEST")
        require(final.get("native_operation_id") == operation and final.get("guest_command_sha256") == command, "FEEDBACK_FINAL_COPY_UUID_AND_DIGEST")
        for key in ("module_instance", "permission_session"):
            expected = uint(baseline[key], key)
            require(expected > 0 and all(uint(row[key], key) == expected for row in [final, binding]), "FEEDBACK_MODULE_PERMISSION_SESSION")
        generation = uint(baseline["runtime_generation"], "runtime_generation")
        require(generation > 0 and all(uint(row["runtime_generation"], "runtime_generation") == generation
                for row in [final, binding, goal, end, native_end]), "FEEDBACK_RUNTIME_GENERATION")
        for key in ("owner_handle", "mapping_epoch", "policy_epoch", "native_generation"):
            expected = uint(baseline[key], key)
            require(expected > 0 and all(uint(row[key], key) == expected for row in [final, goal, end, native_end]), "FEEDBACK_OWNER_AND_NATIVE_EPOCHS")
        provenance = baseline["native_provenance_sha256"]
        require(type(provenance) is str and HEX64.fullmatch(provenance)
                and all(row.get("native_provenance_sha256") == provenance for row in [final, goal, end, native_end]), "FEEDBACK_NATIVE_LOADED_IMAGE_PROVENANCE")
        require(uint(baseline["call_sequence"], "baseline_call") < uint(binding["call_sequence"], "submit_call")
                < uint(final["call_sequence"], "final_call"), "FEEDBACK_ACTUAL_IMPORT_CALL_ORDER")
        require(uint(final["command_id"], "final_command_id") == uint(end["command_id"], "terminal_command_id") == uint(native_end["command_id"], "native_command_id") == 1
                and uint(final["command_outcome"], "final_outcome") == uint(end["outcome"], "terminal_outcome") == uint(native_end["outcome"], "native_outcome") == 2
                and native_end["fresh_state_confirmed"] is True, "FEEDBACK_SUCCESSFUL_FRESH_TERMINAL")
        first, last = snapshot(baseline), snapshot(final)
        confirmed_sequence = uint(end["observed_sequence"], "terminal_sequence")
        require(confirmed_sequence == uint(native_end["observed_sequence"], "native_terminal_sequence")
                == uint(final["command_observed_sequence"], "copy_terminal_sequence")
                and last["sequence"] >= confirmed_sequence > first["sequence"], "FEEDBACK_POST_TERMINAL_SEQUENCE")
        require(last["native_observed_ns"] >= uint(end["native_observed_ns"], "terminal_native_stamp"), "FEEDBACK_POST_TERMINAL_NATIVE_TIME")
        joints = adapter["joints"]
        require(len(joints) == len(first["positions"]) == len(last["positions"]) and uint(adapter["mapping_epoch"], "adapter_epoch") == first["epoch"], "FEEDBACK_DECLARED_MODEL_MAPPING")
        command_bytes = bytearray(80 + 16 * len(joints))
        struct.pack_into("<4sHHIIQQQ", command_bytes, 0, bytes.fromhex("55525031"), 1, 3, len(command_bytes), len(joints), first["epoch"], 1, first["sequence"])
        mapping_digest = binding_inputs.get("adapter_sha256")
        require(type(mapping_digest) is str and HEX64.fullmatch(mapping_digest), "FEEDBACK_DESCRIPTOR_MAPPING_DIGEST")
        require(type(adapter.get("policy_sha256")) is str and HEX64.fullmatch(adapter["policy_sha256"])
                and adapter["policy_sha256"] == binding_inputs.get("policy_sha256"), "FEEDBACK_DESCRIPTOR_POLICY_DIGEST")
        # The VM descriptor carries the whole admitted adapter SHA; policy is bound separately.
        command_bytes[40:72] = bytes.fromhex(mapping_digest)
        struct.pack_into("<Q", command_bytes, 72, 1_000_000_000)
        checks = []
        for i, joint in enumerate(joints):
            require(joint["slot"] == i, "FEEDBACK_MODEL_SLOT")
            lower, upper, step, tolerance = (joint[key] for key in ("lower_microrad", "upper_microrad", "max_step_microrad", "tolerance_microrad"))
            require(all(type(value) is int for value in (lower, upper, step, tolerance)) and -1_000_000_000 <= lower < upper <= 1_000_000_000
                    and 0 < step <= 10000 and 0 <= tolerance <= 1000, "FEEDBACK_DESCRIPTOR_BOUNDS")
            start, finish = first["positions"][i], last["positions"][i]
            require(lower <= start <= upper and lower <= finish <= upper, "FEEDBACK_ALL_JOINTS_IN_BOUNDS")
            target = start + min(upper - start, step) if upper > start else start - min(start - lower, step)
            require(abs(finish - target) <= tolerance, "FEEDBACK_EVERY_GUEST_TARGET_TOLERANCE")
            struct.pack_into("<IIq", command_bytes, 80 + 16 * i, i, 0, target)
            checks.append({"slot": i, "baseline_microrad": start, "target_microrad": target, "final_microrad": finish, "tolerance_microrad": tolerance})
        require(hashlib.sha256(command_bytes).hexdigest() == command, "FEEDBACK_ACTUAL_GUEST_COMMAND_BYTES")
        require(digest(self.wasm) == WASM_SHA256, "FEEDBACK_FROZEN_WASM_AFTER_EXECUTION")
        return {"format": "uwvm-sdk-joint-guest-feedback-verification-v1", "passed": True,
                "guest_processing_verified": True, "processing_basis": "Exact frozen source/Wasm, actual after-exec VM and checked zero exit after fresh final state and all target checks",
                "vm_stdout_sha256": raw_sha, "native_stdout_sha256": native_raw_sha,
                "native_operation_id": operation, "guest_command_sha256": command,
                "baseline_sequence": first["sequence"], "terminal_sequence": confirmed_sequence,
                "final_sequence": last["sequence"], "actual_state_copies": 2, "joints": checks,
                "scope": "Only this fresh frozen joint-step invocation; no generic callback/sensor/platform acceptance"}
