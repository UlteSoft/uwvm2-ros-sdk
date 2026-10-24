"""@brief Call the selected ROS ABI through the real CPython/WASI extension.

@details Every operation is invoked once. Output is owned bytes, opaque IDs remain exact
unsigned Python integers, and an unwritten length is represented by None. This
module never substitutes host Python, a socket relay, or a test double when the
built-in extension is absent. Codecs can be imported without this extension.
Calls run synchronously on the caller's single Wasm thread; no executor, clock,
background callback or cross-thread synchronization is provided. Requires the
matching CPython 3.14.8/WASIp1 producer and static bridge. Import/build selection
confers no ROS, filesystem, network, debug or update permissions.
@see Backend.invoke
"""

from dataclasses import dataclass
from ._registry import FUNCTIONS

MAX_INPUT = 4193786
"""@brief Inclusive maximum copied request payload: 4193786 bytes.
@details A stricter endpoint/type quota may still reject an otherwise bounded
payload. This constant is not permission, a wire-type identity or an allocation.
@see Backend.invoke
"""
MAX_OUTPUT = 4194304
"""@brief Inclusive maximum reserved output capacity: 4194304 bytes.
@details Capacity90 may leave the required-length sentinel unwritten. This
bound does not reserve queue credit or authorize replay of an admitted effect.
@see Result
"""


def unsigned(value):
    """@brief Validate an exact unsigned 64-bit Python integer without narrowing.

    @details Rejects bool, subclasses, negatives and values >=2**64. The returned
    integer preserves every bit; it is not a pointer or transferable capability.
    Performs synchronous local validation without I/O or retained mutable state.
    @param value [in] Exact built-in int, inclusive range 0..2**64-1.
    @return The same immutable int object on success.
    @raises ValueError The type or unsigned range is invalid.
    @see Backend.invoke
    """
    if type(value) is not int or not 0 <= value < 1 << 64:
        raise ValueError("an exact unsigned 64-bit integer is required")
    return value


@dataclass(frozen=True)
class Result:
    """@brief Preserve one import status independently of copied output and IDs.

    @details Frozen value object. The native bridge supplies owned immutable
    bytes and exact unsigned integers; manually constructing Result does not
    validate arbitrary caller fields. No object owns a ROS handle implicitly.
    required is meaningful only when the host actually overwrote the length
    sentinel on error90. A timeout110 can leave external effects admitted.
    Neither required nor timeout authorizes an automatic retry.
    @param error [in] Numeric ABI status, 0 for success; abi_version puts its
    version in value instead of interpreting it as an errno.
    @param data [in] Owned copied bytes; inspect error before decoding.
    @param required [in] Exact required byte count or None when no valid length
    was written; not an instruction to retry a possibly consumed operation.
    @param value [in] Optional opaque handle/request ID/version from the selected
    form. Handles remain bound to their original Runtime Instance/backend.
    @see Result.checked
    """

    error: int
    """@brief Native numeric ABI status,0 for success.
    @details Read-only outcome field; abi_version reports its version in value.
    Error110/107 may follow admitted effects and does not authorize replay.
    @see Result.checked
    """
    data: bytes = b""
    """@brief Complete copied immutable output bytes for the selected form.
    @details Caller-owned Python value with no mutable native/Guest-memory view.
    Inspect error before decoding; an empty output is not proof of success.
    @see Backend.invoke
    """
    required: int | None = None
    """@brief Optional exact required byte count from a written capacity-error slot.
    @details None preserves an untouched sentinel. A count is diagnostic only;
    it neither reserves capacity nor permits retry of a possibly consumed event.
    @see Result.checked
    """
    value: int | None = None
    """@brief Optional exact unsigned handle/request ID or ABI version.
    @details Meaning depends on the operation form. A successful handle remains
    Instance-owned and requires explicit retirement; numeric copying grants no rights.
    @see Backend.open
    """

    def checked(self):
        """@brief Return this success or raise with the complete retained outcome.

        @details Reads local fields only. No decoding, retirement, retry, callback
        or permission change occurs. A nonzero status may represent an admitted
        effect, particularly timeout110/disconnect107; the exception preserves it.
        @return This same Result object when error is zero.
        @raises RosError A nonzero status; exception.result is this exact object.
        @see RosError
        """
        if self.error:
            raise RosError(self)
        return self


