"""Native-only authenticated-owner dispatch for the selected Spot provider.

The trusted Runtime/Gateway must supply an in-process owner identity. Nothing
in a ROS service payload, token, nonce, hostname or protobuf is that identity.
The historical ROS bridge cannot populate it and is not upgraded implicitly by
installing this module. Credentials and real SDK clients stay in native code.
"""

import threading
import time


class SpotNativeSessions:
    """@brief Bind authenticated native owners with per-robot body exclusion.

    @details Finite, non-reusing bindings, plus exclusive body ownership per robot.
    Attach only real providers prepared separately for each authenticated owner.
    In particular, their genuine SDK lease wallets must not be shared. The
    authenticated robot key comes from native endpoint configuration and is
    compared by identity, so aliases cannot accidentally form separate locks.
    Neither attachment nor retirement is exposed as a Guest operation.
    The coordinator starts no thread. Business dispatch/cleanup use a
    nonblocking lock; attachment and local retirement wait on that same lock.
    @see SpotNativeSessions.attach_native_only SpotNativeSessions.invoke_from_authenticated_host
    """

    def __init__(
        self, maximum_sessions=16, *, cleanup_operator=None, cleanup_deadline_ns=0
    ):
        """@brief Reserve a finite lifetime of authenticated native bindings.

        @details Construction opens no channel and performs no SDK RPC. A
        separately supplied cleanup identity can outlive a business binding,
        but still needs the provider's independent Stop/ReturnLease permits.
        @param maximum_sessions Non-reusing lifetime slots, integer 1..64.
        @param cleanup_operator Retained trusted identity object, or None to deny
        independent cleanup; pointer identity cannot come from Guest payloads.
        @param cleanup_deadline_ns Absolute time.monotonic_ns() expiry within
        five minutes when an operator is supplied; exactly 0 with no operator.
        @raises ValueError Session bound or cleanup-identity lifetime is invalid.
        @see SpotNativeSessions.cleanup_from_native_operator SpotNativeSessions.attach_native_only
        """
        if type(maximum_sessions) is not int or not 1 <= maximum_sessions <= 64:
            raise ValueError("finite native session bound 1..64 required")
        self._maximum = maximum_sessions
        self._bindings = []
        self._lock = threading.Lock()
        if (
            cleanup_operator is None
            and cleanup_deadline_ns != 0
            or cleanup_operator is not None
            and (
                type(cleanup_deadline_ns) is not int
                or not 0 < cleanup_deadline_ns - time.monotonic_ns() <= 300_000_000_000
            )
        ):
            raise ValueError(
                "independent finite native cleanup operator lifetime required"
            )
        self._cleanup_operator, self._cleanup_deadline_ns = (
            cleanup_operator,
            cleanup_deadline_ns,
        )

    def attach_native_only(
        self, authenticated_owner, authenticated_robot, provider, *, expires_at_ns=0
    ):
        """@brief Attach one distinct real provider to native owner/robot identities.

        @details Retains both objects and the provider for the coordinator's
        lifetime. Owner/provider identities never rebind, including after local
        retirement. Distinct owners cannot share a genuine lease wallet. The
        robot identity must be canonicalized by trusted endpoint configuration.
        This method takes the coordinator lock and performs no SDK operation.
        @param authenticated_owner Non-None trusted owner object, compared by identity.
        @param authenticated_robot Non-None trusted canonical robot identity object.
        @param provider Actual SpotProvider prepared separately for this owner.
        @param expires_at_ns Absolute time.monotonic_ns() expiry, future and at
        most five minutes from attachment; no implicit or renewable lifetime.
        @return Opaque binding retained by this coordinator; pass the exact object
        to dispatch/retirement and do not mutate its native bookkeeping fields.
        @raises TypeError Identity/provider is absent or has the wrong type.
        @raises ValueError Invalid expiry, identity reuse, or shared lease wallet.
        @raises OSError All non-reusing lifetime slots have been consumed (errno 90).
        @see SpotNativeSessions.invoke_from_authenticated_host SpotNativeSessions.retire_native_only
        """
        from .native_provider import SpotProvider

        if (
            authenticated_owner is None
            or authenticated_robot is None
            or not isinstance(provider, SpotProvider)
        ):
            raise TypeError(
                "trusted owner, robot identity and real SpotProvider required"
            )
        if (
            type(expires_at_ns) is not int
            or not 0 < expires_at_ns - time.monotonic_ns() <= 300_000_000_000
        ):
            raise ValueError(
                "explicit finite native owner expiry of at most five minutes required"
            )
        with self._lock:
            if len(self._bindings) == self._maximum:
                raise OSError(90, "non-reusing native session history exhausted")
            for binding in self._bindings:
                if binding.owner is authenticated_owner or binding.provider is provider:
                    raise ValueError("native identity/provider is never rebound")
                if (
                    provider._wallet is not None
                    and provider._wallet is binding.provider._wallet
                ):
                    raise ValueError(
                        "authenticated owners cannot share a genuine lease wallet"
                    )
            binding = _Binding(
                authenticated_owner, authenticated_robot, provider, expires_at_ns
            )
            self._bindings.append(binding)
            return binding

    def invoke_from_authenticated_host(
        self, binding, authenticated_owner, alias, operation, correlation, **arguments
    ):
        """@brief Dispatch one authenticated SDK call under per-robot exclusion.

        @details One real SDK invocation with no replay after an uncertain effect.
        All body lease/command operations for a robot serialize under this
        native coordinator. An uncertain acquisition/return retains exclusion.
        RPC cancellation, Stop and lease return remain distinct operations.
        A returned command is SDK acceptance, never physical completion.
        Acquiring the body records exclusion before the actual RPC; only proof
        of local pre-RPC refusal or a known returned lease releases it. Owner
        expiry never silently releases uncertain ownership or grants cleanup.
        @param binding Exact opaque object returned by attach_native_only here.
        @param authenticated_owner Trusted object identical to the binding owner.
        @param alias Original explicit native alias; see SpotProvider.invoke.
        @param operation Closed SpotProvider.OPERATIONS role with a separate grant.
        @param correlation Nonzero lifetime-unique uint64 provider correlation.
        @param arguments Keyword arguments for SpotProvider.invoke, including
        nonce, positive budget_ns within binding expiry, and the typed argument tuple.
        @return Borrowed provider-owned Outcome; do not mutate or replay uncertainty.
        @raises BlockingIOError Concurrent/reentrant coordinator dispatch is refused.
        @raises PermissionError Binding/identity expired, retired, absent, or another
        native owner retains the same robot's body exclusion.
        @raises TimeoutError Requested RPC budget extends past binding expiry.
        @raises Exception Original provider/SDK failure; exclusion is retained when
        acquisition/return could have crossed the RPC boundary.
        @see SpotNativeSessions.attach_native_only SpotNativeSessions.cleanup_from_native_operator
        """
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "native Spot session coordinator is busy")
        try:
            if (
                not any(value is binding for value in self._bindings)
                or authenticated_owner is not binding.owner
                or binding.retired
                or time.monotonic_ns() >= binding.expires_at_ns
            ):
                raise PermissionError(13, "no live authenticated Spot owner binding")
            budget = arguments.get("budget_ns")
            if (
                type(budget) is not int
                or budget <= 0
                or time.monotonic_ns() + budget > binding.expires_at_ns
            ):
                raise TimeoutError("requested native call extends past owner expiry")
            if (
                type(operation) is not str
                or operation not in binding.provider.OPERATIONS
            ):
                raise ValueError("closed original Spot provider operation required")
            is_body = operation.startswith("lease.") or operation.startswith("command.")
            if is_body:
                for other in self._bindings:
                    if (
                        other is not binding
                        and other.robot is binding.robot
                        and other.body_exclusion
                    ):
                        raise PermissionError(
                            13, "body lease belongs to another native owner"
                        )
                if operation == "lease.acquire":
                    if binding.body_exclusion:
                        raise OSError(
                            17, "body ownership is active or outcome is unknown"
                        )
                    # Set before any SDK call. Even local rejection is retained
                    # conservatively; native operators inspect the actual ledger.
                    binding.body_exclusion = True
                elif not binding.body_exclusion:
                    raise PermissionError(
                        13, "no owned body acquisition in this native session"
                    )
            try:
                result = binding.provider.invoke(
                    alias, operation, correlation, **arguments
                )
            except BaseException:
                # The selected provider changes this state BEFORE invoking the
                # actual acquire RPC. An unchanged none/returned state proves
                # that this acquisition did not reach that boundary. All
                # acquire-unknown/active/return-unknown outcomes retain exclusion.
                if operation == "lease.acquire" and binding.provider._body_state in (
                    "none",
                    "returned",
                ):
                    binding.body_exclusion = False
                raise
            if (
                operation == "lease.return"
                and binding.provider._body_state == "returned"
            ):
                binding.body_exclusion = False
            return result
        finally:
            self._lock.release()

    def retire_native_only(self, binding, authenticated_owner):
        """@brief Permanently retire one authenticated local dispatch binding.

        @details Never manufacture Stop/ReturnLease success.
        Unknown body ownership keeps its exclusion entry for this coordinator's
        lifetime. A native operator needs separate actual outcome/recovery
        evidence before replacing the entire native deployment.
        Takes the coordinator lock, invokes provider local retirement and
        retains the binding/history. Performs no RPC or channel shutdown.
        @param binding Exact opaque attachment belonging to this coordinator.
        @param authenticated_owner Trusted object identical to the binding owner.
        @return None; repeated retirement preserves the same retained history.
        @raises PermissionError The native attachment or owner identity is wrong.
        @raises BlockingIOError A separately invoked provider call is still active.
        @see SpotNativeSessions.cleanup_from_native_operator SpotProvider.retire_local
        """
        with self._lock:
            if (
                not any(value is binding for value in self._bindings)
                or authenticated_owner is not binding.owner
            ):
                raise PermissionError(13, "authenticated Spot owner required")
            binding.provider.retire_local()
            binding.retired = True

    def cleanup_from_native_operator(self, binding, authenticated_operator):
        """@brief Attempt independent native cleanup after business retirement/expiry.

        @details Independent native Stop/ReturnLease after dispatch expiry/retirement.
        Both SDK calls still need the provider's distinct native cleanup
        permissions. Caller identity, expiry and body exclusion are checked
        here; neither a Guest nonce nor the expired business owner grants it.
        Unknown ownership remains excluded even after local retirement.
        A known successful ReturnLease releases this binding's exclusion.
        Another owner's body acquisition cannot be borrowed for cleanup.
        @param binding Exact opaque attachment belonging to this coordinator.
        @param authenticated_operator Trusted object identical to the retained
        live cleanup operator; unrelated to any Guest or expired business identity.
        @return Borrowed pair of original Stop/ReturnLease Outcome rows; each
        failure remains separate and no physical stationary state is inferred.
        @raises BlockingIOError Concurrent/reentrant coordinator operation is active.
        @raises PermissionError Operator/binding is invalid or expired, another
        owner holds the body, or this binding has no retained acquisition.
        @see SpotNativeSessions.__init__ SpotProvider.cleanup_native
        """
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "native Spot session coordinator is busy")
        try:
            if (
                self._cleanup_operator is None
                or authenticated_operator is not self._cleanup_operator
                or time.monotonic_ns() >= self._cleanup_deadline_ns
                or not any(value is binding for value in self._bindings)
            ):
                raise PermissionError(13, "no live independent native cleanup operator")
            for other in self._bindings:
                if (
                    other is not binding
                    and other.robot is binding.robot
                    and other.body_exclusion
                ):
                    raise PermissionError(
                        13, "native cleanup cannot borrow another body owner"
                    )
            if not binding.body_exclusion:
                raise PermissionError(
                    13, "this binding has no retained body acquisition"
                )
            rows = binding.provider.cleanup_native(
                deadline_ns=self._cleanup_deadline_ns
            )
            binding.retired = True
            if binding.provider._body_state == "returned":
                binding.body_exclusion = False
            return rows
        finally:
            self._lock.release()


class _Binding:
    __slots__ = (
        "owner",
        "robot",
        "provider",
        "body_exclusion",
        "retired",
        "expires_at_ns",
    )

    def __init__(self, owner, robot, provider, expires_at_ns):
        self.owner, self.robot, self.provider = owner, robot, provider
        self.body_exclusion, self.retired = False, False
        self.expires_at_ns = expires_at_ns
