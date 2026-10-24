"""Native-only Boston Dynamics 5.0.1 operations, never a Wasm socket bridge.

The concrete native-only ROS bridge prepares actual authenticated SDK clients
and a fixed NativeGate operator allowlist. No permission is inferred from a
Guest bool/token/cookie. The default gate is absent and calls fail13 without RPC.
Runtime per-Instance authority remains independent of the shared native profile.
"""

from dataclasses import dataclass
from importlib.metadata import version
import math
import threading
import time

from bosdyn.client.lease import LeaseClient
from bosdyn.client.robot_command import RobotCommandClient, RobotCommandBuilder
from bosdyn.client.robot_state import RobotStateClient
from ..common.native_gate import NativeGate


@dataclass
class Outcome:
    """@brief Retain one native SDK call's original value, error and correlation.

    @details correlation is the lifetime-unique full uint64 native identifier;
    operation names a closed SpotProvider.OPERATIONS role. state is unused,
    reserved, unknown, or returned. unknown never means that no effect occurred.
    value/error retain the real SDK object/exception without field projection;
    native_command_id retains the original uint32 command identifier separately
    from the caller correlation. Provider-owned records are mutable internally;
    diagnostic consumers must treat them and their values as read-only.
    @see SpotProvider.invoke SpotProvider.diagnostics
    """

    correlation: int = 0
    operation: str = ""
    state: str = "unused"
    error: object = None
    value: object = None
    native_command_id: object = None


