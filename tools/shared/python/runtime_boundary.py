"""Read a VM-owned live boundary; this module never produces permissions.

Installed SDK consumer for current kernel facts, a guardian's own FD observation
and the host controller's direct FD observation. Historical records alone are
insufficient. There is no private runner or missing-field fallback.
"""
from pathlib import Path
import hashlib
import json
import os
import re
import stat
import time

MEMORY = "68719476736"
FRESH_NS = 500_000_000
PROTOCOL = "uwvm-sdk-live-boundary-v1"


class Blocked(RuntimeError):
    """A required live producer, kernel fact or contract is unavailable."""


def require(condition, reason):
    if not condition:
        raise Blocked("BLOCKED_" + reason)


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def decode_json(raw):
    require(len(raw) <= 1_048_576, "BOUNDARY_RECORD_EXTENT")
    def unique(pairs):
        result = {}
        for key, value in pairs:
            require(key not in result, "BOUNDARY_DUPLICATE_KEY")
            result[key] = value
        return result
    value = json.loads(raw, object_pairs_hook=unique,
                       parse_constant=lambda value: (_ for _ in ()).throw(ValueError(value)))
    require(type(value) is dict, "BOUNDARY_JSON_OBJECT")
    return value


def read_document(path):
    with Path(path).open("rb") as stream:
        raw = stream.read(1_048_577)
    return decode_json(raw), hashlib.sha256(raw).hexdigest()


def read_json(path):
    return read_document(path)[0]


def uint(value, name, maximum=(1 << 64) - 1):
    require(type(value) is int and 0 <= value <= maximum, "BOUNDARY_INTEGER_" + name)
    return value


def mount(path):
    """Choose the actual longest enclosing kernel mount, including escaped paths."""
    path = Path(path).absolute()
    rows = []
    for line in Path("/proc/self/mountinfo").read_text().splitlines():
        left, right = line.split(" - ", 1)
        fields, tail = left.split(), right.split()
        decoded = fields[4]
        for octal in ("040", "011", "012", "134"):
            decoded = decoded.replace(chr(92) + octal, chr(int(octal, 8)))
        root = Path(decoded)
        if path == root or path.is_relative_to(root):
            rows.append((len(root.parts), root, fields[5].split(","), tail[0]))
    require(bool(rows), "BOUNDARY_KERNEL_MOUNT_MISSING")
    return max(rows, key=lambda row: row[0])


def readonly(path, filesystem=None):
    record = mount(path)
    require("ro" in record[2], "BOUNDARY_READONLY_VIEW")
    if filesystem:
        require(record[3] == filesystem, "BOUNDARY_FILESYSTEM_" + filesystem)
    return record


def process_birth(proc):
    return (Path(proc) / "stat").read_text().rsplit(") ", 1)[1].split()[19]


def security(proc):
    status = dict(line.split(":", 1) for line in (Path(proc) / "status").read_text().splitlines() if ":" in line)
    require(all(int(status[key], 16) == 0 for key in ("CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb")), "BOUNDARY_ACTOR_CAPABILITIES")
    require(status["NoNewPrivs"].strip() == "1" and status["Seccomp"].strip() == "2", "BOUNDARY_ACTOR_SECURITY")
    require(all(int(value) == 1000 for key in ("Uid", "Gid") for value in status[key].split()), "BOUNDARY_ACTOR_CREDENTIALS")