class RosError(RuntimeError):
    """@brief Report an ABI failure without losing its original Result.

    @details Retains the outcome by reference as result and copies its numeric
    status to error. This does not close a handle, replay a call or establish
    that a timed-out effect was rolled back. Ordinary exception lifetime owns
    the retained Python references; no destructor performs ROS I/O.
    @see Result.checked
    """

    def __init__(self, result):
        """@brief Construct an exception retaining the exact failed outcome.

        @details Formats status/conditional capacity in the ordinary message;
        it preserves data/value/required through result. Performs no import.
        @param result [in] Result borrowed and retained for exception lifetime.
        @return None; a new caller-owned RuntimeError subclass is initialized.
        @raises MemoryError Ordinary Python allocation/formatting may fail.
        @see Result
        """
        self.result = result
        """@brief Retain the complete exact failed Result by reference.
        @details Data/value/required stay observable for this exception's lifetime;
        the reference creates no automatic retry, handle cleanup or permission.
        @see Result
        """
        self.error = result.error
        """@brief Copy the original numeric status for exception inspection.
        @details This is the status, not a returned length or ABI version. Its
        presence does not prove whether an admitted external effect persisted.
        @see RosError.result
        """
        super().__init__(f"ROS ABI error {result.error}; required={result.required}")


class _OpenCapture:
    """@brief Retain optional same-Wasm C open evidence for an explicit owner.

    @details Returned by Backend.prepare_owned_open; its constructor and fields
    are internal. Keep the capture and original owner retirement cell together.
    The private GC-visible witness retains C flags/fullid/cleanup code
    independently of subsequent generic invokes. All strong Python references,
    including an exact primary/traceback, participate in cyclic GC. Reading a
    copied snapshot may allocate; no observation consumes the record. Neither
    local object identity nor this record grants Host permissions. Destructor
    makes no direct ROS calls; releasing Guest roots may run Guest finalizers.
    Operations run synchronously on the Backend's single Wasm thread. Do not
    share/mutate the token or reset its retirement state. No accessor grants
    authority or implies that an admitted effect was rolled back.
    @see Backend.prepare_owned_open
    """

    __slots__ = (
        "backend",
        "alias",
        "data",
        "token",
        "primary",
        "cleanup_error",
        "_close",
        "_adopt",
        "_cleaned",
        "_failed",
        "_pending",
        "_snapshot",
        "_primary",
    )

    def __init__(self, backend, alias, data, retirement):
        """@brief Initialize an internal C-witness wrapper before a real open.

        @details Called only by Backend.prepare_owned_open. Reserves all C and
        Python roots first; the constructor performs no ROS import or fallback.
        @param backend [in] Same originating Backend, retained by reference.
        @param alias [in] Its validated exact Unicode alias, retained unchanged.
        @param data [in] Exact immutable UTF-8 alias bytes,1..255 without NUL.
        @param retirement [in,out] Original owner's exact [False] retirement cell.
        @return None; keep the opaque capture alive through adoption or cleanup.
        @raises ImportError Missing real optional witness extension.
        @raises ValueError Native witness input/list validation fails.
        @see Backend.prepare_owned_open
        """
        from _roswasm_native import (
            prepare_open_witness,
            cleanup_open_witness,
            adopt_open_witness,
            open_witness_cleaned,
            open_witness_cleanup_failed,
            open_witness_pending,
            open_witness_snapshot,
            open_witness_primary,
        )

        self.backend, self.alias, self.data = backend, alias, data
        """@brief Retain the same backend, exact alias and immutable input bytes.
        @details Internal transaction roots: backend is a strong Backend reference,
        alias is the validated Unicode name and data its complete UTF-8 bytes.
        Keep all three unchanged; none is a new grant or transferable capability.
        @see Backend.prepare_owned_open
        """
        self.primary = self.cleanup_error = None
        """@brief Retain primary and fallback-cleanup Python exception observations.
        @details Each is None until recorded by the owner path. These references
        preserve failures for capture lifetime; numeric C outcomes live in snapshot.
        @see _OpenCapture.snapshot
        """
        self._close, self._adopt = cleanup_open_witness, adopt_open_witness
        self._cleaned, self._failed = open_witness_cleaned, open_witness_cleanup_failed
        self._pending, self._snapshot, self._primary = (
            open_witness_pending,
            open_witness_snapshot,
            open_witness_primary,
        )
        self.token = prepare_open_witness(data, retirement)
        """@brief Own the opaque GC-visible C witness with full-ID/entry evidence.
        @details The object retains exact input/retirement/primary roots. Do not
        replace/mutate it; no native host pointer or generic FFI address is exposed.
        @see _OpenCapture.snapshot
        """

    def cleanup(self):
        """@brief Attempt the pending unadopted handle's actual C close once.

        @details The C witness marks the original owner retirement cell before
        entering the import; a repeated call never replays an entered close.
        Absent/failed opens are skipped. Numeric failures remain in the witness
        rather than being raised here; inspect cleanup_failed or snapshot.
        @return None; no new owner or permission is created.
        @raises RuntimeError The handle was already adopted; use its Capability.
        @see _OpenCapture.cleanup_failed
        """
        return self._close(self.token)

    def adopt(self):
        """@brief Transfer witness cleanup responsibility to the original owner.

        @details Only a genuine returned/delivered nonzero successful handle
        that has not been cleaned or adopted can be marked adopted. This local
        state change enters no import and grants no additional right. After it,
        retire through the original Capability, not capture.cleanup.
        @return None; the witness retains its evidence and Python roots.
        @raises RuntimeError The actual C open/cleanup/adoption state is ineligible.
        @see _OpenCapture.cleanup
        """
        return self._adopt(self.token)

    def cleaned(self):
        """@brief Inspect whether actual fallback cleanup entered its C import.

        @details This is an entry witness, not a success or physical-stop
        predicate. It stays true on nonzero/unknown retirement outcomes and
        must never be reset to justify replay. Reads local C evidence only.
        @return bool True exactly when the close boundary was entered.
        @see _OpenCapture.cleanup_failed
        """
        return self._cleaned(self.token)

    def cleanup_failed(self):
        """@brief Inspect retained Python or C fallback-cleanup failure state.

        @details True includes a preparation error, an entered call without a
        returned result, a nonzero native status, or cleanup_error retained by
        the Python wrapper. Does not consume evidence, retry or allocate an owner.
        @return bool Whether any retained cleanup failure/ambiguity is known.
        @see _OpenCapture.snapshot
        """
        return self.cleanup_error is not None or self._failed(self.token)

    def pending(self):
        """@brief Inspect an unadopted successful handle awaiting explicit cleanup.

        @details Requires actual open entry/return, status0 and nonzero full ID,
        with neither adoption nor cleanup entry. Local evidence cannot prove the
        remote alias is still live after revoke/disconnect. No I/O occurs.
        @return bool True when this C witness still records pending ownership.
        @see _OpenCapture.adopt
        """
        return self._pending(self.token)

    def snapshot(self):
        """@brief Copy full open/retirement evidence without consuming its state.

        @details Returns entry/return/delivery/adoption/cleanup flags, exact
        status/cleanup/preparation codes and full unsigned64-bit handle from the
        C witness. C_primary/primary/cleanup_error and retained_context retain
        the same Python objects; the flags/integers are copied observations.
        Snapshot allocation or inspection failure never resets state or permits
        another cleanup. No host pointer or mutable C storage view escapes.
        @return dict New caller-owned diagnostic map; it grants no authority.
        @raises MemoryError Ordinary copy/dictionary allocation may fail after
        a host effect; keep the original capture for later observation/cleanup.
        @see _OpenCapture.pending
        """
        data = self._snapshot(self.token)
        return {
            "entered": bool(data[0]),
            "returned": bool(data[1]),
            "delivered": bool(data[2]),
            "adopted": bool(data[3]),
            "cleanup_attempted": bool(data[4]),
            "cleanup_returned": bool(data[5]),
            "code": int.from_bytes(data[8:12], "little"),
            "cleanup_code": int.from_bytes(data[12:16], "little"),
            "cleanup_preparation_code": int.from_bytes(data[24:28], "little"),
            "full_handle": int.from_bytes(data[16:24], "little"),
            "C_primary": self._primary(self.token),
            "primary": self.primary,
            "cleanup_error": self.cleanup_error,
            "retained_context": self.token,
        }