class SpotProvider:
    """@brief Dispatch a finite native Spot SDK 5.0.1 application operation set.

    @details Construction performs no network operation.
    gate is the additional concrete NativeGate operator allowlist. It is not
    Runtime authority; the original ROS Host path must independently validate
    every Instance's real alias/type/resource/operation before this bridge.
    Clients/SDK channels/robot/time-sync are BORROWED and never closed here.
    One nonblocking lock serializes RPCs; concurrent or reentrant use fails.
    Unknown lease acquisition/return is retained rather than replayed. This
    class starts no keepalive/time-sync worker and never powers on the robot.
    @see SpotProvider.invoke SpotProvider.cleanup_native SpotProvider.retire_local
    """

    OPERATIONS = frozenset(
        (
            "state",
            "lease.acquire",
            "lease.retain",
            "lease.return",
            "command.stand",
            "command.sit",
            "command.velocity",
            "command.stop",
            "command.feedback",
        )
    )
    """@brief Closed local names for independently admitted native SDK roles.
    @details State read, lease acquire/retain/return, stand/sit/finite velocity,
    Stop and owned-command feedback remain separate grants. Names grant nothing.
    @see SpotProvider.invoke SpotProvider.cleanup_native
    """

    def __init__(
        self,
        state_client,
        lease_client,
        command_client,
        *,
        gate=None,
        maximum_history=64,
        maximum_rpc_ns=5_000_000_000,
        maximum_velocity_duration_ns=1_000_000_000,
        maximum_linear_mps=0.3,
        maximum_angular_rps=0.5,
    ):
        """@brief Borrow original clients and preallocate non-reusing outcomes.

        @details Requires actual bosdyn-client/api 5.0.1. The lease and command
        clients must use the same genuine LeaseWallet for this owner; bootstrap
        must supply independently authenticated, ready clients and time sync.
        No client is constructed, connected or authenticated by this method.
        @param state_client Borrowed RobotStateClient, or None to refuse state.
        @param lease_client Borrowed LeaseClient, or None to refuse lease calls.
        @param command_client Borrowed RobotCommandClient sharing the lease wallet,
        or None to refuse commands. All clients must outlive this provider.
        @param gate Concrete NativeGate configured by native bootstrap; None denies.
        @param maximum_history Integer lifetime slots 1..256; never recycled.
        @param maximum_rpc_ns Positive per-call limit, at most 5e9 monotonic ns.
        @param maximum_velocity_duration_ns Positive motion expiry, at most 1e9 ns.
        @param maximum_linear_mps Finite absolute x/y component limit, 0 < value <= 1 m/s.
        @param maximum_angular_rps Finite absolute yaw limit, 0 < value <= 1 rad/s.
        @raises TypeError Wrong concrete client/gate type.
        @raises ValueError Wrong SDK version, wallet identity, or finite limit.
        @see SpotProvider.invoke SpotProvider.diagnostics
        """
        if version("bosdyn-client") != "5.0.1" or version("bosdyn-api") != "5.0.1":
            raise ValueError("this provider is scoped to actual SDK 5.0.1")
        if gate is not None and not isinstance(gate, NativeGate):
            raise TypeError("the concrete native operator allowlist is required")
        if (
            state_client is not None and not isinstance(state_client, RobotStateClient)
        ) or (lease_client is not None and not isinstance(lease_client, LeaseClient)):
            raise TypeError("real selected SDK clients required")
        if command_client is not None and not isinstance(
            command_client, RobotCommandClient
        ):
            raise TypeError("real selected command client required")
        wallet = lease_client.lease_wallet if lease_client is not None else None
        if command_client is not None and (
            wallet is None or command_client.lease_wallet is not wallet
        ):
            raise ValueError("one genuine shared lease wallet required")
        if type(maximum_history) is not int or not 1 <= maximum_history <= 256:
            raise ValueError("finite lifetime history 1..256 required")
        for number, ceiling in (
            (maximum_rpc_ns, 5_000_000_000),
            (maximum_velocity_duration_ns, 1_000_000_000),
        ):
            if type(number) is not int or not 0 < number <= ceiling:
                raise ValueError("finite positive native deadline limit required")
        for number in (maximum_linear_mps, maximum_angular_rps):
            if (
                type(number) not in (int, float)
                or not math.isfinite(number)
                or not 0 < number <= 1
            ):
                raise ValueError("finite explicit velocity limit required")
        self._state, self._lease, self._command = (
            state_client,
            lease_client,
            command_client,
        )
        self._wallet, self._gate = wallet, gate
        self._rows = tuple(Outcome() for _ in range(maximum_history))
        self._cleanup_rows = (
            Outcome(operation="command.stop"),
            Outcome(operation="lease.return"),
        )
        self._cleanup_done = False
        self._used, self._closed = 0, False
        self._body_state = "none"
        self._lock = threading.Lock()
        self.maximum_rpc_ns = maximum_rpc_ns
        self.maximum_velocity_duration_ns = maximum_velocity_duration_ns
        self.maximum_linear_mps, self.maximum_angular_rps = (
            maximum_linear_mps,
            maximum_angular_rps,
        )

    @staticmethod
    def _timeout(deadline):
        remaining = deadline - time.monotonic_ns()
        if remaining <= 0:
            raise TimeoutError("deadline elapsed; no retry is authorized")
        return remaining / 1_000_000_000

    def invoke(self, alias, operation, correlation, *, nonce, budget_ns, arguments=()):
        """@brief Invoke one original SDK operation with non-reusing native IDs.

        @details All history rows are allocated before the first RPC.
        Outcome.state unknown means an effect MAY have occurred; callers must
        not replay the correlation or manufacture an inverse/cancel result.
        A successfully returned command ID proves SDK acceptance, not motion
        completion. Feedback is the complete original protobuf response.
        NativeGate and actual Runtime per-Instance alias/type/resource checks
        are separate. There is no retry, lease stealing, mode repair or keepalive.
        @param alias Explicit NUL-free UTF-8 alias, 1..255 encoded bytes.
        @param operation Exact string from SpotProvider.OPERATIONS, with its own grant.
        @param correlation Integer 1..2**64-1 unique for this provider's lifetime.
        @param nonce Independently selected native gate nonce; never Guest identity.
        @param budget_ns Positive monotonic RPC budget <= maximum_rpc_ns.
        @param arguments Immutable tuple. Velocity takes (x_mps,y_mps,yaw_rps,
        duration_ns), bounded per component and by finite motion expiry; feedback
        takes one previously returned owned command correlation. Other roles take ().
        @return Borrowed provider-owned Outcome retaining the full original value;
        callers must not mutate it or interpret acceptance as physical completion.
        @raises ValueError Invalid value/alias/role/correlation or correlation reuse.
        @raises PermissionError Absent native gate/grant or no known owned body lease.
        @raises BlockingIOError Concurrent/reentrant native dispatch is refused.
        @raises OSError Retired provider, exhausted history or missing real client.
        @raises Exception Actual SDK/deadline failure; inspect the retained unknown
        outcome and preserve body exclusion instead of replaying an uncertain call.
        @see Outcome SpotProvider.diagnostics SpotProvider.cleanup_native
        """
        if (
            type(correlation) is not int
            or not 0 < correlation < 1 << 64
            or type(budget_ns) is not int
            or not 0 < budget_ns <= self.maximum_rpc_ns
        ):
            raise ValueError(
                "full positive u64 correlation and bounded deadline required"
            )
        if operation not in self.OPERATIONS or not isinstance(arguments, tuple):
            raise ValueError(
                "closed native operation set and immutable arguments required"
            )
        if (
            not isinstance(alias, str)
            or not alias
            or len(alias.encode("utf-8")) > 255
            or "\0" in alias
        ):
            raise ValueError("explicit valid alias required")
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "native provider is busy")
        try:
            if self._closed:
                raise OSError(125, "provider locally retired")
            if self._gate is None:
                raise PermissionError(13, "no Root-native admission gate installed")
            if self._used == len(self._rows):
                raise OSError(90, "non-reusing native history exhausted")
            for index in range(self._used):
                if self._rows[index].correlation == correlation:
                    raise ValueError(
                        "correlation is never reused, including uncertain RPCs"
                    )
            row = self._rows[self._used]
            self._used += 1
            row.correlation, row.operation, row.state = (
                correlation,
                operation,
                "reserved",
            )
            deadline = time.monotonic_ns() + budget_ns
            try:
                with self._gate.enter(
                    alias, operation, arguments, deadline, correlation, nonce
                ):
                    self._validate(operation, arguments)
                    needed = (
                        self._state
                        if operation == "state"
                        else (
                            self._lease
                            if operation.startswith("lease.")
                            else self._command
                        )
                    )
                    if needed is None:
                        raise OSError(
                            95, "required real native client was not prepared"
                        )
                    self._timeout(deadline)
                    row.state = "unknown"
                    if operation == "state":
                        row.value = self._state.get_robot_state(
                            timeout=self._timeout(deadline)
                        )
                    elif operation == "lease.acquire":
                        self._body_state = "acquire-unknown"
                        row.value = self._lease.acquire(
                            "body", timeout=self._timeout(deadline)
                        )
                        self._body_state = "active"
                    elif operation == "lease.retain":
                        # Read the SDK's actual current wallet lease, not an
                        # old acquisition sequence or a Guest-supplied proto.
                        lease = self._wallet.get_lease("body")
                        row.value = self._lease.retain_lease(
                            lease, timeout=self._timeout(deadline)
                        )
                    elif operation == "lease.return":
                        lease = self._wallet.get_lease("body")
                        self._body_state = "return-unknown"
                        row.value = self._lease.return_lease(
                            lease, timeout=self._timeout(deadline)
                        )
                        self._body_state = "returned"
                    elif operation == "command.feedback":
                        prior = self._command_row(arguments[0])
                        row.value = self._command.robot_command_feedback(
                            prior.native_command_id, timeout=self._timeout(deadline)
                        )
                    else:
                        command, end_time = self._build(operation, arguments)
                        # The real SDK request processor advances this same
                        # wallet lease. Do not pass a stale acquisition proto.
                        native_id = self._command.robot_command(
                            command,
                            end_time_secs=end_time,
                            timeout=self._timeout(deadline),
                        )
                        if type(native_id) is not int or not 0 <= native_id < 1 << 32:
                            raise ValueError("SDK returned invalid native command ID")
                        row.native_command_id, row.value = native_id, native_id
                    row.state = "returned"
            except BaseException as error:
                # Keep the exact exception independently of the possibly
                # unknown external outcome; never infer failure means no RPC.
                row.error = error
                raise
            return row
        finally:
            self._lock.release()

    def _command_row(self, correlation):
        if type(correlation) is not int or not 0 < correlation < 1 << 64:
            raise ValueError("owned command correlation required")
        for index in range(self._used):
            row = self._rows[index]
            if row.correlation == correlation and row.native_command_id is not None:
                return row
        raise ValueError("no successful native command receipt for correlation")

    def _validate(self, operation, arguments):
        if operation == "command.feedback":
            if len(arguments) != 1:
                raise ValueError("feedback takes one owned command correlation")
            self._command_row(arguments[0])
            return
        if operation == "command.velocity":
            if len(arguments) != 4:
                raise ValueError("velocity requires x,y,yaw,duration_ns")
            x, y, yaw, duration = arguments
            for value, maximum in (
                (x, self.maximum_linear_mps),
                (y, self.maximum_linear_mps),
                (yaw, self.maximum_angular_rps),
            ):
                if (
                    type(value) not in (int, float)
                    or not math.isfinite(value)
                    or abs(value) > maximum
                ):
                    raise ValueError("finite velocity exceeds explicit selected bound")
            if (
                type(duration) is not int
                or not 0 < duration <= self.maximum_velocity_duration_ns
            ):
                raise ValueError("finite velocity expiration required")
        elif arguments:
            raise ValueError("operation accepts no arguments")
        if operation == "lease.acquire":
            if self._body_state not in ("none", "returned"):
                raise OSError(
                    17, "body lease is active or acquisition outcome is unknown"
                )
        elif operation.startswith("command.") or operation in (
            "lease.retain",
            "lease.return",
        ):
            if self._body_state != "active":
                raise PermissionError(13, "no provider-owned active body lease")

    def _build(self, operation, arguments):
        if operation == "command.stop":
            return RobotCommandBuilder.stop_command(), None
        if operation == "command.stand":
            return RobotCommandBuilder.synchro_stand_command(), None
        if operation == "command.sit":
            return RobotCommandBuilder.synchro_sit_command(), None
        x, y, yaw, duration = arguments
        # SDK timestamps use local wall time transformed by the genuine
        # synchronized endpoint. RPC deadlines use monotonic time separately.
        return (
            RobotCommandBuilder.synchro_velocity_command(x, y, yaw),
            time.time() + duration / 1_000_000_000,
        )

    def retire_local(self):
        """@brief Permanently retire local business dispatch without an RPC.

        @details No hidden stop, return-lease, channel close or background keepalive.
        Root must invoke independently authorized stop/return operations before
        this if appropriate, preserving each actual outcome. These clients and
        native connection are borrowed and remain the Root owner's lifetime.
        @return None; all history and body-lease uncertainty remain retained.
        @raises BlockingIOError An actual native call still owns the provider.
        @see SpotProvider.cleanup_native SpotProvider.diagnostics
        """
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "native call still owns provider")
        try:
            self._closed = True
        finally:
            self._lock.release()

    def cleanup_native(self, *, deadline_ns=None):
        """@brief Attempt independently granted native Stop and ReturnLease once.

        @details Explicit native-bootstrap cleanup, not a ROS/Guest management API.
        Two carriers/permits were reserved before business calls. Actual Stop
        and ReturnLease require their own configured permissions and are both
        attempted independently despite earlier failures. A previous uncertain
        return is never replayed. Closing channels is still the native owner's
        separate responsibility even if this method records a failed cleanup.
        Cleanup is attempted only for a known active body lease; unknown acquire
        or return stays excluded. Repeated calls return the same two rows and do
        not replay RPCs. Each actual call is bounded by its permit and at most 2 s.
        @param deadline_ns Optional absolute time.monotonic_ns() upper bound,
        independent of the retired business owner's lifetime.
        @return Borrowed two-Outcome tuple (Stop, ReturnLease), including each
        original error or no-known-active-body-lease status. Callers must not mutate it.
        @raises ValueError A supplied absolute deadline is not an integer.
        @raises BlockingIOError Another actual call still owns the provider lock.
        @see SpotProvider.retire_local SpotProvider.diagnostics
        """
        if deadline_ns is not None and type(deadline_ns) is not int:
            raise ValueError("absolute monotonic native cleanup deadline required")
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "actual native call still in progress")
        try:
            if self._cleanup_done:
                return self._cleanup_rows
            self._cleanup_done, self._closed = True, True
            for index, operation in enumerate(("command.stop", "lease.return")):
                row = self._cleanup_rows[index]
                if self._body_state != "active":
                    row.state = "no-known-active-body-lease"
                    continue
                try:
                    if self._gate is None:
                        raise PermissionError(13, "no native cleanup allowlist")
                    limit = self._gate.maximum_rpc_ns(operation)
                    if not limit:
                        raise PermissionError(
                            13, "independent cleanup permission absent"
                        )
                    deadline = time.monotonic_ns() + min(limit, 2_000_000_000)
                    if deadline_ns is not None:
                        deadline = min(deadline, deadline_ns)
                    with self._gate.cleanup_enter_native_only(
                        operation, deadline
                    ) as audit:
                        row.correlation = audit.token
                        row.state = "unknown"
                        if operation == "command.stop":
                            row.native_command_id = self._command.robot_command(
                                RobotCommandBuilder.stop_command(),
                                timeout=self._timeout(deadline),
                            )
                        else:
                            lease = self._wallet.get_lease("body")
                            self._body_state = "return-unknown"
                            self._lease.return_lease(
                                lease, timeout=self._timeout(deadline)
                            )
                            self._body_state = "returned"
                        row.state = "returned"
                except BaseException as error:
                    row.error = error
            return self._cleanup_rows
        finally:
            self._lock.release()

    def diagnostics(self):
        """@brief Inspect consumed native outcomes without performing an RPC.

        @details Returns a new tuple of borrowed provider-owned Outcome records
        in admission order. Callers must not mutate rows/retained protobufs and
        must preserve the provider lifetime. This is native diagnostics, not a
        Guest management route or evidence that unknown effects did not occur.
        @return Tuple of used rows; cleanup rows are returned by cleanup_native.
        @raises BlockingIOError A concurrent actual native call holds the lock.
        @see Outcome SpotProvider.cleanup_native SpotProvider.retire_local
        """
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "native provider is busy")
        try:
            return tuple(self._rows[index] for index in range(self._used))
        finally:
            self._lock.release()