def control_cgroup_mapping(proc, actor, shared, leaf, observed, role):
    """Join actual reader membership through the readonly shared mount's FD root."""
    target = Path(proc) / str(actor["pid"])
    before = (target / "stat").read_text().rsplit(") ", 1)[1].split()
    require(before[19] == actor["birth"] and before[0] not in ("Z", "X"),
            "BOUNDARY_CONTROL_MAPPING_LIVE_BIRTH_BEFORE")
    descriptor = os.open(shared, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW | os.O_CLOEXEC)
    try:
        root = os.fstat(descriptor)
        require((root.st_dev, root.st_ino) == (shared.stat().st_dev, shared.stat().st_ino),
                "BOUNDARY_CONTROL_MAPPING_SHARED_FD")
        fdinfo = Path("/proc/self/fdinfo", str(descriptor)).read_text()
        ids = [line.split()[1] for line in fdinfo.splitlines() if line.startswith("mnt_id:")]
        require(len(ids) == 1, "BOUNDARY_CONTROL_MAPPING_MOUNT_ID")
        mounts = [line.split() for line in Path("/proc/self/mountinfo").read_text().splitlines()
                  if line.split()[0] == ids[0]]
        require(len(mounts) == 1, "BOUNDARY_CONTROL_MAPPING_KERNEL_MOUNT")
        fields = mounts[0]
        separator = fields.index("-")
        require(fields[separator + 1] == "cgroup2" and "ro" in fields[5].split(","),
                "BOUNDARY_CONTROL_MAPPING_READONLY_CGROUP2")
        def unescape(value):
            return re.sub(r"\\(040|011|012|134)", lambda match: chr(int(match[1], 8)), value)
        require(Path(unescape(fields[4])) == shared.absolute(), "BOUNDARY_CONTROL_MAPPING_EXACT_BIND_ROOT")
        namespace_root = unescape(fields[3]).rstrip("/")
        membership = (target / "cgroup").read_text().strip()
        require(re.fullmatch(r"0::/[^\r\n\x00]*", membership) is not None,
                "BOUNDARY_CONTROL_KERNEL_MEMBERSHIP")
        prefix = namespace_root + "/"
        require(membership[3:].startswith(prefix), "BOUNDARY_CONTROL_MAPPING_NAMESPACE_ANCESTRY")
        relative = membership[3:][len(prefix):]
        require(relative not in ("", ".", "..") and "/" not in relative
                and relative == actor["shared_relative_cgroup"], "BOUNDARY_CONTROL_MAPPING_EXACT_DIRECT_LEAF")
        child = os.open(relative, os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW | os.O_CLOEXEC, dir_fd=descriptor)
        try:
            info = os.fstat(child)
            expected = (uint(observed["device"], role + "_group_device"),
                        uint(observed["inode"], role + "_group_inode"))
            pinned = (shared / relative).stat()
            require((info.st_dev, info.st_ino) == expected == (pinned.st_dev, pinned.st_ino)
                    and info.st_ino == actor["cgroup_inode"], "BOUNDARY_HOST_DIRECT_ACTUAL_CONTROL_CGROUP")
        finally:
            os.close(child)
        host_membership = observed["membership"]
        require(type(host_membership) is str and len(host_membership) <= 4096
                and re.fullmatch(r"0::/[^\r\n\x00]*", host_membership) is not None,
                "BOUNDARY_CONTROL_PRODUCER_MEMBERSHIP_SCHEMA")
        after = (target / "stat").read_text().rsplit(") ", 1)[1].split()
        require(after[19] == before[19] and after[0] not in ("Z", "X")
                and (target / "cgroup").read_text().strip() == membership,
                "BOUNDARY_CONTROL_MAPPING_BIRTH_AND_MEMBERSHIP_AFTER")
        return {"host_pid": actor["pid"], "birth": actor["birth"],
                "reader_namespace_membership": membership, "producer_namespace_membership": host_membership,
                "actual_mount_id": ids[0], "actual_shared_mount_root": namespace_root or "/",
                "shared_device": root.st_dev, "shared_inode": root.st_ino,
                "device": info.st_dev, "inode": info.st_ino, "shared_relative_cgroup": relative}
    finally:
        os.close(descriptor)


def flock_rows(text, owner, device, inode):
    expected = (os.major(device), os.minor(device), inode)
    rows = []
    for line in text.splitlines():
        fields = line.split()
        # fdinfo prefixes a lock line with "lock:"; /proc/locks does not.
        if fields and fields[0] == "lock:":
            fields = fields[1:]
        if len(fields) < 6 or fields[1:4] != ["FLOCK", "ADVISORY", "WRITE"]:
            continue
        pieces = fields[5].split(":")
        if len(pieces) == 3 and int(fields[4]) == owner and (int(pieces[0], 16), int(pieces[1], 16), int(pieces[2])) == expected:
            rows.append(line)
    return rows


