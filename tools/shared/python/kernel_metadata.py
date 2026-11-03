"""Linux kernel-descriptor supplement for an enrolled, closed SDK bootstrap.

This module consumes actual kernel FDs; it never enrolls a producer or authorizes
an application. Expectations must come from the source-approved outer bootstrap,
not a scene, an application, or the message being checked. The existing live
boundary's source/runtime, cgroup, security, interruption and private VM-event
requirements are unchanged. No new admission version is enabled here.
"""
from dataclasses import dataclass
import array
import ctypes
import fcntl
import hashlib
import json
import os
import platform
import re
import select
import socket
import stat
import struct
import time

FRESH_NS = 500_000_000
PROC_MAGIC, NSFS_MAGIC, TMPFS_MAGIC = 0x9FA0, 0x6E736673, 0x01021994
NS_TYPES = {'user': 0x10000000, 'pid': 0x20000000, 'mnt': 0x00020000, 'time': 0x80}
NS_GET_NSTYPE = 0xB703
FORMAT = 'uwvm-sdk-kernel-metadata-v1'
MAX_PACKET, MAX_FDS = 16384, 32


class MetadataBlocked(RuntimeError):
    """Poison this enrollment before invoking its owned-tree fail-stop callback."""


def require(condition, reason):
    if not condition:
        raise MetadataBlocked('BLOCKED_KERNEL_METADATA_' + reason)


def integer(value, name, minimum=0):
    require(type(value) is int and minimum <= value < (1 << 64), name)
    return value


def unique_json(raw):
    def unique(pairs):
        result = {}
        for key, value in pairs:
            require(key not in result, 'DUPLICATE_KEY')
            result[key] = value
        return result
    value = json.loads(raw, object_pairs_hook=unique,
                       parse_constant=lambda _: (_ for _ in ()).throw(ValueError('Nonfinite JSON')))
    require(type(value) is dict, 'OBJECT')
    return value


def fs_type(fd):
    # This is the verified Linux x86-64 libc statfs ABI. Other hosts fail closed
    # until their actual layout has been qualified; no readlink-only fallback.
    require(os.name == 'posix' and platform.system() == 'Linux' and
            platform.machine() == 'x86_64' and ctypes.sizeof(ctypes.c_long) == 8 and
            ctypes.sizeof(ctypes.c_void_p) == 8, 'STATFS_ABI_UNQUALIFIED')
    words = (ctypes.c_long * 32)()
    libc = ctypes.CDLL(None, use_errno=True)
    call = libc.fstatfs
    call.argtypes, call.restype = [ctypes.c_int, ctypes.c_void_p], ctypes.c_int
    if call(fd, ctypes.byref(words)) != 0:
        raise OSError(ctypes.get_errno(), 'fstatfs')
    return words[0]


def readonly_fd(fd):
    flags = fcntl.fcntl(fd, fcntl.F_GETFL)
    require(flags & os.O_ACCMODE == os.O_RDONLY and not flags & os.O_PATH, 'FD_NOT_READONLY')
    require(fcntl.fcntl(fd, fcntl.F_GETFD) & fcntl.FD_CLOEXEC, 'FD_NOT_CLOEXEC')


def read_kernel(fd, limit=65536):
    # pread offset zero asks the real procfs seq_file for a fresh sample. The
    # descriptor remains bound to the original task even if its PID is reused.
    raw = os.pread(fd, limit + 1, 0)
    require(0 < len(raw) <= limit, 'KERNEL_READ_EXTENT')
    return raw.decode('ascii', errors='strict')


@dataclass(frozen=True)
class Actor:
    pid: int
    birth: str
    lease_fd: int


@dataclass(frozen=True)
class Descriptor:
    role: str
    device: int
    inode: int