class Backend:
    """@brief Bind copied-buffer operations to one real static ROS backend.

    @details Use invoke for every function in FUNCTIONS[version]. Its copied-buffer
    signature is deliberately separate from raw numeric Wasm addresses:
    name, handle, payload, capacity, other_handle, correlation. The registry
    records the exact form. An unsupported ROS1/ROS2 operation is refused
    before invoking another backend. No cross-backend fallback exists.
    version/functions describe the selected bridge; treat them as read-only.
    Calls are synchronous on the creating single Wasm thread and start no
    executor. Inputs are pinned across the import and outputs are owned Python
    values. Keep explicit higher-level Session ownership for successful opens.
    @see Backend.open
    """

    def __init__(self, version):
        """@brief Bind to the actual compiled ROS1 or ROS2 built-in bridge.

        @details Imports _roswasm_native and verifies its backend before saving
        references. Opens no resource and grants no capability. There is no host
        Python/socket/FFI fallback when the real Wasm extension is missing.
        @param version [in] Exact built-in int, either 1 (ROS1) or 2 (ROS2).
        @return None; caller owns this local Backend and its Python references.
        @raises ValueError Invalid selection or a differently compiled backend.
        @raises ImportError Missing matching real static native extension.
        @see Backend.abi_version
        """
        if type(version) is not int or version not in (1, 2):
            raise ValueError("select ROS1 or ROS2 explicitly")
        from _roswasm_native import invoke, backend

        if backend != version:
            raise ValueError("interpreter was built for a different ROS backend")
        self.version = version
        """@brief Record the explicitly matched static ROS backend1 or2.
        @details Read-only by contract; this selector is distinct from ABI
        version and creates no resource, type identity or endpoint permission.
        @see Backend.abi_version
        """
        self.functions = FUNCTIONS[version]
        """@brief Borrow the exact selected ABI-name-to-form registry mapping.
        @details Treat this shared generated mapping as immutable. It describes
        dispatch shapes, not granted endpoints or native resource availability.
        @see Backend.invoke
        """
        self._invoke = invoke

    def invoke(self, name, handle=0, payload=b"", capacity=0, other=0, correlation=0):
        """@brief Perform at most one exact selected copied-buffer ABI operation.

        @details Unsupported names return status95 before an import. For a
        supported name, validates/roots inputs then calls the native boundary
        synchronously once. Backend callbacks/threads are not scheduled. Every
        endpoint/type/operation/QoS/deadline permission remains host-controlled.
        On Result-construction failure after successful capability_open, attempts
        one close and preserves the original exception; best-effort cleanup
        evidence is attached as roswasm_cleanup. No other error triggers replay.
        @param name [in] Exact ABI v1 name in this backend's functions mapping.
        @param handle [in] Exact unsigned 64-bit instance-owned handle; default0.
        @param payload [in] Immutable bytes, length0..MAX_INPUT inclusive; default
        empty. Operation-specific canonical/type quotas may be stricter.
        @param capacity [in] Exact int output byte capacity, 0..MAX_OUTPUT; default0.
        @param other [in] Exact unsigned second handle/ID used by the selected form.
        @param correlation [in] Exact unsigned 64-bit correlation value; default0.
        @return Result with native status and only the selected form's output.
        Error90/107/110 does not authorize retry; admitted effects may persist.
        @raises TypeError Non-bytes payload or incompatible name argument.
        @raises ValueError Invalid integer/range/capacity or oversized request.
        @raises BaseException Native/ordinary Python allocation failures propagate.
        @see Backend.retire
        """
        if name not in self.functions:
            return Result(95)
        unsigned(handle)
        unsigned(other)
        unsigned(correlation)
        if not isinstance(payload, bytes):
            raise TypeError("immutable canonical bytes are required")
        if len(payload) > MAX_INPUT:
            raise ValueError("request exceeds the ABI byte bound")
        if type(capacity) is not int or not 0 <= capacity <= MAX_OUTPUT:
            raise ValueError("invalid output capacity")
        raw = self._invoke(name, handle, payload, capacity, other, correlation)
        try:
            return Result(*raw)
        except BaseException as error:
            if name == "capability_open" and raw[0] == 0 and raw[3]:
                try:
                    cleanup = self._invoke("capability_close", raw[3], b"", 0, 0, 0)
                except BaseException as cleanup:
                    try:
                        error.roswasm_cleanup = cleanup
                    except BaseException:
                        pass
                else:
                    try:
                        error.roswasm_cleanup = cleanup
                    except BaseException:
                        pass
            raise

    def retire(self, name, handle, witness):
        """@brief Retire once using a witness updated at the actual C boundary.

        @details False means the C import boundary was not crossed. True also covers
        unknown/post-effect failures and must never be reset or replayed.
        The caller owns and retains the cell. This low-level method supplies no
        callback lease exclusion; Session/Capability retirement provides that.
        Closing/revoking is resource retirement, not proof of a physical stop.
        @param name [in] Exactly capability_close or capability_revoke.
        @param handle [in] Nonzero exact int in 1..2**64-1, owned by this Instance.
        @param witness [in,out] Exact one-element built-in list initially [False].
        The C bridge changes it to True immediately before the real import.
        @return Result containing the unmodified numeric retirement status.
        @raises ValueError Invalid operation, handle or reused/malformed witness.
        @raises BaseException Native/allocation failure; never infer no effect
        merely from an exception. Inspect the retained witness without resetting.
        @see Backend.invoke
        """
        if name not in ("capability_close", "capability_revoke"):
            raise ValueError("retirement operation required")
        unsigned(handle)
        if not handle:
            raise ValueError("nonzero retirement handle required")
        if type(witness) is not list or len(witness) != 1 or witness[0] is not False:
            raise ValueError("unattempted exact-list witness required")
        raw = self._invoke(name, handle, b"", 0, 0, 0, witness)
        return Result(*raw)

    def abi_version(self):
        """@brief Read ABI v1's version value without opening a capability.

        @details Performs one synchronous abi_version import and checked status.
        A returned version is neither permission nor evidence that a Gateway or
        native ROS peer exists. No background work or resource ownership starts.
        @return Exact version integer supplied in Result.value, normally1.
        @raises RosError Nonzero ABI status; the full Result is retained.
        @see Backend.invoke
        """
        return self.invoke("abi_version").checked().value

    def prepare_owned_open(self, alias, retirement):
        """@brief Reserve optional backend2 C open evidence before any ROS effect.

        @details Requires the owned-Service-enabled static extension's witness
        API. Encodes/roots alias bytes and reserves C flags/full handle/primary
        exception references before open. Does not enter a ROS import or create
        rights. Treat the returned object as an opaque same-backend transaction;
        keep it and its retirement cell alive through adoption or cleanup.
        @param alias [in] Exact str, strict UTF-8, 1..255 bytes, without NUL.
        @param retirement [in,out] Exact owner list initially [False]; the real
        fallback marks it at cleanup entry so later paths cannot replay close.
        @return _OpenCapture with copied snapshot and explicit adopt/cleanup APIs.
        @raises ValueError Wrong backend, alias type/bytes or malformed witness.
        @raises ImportError Missing real optional witness extension functions.
        @see Backend.open
        """
        if self.version != 2 or type(alias) is not str:
            raise ValueError("explicit backend2 Unicode alias required")
        data = alias.encode("utf-8", "strict")
        if not data or len(data) > 255 or b"\0" in data:
            raise ValueError("invalid alias")
        return _OpenCapture(self, alias, data, retirement)

    def open(self, alias, *, capture=None):
        """@brief Open one exact alias already granted to the current Instance.

        @details Performs one capability_open, with no alias inference, fallback
        or retry. A successful Result.value is an owned handle requiring explicit
        close/revoke; prefer Session.open for a pre-registered owner ledger. With
        a capture, any exception preserves the first primary and attempts its
        actual C cleanup once; the returned failure status is not raised here.
        @param alias [in] Unicode str encoded as strict UTF-8, 1..255 bytes, no NUL.
        @param capture [in,out] Optional exact _OpenCapture reserved for this
        Backend object and alias. It retains C evidence; no foreign capture is used.
        @return Result; status13 is permission denied. Only status0 carries an
        owned handle. No grant or native type identity is synthesized.
        @raises TypeError Non-Unicode alias without a capture.
        @raises ValueError Malformed alias/capture or an encoder validation failure.
        @raises BaseException Native/allocation failures propagate with retained
        capture cleanup evidence; effects may already have occurred.
        @see Result.checked
        """
        if capture is not None:
            if (
                type(capture) is not _OpenCapture
                or capture.backend is not self
                or capture.alias != alias
            ):
                raise ValueError("actual prepared same-backend alias capture required")
            try:
                raw = self._invoke(
                    "capability_open", 0, capture.data, 0, 0, 0, None, capture.token
                )
                return Result(*raw)
            except BaseException as primary:
                if capture.primary is None:
                    capture.primary = primary
                try:
                    # Actual C numeric close, not another generic allocating
                    # invoke. An already entered C fallback is never replayed.
                    capture.cleanup()
                except BaseException as cleanup:
                    capture.cleanup_error = cleanup
                raise
        if not isinstance(alias, str):
            raise TypeError("alias must be Unicode text")
        data = alias.encode("utf-8", "strict")
        if not data or len(data) > 255 or b"\0" in data:
            raise ValueError("invalid alias")
        return self.invoke("capability_open", payload=data)
