"""V3 read-only FD transport and OS-root enrolled ephemeral witness verifier.

No producer UID, pathname, JSON file or supplied public key is an authority.
The issuer profile must first be installed in the SDK's explicit approval set.
"""
from pathlib import Path
import array
import ctypes
import fcntl
import hashlib
import hmac
import json
import os
import re
import socket
import stat
import struct
import time

from runtime_boundary import require, readonly, uint

ENROLL_MAGIC = b"UWKWENR3"
PROOF_MAGIC = b"UWKWPRO3"
SIGN_DOMAIN = b"uwvm-sdk-kernel-witness-v3\x00"
MAX_DOCUMENT = 2 * 1024 * 1024
MAX_FDS = 512
BATCH_FDS = 64
MAX_BATCHES = 8
FRESH_NS = 500_000_000
EXCHANGE_NS = 250_000_000
MAX_ENROLLMENT_NS = 1_800_000_000_000
IDENTITY = ("device", "inode", "bytes", "mode", "uid", "gid", "mtime_ns", "ctime_ns")
PROC_MAGIC = 0x9FA0
TMPFS_MAGIC = 0x01021994
HEX64 = re.compile(r"[0-9a-f]{64}")


def file_identity(info):
    return dict(zip(IDENTITY, (info.st_dev, info.st_ino, info.st_size,
        stat.S_IMODE(info.st_mode), info.st_uid, info.st_gid,
        info.st_mtime_ns, info.st_ctime_ns)))


def canonical(value):
    return json.dumps(value, sort_keys=True, separators=(",", ":"),
                      ensure_ascii=True, allow_nan=False).encode("ascii")


def document(raw):
    require(len(raw) <= MAX_DOCUMENT, "WITNESS_DOCUMENT_BOUND")
    def unique(pairs):
        result = {}
        for key, value in pairs:
            require(key not in result, "WITNESS_DUPLICATE_JSON_KEY")
            result[key] = value
        return result
    def invalid(value):
        raise ValueError("Noninteger witness JSON: " + value)
    value = json.loads(raw, object_pairs_hook=unique,
                       parse_float=invalid, parse_constant=invalid)
    require(type(value) is dict and canonical(value) == raw,
            "WITNESS_CANONICAL_JSON_OBJECT")
    return value


def readonly_fd(number):
    flags = fcntl.fcntl(number, fcntl.F_GETFL)
    require(flags & os.O_ACCMODE == os.O_RDONLY and not flags & os.O_PATH,
            "WITNESS_RECEIVED_FD_READONLY")
    require(fcntl.fcntl(number, fcntl.F_GETFD) & fcntl.FD_CLOEXEC,
            "WITNESS_RECEIVED_FD_CLOEXEC")


def filesystem_type(number):
    # Linux fstatfs starts with a native long f_type; oversized aligned storage
    # avoids a libc-specific struct layout. The candidate requires Linux.
    storage = (ctypes.c_long * 64)()
    libc = ctypes.CDLL(None, use_errno=True)
    call = libc.fstatfs
    call.argtypes = (ctypes.c_int, ctypes.c_void_p)
    call.restype = ctypes.c_int
    result = call(number, ctypes.byref(storage))
    require(result == 0, "WITNESS_KERNEL_FSTATFS")
    return storage[0] & ((1 << (8 * ctypes.sizeof(ctypes.c_long))) - 1)


def read_sealed(number, magic, *, root_owned=False, signature=False):
    readonly_fd(number)
    before = os.fstat(number)
    require(stat.S_ISREG(before.st_mode) and filesystem_type(number) == TMPFS_MAGIC
            and fcntl.fcntl(number, fcntl.F_GET_SEALS) == 15,
            "WITNESS_IMMUTABLE_MEMFD")
    if root_owned:
        require(before.st_uid == before.st_gid == 0
                and stat.S_IMODE(before.st_mode) == 0o400,
                "WITNESS_OS_ROOT_ENROLLMENT_OBJECT")
    else:
        require(before.st_uid == before.st_gid == 1000,
                "WITNESS_PROOF_OBJECT_OWNER")
    tail = 384 if signature else 0
    require(12 + tail <= before.st_size <= 12 + MAX_DOCUMENT + tail,
            "WITNESS_SEALED_FRAME_BOUND")
    raw = os.pread(number, before.st_size + 1, 0)
    require(len(raw) == before.st_size and raw[:8] == magic,
            "WITNESS_SEALED_FRAME_MAGIC")
    length, = struct.unpack_from("<I", raw, 8)
    require(length <= MAX_DOCUMENT and len(raw) == 12 + length + tail,
            "WITNESS_SEALED_FRAME_LENGTH")
    require(file_identity(os.fstat(number)) == file_identity(before),
            "WITNESS_SEALED_FRAME_STABILITY")
    return document(raw[12:12 + length]), raw[:12 + length], raw[12 + length:]


