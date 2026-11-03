"""Consume exact VM v2 closed role launches for bounded qualification.

The installed SDK owns source approval. Product qualification is a separate
record, produced only after real public positive and rejection cases.
"""
from pathlib import Path
import fcntl
import hashlib
import json
import os
import re
import stat
import time
from runtime_boundary import require, digest, read_document, decode_json, readonly, process_birth, uint, flock_rows

ROOT = "share/platform/ros/runtime-boundary/v0.2.0"
HEX64 = re.compile(r"[0-9a-f]{64}")
IDENTITY = ("device", "inode", "bytes", "mode", "uid", "gid", "mtime_ns", "ctime_ns")
FRESH_NS = 500_000_000


def identity(info):
    return dict(zip(IDENTITY, (info.st_dev, info.st_ino, info.st_size,
                    stat.S_IMODE(info.st_mode), info.st_uid, info.st_gid,
                    info.st_mtime_ns, info.st_ctime_ns)))


def relative(value):
    require(type(value) is str and bool(value) and len(value) <= 4096
            and value == Path(value).as_posix() and not Path(value).is_absolute()
            and not any(part in (".", "..") for part in Path(value).parts), "HOST_CONTROL_RELATIVE_PATH")
    return Path(value)


def bounded(path, maximum):
    with Path(path).open("rb") as stream:
        raw = stream.read(maximum + 1)
    require(len(raw) <= maximum, "HOST_CONTROL_RECORD_EXTENT")
    return raw


def fields(raw):
    require(raw.endswith(bytes([0])), "HOST_CONTROL_KERNEL_STRING_FRAME")
    return [os.fsdecode(value) for value in raw[:-1].split(bytes([0]))]


