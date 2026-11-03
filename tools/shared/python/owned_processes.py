"""Local SDK child retirement using subreaper adoption and kernel PID handles.

This infrastructure creates no execution admission, resource reservation or ROS
permission. The caller must already be admitted before constructing it or
launching a child. The independent VM guardian remains mandatory for controller
loss. No ROS query, command, callback or application computation runs here.
"""
from pathlib import Path
import ctypes
import os
import signal
import time
from runtime_boundary import Blocked


MAX_OWNED = 4096


def process(pid):
    """Read one kernel PID/birth without following executable or command data."""
    try:
        fields = (Path('/proc') / str(pid) / 'stat').read_text().rsplit(') ', 1)[1].split()
    except (FileNotFoundError, ProcessLookupError):
        return None
    return {'pid': pid, 'birth': fields[19], 'state': fields[0],
            'parent_pid': int(fields[1]), 'process_group': int(fields[2]),
            'session': int(fields[3])}


def children(pid):
    """Read children of every thread, including an orphan adopted by this process."""
    found = set()
    try:
        tasks = list((Path('/proc') / str(pid) / 'task').iterdir())
    except (FileNotFoundError, ProcessLookupError):
        return found
    for task in tasks:
        try:
            found.update(int(value) for value in (task / 'children').read_text().split())
        except (FileNotFoundError, ProcessLookupError):
            continue
    return found


