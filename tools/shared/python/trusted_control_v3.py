"""Versioned v3 consumer: OS-root enrollment plus fresh kernel-backed FD proof.

The v2 direct-proc consumer stays unchanged. V3 has no EACCES fallback and cannot
activate without a separately installed exact witness/issuer approval.
"""
from pathlib import Path
import fcntl
import hashlib
import json
import os
import re
import stat
import time
import uuid

from runtime_boundary import (require, digest, read_document, decode_json, readonly,
    process_birth, uint, flock_rows, control_cgroup_mapping)
from trusted_control import TrustedControls, fields, relative, IDENTITY, FRESH_NS
from witness_transport import (WitnessChannel, canonical, file_identity, readonly_fd,
                               filesystem_type, PROC_MAGIC)

ROOT = "share/platform/ros/runtime-boundary/v0.3.0"
MAX_EVIDENCE = 64 * 1024 * 1024


class WitnessControls(TrustedControls):
    def __init__(self, boundary):
        # Reuse exact SDK-owned closed-role source/runtime/launch approval and
        # original receipt validation. No v2 proc read is performed by __init__.
        super().__init__(boundary)
        sdk = self.sdk / ROOT
        contract, contract_sha = read_document(sdk / "contract.json")
        registry, registry_sha = read_document(sdk / "approved-witnesses.json")
        readonly(sdk / "contract.json")
        readonly(sdk / "approved-witnesses.json")
        require(contract["format"] == "uwvm-sdk-kernel-witness-contract-v1"
                and contract["boundary_protocol"] == "uwvm-sdk-live-boundary-v3"
                and contract["fresh_ns"] == FRESH_NS
                and registry["format"] == "uwvm-sdk-approved-kernel-witness-set-v1"
                and registry["default_decision"] == "DENY",
                "WITNESS_INSTALLED_VERSIONED_POLICY")
        require(all(name in self.approval for name in
                    ("kernel_witness_descriptor_sha256",
                     "kernel_evidence_contract_sha256", "application_image_sha256"))
                and type(boundary.admission.get("kernel_witness")) is dict
                and type(self.approval["application_image_sha256"]) is str
                and re.fullmatch(r"sha256:[0-9a-f]{64}",
                                 self.approval["application_image_sha256"]),
                "WITNESS_NEW_EXPLICIT_APPROVAL_FIELDS_REQUIRED")
        for field, filename, version in (
                ("wire_schema", "WIRE_SCHEMA.json",
                 "uwvm-sdk-kernel-witness-wire-field-contract-v1"),
                ("bootstrap_state_machine", "bootstrap-state-machine.json",
                 "uwvm-sdk-kernel-witness-bootstrap-state-machine-v1"),
                ("required_negatives", "required-negatives.json",
                 "uwvm-sdk-kernel-witness-required-rejections-v1")):
            readonly(sdk / filename)
            document, actual = read_document(sdk / filename)
            require(actual == contract[field + "_sha256"] and
                    document["format"] == version, "WITNESS_MATCHED_NORMATIVE_POLICY")
        selected = self.approval["kernel_witness_descriptor_sha256"]
        require(type(selected) is str and re.fullmatch(r"[0-9a-f]{64}", selected),
                "WITNESS_SELECTED_DESCRIPTOR_SHA256")
        require(self.approval["kernel_evidence_contract_sha256"] == contract_sha
                and boundary.admission["kernel_witness"]["descriptor_sha256"] == selected,
                "WITNESS_EXPLICIT_CONTROL_APPROVAL")
        matches = [row for row in registry["approved"]
                   if row["descriptor_sha256"] == selected]
        require(len(matches) == 1, "WITNESS_UNAPPROVED_DESCRIPTOR")
        self.witness_approval = matches[0]
        actor = self.admission["kernel_witness"]
        require(uint(actor["pid"], "witness_pid") > 0
                and type(actor["birth"]) is str
                and re.fullmatch(r"[1-9][0-9]*", actor["birth"])
                and actor["pid"] not in (self.admission["controller"]["pid"],
                                         self.admission["guardian"]["pid"])
                and actor["role"] == "kernel_witness"
                and uint(actor["cgroup_inode"], "witness_cgroup_inode") > 0,
                "WITNESS_DISTINCT_LIVE_ACTOR_ADMISSION")
        require(self.witness_approval["scope"] ==
                    "fixed-input-current-boot-qualification-only"
                and self.witness_approval["product_qualified"] is False
                and self.witness_approval["boot_id"] == self.admission["boot_id"]
                and self.witness_approval["no_new_privileges_or_lsm_exceptions"] is True,
                "WITNESS_APPROVED_SCOPE_BOOT")
        base = sdk / relative(self.witness_approval["directory"])
        require(base.resolve().is_relative_to(sdk.resolve()),
                "WITNESS_APPROVAL_DIRECTORY")
        readonly(base / "descriptor.json")
        descriptor, actual = read_document(base / "descriptor.json")
        require(actual == selected and descriptor["format"] ==
                "uwvm-kernel-witness-descriptor-v1"
                and descriptor["enrollment_authority"] ==
                    "existing-qualified-os-root-bootstrap"
                and descriptor["signature"] ==
                    "RSA3072-PSS-SHA256-MGF1-SHA256-SALT32"
                and descriptor["lsm_profile"] == "unconfined",
                "WITNESS_EXACT_DESCRIPTOR")
        self.witness_documents = {}
        for name, filename in [("source_manifest", "source-manifest.json"),
                ("runtime_manifest", "runtime-manifest.json"),
                ("bootstrap_contract", "bootstrap-contract.json"),
                ("issuer_profile", "issuer-profile.json")]:
            p = base / filename
            readonly(p)
            value, actual = read_document(p)
            require(actual == descriptor[name + "_sha256"],
                    "WITNESS_APPROVED_" + name.upper())
            self.witness_documents[name] = value
        require(self.witness_documents["source_manifest"]["format"] ==
                    "uwvm-witness-immutable-source-set-v1"
                and self.witness_documents["runtime_manifest"]["format"] ==
                    "uwvm-witness-root-runtime-set-v1"
                and self.witness_documents["bootstrap_contract"]["format"] ==
                    "uwvm-witness-key-bootstrap-v1",
                "WITNESS_PINNED_DOCUMENT_FORMATS")
        issuer = self.witness_documents["issuer_profile"]
        require(issuer["format"] == "uwvm-approved-root-enrollment-issuer-v1"
                and issuer["bootstrap_manifest_sha256"] ==
                    self.witness_approval["enrollment_bootstrap_manifest_sha256"]
                and issuer["existing_root_resource_enrollment_only"] is True
                and issuer["new_privileges_or_lsm_exceptions"] is False,
                "WITNESS_QUALIFIED_EXISTING_ROOT_ISSUER")
        security = descriptor["security_profile"]
        require(security["Uid"] == security["Gid"] == "1000 1000 1000 1000"
                and all(int(security[name], 16) == 0 for name in
                    ("CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb"))
                and security["NoNewPrivs"] == "1" and security["Seccomp"] == "2"
                and security["Groups"] in ("", "1000"),
                "WITNESS_RESTRICTED_COLLECTOR_PROFILE")
        bootstrap = self.witness_documents["bootstrap_contract"]
        require(bootstrap["non_dumpable_before_key"] is True
                and bootstrap["no_persistent_or_exported_private_key"] is True
                and bootstrap["post_lock_exec_fork_dumpable_change_denied"] is True
                and bootstrap["arbitrary_path_or_signing_or_lease_operations"] is False,
                "WITNESS_LOCKED_KEY_MEASUREMENT_CONTRACT")
        require(bootstrap["kernel_argv"] == ["{pinned_interpreter}", "-I", "-S", "-B",
                    "/proc/self/fd/{bootstrap_fd}", "--context", "{context}",
                    "--witness-launch-fd", "{launch_fd}"]
                and bootstrap["environment"] == {"PATH": "/usr/bin:/bin",
                    "LANG": "C.UTF-8", "LC_ALL": "C.UTF-8", "HOME": "/nonexistent"}
                and bootstrap["retained_source_fds_never_closed_or_replaced"] is True,
                "WITNESS_EXACT_CLOSED_ARGV_ENV_FD_LIFETIME")
        require(self.admission["application_image_sha256"] ==
                self.approval["application_image_sha256"], "WITNESS_PINNED_APPLICATION_IMAGE")
        self.witness_descriptor = dict(descriptor, descriptor_sha256=selected)
        self.channel = WitnessChannel(boundary, self.witness_descriptor, self.record_wire)
        self.frame = None
        self.table = {}
        self.current_facts = {}
        self.evidence_bytes = 0
        self.evidence_directory = None
        self.evidence_dirfd = None
        self.last_evidence = None

    def record_wire(self, batch, raw, received, flags):
        """Keep bounded actual transport originals before decoding or acceptance."""
        if self.evidence_directory is None:
            work = Path("/work")
            require(work.is_dir() and not work.is_symlink(),
                    "WITNESS_PRIVATE_EVIDENCE_WORK")
            base = work / "kernel-witness-v3"
            base.mkdir(mode=0o700, exist_ok=True)
            require(not base.is_symlink() and base.stat().st_uid == os.geteuid(),
                    "WITNESS_PRIVATE_EVIDENCE_BASE")
            self.evidence_directory = base / (self.admission["nonce"] + "-" +
                str(os.getpid()) + "-" + uuid.uuid4().hex)
            self.evidence_directory.mkdir(mode=0o700)
            self.evidence_dirfd = os.open(self.evidence_directory,
                os.O_RDONLY | os.O_DIRECTORY | os.O_NOFOLLOW | os.O_CLOEXEC)
            info = os.fstat(self.evidence_dirfd)
            require(info.st_uid == os.geteuid() and
                    stat.S_IMODE(info.st_mode) == 0o700 and
                    (info.st_dev, info.st_ino) ==
                        (self.evidence_directory.stat().st_dev,
                         self.evidence_directory.stat().st_ino),
                    "WITNESS_EXCLUSIVE_EVIDENCE_DIRECTORY_FD")
            self.evidence_wire_sequence = 0
            self.evidence_blob_hashes = set()
        self.evidence_wire_sequence += 1
        name = "%06d" % self.evidence_wire_sequence
        metadata = {"format": "uwvm-kernel-witness-actual-receive-v1",
                    "batch": batch, "flags": flags,
                    "received_monotonic_ns": time.monotonic_ns(),
                    "raw_header_sha256": hashlib.sha256(raw).hexdigest(),
                    "descriptors": []}
        blobs = [(name + ".packet", raw)]
        for index, descriptor in enumerate(received):
            info = os.fstat(descriptor)
            row = {"index": index, "identity": file_identity(info),
                   "flags": fcntl.fcntl(descriptor, fcntl.F_GETFL),
                   "kernel_link": os.readlink("/proc/self/fd/" + str(descriptor))}
            if (batch == 0 and index < 2 and stat.S_ISREG(info.st_mode)
                    and info.st_size <= 2 * 1024**2 + 396):
                try:
                    seals = fcntl.fcntl(descriptor, fcntl.F_GET_SEALS)
                except OSError as error:
                    row["seal_query_errno"] = error.errno
                else:
                    row["seals"] = seals
                    if seals == 15 and row["flags"] & os.O_ACCMODE == os.O_RDONLY:
                        blob = os.pread(descriptor, info.st_size + 1, 0)
                        require(len(blob) == info.st_size,
                                "WITNESS_RECEIVE_ORIGINAL_BOUND")
                        value = hashlib.sha256(blob).hexdigest()
                        row["raw_sha256"] = value
                        if value not in self.evidence_blob_hashes:
                            blobs.append((value + ".sealed-object", blob))
                            self.evidence_blob_hashes.add(value)
            metadata["descriptors"].append(row)
        blobs.append((name + ".receive.json",
                      json.dumps(metadata, indent=2).encode("utf-8") + bytes([10])))
        require(self.evidence_bytes + sum(len(data) for _, data in blobs) <= MAX_EVIDENCE,
                "WITNESS_ORIGINAL_EVIDENCE_BUDGET")
        for filename, data in blobs:
            self.write_evidence(filename, data)

    def write_evidence(self, filename, data):
        require(self.evidence_dirfd is not None and
                Path(filename).name == filename and
                self.evidence_bytes + len(data) <= MAX_EVIDENCE,
                "WITNESS_ANCHORED_EVIDENCE_WRITE_BOUND")
        descriptor = os.open(filename, os.O_WRONLY | os.O_CREAT | os.O_EXCL |
            os.O_NOFOLLOW | os.O_CLOEXEC, 0o600, dir_fd=self.evidence_dirfd)
        with os.fdopen(descriptor, "wb") as stream:
            stream.write(data)
        self.evidence_bytes += len(data)

    def enrolled_measurements(self):
        """Root enrollment must contain complete measured closures, not hashes alone."""
        value = self.frame.enrollment
        measured = value["measurements"]
        sources = self.witness_documents["source_manifest"]["files"]
        runtimes = self.witness_documents["runtime_manifest"]["files"]
        require(type(sources) is list and type(runtimes) is list and
                0 < len(sources) == self.witness_approval["source_files"] <= 128
                and 0 < len(runtimes) == self.witness_approval["runtime_files"] <= 4096
                and sum(uint(r["bytes"], "witness_source_bytes", 2 * 1024**2)
                        for r in sources) <= 32 * 1024**2
                and sum(uint(r["bytes"], "witness_runtime_bytes", 128 * 1024**2)
                        for r in runtimes) <= 512 * 1024**2,
                "WITNESS_ENROLLMENT_CLOSURE_BOUNDS")
        expected = {(r["scope"], r["path"]): r for r in sources}
        actual = {(r["scope"], r["path"]): r for r in measured["sources"]}
        require(len(expected) == len(sources) == len(actual) ==
                len(measured["sources"]) and set(actual) == set(expected),
                "WITNESS_ROOT_MEASURED_COMPLETE_SOURCE_SET")
        for key, pin in expected.items():
            row = actual[key]
            require(row["sha256"] == pin["sha256"] and row["bytes"] == pin["bytes"]
                    and row["identity"]["bytes"] == pin["bytes"] and
                    row["seals"] == 15 and row["access_mode"] == "O_RDONLY"
                    and row["before_identity"] == row["after_identity"] ==
                        row["identity"], "WITNESS_ROOT_MEASURED_SOURCE_IMMUTABILITY")
        expected_runtime = {r["path"]: r for r in runtimes}
        actual_runtime = {r["path"]: r for r in measured["runtime"]}
        require(len(expected_runtime) == len(runtimes) ==
                len(actual_runtime) == len(measured["runtime"]) and
                set(actual_runtime) == set(expected_runtime),
                "WITNESS_ROOT_MEASURED_COMPLETE_RUNTIME_SET")
        for name, pin in expected_runtime.items():
            row = actual_runtime[name]
            require(pin["uid"] == pin["gid"] == 0 and not pin["mode"] & 0o022
                    and row["sha256"] == pin["sha256"] and row["bytes"] == pin["bytes"]
                    and row["access_mode"] == "O_RDONLY" and
                    all(row["identity"][k] == pin[k] for k in
                        ("device", "inode", "bytes", "mode", "uid", "gid")) and
                    row["before_identity"] == row["after_identity"] ==
                        row["identity"], "WITNESS_ROOT_MEASURED_RUNTIME")
        issuer_profile = self.witness_documents["issuer_profile"]
        issuer = value["issuer"]
        require(issuer["boot_id"] == self.admission["boot_id"]
                and all(issuer[k] == issuer_profile[k] for k in
                    ("bootstrap_manifest_sha256", "source_manifest_sha256",
                     "runtime_manifest_sha256", "executable_sha256",
                     "image_sha256", "security_profile", "lsm_profile"))
                and issuer["shared_ancestor"]["device"] ==
                    self.admission["shared_ancestor_device"]
                and issuer["shared_ancestor"]["inode"] ==
                    self.admission["shared_ancestor_inode"]
                and issuer["actual_cgroup"]["memory.max"] == "68719476736"
                and issuer["actual_cgroup"]["memory.swap.max"] == "0"
                and issuer["actual_cgroup"]["cpuset.cpus.effective"] ==
                    self.admission["cpuset.cpus.effective"],
                "WITNESS_EXACT_ROOT_ISSUER_AND_SHARED_BUDGET")
        witness = value["witness"]
        executable = witness["executable"]
        require(executable["path"] == self.witness_documents["runtime_manifest"]["interpreter"]
                and executable["path"] in expected_runtime and
                executable["sha256"] == expected_runtime[executable["path"]]["sha256"]
                and executable["identity"] == actual_runtime[executable["path"]]["identity"],
                "WITNESS_ENROLLED_CURRENT_EXE")
        images = measured["loaded_images"]
        require(type(images) is list and images and len(images) <= 2048,
                "WITNESS_ENROLLED_IMAGE_CLOSURE")
        require(type(measured["maps_text"]) is str and
                len(measured["maps_text"]) <= 2 * 1024**2,
                "WITNESS_ROOT_MEASURED_MAP_BOUND")
        measured_images = []
        for line in measured["maps_text"].splitlines():
            parts = line.split(None, 5)
            require(len(parts) >= 5, "WITNESS_ROOT_MEASURED_MAP_SCHEMA")
            if len(parts) < 6 or not parts[5].startswith("/"):
                require("x" not in parts[1] or len(parts) == 6 and
                        parts[5] in ("[vdso]", "[vsyscall]"),
                        "WITNESS_ROOT_UNKNOWN_EXECUTABLE_MAP")
                continue
            require(parts[5] in actual_runtime, "WITNESS_ROOT_MAP_RUNTIME_SET")
            identity = actual_runtime[parts[5]]["identity"]
            device = parts[3].split(":")
            require((int(device[0], 16), int(device[1], 16), int(parts[4])) ==
                    (os.major(identity["device"]), os.minor(identity["device"]),
                     identity["inode"]), "WITNESS_ROOT_MAP_VFS_IDENTITY")
            measured_images.append({"path": parts[5], "permissions": parts[1],
                "offset": parts[2], "device": identity["device"],
                "inode": identity["inode"],
                "sha256": actual_runtime[parts[5]]["sha256"]})
        require(images == measured_images, "WITNESS_ROOT_COMPLETE_LOADED_IMAGE_CENSUS")
        for image in images:
            require(image["path"] in actual_runtime and
                    image["sha256"] == actual_runtime[image["path"]]["sha256"] and
                    (image["device"], image["inode"]) ==
                    (actual_runtime[image["path"]]["identity"]["device"],
                     actual_runtime[image["path"]]["identity"]["inode"]),
                    "WITNESS_ENROLLED_LOADED_KERNEL_IMAGE")
        lock = self.witness_documents["bootstrap_contract"]
        require(witness["post_lock_seccomp_filter_sha256"] ==
                lock["post_lock_seccomp_filter_sha256"] and
                measured["private_key_not_present_before_lock"] is True and
                measured["root_observed_nondumpable_proc_owner"] == {"uid": 0, "gid": 0}
                and measured["witness_credentials_after_lock"] ==
                    self.witness_descriptor["security_profile"],
                "WITNESS_ROOT_MEASURED_PREKEY_TRANSITION")
        require(set(value["control_roles"]) == {"controller", "guardian"},
                "WITNESS_ROOT_ENROLLED_CONTROL_SET")
        for role in ("controller", "guardian"):
            row = value["control_roles"][role]
            actor = self.admission[role]
            require(row["pid"] == actor["pid"] and row["birth"] == actor["birth"]
                    and row["launch_receipt_sha256"] == self.receipt_hashes[role]
                    and row["lsm_profile"] == "unconfined",
                    "WITNESS_ROOT_ENROLLED_CONTROL_IDENTITY")

    def binding(self):
        a = self.admission
        return {"boot_id": a["boot_id"], "packet_manifest_sha256":
                a["packet_manifest_sha256"], "admission_sha256": self.boundary.sha256,
                "nonce": a["nonce"], "control_admission_sha256":
                a["control_admission_sha256"], "producer_descriptor_sha256":
                a["producer_descriptor_sha256"], "kernel_witness_descriptor_sha256":
                self.witness_descriptor["descriptor_sha256"],
                "controller": {"pid": a["controller"]["pid"],
                               "birth": a["controller"]["birth"]},
                "guardian": {"pid": a["guardian"]["pid"],
                             "birth": a["guardian"]["birth"]},
                "shared_ancestor": {"device": a["shared_ancestor_device"],
                                   "inode": a["shared_ancestor_inode"]},
                "canonical_lease": {key: a["canonical_lease"][key] for key in
                    ("device", "inode", "owner_pid", "owner_birth", "owner_fd")},
                "own_interruption_sha256": a["own_interruption_proof"]["sha256"],
                "own_benign_sha256": a["own_benign_proof"]["sha256"],
                "actor_leaf": a["actor_shared_relative_leaf"],
                "application_image_sha256": self.approval["application_image_sha256"]}

    def caller(self, proc):
        value = self.boundary.mapping(proc)
        namespaces = dict(value["namespaces"])
        p = Path("/proc/self/ns/time")
        info = p.stat()
        namespaces["time"] = {"device": info.st_dev, "inode": info.st_ino,
                              "link": os.readlink(p)}
        return {"host_pid": value["host_pid"], "birth": value["birth"],
                "local_pid": os.getpid(), "namespaces": namespaces}

    def fd(self, target, actor, expected, *, sealed=False, raw=False):
        key = (actor["pid"], actor["birth"], expected["fd"])
        require(key in self.table, "WITNESS_ORIGINAL_ROLE_FD_PRESENT")
        row = self.table[key]
        require(row["kind"] == ("sealed" if sealed else "runtime")
                and row["sha256"] == expected["sha256"],
                "WITNESS_ORIGINAL_FD_KIND_SHA")
        number = self.frame.take(row["slot"])
        readonly_fd(number)
        actual = file_identity(os.fstat(number))
        wanted = expected.get("identity", {k: expected[k] for k in IDENTITY if k in expected})
        require(set(wanted) == set(IDENTITY) and actual == wanted == row["identity"]
                and stat.S_ISREG(os.fstat(number).st_mode),
                "WITNESS_ORIGINAL_FD_KERNEL_IDENTITY")
        require(row["original_identity_before"] == row["original_identity_after"] == actual,
                "WITNESS_ORIGINAL_TARGET_FD_STABLE_IDENTITY")
        self.reopen_check(row, actor, expected["fd"])
        fdinfo = row["original_fdinfo"]
        require(type(fdinfo) is str and len(fdinfo) <= 65536,
                "WITNESS_ORIGINAL_KERNEL_FDINFO_BOUND")
        flags = [line.split()[1] for line in fdinfo.splitlines() if line.startswith("flags:")]
        inodes = [line.split()[1] for line in fdinfo.splitlines() if line.startswith("ino:")]
        require(len(flags) == len(inodes) == 1
                and int(flags[0], 8) & os.O_ACCMODE == os.O_RDONLY
                and not int(flags[0], 8) & os.O_PATH
                and int(inodes[0]) == actual["inode"], "WITNESS_ORIGINAL_KERNEL_FD_FLAGS")
        if sealed:
            require(fcntl.fcntl(number, fcntl.F_GET_SEALS) == 15,
                    "WITNESS_ACTUAL_SOURCE_SEALS")
            maximum = 2 * 1024**2
        else:
            # Only root-owned nonwritable runtime objects may cross the boundary.
            # O_RDONLY alone does not prevent reopening a host-writable inode.
            require(actual["uid"] == actual["gid"] == 0 and not actual["mode"] & 0o022,
                    "WITNESS_RUNTIME_NOT_APPLICATION_WRITABLE")
            maximum = 128 * 1024**2
        require(actual["bytes"] <= maximum, "WITNESS_FD_OBJECT_BOUND")
        cache = (actor["pid"], actor["birth"], tuple(actual.items()), expected["sha256"])
        payload = None
        if raw or cache not in self.hashed:
            payload = os.pread(number, actual["bytes"] + 1, 0)
            require(len(payload) == actual["bytes"] and
                    hashlib.sha256(payload).hexdigest() == expected["sha256"],
                    "WITNESS_INDEPENDENT_WHOLE_FD_BYTES")
            require(len(self.hashed) < 4096, "WITNESS_FD_CACHE_BOUND")
            self.hashed.add(cache)
        require(file_identity(os.fstat(number)) == actual
                and process_birth(Path(self.admission["host_proc_view"]) /
                                  str(actor["pid"])) == actor["birth"],
                "WITNESS_FD_AND_ROLE_STABLE_AFTER")
        return decode_json(payload) if raw else actual

    def reopen_check(self, row, actor, original):
        observed = row["reopen_kernel_check"]
        require(observed["syscall"] == "kcmp(KCMP_FILE)"
                and observed["first_pid"] == self.admission["kernel_witness"]["pid"]
                and observed["second_pid"] == actor["pid"]
                and observed["first_fd"] == row["witness_delivery_fd"]
                and observed["second_fd"] == original
                and type(observed["result"]) is int and observed["result"] in (1, 2, 3)
                and observed["errno"] == 0, "WITNESS_INDEPENDENT_OPEN_DESCRIPTION")

    def role(self, role, proc, live, direct):
        actor, receipt = self.admission[role], self.receipts[role]
        target = Path(proc) / str(actor["pid"])
        before = (target / "stat").read_text().rsplit(") ", 1)[1].split()
        facts = self.current_facts[role]
        kernel = facts["kernel"]
        require(before[19] == actor["birth"] and before[0] not in ("Z", "X")
                and facts["pid"] == actor["pid"] and facts["birth"] == actor["birth"],
                "WITNESS_ROLE_LIVE_KERNEL_BIRTH")
        measured = kernel["stat_before"].rsplit(") ", 1)[1].split()
        after = kernel["stat_after"].rsplit(") ", 1)[1].split()
        require(measured[19] == after[19] == before[19] and
                measured[1] == after[1] == before[1] and
                measured[0] not in ("Z", "X") and after[0] not in ("Z", "X"),
                "WITNESS_KERNEL_SAMPLE_ROLE_STABILITY")
        security = self.actual_security(target)
        require(facts["security"] == security == receipt["actual_security"] ==
                live["actual_security"] and facts["lsm_profile"] == "unconfined",
                "WITNESS_EXACT_EXISTING_HOST_ROLE_SECURITY")
        require(receipt["format"] == "uwvm-actual-role-launch-receipt-v2"
                and receipt["role"] == role and receipt["pid"] == actor["pid"]
                and receipt["birth"] == actor["birth"]
                and live["format"] == "uwvm-actual-role-live-state-v2"
                and live["role"] == role and live["pid"] == actor["pid"]
                and live["birth"] == actor["birth"]
                and live["launch_receipt_sha256"] == self.receipt_hashes[role],
                "WITNESS_SAME_LIVE_ORIGINAL_ROLE")
        self.fresh(live)
        self.fresh(direct)
        for key in ("nonce", "boot_id", "packet_manifest_sha256", "control_admission_sha256"):
            require(receipt[key] == self.admission[key], "WITNESS_ROLE_SUBJECT")
        for key in ("source_manifest_sha256", "runtime_manifest_sha256",
                    "closed_launch_contract_sha256"):
            require(receipt[key] == live[key] == self.descriptor[key],
                    "WITNESS_EXACT_CLOSED_ROLE_CONTRACT")
        sources = receipt["sources"]
        require(len(sources) == len(self.sources) and live["source_descriptors"] == sources,
                "WITNESS_COMPLETE_STATIC_LIVE_SOURCE_SET")
        seen, numbers = set(), set()
        for row in sources:
            key = (row["scope"], row["path"])
            require(key in self.sources and key not in seen and row["fd"] not in numbers,
                    "WITNESS_SOURCE_SET_UNIQUE")
            pin = self.sources[key]
            require((row["bytes"], row["sha256"]) == (pin["bytes"], pin["sha256"]),
                    "WITNESS_APPROVED_SOURCE_BYTES")
            self.fd(target, actor, row, sealed=True)
            seen.add(key)
            numbers.add(row["fd"])
        launch = self.fd(target, actor, receipt["launch_descriptor"], sealed=True, raw=True)
        self.launches[role] = launch
        require(launch["format"] == "uwvm-sealed-role-launch-v2" and launch["role"] == role,
                "WITNESS_ACTUAL_SEALED_LAUNCH")
        for key in ("nonce", "boot_id", "packet_manifest_sha256", "control_admission_sha256"):
            require(launch[key] == self.admission[key], "WITNESS_SEALED_SUBJECT")
        require(set(receipt["metadata_descriptors"]) ==
                {"source_manifest", "runtime_manifest", "launch_contract"},
                "WITNESS_COMPLETE_SEALED_METADATA")
        for name, key in (("source_manifest", "source_manifest"),
                          ("runtime_manifest", "runtime_manifest"),
                          ("launch_contract", "closed_launch_contract")):
            row = receipt["metadata_descriptors"][name]
            require(row["fd"] == launch[name]["fd"] and row["sha256"] ==
                    launch[name]["sha256"] == self.descriptor[key + "_sha256"]
                    and self.fd(target, actor, row, sealed=True, raw=True) ==
                        self.documents[key], "WITNESS_SEALED_METADATA_BYTES")
        approved = self.descriptor["roles"][role]
        bootstrap = next(row for row in sources if row["scope"] == "packet"
                         and row["path"] == "role_bootstrap.py")
        require(bootstrap["fd"] == launch["bootstrap_fd"]
                and receipt["entry_relative"] == launch["entry_relative"] ==
                    approved["entry_relative"]
                and self.sources[("packet", approved["entry_relative"])]["sha256"] ==
                    approved["entry_sha256"], "WITNESS_CLOSED_BOOTSTRAP_ENTRY")
        argv = [self.runtime["interpreter"], "-I", "-S", "-B",
                "/proc/self/fd/" + str(bootstrap["fd"]), "--role", role,
                "--context", launch["context_path"], "--launch-fd",
                str(receipt["launch_descriptor"]["fd"])]
        actual_argv = bytes.fromhex(kernel["cmdline_hex"])
        require(fields(actual_argv) == argv == receipt["kernel_argv"] ==
                live["kernel_argv"] == actor["kernel_argv"],
                "WITNESS_ACTUAL_KERNEL_ARGV")
        expected_environment = {"PATH": "/usr/bin:/bin", "LANG": "C.UTF-8", "LC_ALL": "C.UTF-8",
            "HOME": "/nonexistent", "UWVM_CONTROL_PACKET": launch["control_packet"],
            "UWVM_CONTROL_ADMISSION": launch["control_admission_path"],
            "UWVM_CONTROL_ADMISSION_SHA256": launch["control_admission_sha256"],
            "UWVM_CONTROL_RECORDS": launch["control_records"]}
        environment = bytes.fromhex(kernel["environ_hex"])
        require(sorted(fields(environment)) == sorted(k + "=" + v for k, v in
                expected_environment.items()), "WITNESS_ACTUAL_EXACT_ENVIRONMENT")
        fd_args = launch["role_fd_arguments"]
        require(set(fd_args) == ({"requester_fd"} if role == "controller" else
                {"lease_fd", "controller_fd", "requester_fd"}),
                "WITNESS_EXACT_ROLE_FD_ARGUMENTS")
        all_numbers = [*numbers, receipt["launch_descriptor"]["fd"],
                      *[r["fd"] for r in receipt["metadata_descriptors"].values()],
                      *fd_args.values()]
        require(all(type(n) is int and 0 <= n < 1_048_576 for n in all_numbers)
                and len(all_numbers) == len(set(all_numbers)) and
                len(all_numbers) < self.contract["fd_ceiling"],
                "WITNESS_DISTINCT_ROLE_SOURCE_METADATA_FDS")
        logical = [str(Path(launch["packet"]) / approved["entry_relative"])]
        values = dict(fd_args, context=launch["context_path"])
        logical += [part.format(**values) for part in self.contract["roles"][role]["arguments"]]
        require(receipt["logical_argv"] == launch["logical_argv"] == logical
                and int(before[1]) == receipt["parent"]["pid"] == launch["parent"]["pid"]
                and process_birth(Path(proc) / str(int(before[1]))) ==
                    receipt["parent"]["birth"] == launch["parent"]["birth"],
                "WITNESS_ACTUAL_LOGICAL_ARGV_AND_PARENT")
        if role == "guardian":
            require(receipt["parent"] == {"pid": self.admission["controller"]["pid"],
                    "birth": self.admission["controller"]["birth"]}
                    and fd_args["lease_fd"] == actor["lease_fd"],
                    "WITNESS_ACTUAL_ACQUIRING_PARENT")
        self.context_snapshot(role, proc, launch, target)
        executable = receipt["executable"]
        require(live["executable"] == executable
                and executable["sha256"] == approved["interpreter_sha256"] ==
                    actor["executable_sha256"]
                and executable["path"] == self.runtime["interpreter"],
                "WITNESS_EXACT_INTERPRETER")
        actual_exe = self.fd(target, actor, executable)
        require(kernel["exe_before"] == kernel["exe_after"] ==
                executable["identity"] == actual_exe,
                "WITNESS_CURRENT_EXECUTABLE_KERNEL_FD")
        runtimes = {}
        require(type(live["runtime_descriptors"]) is list and
                len(live["runtime_descriptors"]) < self.contract["fd_ceiling"],
                "WITNESS_RUNTIME_DESCRIPTOR_BOUND")
        for row in live["runtime_descriptors"]:
            name = row["path"]
            require(name in self.runtime_pins and name not in runtimes,
                    "WITNESS_COMPLETE_KNOWN_RUNTIME_SET")
            pin = self.runtime_pins[name]
            require((row["sha256"], row["bytes"]) == (pin["sha256"], pin["bytes"])
                    and all(row["identity"][k] == pin[k] for k in
                        ("device", "inode", "bytes", "mode", "uid", "gid")),
                    "WITNESS_ACTUAL_RUNTIME_PIN")
            self.fd(target, actor, row)
            if "source_descriptor" in row:
                require(row["source_descriptor"]["sha256"] == pin["sha256"],
                        "WITNESS_RUNTIME_SEALED_SOURCE_PIN")
                self.fd(target, actor, row["source_descriptor"], sealed=True)
            runtimes[name] = row
        require(facts["retained_runtime_paths"] == sorted(runtimes),
                "WITNESS_CURRENT_COMPLETE_RETAINED_RUNTIME_CENSUS")
        images = []
        require(type(kernel["maps_text"]) is str and len(kernel["maps_text"]) <= 2 * 1024**2,
                "WITNESS_KERNEL_MAP_BOUND")
        for line in kernel["maps_text"].splitlines():
            parts = line.split(None, 5)
            require(len(parts) >= 5, "WITNESS_KERNEL_MAP_SCHEMA")
            if len(parts) < 6 or not parts[5].startswith("/"):
                require("x" not in parts[1] or len(parts) == 6 and
                        parts[5] in ("[vdso]", "[vsyscall]"),
                        "WITNESS_UNKNOWN_EXECUTABLE_MAPPING")
                continue
            name = parts[5]
            require(name in runtimes and not name.endswith(" (deleted)"),
                    "WITNESS_LOADED_RUNTIME_FD_SET")
            dev = parts[3].split(":")
            info = runtimes[name]["identity"]
            require((int(dev[0], 16), int(dev[1], 16), int(parts[4])) ==
                    (os.major(info["device"]), os.minor(info["device"]), info["inode"]),
                    "WITNESS_LOADED_IMAGE_KERNEL_VFS")
            images.append({"path": name, "permissions": parts[1], "offset": parts[2],
                           "device": info["device"], "inode": info["inode"],
                           "sha256": runtimes[name]["sha256"]})
        require(images == live["loaded_images"] and kernel["cmdline_hex"] ==
                kernel["cmdline_after_hex"] and kernel["environ_hex"] ==
                kernel["environ_after_hex"], "WITNESS_SAMPLE_STABLE_IMAGE_AND_ENV")
        namespaces = facts["namespaces"]
        require(namespaces == self.frame.enrollment["control_roles"][role]["namespaces"]
                and kernel["exe_before"] ==
                    self.frame.enrollment["control_roles"][role]["executable"]["identity"],
                "WITNESS_ENROLLED_NAMESPACE_AND_EXE_STABILITY")
        require(set(namespaces) == {"pid", "mnt", "user", "cgroup", "time"}
                and all(type(r["link"]) is str and r["device"] >= 0 and r["inode"] > 0
                        for r in namespaces.values()), "WITNESS_COMPLETE_KERNEL_NAMESPACES")
        require(direct["role"] == role and direct["pid"] == actor["pid"] and
                direct["birth"] == actor["birth"] and
                direct["launch_receipt_sha256"] == self.receipt_hashes[role]
                and direct["actual_kernel_argv"] == argv and
                direct["actual_security"] == security, "WITNESS_LIVE_VIEW_KERNEL_CORRELATION")
        require(all(direct.get(name) is True for name in
                    ("actual_source_FDs_verified", "actual_runtime_FDs_verified",
                     "actual_executable_FD_verified", "actual_loaded_images_verified")),
                "WITNESS_VIEW_PREDICATES_DISAGREE_WITH_FRESH_KERNEL")
        require(process_birth(target) == actor["birth"], "WITNESS_ROLE_BIRTH_AFTER")
        return {"role": role, "pid": actor["pid"], "birth": actor["birth"],
                "source_files": len(sources), "loaded_runtime_files": len(runtimes),
                "descriptor_sha256": self.admission["producer_descriptor_sha256"],
                "witness_proof_sha256": self.frame.raw_sha,
                "scope": self.approval["scope"], "product_qualified": False}

    def context_snapshot(self, role, proc, launch, target):
        facts = self.current_facts[role]
        context, current = launch["context_snapshot"], facts["context_document"]
        context_raw = facts["context_raw"].encode("utf-8")
        require(len(context_raw) <= 1_048_576 and decode_json(context_raw) == current
                and hashlib.sha256(context_raw).hexdigest() == facts["context_raw_sha256"]
                and facts["context_identity_before"] == facts["context_identity_after"]
                and facts["context_identity_before"]["bytes"] == len(context_raw),
                "WITNESS_CURRENT_KERNEL_CONTEXT_BYTES_STABLE")
        require(context["mode"] == "public-stage-a" and
                context["boot_id"] == self.admission["boot_id"] and
                context["packet_manifest_sha256"] == self.admission["packet_manifest_sha256"]
                and context["nonce"] == self.admission["nonce"] and
                context["packet"] == launch["packet"] and
                context["guardian_proof"]["sha256"] ==
                    self.admission["own_interruption_proof"]["sha256"],
                "WITNESS_IMMUTABLE_CONTEXT_SUBJECT")
        require({k: v for k, v in current.items() if k != "lease_owner"} ==
                {k: v for k, v in context.items() if k != "lease_owner"},
                "WITNESS_CURRENT_CONTEXT_MATCHES_SEALED_LAUNCH")
        lease = self.admission["canonical_lease"]
        owner = {"pid": lease["owner_pid"], "birth": lease["owner_birth"],
                 "device_inode": [os.major(lease["device"]), os.minor(lease["device"]),
                                  lease["inode"]]}
        require(current["lease_owner"] == owner and
                (role != "guardian" or context["lease_owner"] == owner),
                "WITNESS_ACTUAL_LEASE_OWNER")
        control = facts["control_admission_document"]
        require(hashlib.sha256(facts["control_admission_raw"].encode("utf-8")).hexdigest()
                == self.admission["control_admission_sha256"] and
                json.loads(facts["control_admission_raw"]) == control and
                control["boot_id"] == self.admission["boot_id"] and
                control["bootstrap_manifest_sha256"] ==
                    self.approval["control_source_manifest_sha256"] and
                control["status"] == "ADMITTED_DEDICATED_CONTROL_CGROUP" and
                control["target_after"]["memory.max"] == "68719476736" and
                control["target_after"]["memory.swap.max"] == "0" and
                control["target_after"]["cpuset.cpus.effective"] ==
                    self.admission["cpuset.cpus.effective"],
                "WITNESS_ACTUAL_FIXED_ENVELOPE")
        requester = context["requester"]
        require(self.receipts["controller"]["parent"] == requester and
                requester["pid"] == control["only_migrated_pid"] ==
                    control["target_after"]["pid"] and requester["birth"] ==
                    control["target_after"]["birth"] and
                process_birth(Path(proc) / str(requester["pid"])) == requester["birth"],
                "WITNESS_ACTUAL_ADMITTED_REQUESTER")
        info = self.boundary.context.stat()
        require(facts["public_context_identity"] == {"device": info.st_dev,
                "inode": info.st_ino}, "WITNESS_CURRENT_PUBLIC_CONTEXT_VFS")
        alias = target / "root" / launch["context_path"].lstrip("/")
        require(not os.access(alias.parent, os.W_OK, effective_ids=True) and
                not os.access(alias, os.W_OK, effective_ids=True),
                "WITNESS_NO_APPLICATION_WRITABLE_HOST_CONTEXT_ALIAS")
        require(context["benign_proof"]["sha256"] ==
                self.admission["own_benign_proof"]["sha256"] and
                self.benign_record["parent"] == context["parent"],
                "WITNESS_OWN_BENIGN_LAUNCH_BINDING")

    def own_benign(self):
        if self.benign_checked:
            return
        spec = self.admission["own_benign_proof"]
        path = self.boundary.context_file(spec["path"])
        value, actual = read_document(path)
        require(actual == spec["sha256"] and value["passed"] is True and
                value["status"] == "PASS_BOUNDED_BENIGN_RETIRED" and
                value["packet_manifest_sha256"] == self.admission["packet_manifest_sha256"]
                and value["boot_id"] == self.admission["boot_id"] and
                value["guardian_proof_sha256"] ==
                    self.admission["own_interruption_proof"]["sha256"] and
                type(spec["review_sha256"]) is str and
                re.fullmatch(r"[0-9a-f]{64}", spec["review_sha256"]) is not None,
                "WITNESS_OWN_REVIEWED_BENIGN")
        records = {}
        for name in ("result", "keeper", "guardian"):
            relative_path = str(path.parent.relative_to(self.boundary.context) /
                                relative(value[name + "_path"]))
            original = self.boundary.context_file(relative_path)
            record, digest_value = read_document(original)
            require(digest_value == value[name + "_sha256"],
                    "WITNESS_BENIGN_ORIGINAL_BYTES")
            records[name] = record
        require(records["result"]["passed"] and len(records["result"]["checks"]) == 3
                and len(records["result"]["versions"]) == 3 and
                records["guardian"]["retired"] and records["guardian"]["status"] == "RETIRED"
                and value["post_retirement_lease"]["acquired"] is True and
                not any(records["guardian"].get(k) for k in
                    ("error", "lease_proof_error", "receipt_error",
                     "original_parent_integrity_error", "client_retirement_error")) and
                uint(value["finished_ns"], "witness_benign_finished") <
                    self.receipts["controller"]["observed_ns"],
                "WITNESS_BENIGN_PHYSICALLY_RETIRED")
        total = 0
        actor_root = path.parent / relative(value["result_path"]).parent
        for row in records["result"]["raw_files"]:
            original = self.boundary.context_file(str((actor_root / relative(row["path"]))
                                      .relative_to(self.boundary.context)))
            total += uint(row["bytes"], "witness_benign_raw_bytes", 16 * 1024**2)
            require(total <= 32 * 1024**2 and original.stat().st_size == row["bytes"] and
                    digest(original) == row["sha256"], "WITNESS_WHOLE_BENIGN_ORIGINALS")
        self.benign_record = value
        self.benign_checked = True

    def verify_lease_fd(self, proc, record, lease, role):
        actor = self.admission[role]
        original = lease["owner_fd"] if role == "controller" else actor["lease_fd"]
        require(record["pid"] == actor["pid"] and record["fd"] == original,
                "WITNESS_EXACT_CANONICAL_FD_NUMBER")
        key = (actor["pid"], actor["birth"], original)
        require(key in self.table and self.table[key]["kind"] == "lease_fdinfo",
                "WITNESS_READONLY_LEASE_KERNEL_READER")
        row = self.table[key]
        number = self.frame.take(row["slot"])
        readonly_fd(number)
        info = os.fstat(number)
        require(file_identity(info) == row["identity"] and
                stat.S_ISREG(info.st_mode) and filesystem_type(number) == PROC_MAGIC
                and info.st_dev == Path(proc).stat().st_dev and
                row["kernel_path"] == "/proc/" + str(actor["pid"]) +
                    "/fdinfo/" + str(original) and
                os.readlink("/proc/self/fd/" + str(number)) == row["kernel_path"],
                "WITNESS_ACTUAL_NARROW_PROC_FDINFO_OBJECT")
        original_identity = file_identity(Path(lease["visible_path"]).stat())
        require(row["original_identity_before"] == row["original_identity_after"] ==
                original_identity, "WITNESS_CURRENT_LEASE_TARGET_IDENTITY")
        self.reopen_check(row, actor, original)
        raw = os.pread(number, 65537, 0)
        require(len(raw) <= 65536, "WITNESS_LEASE_FDINFO_BOUND")
        require(hashlib.sha256(raw).hexdigest() == row["sha256"],
                "WITNESS_CURRENT_PROC_FDINFO_SIGNED_SAMPLE")
        text = raw.decode("ascii")
        flags = [line.split()[1] for line in text.splitlines() if line.startswith("flags:")]
        inode = [line.split()[1] for line in text.splitlines() if line.startswith("ino:")]
        require(len(flags) == len(inode) == 1 and int(inode[0]) == lease["inode"] and
                int(flags[0], 8) & os.O_ACCMODE == os.O_RDONLY and
                not int(flags[0], 8) & os.O_PATH and
                len(flock_rows(text, lease["owner_pid"], lease["device"], lease["inode"])) == 1
                and process_birth(Path(proc) / str(actor["pid"])) == actor["birth"],
                "WITNESS_CURRENT_KERNEL_ROLE_FLOCK")
        self.fresh(record)
        require(0 <= time.monotonic_ns() - self.frame.payload["sample_started_ns"] <=
                FRESH_NS, "WITNESS_LEASE_SAMPLE_FRESH")

    def verify_bundle(self, proc, own, direct):
        if self.frame is not None:
            self.frame.close()
            self.frame = None
        self.own_benign()
        caller = self.caller(proc)
        view_sha = hashlib.sha256(canonical({"guardian_self": own,
                                            "host_direct": direct})).hexdigest()
        self.frame = self.channel.sample(self.binding(), caller, view_sha)
        payload = self.frame.payload
        self.enrolled_measurements()
        require(set(payload["roles"]) == {"controller", "guardian"},
                "WITNESS_COMPLETE_CONTROL_ROLE_SET")
        self.current_facts = payload["roles"]
        self.table = {}
        slots = set()
        for row in payload["fd_table"]:
            require(set(row) == {"slot", "pid", "birth", "original_fd", "kind",
                    "identity", "sha256", "original_fdinfo", "kernel_path",
                    "original_identity_before", "original_identity_after",
                    "witness_delivery_fd", "reopen_kernel_check"} and
                    row["kind"] in ("sealed", "runtime", "lease_fdinfo") and
                    type(row["slot"]) is int and row["slot"] not in slots,
                    "WITNESS_NARROW_DESCRIPTOR_ALLOWLIST")
            require(type(row["pid"]) is int and row["pid"] > 0 and
                    type(row["birth"]) is str and
                    re.fullmatch(r"[1-9][0-9]*", row["birth"]) and
                    type(row["original_fd"]) is int and 0 <= row["original_fd"] < 1_048_576
                    and type(row["sha256"]) is str and
                    re.fullmatch(r"[0-9a-f]{64}", row["sha256"]),
                    "WITNESS_DESCRIPTOR_TYPED_KERNEL_BINDING")
            key = (row["pid"], row["birth"], row["original_fd"])
            require(key not in self.table and (row["pid"], row["birth"]) in
                    {(self.admission[r]["pid"], self.admission[r]["birth"])
                     for r in ("controller", "guardian")},
                    "WITNESS_DESCRIPTOR_ACTOR_AND_ORIGINAL_NUMBER")
            slots.add(row["slot"])
            self.table[key] = row
        require(slots == set(self.frame.descriptors), "WITNESS_EXACT_RECEIVED_SLOT_SET")
        self.verify_witness(proc, payload["witness"], caller)
        result = {"controller": self.role("controller", proc,
                    direct["controller_actual_role"], direct["controller_role_direct"]),
                  "guardian": self.role("guardian", proc,
                    own["actual_role"], direct["guardian_role_direct"])}
        lease = self.admission["canonical_lease"]
        self.verify_lease_fd(proc, direct["direct_keeper_fd"], lease, "controller")
        self.verify_lease_fd(proc, own["self_lease_fd"], lease, "guardian")
        require(self.frame.used == set(self.frame.descriptors),
                "WITNESS_NO_EXTRA_OR_UNUSED_FDS")
        self.fresh(payload, "sample_started_ns")
        self.last_evidence = {"proof_sha256": self.frame.raw_sha,
                "enrollment_sha256": self.frame.enrollment_sha,
                "challenge": payload["challenge"],
                "signer_sequence": payload["signer_sequence"],
                "witness_pid": payload["witness"]["pid"],
                "witness_birth": payload["witness"]["birth"],
                "original_evidence_directory": str(self.evidence_directory),
                "scope": "Fresh enrolled kernel witness plus independent readonly FD validation"}
        self.write_evidence("%06d.validation.json" % self.channel.sequence,
            json.dumps(self.last_evidence, indent=2).encode("utf-8") + bytes([10]))
        result["kernel_witness"] = self.last_evidence
        return result

    def verify_witness(self, proc, observed, caller):
        actor = self.admission["kernel_witness"]
        target = Path(proc) / str(actor["pid"])
        raw = (target / "stat").read_text().rsplit(") ", 1)[1].split()
        enrolled = self.frame.enrollment["witness"]
        require(raw[19] == actor["birth"] and raw[0] not in ("Z", "X") and
                observed["pid"] == actor["pid"] == enrolled["pid"] and
                observed["birth"] == actor["birth"] == enrolled["birth"],
                "WITNESS_CURRENT_ENROLLED_PROCESS")
        require(observed["namespaces"] == enrolled["namespaces"] and
                observed["cgroup"]["inode"] == enrolled["cgroup"]["inode"] and
                observed["cgroup"]["device"] == enrolled["cgroup"]["device"],
                "WITNESS_ENROLLED_COLLECTOR_NAMESPACE_CGROUP")
        status = dict(line.split(":", 1) for line in (target / "status").read_text().splitlines()
                      if ":" in line)
        actual_security = {key: " ".join(status[key].split())
                           for key in self.witness_descriptor["security_profile"]}
        require(actual_security == self.witness_descriptor["security_profile"],
                "WITNESS_DIRECT_CURRENT_COLLECTOR_SECURITY")
        require(observed["security"] == self.witness_descriptor["security_profile"]
                and observed["lsm_profile"] == "unconfined" and observed["dumpable"] == 0
                and observed["executable"] == enrolled["executable"]
                and observed["source_manifest_sha256"] ==
                    self.witness_descriptor["source_manifest_sha256"]
                and observed["runtime_manifest_sha256"] ==
                    self.witness_descriptor["runtime_manifest_sha256"]
                and observed["pidfd_poll_readable"] is False,
                "WITNESS_CURRENT_LOCKED_IMMUTABLE_COLLECTOR")
        for name in ("memory.max", "memory.swap.max"):
            require(observed["cgroup"][name] ==
                    ("68719476736" if name == "memory.max" else "0"),
                    "WITNESS_COLLECTOR_BUDGET")
        shared = Path(self.admission["shared_ancestor_view"])
        leaf = shared / actor["shared_relative_cgroup"]
        require(not leaf.is_symlink() and leaf.resolve().is_relative_to(shared.resolve())
                and leaf.stat().st_ino == actor["cgroup_inode"],
                "WITNESS_COLLECTOR_SHARED_ANCESTOR")
        readonly(leaf, "cgroup2")
        for name, expected in (("memory.max", "68719476736"),
                               ("memory.swap.max", "0"),
                               ("cpuset.cpus.effective",
                                self.admission["cpuset.cpus.effective"])):
            require((leaf / name).read_text().strip() == expected,
                    "WITNESS_DIRECT_COLLECTOR_BUDGET")
        control_cgroup_mapping(Path(proc), actor, shared, leaf,
                               observed["cgroup"], "kernel_witness")
        require(observed["caller"] == caller and
                observed["caller_lsm_profile"] == "docker-default (enforce)" and
                observed["namespaces"]["time"] == caller["namespaces"]["time"],
                "WITNESS_ACTUAL_CALLER_AND_SHARED_CLOCK")
        self.witness_closed_state(observed, enrolled)
        require(process_birth(target) == actor["birth"],
                "WITNESS_CURRENT_COLLECTOR_BIRTH_AFTER")

    def witness_closed_state(self, observed, enrolled):
        """Compare fresh kernel self state with the root-measured closed launch."""
        measured = self.frame.enrollment["measurements"]
        lock = self.witness_documents["bootstrap_contract"]
        source_pin = lock["bootstrap_source"]
        roots = {(row["scope"], row["path"]): row for row in measured["sources"]}
        key = (source_pin["scope"], source_pin["path"])
        require(key in roots, "WITNESS_MEASURED_BOOTSTRAP_SOURCE")
        bootstrap_fd = uint(enrolled["bootstrap_fd"], "witness_bootstrap_fd", 1_048_575)
        launch_fd = uint(enrolled["launch_fd"], "witness_launch_fd", 1_048_575)
        require(bootstrap_fd != launch_fd and roots[key]["fd"] == bootstrap_fd,
                "WITNESS_MEASURED_CLOSED_LAUNCH_FDS")
        values = {"pinned_interpreter":
                  self.witness_documents["runtime_manifest"]["interpreter"],
                  "bootstrap_fd": bootstrap_fd, "context": enrolled["context_path"],
                  "launch_fd": launch_fd}
        expected = [part.format(**values) for part in lock["kernel_argv"]]
        kernel = observed["kernel"]
        for prefix, row in (("root", measured), ("current", kernel)):
            cmd = ("cmdline_before_hex" if prefix == "root" else "cmdline_hex")
            env = ("environ_before_hex" if prefix == "root" else "environ_hex")
            require(row[cmd] == row["cmdline_after_hex"] and
                    row[env] == row["environ_after_hex"] and
                    fields(bytes.fromhex(row[cmd])) == expected ==
                        enrolled["kernel_argv"] and
                    sorted(fields(bytes.fromhex(row[env]))) ==
                        sorted(k + "=" + v for k, v in lock["environment"].items()),
                    "WITNESS_ROOT_AND_CURRENT_KERNEL_CLOSED_ARGV_ENV")
        launch = measured["sealed_launch"]
        raw = launch["raw"].encode("utf-8")
        require(len(raw) <= 1_048_576 and launch["fd"] == launch_fd and
                launch["seals"] == 15 and launch["access_mode"] == "O_RDONLY" and
                launch["identity"]["bytes"] == len(raw) and
                launch["identity"] == launch["before_identity"] ==
                    launch["after_identity"] and
                hashlib.sha256(raw).hexdigest() == launch["sha256"],
                "WITNESS_ROOT_MEASURED_SEALED_LAUNCH_BYTES")
        value = decode_json(raw)
        require(value["format"] == "uwvm-sealed-witness-launch-v1" and
                value["binding"] == self.binding() and
                value["context_path"] == enrolled["context_path"] and
                all(value[name + "_sha256"] == self.witness_descriptor[name + "_sha256"]
                    for name in ("source_manifest", "runtime_manifest",
                                 "bootstrap_contract")),
                "WITNESS_ROOT_MEASURED_CLOSED_LAUNCH_SUBJECT")
        require(type(observed["sources"]) is list and
                observed["sources"] == measured["sources"],
                "WITNESS_CURRENT_COMPLETE_IMMUTABLE_SOURCE_FDS")
        before = kernel["stat_before"].rsplit(") ", 1)[1].split()
        after = kernel["stat_after"].rsplit(") ", 1)[1].split()
        require(before[19] == after[19] == enrolled["birth"] and
                before[0] not in ("Z", "X") and after[0] not in ("Z", "X") and
                kernel["exe_before"] == kernel["exe_after"] ==
                    enrolled["executable"]["identity"],
                "WITNESS_FRESH_CURRENT_PROCESS_EXE")
        runtimes = {row["path"]: row for row in measured["runtime"]}
        require(type(kernel["maps_text"]) is str and
                len(kernel["maps_text"]) <= 2 * 1024**2,
                "WITNESS_CURRENT_COLLECTOR_MAP_BOUND")
        images = []
        for line in kernel["maps_text"].splitlines():
            parts = line.split(None, 5)
            require(len(parts) >= 5, "WITNESS_CURRENT_COLLECTOR_MAP_SCHEMA")
            if len(parts) < 6 or not parts[5].startswith("/"):
                require("x" not in parts[1] or len(parts) == 6 and
                        parts[5] in ("[vdso]", "[vsyscall]"),
                        "WITNESS_CURRENT_COLLECTOR_UNKNOWN_EXEC_MAP")
                continue
            require(parts[5] in runtimes, "WITNESS_CURRENT_COLLECTOR_CLOSED_RUNTIME")
            row = runtimes[parts[5]]
            identity = row["identity"]
            device = parts[3].split(":")
            require((int(device[0], 16), int(device[1], 16), int(parts[4])) ==
                    (os.major(identity["device"]), os.minor(identity["device"]),
                     identity["inode"]), "WITNESS_CURRENT_COLLECTOR_MAP_VFS")
            images.append({"path": parts[5], "permissions": parts[1],
                "offset": parts[2], "device": identity["device"],
                "inode": identity["inode"], "sha256": row["sha256"]})
        require(images == observed["loaded_images"] == measured["loaded_images"],
                "WITNESS_CURRENT_COMPLETE_COLLECTOR_IMAGES")

    def finish_sample(self):
        # Guard invokes this in finally, including partial/failed verification.
        if self.frame is not None:
            self.frame.close()
            self.frame = None
        self.table = {}
        self.current_facts = {}

    def close(self):
        self.channel.close()
        self.finish_sample()
        if self.evidence_dirfd is not None:
            os.close(self.evidence_dirfd)
            self.evidence_dirfd = None