@dataclass(frozen=True)
class Enrollment:
    nonce: str
    admission_sha256: str
    boot_id: str
    peer_uid: int
    peer_gid: int
    controller: Actor
    guardian: Actor
    lease_device: int
    lease_inode: int
    descriptors: tuple[Descriptor, ...]

    def validate(self):
        require(type(self.nonce) is str and re.fullmatch('[0-9a-f]{32}', self.nonce), 'NONCE')
        require(type(self.admission_sha256) is str and re.fullmatch('[0-9a-f]{64}', self.admission_sha256), 'ADMISSION_DIGEST')
        require(type(self.boot_id) is str and re.fullmatch('[0-9a-f-]{36}', self.boot_id), 'BOOT')
        integer(self.peer_uid, 'PEER_UID'); integer(self.peer_gid, 'PEER_GID')
        integer(self.lease_device, 'LEASE_DEVICE', 1); integer(self.lease_inode, 'LEASE_INODE', 1)
        require(type(self.controller) is Actor and type(self.guardian) is Actor, 'ACTOR_TYPE')
        require(self.controller.pid != self.guardian.pid, 'INDEPENDENT_GUARDIAN')
        for actor in (self.controller, self.guardian):
            integer(actor.pid, 'PID', 1); integer(actor.lease_fd, 'LEASE_FD')
            require(type(actor.birth) is str and re.fullmatch('[1-9][0-9]*', actor.birth), 'BIRTH')
        require(type(self.descriptors) is tuple, 'IMMUTABLE_DESCRIPTORS')
        roles = ['proc.locks']
        for actor in ('controller', 'guardian'):
            roles += [actor + '.stat', actor + '.fdinfo']
            roles += [actor + '.ns.' + name for name in NS_TYPES]
        require(tuple(row.role for row in self.descriptors) == tuple(roles), 'DESCRIPTOR_ROLES')
        for row in self.descriptors:
            require(type(row) is Descriptor, 'DESCRIPTOR_TYPE')
            integer(row.device, 'DESCRIPTOR_DEVICE', 1); integer(row.inode, 'DESCRIPTOR_INODE', 1)


def verify_sealed_blob(fd, expected_sha256, maximum_bytes):
    """Verify an actual immutable source/manifest blob, not closure completeness.

    The approved producer still owns the full dependency census, immutable
    runtime installation and execution from that exact closure. A caller cannot
    turn a self-created sealed blob into source approval using this function.
    """
    readonly_fd(fd)
    info = os.fstat(fd)
    require(stat.S_ISREG(info.st_mode) and fs_type(fd) == TMPFS_MAGIC, 'SOURCE_BLOB_TYPE')
    require(fcntl.fcntl(fd, fcntl.F_GET_SEALS) & 15 == 15, 'SOURCE_BLOB_SEALS')
    require(type(expected_sha256) is str and re.fullmatch('[0-9a-f]{64}', expected_sha256), 'SOURCE_BLOB_DIGEST')
    integer(maximum_bytes, 'SOURCE_BLOB_QUOTA', 1)
    require(0 < info.st_size <= maximum_bytes, 'SOURCE_BLOB_EXTENT')
    digest = hashlib.sha256()
    offset = 0
    while offset < info.st_size:
        chunk = os.pread(fd, min(1048576, info.st_size - offset), offset)
        require(bool(chunk), 'SOURCE_BLOB_SHORT_READ')
        digest.update(chunk); offset += len(chunk)
    require(digest.hexdigest() == expected_sha256, 'SOURCE_BLOB_BYTES')
    return {'sha256': expected_sha256, 'bytes': info.st_size, 'seals': 15}


def protect_metadata_parent():
    """Keep metadata in a nondumpable bootstrap, close_fds at application exec.

    All five capability sets must already be zero; setuid/ptrace and foreign
    control sockets remain prohibited by the producer's actual sandbox policy.
    """
    libc = ctypes.CDLL(None, use_errno=True)
    call = libc.prctl
    call.argtypes = [ctypes.c_int, ctypes.c_ulong, ctypes.c_ulong, ctypes.c_ulong, ctypes.c_ulong]
    call.restype = ctypes.c_int
    if call(4, 0, 0, 0, 0) != 0:
        raise OSError(ctypes.get_errno(), 'PR_SET_DUMPABLE')
    require(call(3, 0, 0, 0, 0) == 0, 'BOOTSTRAP_DUMPABLE')