class OwnedProcesses:
    """An initially childless supervisor owns all children born under its watch.

    Adoption retains double-forked/setsid children after their parent exits.
    Signals use pidfds only, so a recycled numeric PID cannot select a foreign
    process. A failed observation or cleanup remains a failure in the receipt.
    """
    def __init__(self):
        if not hasattr(os, 'pidfd_open') or not hasattr(signal, 'pidfd_send_signal'):
            raise Blocked('BLOCKED_OWNED_LIFECYCLE_REQUIRES_KERNEL_PID_HANDLES')
        self.pid = os.getpid()
        self.identity = process(self.pid)
        if self.identity is None or children(self.pid):
            raise Blocked('BLOCKED_OWNED_LIFECYCLE_REQUIRES_CHILDLESS_SUPERVISOR')
        self.libc = ctypes.CDLL(None, use_errno=True)
        self.libc.prctl.argtypes = [ctypes.c_int, ctypes.c_ulong, ctypes.c_ulong,
                                   ctypes.c_ulong, ctypes.c_ulong]
        self.libc.prctl.restype = ctypes.c_int
        self.original_subreaper = self._get_subreaper()
        self._prctl(36, 1)  # Linux PR_SET_CHILD_SUBREAPER, inherited by no child.
        if self._get_subreaper() != 1:
            raise Blocked('BLOCKED_OWNED_LIFECYCLE_SUBREAPER_NOT_ACTIVE')
        self.started_ns = time.monotonic_ns()
        self.records = {}
        self.handles = {}
        self.restored = False
        self.receipt = None

    def _prctl(self, option, value):
        if self.libc.prctl(option, value, 0, 0, 0) != 0:
            number = ctypes.get_errno()
            raise OSError(number, 'SDK owned-child subreaper prctl refused')

    def _get_subreaper(self):
        value = ctypes.c_int()
        self._prctl(37, ctypes.addressof(value))  # Linux PR_GET_CHILD_SUBREAPER.
        return value.value

    def _register(self, row):
        key = (row['pid'], row['birth'])
        if key in self.records:
            self.records[key]['last_observation'] = row
            self.records[key]['last_observed_ns'] = time.monotonic_ns()
            return
        if len(self.records) >= MAX_OWNED:
            raise Blocked('BLOCKED_OWNED_LIFECYCLE_PROCESS_BOUND')
        try:
            descriptor = os.pidfd_open(row['pid'], 0)
        except ProcessLookupError:
            return
        try:
            current = process(row['pid'])
            if current is None or current['birth'] != row['birth']:
                return
            os.set_inheritable(descriptor, False)
            # PID identity is sampled on both sides of pidfd_open. A failed
            # sample must never make a new numeric PID an owned signal target.
            self.records[key] = {'pid': row['pid'], 'birth': row['birth'],
                'first_observation': row, 'last_observation': current,
                'first_observed_ns': time.monotonic_ns(),
                'last_observed_ns': time.monotonic_ns(), 'signals': []}
            self.handles[key] = descriptor
            descriptor = None
        finally:
            if descriptor is not None:
                os.close(descriptor)

    def observe(self):
        """Census only this supervisor's live tree; never scan foreign processes."""
        current = process(self.pid)
        if (current is None or current['birth'] != self.identity['birth']
                or self._get_subreaper() != 1 or self.restored):
            raise RuntimeError('Owned-child supervisor identity or adoption changed')
        queue, seen, rows = [(self.pid, self.identity['birth'])], set(), []
        while queue:
            parent, expected_birth = queue.pop()
            if (parent, expected_birth) in seen:
                continue
            seen.add((parent, expected_birth))
            if len(seen) > MAX_OWNED + 1:
                raise RuntimeError('Owned-child live census bound exceeded')
            before = process(parent)
            if before is None or before['birth'] != expected_birth:
                continue
            candidates = []
            for pid in children(parent):
                row = process(pid)
                if row is not None and row['parent_pid'] == parent:
                    candidates.append(row)
            after = process(parent)
            if after is None or after['birth'] != expected_birth:
                # Its remaining children are adopted. Never traverse a numeric
                # parent PID after it has been recycled into a foreign tree.
                continue
            for row in candidates:
                self._register(row)
                rows.append(row)
                queue.append((row['pid'], row['birth']))
        return rows

    def _reap(self, actors):
        # Popen owns wait status for its direct actor. Do not steal that status
        # while reaping an orphan which only the subreaper can now collect.
        direct = {(actor['pid'], actor['birth']) for actor in actors}
        for actor in actors:
            actor['process'].poll()
        for key, record in self.records.items():
            row = process(key[0])
            if (key in direct or row is None or row['birth'] != key[1]
                    or row['parent_pid'] != self.pid):
                continue
            try:
                pid, status = os.waitpid(key[0], os.WNOHANG)
            except ChildProcessError:
                continue
            if pid:
                record['reaped_wait_status'] = status
                record['reaped_monotonic_ns'] = time.monotonic_ns()

    def _signal(self, key, signum):
        record = self.records[key]
        if any(row['signal'] == signum for row in record['signals']):
            return
        row = process(key[0])
        if row is None or row['birth'] != key[1] or row['state'] in ('Z', 'X'):
            return
        try:
            signal.pidfd_send_signal(self.handles[key], signum, None, 0)
        except ProcessLookupError:
            return
        record['signals'].append({'signal': signum,
                                  'monotonic_ns': time.monotonic_ns()})
        if signum == signal.SIGTERM:
            # A stopped exec gate cannot handle SIGTERM until it is continued.
            # SIGCONT addresses the same pinned PID descriptor.
            try:
                signal.pidfd_send_signal(self.handles[key], signal.SIGCONT, None, 0)
            except ProcessLookupError:
                pass

    def retire(self, actors, grace_seconds=5, kill_seconds=5):
        """Drain adopted descendants as well as actors, retaining every failure."""
        if self.receipt is not None:
            return self.receipt
        errors, remaining, failed_signals = [], [], set()
        start = time.monotonic()
        deadline = start + grace_seconds + kill_seconds
        while True:
            try:
                self.observe()
            except Exception as error:
                errors.append({'phase': 'census', 'diagnostic': repr(error)})
            signum = signal.SIGTERM if time.monotonic() < start + grace_seconds else signal.SIGKILL
            for key in list(self.records):
                if (key, signum) in failed_signals:
                    continue
                try:
                    self._signal(key, signum)
                except Exception as error:
                    # One original error per attempted PID/signal. Never retry
                    # a refused signal in a tight loop or grow diagnostics per
                    # sampling tick. The guardian still owns final containment.
                    failed_signals.add((key, signum))
                    errors.append({'phase': 'signal', 'pid': key[0],
                                   'birth': key[1], 'signal': signum,
                                   'diagnostic': repr(error)})
            try:
                self._reap(actors)
            except Exception as error:
                errors.append({'phase': 'reap', 'diagnostic': repr(error)})
            remaining = []
            for key, record in self.records.items():
                row = process(key[0])
                if row is not None and row['birth'] == key[1]:
                    remaining.append(row)
                else:
                    record.setdefault('kernel_absent_observed_ns', time.monotonic_ns())
            # Recheck direct children AFTER reap: an exiting parent may just
            # have transferred an unobserved child into the subreaper's tree.
            if not remaining and not children(self.pid):
                break
            if time.monotonic() >= deadline:
                break
            time.sleep(0.02)
        unknown_children = sorted(children(self.pid))
        if not remaining and not unknown_children:
            try:
                self._prctl(36, self.original_subreaper)
                self.restored = self._get_subreaper() == self.original_subreaper
                if not self.restored:
                    raise RuntimeError('Owned-child subreaper restoration differs')
            except Exception as error:
                errors.append({'phase': 'restore-subreaper', 'diagnostic': repr(error)})
        for descriptor in self.handles.values():
            os.close(descriptor)
        self.handles.clear()
        for actor in actors:
            actor['process'].poll()
            if actor['process'].returncode is not None:
                actor.setdefault('finished_ns', time.monotonic_ns())
        receipt = {'format': 'uwvm-sdk-owned-process-retirement-v1',
            'status': 'FAIL' if remaining or unknown_children or errors else 'RETIRED',
            'supervisor': self.identity, 'subreaper_enabled_before_actor_birth': True,
            'subreaper_restored': self.restored, 'recorded_actors': len(self.records),
            'same_birth_remaining': remaining, 'uncollected_direct_children': unknown_children,
            'errors': errors, 'processes': list(self.records.values()),
            'monotonic_ns': time.monotonic_ns(),
            'scope': 'Local owned-process cleanup only; live VM admission and independent guardian remain required'}
        self.receipt = receipt
        return receipt