class TrustedControls:
    """Read actual host proc/FD facts; a UID or role string is never approval."""

    def __init__(self, boundary):
        self.boundary, self.admission = boundary, boundary.admission
        self.sdk = Path(__file__).resolve().parents[3]
        selected = self.admission["producer_descriptor_sha256"]
        require(type(selected) is str and HEX64.fullmatch(selected), "HOST_CONTROL_DESCRIPTOR_SHA256")
        path = self.sdk / ROOT / "approved-producers.json"
        readonly(path)
        registry, _ = read_document(path)
        require(registry.get("format") == "uwvm-sdk-approved-host-control-source-set-v1"
                and registry.get("default_decision") == "DENY"
                and type(registry.get("approved")) is list and len(registry["approved"]) <= 16,
                "HOST_CONTROL_INSTALLED_APPROVAL_SET")
        matches = [row for row in registry["approved"] if row.get("descriptor_sha256") == selected]
        require(len(matches) == 1, "HOST_CONTROL_UNAPPROVED_SOURCE_DESCRIPTOR")
        self.approval = matches[0]
        require(self.approval.get("scope") == "fixed-input-current-boot-qualification-only"
                and self.approval.get("product_qualified") is False
                and self.approval["boot_id"] == self.admission["boot_id"]
                and self.approval["required_own_subject_interruption_proof"] is True
                and self.approval["required_own_subject_benign"] is True,
                "HOST_CONTROL_QUALIFICATION_SOURCE_SCOPE")
        base = self.sdk / ROOT / relative(self.approval["directory"])
        require(base.resolve().is_relative_to((self.sdk / ROOT).resolve()), "HOST_CONTROL_APPROVAL_ORIGIN")
        path = base / "descriptor.json"
        readonly(path)
        self.descriptor, actual = read_document(path)
        require(actual == selected, "HOST_CONTROL_APPROVED_DESCRIPTOR_BYTES")
        descriptor = self.descriptor
        require(descriptor.get("format") == "uwvm-sdk-approved-host-control-descriptor-v1"
                and descriptor.get("security_profile") == "uid1000-pinned-external-control-v1"
                and set(descriptor["roles"]) == {"controller", "guardian"}, "HOST_CONTROL_DESCRIPTOR_PROFILE")
        self.documents = {}
        names = {"source_manifest": "producer-source-manifest.json", "runtime_manifest": "host-runtime-manifest.json",
                 "closed_launch_contract": "sealed-launch-contract.json"}
        for field, name in names.items():
            path = base / name
            readonly(path)
            value, actual = read_document(path)
            require(actual == descriptor[field + "_sha256"], "HOST_CONTROL_APPROVED_" + field.upper())
            published, published_sha = read_document(boundary.context_file(name))
            require(published_sha == actual and published == value, "HOST_CONTROL_PUBLISHED_CONTRACT_BYTES")
            self.documents[field] = value
        self.source_manifest = self.documents["source_manifest"]
        self.runtime = self.documents["runtime_manifest"]
        self.contract = self.documents["closed_launch_contract"]
        require(self.source_manifest.get("format") == "uwvm-exact-host-producer-source-manifest-v2"
                and self.runtime.get("format") == "uwvm-host-runtime-manifest-v2"
                and self.contract.get("format") == "uwvm-host-closed-launch-contract-v2"
                and self.contract["protocol"] == "uwvm-sdk-live-boundary-v2"
                and self.runtime["boot_id"] == self.admission["boot_id"], "HOST_CONTROL_EXACT_DOCUMENT_FORMATS")
        sources = self.source_manifest["files"]
        require(type(sources) is list and len(sources) == self.approval["source_files"], "HOST_CONTROL_COMPLETE_SOURCE_COUNT")
        self.sources = {}
        for row in sources:
            require(row["scope"] in ("packet", "control") and type(row["path"]) is str
                    and len(relative(row["path"]).parts) == 1 and row["path"].endswith(".py"),
                    "HOST_CONTROL_CLOSED_SOURCE_PATH")
            key = (row["scope"], row["path"])
            require(key not in self.sources and type(row["sha256"]) is str and HEX64.fullmatch(row["sha256"]),
                    "HOST_CONTROL_UNIQUE_SOURCE_PIN")
            uint(row["bytes"], "host_source_bytes", 2 * 1024**2)
            self.sources[key] = row
        require(sum(row["bytes"] for row in sources) <= 32 * 1024**2, "HOST_CONTROL_SOURCE_TOTAL_BOUND")
        runtimes = self.runtime["files"]
        require(type(runtimes) is list and len(runtimes) == self.approval["runtime_files"], "HOST_CONTROL_COMPLETE_RUNTIME_COUNT")
        self.runtime_pins = {}
        for row in runtimes:
            name = row["path"]
            require(type(name) is str and Path(name).is_absolute() and name == Path(name).as_posix()
                    and ".." not in Path(name).parts and name not in self.runtime_pins
                    and type(row["sha256"]) is str and HEX64.fullmatch(row["sha256"]),
                    "HOST_CONTROL_UNIQUE_RUNTIME_PIN")
            require(row["uid"] == row["gid"] == 0 and row["mode"] & 0o022 == 0,
                    "HOST_CONTROL_APPROVED_ROOT_OWNED_RUNTIME")
            uint(row["bytes"], "host_runtime_bytes", 128 * 1024**2)
            self.runtime_pins[name] = row
        require(sum(row["bytes"] for row in runtimes) <= 512 * 1024**2, "HOST_CONTROL_RUNTIME_TOTAL_BOUND")
        require(self.contract["kernel_argv"] == ["{pinned_interpreter}", "-I", "-S", "-B",
                "/proc/self/fd/{bootstrap_fd}", "--role", "{role}", "--context", "{context}",
                "--launch-fd", "{launch_fd}"] and self.contract["fd_ceiling"] == 512
                and self.contract["max_observation_age_ns"] == FRESH_NS, "HOST_CONTROL_EXACT_CLOSED_LAUNCH_SHAPE")
        for role in ("controller", "guardian"):
            path = base / (role + "-argv-contract.json")
            readonly(path)
            value, actual = read_document(path)
            expected = {"role": role, **self.contract["roles"][role],
                        "kernel_argv": self.contract["kernel_argv"]}
            require(actual == descriptor["roles"][role]["argv_contract_sha256"] and value == expected,
                    "HOST_CONTROL_EXACT_ARGV_SUBCONTRACT")
        path = base / "retained-source-fd-contract.json"
        readonly(path)
        value, actual = read_document(path)
        require(value == self.contract["source_descriptor_contract"]
                and all(actual == descriptor["roles"][role]["source_descriptor_contract_sha256"]
                        for role in ("controller", "guardian")), "HOST_CONTROL_EXACT_SOURCE_FD_SUBCONTRACT")
        self.receipts, self.receipt_hashes, self.launches = {}, {}, {}
        self.hashed = set()
        for role in ("controller", "guardian"):
            actor = self.admission[role]
            require(actor["role"] == role, "HOST_CONTROL_STATIC_ROLE")
            receipt, receipt_sha = read_document(boundary.context_file(actor["launch_receipt"]))
            require(receipt_sha == actor["launch_receipt_sha256"], "HOST_CONTROL_ORIGINAL_ROLE_RECEIPT_SHA256")
            self.receipts[role], self.receipt_hashes[role] = receipt, receipt_sha
        for field, source in (("producer_source_manifest_sha256", "source_manifest"),
                              ("producer_runtime_manifest_sha256", "runtime_manifest"),
                              ("closed_launch_contract_sha256", "closed_launch_contract")):
            require(self.admission[field] == descriptor[source + "_sha256"], "HOST_CONTROL_ADMISSION_FIXED_INPUTS")
        published, actual = read_document(boundary.context_file("producer-descriptor.candidate.json"))
        require(actual == selected and published == descriptor, "HOST_CONTROL_PUBLISHED_DESCRIPTOR")
        for row in self.approval["sdk_consumer_files"]:
            path = self.sdk / relative(row["path"])
            readonly(path)
            require(digest(path) == row["sha256"] and path.stat().st_size == row["bytes"],
                    "HOST_CONTROL_EXACT_QUALIFICATION_CONSUMER")
        self.benign_checked = False

    def fresh(self, row, field="observed_monotonic_ns"):
        stamp = uint(row[field], "host_role_time")
        require(0 <= time.monotonic_ns() - stamp <= FRESH_NS, "HOST_CONTROL_ACTUAL_OBSERVATION_FRESHNESS")

    def actual_security(self, target):
        status = dict(line.split(":", 1) for line in (target / "status").read_text().splitlines() if ":" in line)
        wanted = self.runtime["security_profile"]
        observed = {key: " ".join(status[key].split()) for key in wanted}
        require(observed == wanted
                and observed["Uid"] == observed["Gid"] == "1000 1000 1000 1000"
                and all(int(observed[key], 16) == 0 for key in ("CapInh", "CapPrm", "CapEff", "CapAmb"))
                and int(observed["CapBnd"], 16) == 0x000001ffffffffff
                and observed["NoNewPrivs"] == "0" and observed["Seccomp"] == "0",
                "HOST_CONTROL_ACTUAL_APPROVED_SECURITY_AND_GROUPS")
        return observed

    def fd(self, target, actor, expected, *, sealed=False, raw=False):
        number = uint(expected["fd"], "host_original_fd", 1_048_575)
        fdinfo = bounded(target / "fdinfo" / str(number), 65536).decode()
        flags = [line.split()[1] for line in fdinfo.splitlines() if line.startswith("flags:")]
        require(len(flags) == 1 and int(flags[0], 8) & os.O_ACCMODE == os.O_RDONLY
                and not (int(flags[0], 8) & os.O_PATH), "HOST_CONTROL_ORIGINAL_FD_READONLY")
        wanted = expected.get("identity", {key: expected[key] for key in IDENTITY if key in expected})
        require(set(wanted) == set(IDENTITY), "HOST_CONTROL_COMPLETE_FD_IDENTITY")
        with (target / "fd" / str(number)).open("rb") as stream:
            info = os.fstat(stream.fileno())
            actual = identity(info)
            require(stat.S_ISREG(info.st_mode) and actual == wanted, "HOST_CONTROL_ACTUAL_ORIGINAL_FD_IDENTITY")
            if sealed:
                require(fcntl.fcntl(stream.fileno(), fcntl.F_GET_SEALS) == 15, "HOST_CONTROL_ACTUAL_SOURCE_FD_SEALS")
            else:
                require(info.st_uid == info.st_gid == 0 and info.st_mode & 0o022 == 0,
                        "HOST_CONTROL_ACTUAL_ROOT_OWNED_RUNTIME_FD")
            maximum = 2 * 1024**2 if sealed else 128 * 1024**2
            require(info.st_size <= maximum, "HOST_CONTROL_ACTUAL_FD_EXTENT")
            key = (actor["pid"], actor["birth"], number, tuple(actual.items()), expected["sha256"])
            payload = None
            if raw:
                payload = stream.read(maximum + 1)
                require(len(payload) == info.st_size and hashlib.sha256(payload).hexdigest() == expected["sha256"],
                        "HOST_CONTROL_ACTUAL_METADATA_FD_BYTES")
            elif key not in self.hashed:
                require(hashlib.file_digest(stream, "sha256").hexdigest() == expected["sha256"],
                        "HOST_CONTROL_ACTUAL_SOURCE_RUNTIME_FD_BYTES")
                require(len(self.hashed) < 4096, "HOST_CONTROL_BOUNDED_FD_CACHE")
                self.hashed.add(key)
            require(identity(os.fstat(stream.fileno())) == actual
                    and identity((target / "fd" / str(number)).stat()) == actual
                    and process_birth(target) == actor["birth"], "HOST_CONTROL_ACTUAL_FD_STABLE_AFTER")
        return decode_json(payload) if raw else actual

    def role(self, role, proc, live, direct):
        actor, receipt = self.admission[role], self.receipts[role]
        target = Path(proc) / str(actor["pid"])
        require(process_birth(target) == actor["birth"], "HOST_CONTROL_ACTUAL_BIRTH_BEFORE")
        values = (target / "stat").read_text().rsplit(") ", 1)[1].split()
        require(values[0] not in ("Z", "X") and receipt["pid"] == actor["pid"]
                and receipt["birth"] == actor["birth"] and receipt["role"] == role
                and receipt["format"] == "uwvm-actual-role-launch-receipt-v2", "HOST_CONTROL_ACTUAL_LIVE_RECEIPT_ROLE")
        security = self.actual_security(target)
        require(receipt["actual_security"] == security and live["actual_security"] == security,
                "HOST_CONTROL_LIVE_SECURITY_CORRELATION")
        require(live["format"] == "uwvm-actual-role-live-state-v2" and live["role"] == role
                and live["pid"] == actor["pid"] and live["birth"] == actor["birth"]
                and live["launch_receipt_sha256"] == self.receipt_hashes[role], "HOST_CONTROL_LIVE_ORIGINAL_RECEIPT")
        self.fresh(live)
        for key in ("nonce", "boot_id", "packet_manifest_sha256", "control_admission_sha256"):
            require(receipt[key] == self.admission[key], "HOST_CONTROL_ROLE_SUBJECT")
        for key, descriptor_key in (("source_manifest_sha256", "source_manifest_sha256"),
                                    ("runtime_manifest_sha256", "runtime_manifest_sha256"),
                                    ("closed_launch_contract_sha256", "closed_launch_contract_sha256")):
            require(receipt[key] == live[key] == self.descriptor[descriptor_key], "HOST_CONTROL_ROLE_CONTRACT_BYTES")
        sources = receipt["sources"]
        require(len(sources) == len(self.sources) and live["source_descriptors"] == sources,
                "HOST_CONTROL_STATIC_LIVE_SOURCE_SET")
        seen, numbers = set(), set()
        for row in sources:
            key = (row["scope"], row["path"])
            require(key in self.sources and key not in seen and row["fd"] not in numbers,
                    "HOST_CONTROL_EXACT_SOURCE_DESCRIPTOR_SET")
            pin = self.sources[key]
            require((row["bytes"], row["sha256"]) == (pin["bytes"], pin["sha256"]), "HOST_CONTROL_SOURCE_PIN")
            self.fd(target, actor, row, sealed=True)
            seen.add(key)
            numbers.add(row["fd"])
        launch = self.fd(target, actor, receipt["launch_descriptor"], sealed=True, raw=True)
        self.launches[role] = launch
        require(launch["format"] == "uwvm-sealed-role-launch-v2" and launch["role"] == role,
                "HOST_CONTROL_ACTUAL_SEALED_LAUNCH")
        for key in ("nonce", "boot_id", "packet_manifest_sha256", "control_admission_sha256"):
            require(launch[key] == self.admission[key], "HOST_CONTROL_SEALED_LAUNCH_SUBJECT")
        require(set(receipt["metadata_descriptors"]) == {"source_manifest", "runtime_manifest", "launch_contract"},
                "HOST_CONTROL_COMPLETE_METADATA_DESCRIPTORS")
        for name, expected_name in (("source_manifest", "source_manifest"), ("runtime_manifest", "runtime_manifest"),
                                    ("launch_contract", "closed_launch_contract")):
            row = receipt["metadata_descriptors"][name]
            require(row["fd"] == launch[name]["fd"] and row["sha256"] == launch[name]["sha256"]
                    == self.descriptor[expected_name + "_sha256"], "HOST_CONTROL_SEALED_METADATA_CONTRACT")
            require(self.fd(target, actor, row, sealed=True, raw=True) == self.documents[expected_name],
                    "HOST_CONTROL_SEALED_METADATA_BYTES")
        approved = self.descriptor["roles"][role]
        require(receipt["entry_relative"] == launch["entry_relative"] == approved["entry_relative"]
                and self.sources[("packet", approved["entry_relative"])]["sha256"] == approved["entry_sha256"],
                "HOST_CONTROL_CLOSED_ENTRY_SOURCE")
        bootstrap = next(row for row in sources if row["scope"] == "packet" and row["path"] == "role_bootstrap.py")
        require(bootstrap["fd"] == launch["bootstrap_fd"], "HOST_CONTROL_EXECUTED_BOOTSTRAP_SOURCE_FD")
        argv = [self.runtime["interpreter"], "-I", "-S", "-B", "/proc/self/fd/" + str(bootstrap["fd"]),
                "--role", role, "--context", launch["context_path"], "--launch-fd", str(receipt["launch_descriptor"]["fd"])]
        actual_argv = bounded(target / "cmdline", 65536)
        require(fields(actual_argv) == argv == receipt["kernel_argv"] == live["kernel_argv"] == actor["kernel_argv"],
                "HOST_CONTROL_ACTUAL_KERNEL_CLOSED_ARGV")
        expected_environment = {"PATH": "/usr/bin:/bin", "LANG": "C.UTF-8", "LC_ALL": "C.UTF-8",
            "HOME": "/nonexistent", "UWVM_CONTROL_PACKET": launch["control_packet"],
            "UWVM_CONTROL_ADMISSION": launch["control_admission_path"],
            "UWVM_CONTROL_ADMISSION_SHA256": launch["control_admission_sha256"],
            "UWVM_CONTROL_RECORDS": launch["control_records"]}
        environment = bounded(target / "environ", 65536)
        require(sorted(fields(environment)) == sorted(key + "=" + value for key, value in expected_environment.items()),
                "HOST_CONTROL_ACTUAL_EXACT_ENVIRONMENT")
        fd_args = launch["role_fd_arguments"]
        require(set(fd_args) == ({"requester_fd"} if role == "controller"
                else {"lease_fd", "controller_fd", "requester_fd"}), "HOST_CONTROL_EXACT_ROLE_FD_ARGUMENTS")
        all_numbers = [*numbers, receipt["launch_descriptor"]["fd"],
                       *[row["fd"] for row in receipt["metadata_descriptors"].values()], *fd_args.values()]
        require(all(type(value) is int and 0 <= value < 1_048_576 for value in all_numbers)
                and len(all_numbers) == len(set(all_numbers)) and len(all_numbers) < self.contract["fd_ceiling"],
                "HOST_CONTROL_DISTINCT_SOURCE_METADATA_ROLE_FDS")
        logical = [str(Path(launch["packet"]) / approved["entry_relative"])]
        substitutions = dict(fd_args, context=launch["context_path"])
        logical += [part.format(**substitutions) for part in self.contract["roles"][role]["arguments"]]
        require(receipt["logical_argv"] == launch["logical_argv"] == logical, "HOST_CONTROL_ACTUAL_LOGICAL_ENTRY_ARGV")
        ppid = int(values[1])
        require(ppid == receipt["parent"]["pid"] == launch["parent"]["pid"]
                and process_birth(Path(proc) / str(ppid)) == receipt["parent"]["birth"] == launch["parent"]["birth"],
                "HOST_CONTROL_ACTUAL_PARENT_PID_BIRTH")
        if role == "guardian":
            require(receipt["parent"] == {"pid": self.admission["controller"]["pid"],
                    "birth": self.admission["controller"]["birth"]}
                    and fd_args["lease_fd"] == actor["lease_fd"], "HOST_CONTROL_GUARDIAN_ACQUIRING_PARENT_FD")
        self.context_snapshot(role, proc, launch, target)
        executable = receipt["executable"]
        require(live["executable"] == executable and executable["sha256"] == approved["interpreter_sha256"]
                == actor["executable_sha256"] and executable["path"] == self.runtime["interpreter"],
                "HOST_CONTROL_EXACT_ACTUAL_INTERPRETER")
        self.fd(target, actor, executable)
        require(identity((target / "exe").stat()) == executable["identity"], "HOST_CONTROL_CURRENT_EXECUTABLE_FD")
        runtimes = {}
        require(type(live["runtime_descriptors"]) is list and len(live["runtime_descriptors"]) < self.contract["fd_ceiling"],
                "HOST_CONTROL_BOUNDED_ACTUAL_RUNTIME_FDS")
        for row in live["runtime_descriptors"]:
            name = row["path"]
            require(name in self.runtime_pins and name not in runtimes, "HOST_CONTROL_ACTUAL_RUNTIME_SET")
            pin = self.runtime_pins[name]
            require((row["sha256"], row["bytes"]) == (pin["sha256"], pin["bytes"])
                    and all(row["identity"][key] == pin[key] for key in ("device", "inode", "bytes", "mode", "uid", "gid")),
                    "HOST_CONTROL_ACTUAL_RUNTIME_PIN")
            self.fd(target, actor, row)
            if "source_descriptor" in row:
                require(row["source_descriptor"]["sha256"] == pin["sha256"], "HOST_CONTROL_RUNTIME_SOURCE_PIN")
                self.fd(target, actor, row["source_descriptor"], sealed=True)
            runtimes[name] = row
        images = []
        for line in bounded(target / "maps", 2 * 1024**2).decode().splitlines():
            parts = line.split(None, 5)
            require(len(parts) >= 5, "HOST_CONTROL_KERNEL_MAP_SCHEMA")
            if len(parts) < 6 or not parts[5].startswith("/"):
                require("x" not in parts[1] or len(parts) == 6 and parts[5] in ("[vdso]", "[vsyscall]"),
                        "HOST_CONTROL_UNKNOWN_EXECUTABLE_MAPPING")
                continue
            name = parts[5]
            require(name in runtimes and not name.endswith(" (deleted)"), "HOST_CONTROL_LOADED_IMAGE_RUNTIME_FD")
            dev = parts[3].split(":")
            info = runtimes[name]["identity"]
            require((int(dev[0], 16), int(dev[1], 16), int(parts[4])) ==
                    (os.major(info["device"]), os.minor(info["device"]), info["inode"]), "HOST_CONTROL_LOADED_VFS_IDENTITY")
            images.append({"path": name, "permissions": parts[1], "offset": parts[2],
                           "device": info["device"], "inode": info["inode"], "sha256": runtimes[name]["sha256"]})
        require(images == live["loaded_images"], "HOST_CONTROL_ACTUAL_IMAGE_GENERATION")
        self.fresh(direct)
        require(direct["role"] == role and direct["pid"] == actor["pid"] and direct["birth"] == actor["birth"]
                and direct["launch_receipt_sha256"] == self.receipt_hashes[role]
                and direct["actual_kernel_argv"] == argv and direct["actual_security"] == security,
                "HOST_CONTROL_DIRECT_RECORD_ACTUAL_CORRELATION")
        require(all(direct.get(key) is True for key in ("actual_source_FDs_verified", "actual_runtime_FDs_verified",
                    "actual_executable_FD_verified", "actual_loaded_images_verified")),
                "HOST_CONTROL_DIRECT_RECORD_DISAGREES_WITH_KERNEL")
        require(process_birth(target) == actor["birth"] and bounded(target / "cmdline", 65536) == actual_argv
                and bounded(target / "environ", 65536) == environment, "HOST_CONTROL_ROLE_STABLE_AFTER")
        return {"role": role, "pid": actor["pid"], "birth": actor["birth"],
                "source_files": len(sources), "loaded_runtime_files": len(runtimes),
                "descriptor_sha256": self.admission["producer_descriptor_sha256"],
                "scope": self.approval["scope"], "product_qualified": False}

    def context_snapshot(self, role, proc, launch, target):
        context = launch["context_snapshot"]
        require(context["mode"] == "public-stage-a" and context["boot_id"] == self.admission["boot_id"]
                and context["packet_manifest_sha256"] == self.admission["packet_manifest_sha256"]
                and context["nonce"] == self.admission["nonce"] and context["packet"] == launch["packet"]
                and context["guardian_proof"]["sha256"] == self.admission["own_interruption_proof"]["sha256"],
                "HOST_CONTROL_SEALED_PUBLIC_CONTEXT_INPUTS")
        root = target / "root"
        path = root / launch["context_path"].lstrip("/")
        current, _ = read_document(path)
        require({key: value for key, value in current.items() if key != "lease_owner"} ==
                {key: value for key, value in context.items() if key != "lease_owner"},
                "HOST_CONTROL_CURRENT_IMMUTABLE_CONTEXT")
        lease = self.admission["canonical_lease"]
        owner = {"pid": lease["owner_pid"], "birth": lease["owner_birth"],
                 "device_inode": [os.major(lease["device"]), os.minor(lease["device"]), lease["inode"]]}
        require(current["lease_owner"] == owner
                and (role != "guardian" or context["lease_owner"] == owner), "HOST_CONTROL_SEALED_ACTUAL_LEASE_OWNER")
        control_path = root / launch["control_admission_path"].lstrip("/")
        control, control_sha = read_document(control_path)
        require(control_sha == self.admission["control_admission_sha256"]
                and control["boot_id"] == self.admission["boot_id"]
                and control["bootstrap_manifest_sha256"] == self.approval["control_source_manifest_sha256"]
                and control["status"] == "ADMITTED_DEDICATED_CONTROL_CGROUP"
                and control["target_after"]["memory.max"] == "68719476736"
                and control["target_after"]["memory.swap.max"] == "0"
                and control["target_after"]["cpuset.cpus.effective"] == self.admission["cpuset.cpus.effective"],
                "HOST_CONTROL_ACTUAL_FIXED_MANAGEMENT_ADMISSION")
        requester = context["requester"]
        require(self.receipts["controller"]["parent"] == requester
                and requester["pid"] == control["only_migrated_pid"] == control["target_after"]["pid"]
                and requester["birth"] == control["target_after"]["birth"]
                and process_birth(Path(proc) / str(requester["pid"])) == requester["birth"],
                "HOST_CONTROL_ACTUAL_ADMITTED_REQUESTER_PARENT")
        public = path.parent / "public"
        a, b = public.stat(), self.boundary.context.stat()
        require((a.st_dev, a.st_ino) == (b.st_dev, b.st_ino), "HOST_CONTROL_ACTUAL_PUBLIC_CONTEXT_VFS")
        require(not os.access(path.parent, os.W_OK, effective_ids=True)
                and not os.access(path, os.W_OK, effective_ids=True),
                "HOST_CONTROL_APPLICATION_WRITABLE_HOST_CONTEXT_ALIAS")
        if not self.benign_checked:
            self.benign(root, context)
            self.benign_checked = True

    def benign(self, root, context):
        specification = context["benign_proof"]
        require(specification is not None and type(specification["review_sha256"]) is str
                and HEX64.fullmatch(specification["review_sha256"]), "HOST_CONTROL_OWN_REVIEWED_BENIGN_REQUIRED")
        path = root / specification["path"].lstrip("/")
        value, actual = read_document(path)
        require(actual == specification["sha256"] and value.get("passed") is True
                and value.get("status") == "PASS_BOUNDED_BENIGN_RETIRED"
                and value["packet_manifest_sha256"] == self.admission["packet_manifest_sha256"]
                and value["boot_id"] == self.admission["boot_id"] and value["parent"] == context["parent"]
                and uint(value["finished_ns"], "host_benign_finished") < self.receipts["controller"]["observed_ns"]
                and value["guardian_proof_sha256"] == self.admission["own_interruption_proof"]["sha256"],
                "HOST_CONTROL_SAME_SUBJECT_BOOT_PROOF_BENIGN")
        records = {}
        for prefix in ("result", "keeper", "guardian"):
            original = path.parent / relative(value[prefix + "_path"])
            row, actual = read_document(original)
            require(actual == value[prefix + "_sha256"], "HOST_CONTROL_BENIGN_ORIGINAL_BYTES")
            records[prefix] = row
        require(records["result"]["passed"] is True and len(records["result"]["checks"]) == 3
                and len(records["result"]["versions"]) == 3
                and records["guardian"]["retired"] is True and records["guardian"]["status"] == "RETIRED"
                and value["post_retirement_lease"]["acquired"] is True, "HOST_CONTROL_BENIGN_ACTUAL_RETIRED_RESULT")
        require(not any(records["guardian"].get(key) for key in
                ("error", "lease_proof_error", "receipt_error", "original_parent_integrity_error", "client_retirement_error")),
                "HOST_CONTROL_BENIGN_UNRESOLVED_GUARDIAN_FAILURE")
        total = 0
        actor_root = (path.parent / relative(value["result_path"])).parent
        for row in records["result"]["raw_files"]:
            original = actor_root / relative(row["path"])
            total += uint(row["bytes"], "host_benign_raw_bytes", 16 * 1024**2)
            require(total <= 32 * 1024**2 and original.stat().st_size == row["bytes"]
                    and digest(original) == row["sha256"], "HOST_CONTROL_BENIGN_WHOLE_ORIGINAL_RAW")

    def verify_bundle(self, proc, own, direct):
        return {"controller": self.role("controller", proc, direct["controller_actual_role"], direct["controller_role_direct"]),
                "guardian": self.role("guardian", proc, own["actual_role"], direct["guardian_role_direct"])}

    def verify_lease_fd(self, proc, record, lease, role):
        actor = self.admission[role]
        expected_fd = lease["owner_fd"] if role == "controller" else actor["lease_fd"]
        require(record["pid"] == actor["pid"] and record["fd"] == expected_fd,
                "HOST_CONTROL_ACTUAL_CANONICAL_DESCRIPTOR_NUMBER")
        target = Path(proc) / str(actor["pid"])
        require(process_birth(target) == actor["birth"], "HOST_CONTROL_LEASE_ACTUAL_BIRTH")
        info = (target / "fd" / str(expected_fd)).stat()
        raw = bounded(target / "fdinfo" / str(expected_fd), 65536).decode()
        flags = [line.split()[1] for line in raw.splitlines() if line.startswith("flags:")]
        require(stat.S_ISREG(info.st_mode) and (info.st_dev, info.st_ino) == (lease["device"], lease["inode"])
                and len(flags) == 1 and int(flags[0], 8) & os.O_ACCMODE == os.O_RDONLY
                and len(flock_rows(raw, lease["owner_pid"], lease["device"], lease["inode"])) == 1,
                "HOST_CONTROL_ACTUAL_KERNEL_CANONICAL_FD_FLOCK")
        self.fresh(record)
        require(process_birth(target) == actor["birth"], "HOST_CONTROL_LEASE_BIRTH_AFTER")