class KernelMetadataSession:
    """Own the private channel and metadata FDs, poison on any failed sample.

    fail_stop is required and must retire only this deployment's owned tree.
    The outer independent guardian must also retire it on bootstrap loss or
    SIGSTOP. guard() must run before launch/host effects and at least every500ms;
    a late caller cannot restore a previously unobserved running enrollment.
    """
    def __init__(self, channels, enrollment, fail_stop):
        self.channels = dict(channels) if type(channels) is dict else {}
        self.enrollment = enrollment
        self.fds, self.pidfds = {}, {}
        self.invalid, self.reason, self.cleanup_error = False, None, None
        self.last_ns, self.sequence = None, 0
        require(callable(fail_stop), 'OWNED_FAIL_STOP_REQUIRED')
        self.fail_stop = fail_stop
        try:
            require(type(enrollment) is Enrollment, 'ENROLLMENT_TYPE')
            enrollment.validate()
            require(set(self.channels) == {'controller','guardian'} and
                    len({id(c) for c in self.channels.values()}) == 2, 'TWO_INDEPENDENT_CHANNELS')
            for role, channel in self.channels.items():
                require(type(channel) is socket.socket and channel.family == socket.AF_UNIX and
                        channel.getsockopt(socket.SOL_SOCKET, socket.SO_TYPE) == socket.SOCK_SEQPACKET, 'CHANNEL_TYPE')
                require(not channel.get_inheritable(), 'CHANNEL_CLOEXEC')
                channel.setsockopt(socket.SOL_SOCKET, socket.SO_PASSCRED, 1)
                channel.settimeout(.4)
                peer = struct.unpack('3i', channel.getsockopt(socket.SOL_SOCKET, socket.SO_PEERCRED, 12))
                require(peer == (getattr(enrollment,role).pid, enrollment.peer_uid, enrollment.peer_gid), 'CONNECTED_PEER_' + role)
            for role in ('controller', 'guardian'):
                actor = getattr(enrollment, role)
                fd = os.pidfd_open(actor.pid)
                self.pidfds[role] = fd
                info = open('/proc/self/fdinfo/' + str(fd), encoding='ascii').read()
                fields = dict(line.split(':', 1) for line in info.splitlines() if ':' in line)
                require(fields.get('Pid', '').strip() == str(actor.pid), 'PIDFD_PID_NAMESPACE')
        except BaseException as error:
            self._invalidate(error)
            raise

    def close(self):
        for fd in (*self.fds.values(), *self.pidfds.values()):
            try: os.close(fd)
            except OSError: pass
        self.fds.clear(); self.pidfds.clear()
        for channel in self.channels.values():
            if type(channel) is socket.socket: channel.close()

    def _invalidate(self, error):
        if self.invalid: return
        self.invalid, self.reason = True, str(error)
        self.close()
        try: self.fail_stop(self.reason)
        except BaseException as cleanup: self.cleanup_error = repr(cleanup)

    def _receive(self, role, challenge, first):
        received = []
        try:
            channel = self.channels[role]
            remaining = self.deadline_ns - time.monotonic_ns()
            require(remaining > 0, 'SAMPLE_DEADLINE')
            channel.settimeout(remaining / 1e9)
            raw, ancillary, flags, _ = channel.recvmsg(MAX_PACKET,
                socket.CMSG_SPACE(MAX_FDS * array.array('i').itemsize) + socket.CMSG_SPACE(12), socket.MSG_CMSG_CLOEXEC)
            credentials, rights, unknown = [], 0, False
            for level, kind, data in ancillary:
                if level == socket.SOL_SOCKET and kind == socket.SCM_RIGHTS:
                    rights += 1
                    ints = array.array('i')
                    ints.frombytes(data[:len(data) - len(data) % ints.itemsize])
                    received.extend(ints)
                    unknown = unknown or len(data) % ints.itemsize != 0
                elif level == socket.SOL_SOCKET and kind == socket.SCM_CREDENTIALS and len(data) == 12:
                    credentials.append(struct.unpack('3i', data))
                else:
                    unknown = True
            require(raw and not flags & (socket.MSG_CTRUNC | socket.MSG_TRUNC), 'TRUNCATED_OR_CLOSED_PACKET')
            require(not unknown and credentials == [(getattr(self.enrollment,role).pid, self.enrollment.peer_uid, self.enrollment.peer_gid)], 'MESSAGE_PEER_' + role)
            roles = [row.role for row in self.enrollment.descriptors] if first else []
            require(len(received) == len(roles) and rights == (1 if first else 0), 'EXTRA_OR_MISSING_FDS')
            value = unique_json(raw)
            expected = {'format':FORMAT, 'role':role, 'nonce':self.enrollment.nonce,
                        'admission_sha256':self.enrollment.admission_sha256, 'boot_id':self.enrollment.boot_id,
                        'sequence':self.sequence, 'challenge':challenge, 'descriptor_roles':roles}
            require(type(value.get('sequence')) is int and value == expected, 'CHALLENGE_BINDING')
            if first:
                for pin, fd in zip(self.enrollment.descriptors, received): self._validate_fd(pin, fd)
                self.fds = dict(zip(roles, received)); received = []
        finally:
            for fd in received:
                try: os.close(fd)
                except OSError: pass

    def _validate_fd(self, pin, fd):
        readonly_fd(fd)
        info = os.fstat(fd)
        require((info.st_dev, info.st_ino) != (self.enrollment.lease_device, self.enrollment.lease_inode), 'ACTUAL_LEASE_FD_LEAK')
        require((info.st_dev, info.st_ino) == (pin.device, pin.inode), 'FD_ORIGIN_' + pin.role)
        if '.ns.' in pin.role:
            namespace = pin.role.rsplit('.', 1)[1]
            require(fs_type(fd) == NSFS_MAGIC and fcntl.ioctl(fd, NS_GET_NSTYPE) == NS_TYPES[namespace], 'NAMESPACE_' + pin.role)
        else:
            require(stat.S_ISREG(info.st_mode) and fs_type(fd) == PROC_MAGIC, 'PROCFS_' + pin.role)
            if pin.role == 'proc.locks':
                source = '/proc/locks'
            else:
                role, kind = pin.role.split('.')
                actor = getattr(self.enrollment, role)
                source = '/proc/' + str(actor.pid) + '/' + ('stat' if kind == 'stat' else 'fdinfo/' + str(actor.lease_fd))
            # Additional kernel-origin check; procfs type, inode and bytes are
            # also mandatory. A lookalike symlink/string can satisfy none alone.
            require(os.readlink('/proc/self/fd/' + str(fd)) == source, 'PROC_SOURCE_' + pin.role)

    def _birth(self, role):
        text = read_kernel(self.fds[role + '.stat'])
        head, tail = text.rsplit(') ', 1)
        fields = tail.split()
        actor = getattr(self.enrollment, role)
        require(head.split(' ', 1)[0] == str(actor.pid) and len(fields) > 19 and
                fields[19] == actor.birth and fields[0] not in ('Z','X','x','T','t'), 'LIVE_BIRTH_' + role)

    def _lock(self, text, fdinfo=False):
        owner = self.enrollment.controller.pid
        key = (os.major(self.enrollment.lease_device), os.minor(self.enrollment.lease_device), self.enrollment.lease_inode)
        matches = []
        for line in text.splitlines():
            fields = line.split()
            if fdinfo:
                if not fields or fields[0] != 'lock:': continue
                fields = fields[1:]
            if len(fields) != 8 or fields[1:4] != ['FLOCK','ADVISORY','WRITE']: continue
            pieces = fields[5].split(':')
            if len(pieces) == 3 and (int(pieces[0],16),int(pieces[1],16),int(pieces[2])) == key:
                require(fields[4] == str(owner) and fields[6:] == ['0','EOF'], 'EXCLUSIVE_LEASE_OWNER_RANGE')
                matches.append(tuple(fields[1:]))
        require(len(matches) == 1, 'EXCLUSIVE_LEASE_LOCK')
        return matches[0]

    def guard(self):
        require(not self.invalid, 'ENROLLMENT_INVALIDATED')
        started = time.monotonic_ns()
        try:
            require(self.last_ns is None or 0 <= started - self.last_ns <= FRESH_NS, 'MISSED_LIVENESS_DEADLINE')
            self.deadline_ns = min(started + FRESH_NS, self.last_ns + FRESH_NS if self.last_ns is not None else started + FRESH_NS)
            require(open('/proc/sys/kernel/random/boot_id', encoding='ascii').read().strip() == self.enrollment.boot_id, 'CURRENT_BOOT')
            for fd in self.pidfds.values():
                poll = select.poll(); poll.register(fd, select.POLLIN)
                require(not poll.poll(0), 'CONTROL_PROCESS_EXITED')
            self.sequence += 1
            for role, channel in self.channels.items():
                challenge = os.urandom(32).hex()
                packet = {'format': FORMAT, 'role':role, 'nonce':self.enrollment.nonce,
                          'admission_sha256':self.enrollment.admission_sha256, 'boot_id':self.enrollment.boot_id,
                          'sequence':self.sequence, 'challenge':challenge, 'descriptor_roles':[]}
                remaining = self.deadline_ns - time.monotonic_ns()
                require(remaining > 0, 'SAMPLE_DEADLINE')
                channel.settimeout(remaining / 1e9)
                channel.sendall(json.dumps(packet, separators=(',',':')).encode())
                self._receive(role, challenge, role == 'controller' and not self.fds)
            for pin in self.enrollment.descriptors: self._validate_fd(pin, self.fds[pin.role])
            self._birth('controller'); self._birth('guardian')
            kernel_lock = self._lock(read_kernel(self.fds['proc.locks']))
            for role in ('controller', 'guardian'):
                text = read_kernel(self.fds[role + '.fdinfo'])
                fields = dict(line.split(':', 1) for line in text.splitlines() if ':' in line and not line.startswith('lock:'))
                require(fields.get('ino', '').strip() == str(self.enrollment.lease_inode), 'HELD_FD_INODE_' + role)
                require(self._lock(text, fdinfo=True) == kernel_lock, 'SAME_EXCLUSIVE_FLOCK_' + role)
            self._birth('controller'); self._birth('guardian')
            now = time.monotonic_ns()
            require(0 <= now - started <= FRESH_NS, 'SAMPLE_DEADLINE')
            self.last_ns = now
            return {'format': FORMAT, 'sequence':self.sequence, 'observed_monotonic_ns':now,
                    'kernel_metadata_verified':True, 'same_exclusive_flock_visible_on_both_fds':True,
                    'controller_and_guardian_message_liveness_verified':True,
                    'production_admission':False, 'source_runtime_closure_qualified':False}
        except BaseException as error:
            self._invalidate(error)
            raise