def mgf1(seed, length):
    require(0 <= length <= 384, "WITNESS_PSS_MASK_BOUND")
    return b"".join(hashlib.sha256(seed + index.to_bytes(4, "big")).digest()
                    for index in range((length + 31) // 32))[:length]


def verify_pss3072(public_key, message, signature):
    """RFC8017 PSS: RSA3072/e65537, SHA256/MGF1-SHA256, exactly32 salt bytes."""
    require(type(public_key) is dict and set(public_key) == {"n_hex", "e"}
            and public_key["e"] == 65537
            and type(public_key["n_hex"]) is str
            and re.fullmatch(r"[0-9a-f]{768}", public_key["n_hex"]),
            "WITNESS_ENROLLED_RSA_KEY_SCHEMA")
    modulus = int(public_key["n_hex"], 16)
    require(modulus.bit_length() == 3072 and modulus & 1
            and type(signature) is bytes and len(signature) == 384,
            "WITNESS_RSA_MODULUS_SIGNATURE_EXTENT")
    value = int.from_bytes(signature, "big")
    require(value < modulus, "WITNESS_RSA_SIGNATURE_RANGE")
    encoded = pow(value, 65537, modulus).to_bytes(384, "big")
    require(encoded[-1] == 0xBC and not encoded[0] & 0x80,
            "WITNESS_PSS_TRAILER_TOP_BIT")
    masked, hashed = encoded[:351], encoded[351:383]
    mask = mgf1(hashed, 351)
    data = bytearray(a ^ b for a, b in zip(masked, mask))
    data[0] &= 0x7F
    require(bytes(data[:318]) == bytes(318) and data[318] == 1,
            "WITNESS_PSS_EXACT_PADDING")
    expected = hashlib.sha256(bytes(8) + hashlib.sha256(message).digest()
                              + bytes(data[319:351])).digest()
    require(hmac.compare_digest(hashed, expected), "WITNESS_SIGNATURE")


class WitnessFrame:
    def __init__(self, enrollment, payload, descriptors, raw_sha, enrollment_sha,
                 enrollment_raw, proof_raw):
        self.enrollment, self.payload = enrollment, payload
        self.descriptors, self.raw_sha = descriptors, raw_sha
        self.enrollment_sha = enrollment_sha
        self.enrollment_raw, self.proof_raw = enrollment_raw, proof_raw
        self.used = set()

    def take(self, slot):
        require(type(slot) is int and slot in self.descriptors,
                "WITNESS_COMPLETE_FD_SLOT")
        self.used.add(slot)
        return self.descriptors[slot]

    def close(self):
        for descriptor in self.descriptors.values():
            os.close(descriptor)
        self.descriptors.clear()


class WitnessChannel:
    """An authenticated metadata-only channel; it grants no ROS capability."""
    def __init__(self, boundary, descriptor, original_callback):
        self.boundary, self.descriptor = boundary, descriptor
        self.original_callback = original_callback
        self.sequence = 0
        self.signer_sequence = 0
        self.certificate_sha = None
        self.socket = None

    def connect(self):
        setting = self.boundary.admission["kernel_witness"]
        relative = Path(setting["socket_relative"])
        require(not relative.is_absolute() and relative.parts
                and not any(p in (".", "..") for p in relative.parts),
                "WITNESS_ENDPOINT_RELATIVE")
        endpoint = self.boundary.context / relative
        require(endpoint.resolve().is_relative_to(self.boundary.context.resolve())
                and stat.S_ISSOCK(endpoint.lstat().st_mode)
                and not endpoint.is_symlink(), "WITNESS_ENDPOINT_SOCKET_ORIGIN")
        for parent in endpoint.parents:
            require(not parent.is_symlink(), "WITNESS_ENDPOINT_SYMLINK")
            if parent == self.boundary.context:
                break
        readonly(endpoint.parent)
        connection = socket.socket(socket.AF_UNIX,
                                   socket.SOCK_SEQPACKET | socket.SOCK_CLOEXEC)
        try:
            connection.settimeout(EXCHANGE_NS / 1_000_000_000)
            connection.connect(str(endpoint))
            peer = connection.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED, 12)
            _, uid, gid = struct.unpack("3i", peer)
            require(uid == gid == 1000, "WITNESS_CHANNEL_PEER_CREDENTIALS")
            label = connection.getsockopt(socket.SOL_SOCKET, 31, 4096).rstrip(b"\x00")
            require(label.decode("ascii") == self.descriptor["lsm_profile"],
                    "WITNESS_CHANNEL_KERNEL_LSM_LABEL")
            # PID may be0 when the host peer is outside the caller PID namespace.
            # UID/peer label are redundant checks, never the trust anchor.
        except BaseException:
            connection.close()
            raise
        self.socket = connection

    def sample(self, binding, caller, view_sha256):
        if self.socket is None:
            self.connect()
        self.sequence += 1
        challenge = os.urandom(32).hex()
        started = time.monotonic_ns()
        request = {"format": "uwvm-kernel-witness-challenge-v1",
                   "challenge": challenge, "request_sequence": self.sequence,
                   "binding": binding, "caller": caller,
                   "live_view_sha256": view_sha256}
        request_raw = canonical(request)
        require(len(request_raw) <= 16384, "WITNESS_REQUEST_BOUND")
        request_sha = hashlib.sha256(request_raw).hexdigest()
        descriptors, overhead = {}, []
        enrollment = payload = None
        first = None
        try:
            self.socket.sendall(request_raw)
            for index in range(MAX_BATCHES):
                require(time.monotonic_ns() - started <= EXCHANGE_NS,
                        "WITNESS_EXCHANGE_DEADLINE")
                raw, ancillary, flags, _ = self.socket.recvmsg(
                    16385, socket.CMSG_SPACE((BATCH_FDS + 2) * 4),
                    socket.MSG_CMSG_CLOEXEC)
                received, invalid_ancillary = [], False
                # Kernel-delivered rights are collected before rejecting any
                # ancillary entry, so all installed FDs close on every error.
                for level, kind, data in ancillary:
                    if level == socket.SOL_SOCKET and kind == socket.SCM_RIGHTS:
                        values = array.array("i")
                        usable = len(data) - len(data) % values.itemsize
                        values.frombytes(data[:usable])
                        received.extend(values)
                        invalid_ancillary |= usable != len(data)
                    else:
                        invalid_ancillary = True
                overhead.extend(received)
                self.original_callback(index, raw, received, flags)
                require(not invalid_ancillary, "WITNESS_ANCILLARY_TYPE_FRAME")
                require(raw and not flags & (socket.MSG_TRUNC | socket.MSG_CTRUNC)
                        and len(raw) <= 16384, "WITNESS_COMPLETE_SEQPACKET")
                header = document(raw)
                require(set(header) == {"format", "request_sha256", "batch_index",
                        "batch_count", "total_slots", "slots", "enrollment_sha256",
                        "proof_sha256"} and header["format"] ==
                        "uwvm-kernel-witness-fd-batch-v1"
                        and header["request_sha256"] == request_sha
                        and header["batch_index"] == index,
                        "WITNESS_BATCH_SUBJECT_ORDER")
                count = uint(header["batch_count"], "witness_batches", MAX_BATCHES)
                total = uint(header["total_slots"], "witness_slots", MAX_FDS)
                require(count > 0 and type(header["slots"]) is list
                        and len(header["slots"]) <= BATCH_FDS
                        and all(type(s) is int and 0 <= s < total
                                and s not in descriptors for s in header["slots"])
                        and len(set(header["slots"])) == len(header["slots"]),
                        "WITNESS_BATCH_SLOT_SET")
                if index == 0:
                    require(len(received) == len(header["slots"]) + 2,
                            "WITNESS_FIRST_BATCH_FDS")
                    first = {k: v for k, v in header.items()
                             if k not in ("slots", "batch_index")}
                    enrollment, eraw, _ = read_sealed(
                        received[0], ENROLL_MAGIC, root_owned=True)
                    payload, praw, signature = read_sealed(
                        received[1], PROOF_MAGIC, signature=True)
                    require(hashlib.sha256(eraw).hexdigest() ==
                            header["enrollment_sha256"]
                            and hashlib.sha256(praw + signature).hexdigest() ==
                            header["proof_sha256"], "WITNESS_BATCH_IMMUTABLE_OBJECTS")
                    self.enrollment(enrollment, binding)
                    enrollment_sha = hashlib.sha256(eraw).hexdigest()
                    require(self.certificate_sha is None or
                            self.certificate_sha == enrollment_sha,
                            "WITNESS_ENROLLMENT_KEY_CHANGED")
                    require(payload["enrollment_sha256"] == enrollment_sha,
                            "WITNESS_PROOF_ENROLLMENT")
                    verify_pss3072(enrollment["public_key"],
                                   SIGN_DOMAIN + praw, signature)
                    self.proof(payload, request, request_sha, started)
                    received = received[2:]
                else:
                    require({k: v for k, v in header.items()
                             if k not in ("slots", "batch_index")} == first
                            and len(received) == len(header["slots"]),
                            "WITNESS_BATCH_CONTINUITY")
                for slot, descriptor in zip(header["slots"], received):
                    readonly_fd(descriptor)
                    descriptors[slot] = descriptor
                if index + 1 == count:
                    require(set(descriptors) == set(range(total))
                            and len(payload["fd_table"]) == total,
                            "WITNESS_WHOLE_FD_TABLE")
                    require(time.monotonic_ns() - started <= EXCHANGE_NS,
                            "WITNESS_EXCHANGE_COMPLETE_DEADLINE")
                    frame = WitnessFrame(enrollment, payload, descriptors,
                                         header["proof_sha256"], enrollment_sha,
                                         eraw, praw + signature)
                    for descriptor in overhead:
                        if descriptor not in descriptors.values():
                            os.close(descriptor)
                    self.certificate_sha = enrollment_sha
                    self.signer_sequence = payload["signer_sequence"]
                    return frame
            require(False, "WITNESS_BATCH_LIMIT")
        except BaseException:
            for descriptor in set(overhead):
                os.close(descriptor)
            self.socket.close()
            self.socket = None
            raise

    def enrollment(self, value, binding):
        require(value["format"] == "uwvm-os-root-witness-enrollment-v1"
                and value["issuer_profile_sha256"] ==
                    self.descriptor["issuer_profile_sha256"]
                and value["witness_descriptor_sha256"] ==
                    self.descriptor["descriptor_sha256"]
                and value["binding"] == binding, "WITNESS_ROOT_ENROLLMENT_PROFILE")
        now = time.monotonic_ns()
        issued = uint(value["issued_monotonic_ns"], "witness_enrolled")
        deadline = uint(value["deadline_monotonic_ns"], "witness_deadline")
        require(issued <= now <= deadline and 0 < deadline - issued <= MAX_ENROLLMENT_NS,
                "WITNESS_ENROLLMENT_LIFETIME")
        witness = value["witness"]
        require(witness["pid"] == self.boundary.admission["kernel_witness"]["pid"]
                and witness["birth"] ==
                    self.boundary.admission["kernel_witness"]["birth"]
                and witness["source_manifest_sha256"] ==
                    self.descriptor["source_manifest_sha256"]
                and witness["runtime_manifest_sha256"] ==
                    self.descriptor["runtime_manifest_sha256"]
                and witness["bootstrap_contract_sha256"] ==
                    self.descriptor["bootstrap_contract_sha256"]
                and witness["dumpable"] == 0
                and witness["key_created_after_nondumpable"] is True
                and witness["post_lock_exec_fork_dumpable_change_denied"] is True,
                "WITNESS_MEASURED_LOCKED_KEY_BOOTSTRAP")
        require(witness["security"] == self.descriptor["security_profile"]
                and witness["lsm_profile"] == self.descriptor["lsm_profile"],
                "WITNESS_ENROLLED_SECURITY")

    def proof(self, value, request, request_sha, started):
        require(value["format"] == "uwvm-fresh-kernel-witness-proof-v1"
                and value["request_sha256"] == request_sha
                and value["challenge"] == request["challenge"]
                and value["request_sequence"] == self.sequence
                and value["binding"] == request["binding"]
                and value["caller"] == request["caller"]
                and value["live_view_sha256"] == request["live_view_sha256"],
                "WITNESS_FRESH_CHALLENGE_SUBJECT_CALLER")
        now = time.monotonic_ns()
        before = uint(value["sample_started_ns"], "witness_sample_start")
        finished = uint(value["sample_finished_ns"], "witness_sample_finish")
        signed = uint(value["signed_ns"], "witness_signed")
        require(started <= before <= finished <= signed <= now
                and now - before <= FRESH_NS, "WITNESS_FRESH_KERNEL_SAMPLE")
        require(uint(value["signer_sequence"], "witness_signer_sequence") >
                self.signer_sequence, "WITNESS_SIGNER_SEQUENCE")
        require(type(value["fd_table"]) is list and len(value["fd_table"]) <= MAX_FDS,
                "WITNESS_DESCRIPTOR_TABLE_BOUND")

    def close(self):
        if self.socket is not None:
            self.socket.close()
            self.socket = None