class LiveBoundary:
    """Validate an installed public consumer against a fresh VM guardian context."""

    def __init__(self, admission_path, expected, self_identity, self_mapping):
        self.path = Path(admission_path).absolute()
        readonly(self.path)
        self.sha256 = digest(self.path)
        self.admission = read_json(self.path)
        require(self.admission == expected, "BOUNDARY_ADMISSION_CHANGED")
        require(self.admission.get("format") != "uwvm-sdk-simulation-admission-v3",
                "BOUNDARY_V3_ROOT_ENROLLMENT_WITHDRAWN_CAP0")
        require(self.admission.get("format") != "uwvm-sdk-simulation-admission-v4",
                "BOUNDARY_V4_PROC_LEAF_CANDIDATE_REJECTED_K0_K7")
        protocols = {"uwvm-sdk-simulation-admission-v1": PROTOCOL,
                     "uwvm-sdk-simulation-admission-v2": "uwvm-sdk-live-boundary-v2",
                     "uwvm-sdk-simulation-admission-v3": "uwvm-sdk-live-boundary-v3"}
        self.protocol = protocols.get(self.admission.get("format"))
        producer = ("uwvm2-ros/guardian-v3" if self.protocol == "uwvm-sdk-live-boundary-v3"
                    else "uwvm2-ros/guardian-v2" if self.protocol == "uwvm-sdk-live-boundary-v2"
                    else "uwvm2-ros/guardian")
        require(self.protocol is not None and self.admission.get("boundary_protocol") == self.protocol
                and self.admission.get("producer") == producer, "PUBLIC_LIVE_BOUNDARY_VERSIONED_PRODUCER")
        self.identity = self_identity
        self.mapping = self_mapping
        self.context = Path(self.admission["readonly_context"]).absolute()
        require(not self.path.is_symlink() and not self.context.is_symlink()
                and self.path.resolve().is_relative_to(self.context.resolve()), "BOUNDARY_ADMISSION_CONTEXT")
        readonly(self.context)
        self.nonce = self.admission["nonce"]
        require(type(self.nonce) is str and re.fullmatch("[0-9a-f]{32}", self.nonce), "BOUNDARY_CONTEXT_NONCE")
        self.last_counters = {}
        admission = self.admission
        require(type(admission["boot_id"]) is str and re.fullmatch("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}", admission["boot_id"]), "BOUNDARY_BOOT_ID")
        require(type(admission["packet_manifest_sha256"]) is str and re.fullmatch("[0-9a-f]{64}", admission["packet_manifest_sha256"]), "BOUNDARY_SUBJECT_SHA256")
        require(uint(admission["shared_ancestor_inode"], "shared_inode") > 0, "BOUNDARY_SHARED_INODE")
        lease = admission["canonical_lease"]
        for key in ("device", "inode", "owner_pid"):
            require(uint(lease[key], "lease_" + key) > 0, "BOUNDARY_CANONICAL_LEASE_INTEGER")
        require(type(lease["owner_birth"]) is str and re.fullmatch("[1-9][0-9]*", lease["owner_birth"]), "BOUNDARY_CANONICAL_OWNER_BIRTH")
        for role in ("controller", "guardian"):
            actor = admission[role]
            require(uint(actor["pid"], role + "_pid") > 0 and uint(actor["cgroup_inode"], role + "_cgroup_inode") > 0, "BOUNDARY_CONTROL_ACTOR_INTEGER")
            require(type(actor["birth"]) is str and re.fullmatch("[1-9][0-9]*", actor["birth"]), "BOUNDARY_CONTROL_ACTOR_BIRTH")
            relative = Path(actor["shared_relative_cgroup"])
            require(not relative.is_absolute() and ".." not in relative.parts, "BOUNDARY_CONTROL_CGROUP_PATH")
        require(admission["controller"]["pid"] != admission["guardian"]["pid"], "BOUNDARY_INDEPENDENT_GUARDIAN_PID")
        require(type(admission["guardian"]["executable_sha256"]) is str and re.fullmatch("[0-9a-f]{64}", admission["guardian"]["executable_sha256"]), "BOUNDARY_GUARDIAN_IMAGE_PIN")
        relative = Path(admission["actor_shared_relative_leaf"])
        require(not relative.is_absolute() and ".." not in relative.parts, "BOUNDARY_OWN_LEAF_PATH")
        self.verify_proof()
        self.verify_sdk_inputs()
        self.trusted_controls = None
        if self.protocol == "uwvm-sdk-live-boundary-v2":
            from trusted_control import TrustedControls
            self.trusted_controls = TrustedControls(self)
        elif self.protocol == "uwvm-sdk-live-boundary-v3":
            from trusted_control_v3 import WitnessControls
            self.trusted_controls = WitnessControls(self)

    def context_file(self, value):
        require(type(value) is str and bool(value), "BOUNDARY_CONTEXT_PATH_STRING")
        relative = Path(value)
        require(not relative.is_absolute() and not any(part in ("..", ".") for part in relative.parts), "BOUNDARY_CONTEXT_RELATIVE_PATH")
        path = self.context / relative
        require(path.is_file() and not path.is_symlink() and path.resolve().is_relative_to(self.context.resolve()), "BOUNDARY_CONTEXT_FILE_ORIGIN")
        for parent in path.parents:
            if parent == self.context:
                break
            require(not parent.is_symlink(), "BOUNDARY_CONTEXT_SYMLINK_ANCESTOR")
        readonly(path)
        return path

    def verify_sdk_inputs(self):
        sdk = Path(self.admission["sdk_root"]).resolve()
        require(sdk == Path(__file__).resolve().parents[3], "BOUNDARY_ACTUAL_INSTALLED_CONSUMER_ROOT")
        rows = self.admission["sdk_files"]
        required = {"tools/shared/python/runtime_boundary.py", "tools/shared/python/actor_gate.py",
                    "tools/shared/python/actor_control.py", "tools/shared/python/portable_contract.py",
                    "tools/shared/python/owned_processes.py",
                    "tools/shared/python/guest_feedback.py",
                    "tools/shared/python/simulation_example.py",
                    "tools/shared/python/case_accounting.py"}
        if self.protocol == "uwvm-sdk-live-boundary-v2":
            required.update({"tools/shared/python/trusted_control.py",
                             "share/platform/ros/runtime-boundary/v0.2.0/contract.json",
                             "share/platform/ros/runtime-boundary/v0.2.0/approved-producers.json"})
        if self.protocol == "uwvm-sdk-live-boundary-v3":
            required.update({"tools/shared/python/trusted_control.py",
                "tools/shared/python/trusted_control_v3.py",
                "tools/shared/python/witness_transport.py",
                "share/platform/ros/runtime-boundary/v0.2.0/contract.json",
                "share/platform/ros/runtime-boundary/v0.2.0/approved-producers.json",
                "share/platform/ros/runtime-boundary/v0.3.0/contract.json",
                "share/platform/ros/runtime-boundary/v0.3.0/approved-witnesses.json",
                "share/platform/ros/runtime-boundary/v0.3.0/WIRE_SCHEMA.json",
                "share/platform/ros/runtime-boundary/v0.3.0/bootstrap-state-machine.json",
                "share/platform/ros/runtime-boundary/v0.3.0/required-negatives.json"})
        require(isinstance(rows, list) and required.issubset({row["path"] for row in rows}), "BOUNDARY_INSTALLED_SDK_SOURCE_PINS")
        require(len(rows) == len({row["path"] for row in rows}), "BOUNDARY_DUPLICATE_SOURCE_PIN")
        for row in rows:
            require(type(row["path"]) is str and type(row["sha256"]) is str and re.fullmatch("[0-9a-f]{64}", row["sha256"]), "BOUNDARY_SOURCE_PIN_TYPES")
            uint(row["bytes"], "source_bytes")
            name = Path(row["path"])
            require(not name.is_absolute() and ".." not in name.parts and ".tmp" not in name.parts, "BOUNDARY_SDK_SOURCE_PATH")
            path = sdk / name
            require(not path.is_symlink() and path.stat().st_size == row["bytes"] and digest(path) == row["sha256"], "BOUNDARY_SDK_SOURCE_BYTES")
            readonly(path)

    def verify_proof(self):
        specification = self.admission["own_interruption_proof"]
        path = self.context_file(specification["path"])
        require(digest(path) == specification["sha256"], "BOUNDARY_OWN_PROOF_BYTES")
        proof = read_json(path)
        require(proof.get("passed") is True and proof.get("status") == "PASS_GUARDIAN_ONLY", "BOUNDARY_OWN_PROOF_PASS")
        require(proof["boot_id"] == self.admission["boot_id"]
                and proof["packet_manifest_sha256"] == self.admission["packet_manifest_sha256"], "BOUNDARY_OWN_PROOF_SUBJECT_AND_BOOT")
        require({row["case"] for row in proof["cases"]} == {"host-controller-loss", "inside-controller-loss"}
                and len(proof["cases"]) == 2, "BOUNDARY_TWO_ACTUAL_INTERRUPTION_CASES")
        for item in proof["cases"]:
            raw_relative = Path(item["path"])
            require(not raw_relative.is_absolute() and ".." not in raw_relative.parts, "BOUNDARY_RAW_CASE_PATH")
            raw_path = self.context_file(str(path.parent.relative_to(self.context) / raw_relative))
            require(digest(raw_path) == item["sha256"], "BOUNDARY_RAW_CASE_BYTES")
            row = read_json(raw_path)
            require(row["passed"] is True and row["before_attempt"]["acquired"] is False
                    and row["after_loss_attempt"]["acquired"] is False and row["after_retirement_attempt"]["acquired"] is True, "BOUNDARY_REAL_LOCK_COMPETITION")
            require(row["worker_after_loss"]["leaf_alive"] is True and row["child_still_running_after_loss"] is True, "BOUNDARY_INTERRUPTION_LIVE_DESCENDANT")
            require(row["guardian"]["retired"] is True and row["guardian"]["status"] == "RETIRED"
                    and row["guardian"].get("error") is None and row["container_absent"] is True, "BOUNDARY_PROOF_PHYSICAL_RETIREMENT")
            require(row["parent_before"] == row["parent_after"] and row["sentinel_before"] == row["sentinel_after"], "BOUNDARY_PROOF_UNRELATED_IDENTITIES")
            require(not any(row["guardian"].get(key) for key in ("lease_proof_error", "receipt_error", "proof_barrier_error", "original_parent_integrity_error", "client_retirement_error")), "BOUNDARY_PROOF_UNRESOLVED_FAILURE")
            lease = self.admission["canonical_lease"]
            key = [os.major(lease["device"]), os.minor(lease["device"]), lease["inode"]]
            require(row["lease_device_inode"] == row["guardian_fd_device_inode"] == key
                    and all(attempt["device_inode"] == key for attempt in (row["before_attempt"], row["after_loss_attempt"], row["after_retirement_attempt"])), "BOUNDARY_PROOF_EXACT_CANONICAL_INODE")
            require(row["worker_after_loss"]["owner_alive"] is (item["case"] == "host-controller-loss"), "BOUNDARY_PROOF_DISTINCT_CONTROLLER_LOSS")
            actual_budgets = [row["synthetic"][role]["cgroup"] for role in ("worker", "leaf")]
            actual_budgets.append(row["worker_after_loss"]["control_cgroup"])
            for actual in actual_budgets:
                require(actual["memory.max"] == MEMORY and actual["memory.swap.max"] == "0"
                        and actual["cpuset.cpus.effective"] == self.admission["cpuset.cpus.effective"], "BOUNDARY_PROOF_ACTUAL_ACTOR_BUDGET")
                ancestor = actual["shared_ancestor"]
                require(actual["boot_id"] == proof["boot_id"] and ancestor["memory.max"] == MEMORY
                        and ancestor["memory.swap.max"] == "0", "BOUNDARY_PROOF_SHARED_ANCESTOR_AND_BOOT")
            require(row["after_loss_attempt"]["observed_ns"] < row["release_ns"] < row["guardian"]["retired_ns"]
                    <= row["after_retirement_attempt"]["observed_ns"], "BOUNDARY_PROOF_TIME_ORDER")
            for artifact in row["raw_files"]:
                relative = Path(artifact["path"])
                require(not relative.is_absolute() and ".." not in relative.parts, "BOUNDARY_ORIGINAL_PROOF_RAW_PATH")
                original = self.context_file(str(raw_path.parent.relative_to(self.context) / relative))
                require(digest(original) == artifact["sha256"], "BOUNDARY_ORIGINAL_PROOF_RAW")

    def observation(self, field, row, schema):
        require(row.get("format") == schema and row.get("nonce") == self.nonce
                and row.get("boot_id") == self.admission["boot_id"] and row.get("admission_sha256") == self.sha256, "BOUNDARY_LIVE_OBSERVATION_BINDING")
        now, observed = time.monotonic_ns(), uint(row["monotonic_ns"], "observation_time")
        require(0 <= now - observed <= FRESH_NS, "BOUNDARY_LIVE_OBSERVATION_FRESHNESS")
        counter = uint(row["sequence"], "observation_sequence")
        require(counter > 0 and counter >= self.last_counters.get(field, 0), "BOUNDARY_LIVE_OBSERVATION_SEQUENCE")
        self.last_counters[field] = counter
        return row

    def check_fd(self, record, lease):
        require(uint(record["device"], "held_fd_device") == lease["device"]
                and uint(record["inode"], "held_fd_inode") == lease["inode"], "BOUNDARY_ACTUAL_HELD_FD_INODE")
        require(bool(flock_rows(record["fdinfo"], lease["owner_pid"], lease["device"], lease["inode"])), "BOUNDARY_ACTUAL_HELD_FD_FLOCK")

    def guard(self):
        admission = self.admission
        require(digest(self.path) == self.sha256, "BOUNDARY_STATIC_ADMISSION_IDENTITY")
        require(Path("/proc/sys/kernel/random/boot_id").read_text().strip() == admission["boot_id"], "BOUNDARY_CURRENT_BOOT")
        actual = self.identity(os.getpid())
        mapping = self.mapping(admission["host_proc_view"])
        shared = Path(admission["shared_ancestor_view"])
        readonly(shared, "cgroup2")
        require(shared.stat().st_ino == admission["shared_ancestor_inode"], "BOUNDARY_SHARED_ANCESTOR_INODE")
        require(all((shared / name).read_text().strip() == value for name, value in (("memory.max", MEMORY), ("memory.swap.max", "0"))), "BOUNDARY_SHARED_64GIB_ZERO_SWAP")
        require((shared / "cpuset.cpus.effective").read_text().strip() == admission["shared_ancestor_cpuset"], "BOUNDARY_SHARED_CPUSET")
        leaf = shared / admission["actor_shared_relative_leaf"]
        require(leaf.resolve().is_relative_to(shared.resolve()) and not leaf.is_symlink(), "BOUNDARY_ACTUAL_LEAF_ANCESTRY")
        require((leaf.stat().st_dev, leaf.stat().st_ino) == (actual["cgroup_device"], actual["cgroup_inode"]), "BOUNDARY_ACTUAL_ACTOR_LEAF")
        require((leaf / "cpuset.cpus.effective").read_text().strip() == admission["cpuset.cpus.effective"], "BOUNDARY_ACTUAL_LEAF_CPUSET")
        for name in ("memory.max", "memory.swap.max"):
            info = (leaf / name).stat()
            require(info.st_uid == 0 and info.st_gid == 0 and not (info.st_mode & 0o022), "BOUNDARY_NONDELEGATED_CGROUPFS")
        proc = Path(admission["host_proc_view"])
        readonly(proc, "proc")
        lease = admission["canonical_lease"]
        visible = Path(lease["visible_path"])
        info = visible.stat()
        require(not visible.is_symlink() and stat.S_ISREG(info.st_mode) and (info.st_dev, info.st_ino, info.st_uid, info.st_gid, stat.S_IMODE(info.st_mode))
                == (lease["device"], lease["inode"], 1000, 1000, 0o664), "BOUNDARY_CANONICAL_LEASE_FILE")
        readonly(visible)
        require(bool(flock_rows((proc / "locks").read_text(), lease["owner_pid"], lease["device"], lease["inode"])), "BOUNDARY_LIVE_KERNEL_WRITE_FLOCK")
        actual_control_roles = {}
        for role in ("controller", "guardian"):
            actor = admission[role]
            require(process_birth(proc / str(actor["pid"])) == actor["birth"], "BOUNDARY_LIVE_" + role.upper() + "_BIRTH")
            if self.trusted_controls is None:
                security(proc / str(actor["pid"]))
            # V2 roles are independently checked against the atomic live bundle below.
            group = shared / actor["shared_relative_cgroup"]
            require(group.resolve().is_relative_to(shared.resolve()) and group.stat().st_ino == actor["cgroup_inode"], "BOUNDARY_CONTROL_ACTOR_ANCESTRY")
            require(all((group / key).read_text().strip() == value for key, value in (("memory.max", MEMORY), ("memory.swap.max", "0"))), "BOUNDARY_CONTROL_ACTOR_BUDGET")
            require((group / "cpuset.cpus.effective").read_text().strip() == admission["cpuset.cpus.effective"], "BOUNDARY_CONTROL_ACTOR_CPUSET")
            for name in ("memory.max", "memory.swap.max"):
                info = (group / name).stat()
                require(info.st_uid == 0 and info.st_gid == 0 and not (info.st_mode & 0o022), "BOUNDARY_NONDELEGATED_CONTROL_CGROUP")
        require(admission["controller"]["pid"] == lease["owner_pid"] and admission["controller"]["birth"] == lease["owner_birth"], "BOUNDARY_CANONICAL_OWNER_IDENTITY")
        bundle, bundle_sha = read_document(self.context_file(admission["lease_observations"]))
        observation_version = ("v3" if self.protocol == "uwvm-sdk-live-boundary-v3"
                               else "v2" if self.protocol == "uwvm-sdk-live-boundary-v2" else "v1")
        require(bundle.get("format") == "uwvm-sdk-live-lease-observations-" + observation_version
                and bundle.get("nonce") == self.nonce and bundle.get("boot_id") == admission["boot_id"]
                and bundle.get("admission_sha256") == self.sha256
                and bundle.get("packet_manifest_sha256") == admission["packet_manifest_sha256"], "BOUNDARY_ATOMIC_OBSERVATION_BUNDLE")
        own = self.observation("guardian_self", bundle["guardian_self"], "uwvm-guardian-self-lease-observation-" + observation_version)
        direct = self.observation("host_direct", bundle["host_direct"], "uwvm-host-direct-lease-observation-" + observation_version)
        require(own["sequence"] == direct["sequence"], "BOUNDARY_COHERENT_OBSERVATION_GENERATION")
        guardian = admission["guardian"]
        for record in (own, direct):
            require(record["controller_pid"] == lease["owner_pid"] and record["controller_birth"] == lease["owner_birth"], "BOUNDARY_DIRECT_CANONICAL_OWNER")
            require(record["guardian_pid"] == guardian["pid"] and record["guardian_birth"] == guardian["birth"]
                    and record["guardian_executable_sha256"] == guardian["executable_sha256"], "BOUNDARY_GUARDIAN_OBSERVATION_IDENTITY")
        self.check_fd(own["self_lease_fd"], lease)
        self.check_fd(direct["direct_keeper_fd"], lease)
        self.check_fd(direct["direct_guardian_fd"], lease)
        require(direct["host_direct_fd_verified"] is True and direct["packet_manifest_sha256"] == admission["packet_manifest_sha256"], "BOUNDARY_HOST_DIRECT_FD_VERIFICATION")
        if self.trusted_controls is not None:
            require(shared.stat().st_dev == admission["shared_ancestor_device"],
                    "BOUNDARY_FIXED_SHARED_ANCESTOR_DEVICE")
            try:
                actual_control_roles = self.trusted_controls.verify_bundle(proc, own, direct)
                self.trusted_controls.verify_lease_fd(proc, own["self_lease_fd"], lease, "guardian")
                self.trusted_controls.verify_lease_fd(proc, direct["direct_keeper_fd"], lease, "controller")
                self.trusted_controls.verify_lease_fd(proc, direct["direct_guardian_fd"], lease, "guardian")
            finally:
                if self.protocol == "uwvm-sdk-live-boundary-v3":
                    self.trusted_controls.finish_sample()
        control_mappings = {
            role: control_cgroup_mapping(proc, admission[role], shared, leaf, direct[role + "_cgroup"], role)
            for role in ("controller", "guardian")}
        return {**actual, "actual_self_namespace": mapping, "actual_control_cgroup_mappings": control_mappings,
                "boundary_protocol": self.protocol, "actual_external_control_roles": actual_control_roles,
                "nonce": self.nonce, "lease_observations_sha256": bundle_sha,
                "guardian_self_and_host_direct_generation": own["sequence"], "observed_monotonic_ns": time.monotonic_ns()}
