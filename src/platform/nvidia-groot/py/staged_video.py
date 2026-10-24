"""Finite whole RGB observations for the trusted native GR00T service.

This is an authored transport protocol, not an NVIDIA SDK protocol. A separate
peer-bound Gateway policy owns each native service instance. Observation IDs do
not authenticate callers or grant access to a shared service. Every camera byte
is received in order before any inference. No partial frame, resize, synthetic
pixel, GPU pointer, file name or model management operation is admitted here.
"""

import numbers
import time

from native_conversion import Refused, keyed, require, shape, text


class StagedVideo:
    """@brief Receive one complete bounded RGB observation per service owner.

    @details This authored upload protocol retains B/T/H/W/RGB values without
    resizing. It is separate from NVIDIA's SDK and never invokes a policy. All
    calls must use the same serialized native executor thread; there are no
    locks or background tasks. Gateway identity, ROS access and model authority
    are admitted outside this object. Observation nonces provide correlation,
    not authentication. CPython 3.12 and actual NumPy are required by the owner.
    @see begin
    @see take
    @see native_owner.StagedOncePolicy
    """

    # @brief Maximum bytes per complete WriteRGBChunk request.
    # @details The generated bridge schema carries at most 768 uint8 elements.
    # @see write
    CHUNK_BYTES = 768
    # @brief Hard upper bound for the total bytes of all cameras in one upload.
    # @details 16 MiB is a transport quota; it does not resize or restrict the
    # original model. Larger actual observations require a separately typed lane.
    # @see __init__
    MAXIMUM_BYTES = 16 * 1024 * 1024

    def __init__(
        self,
        configuration,
        deadline,
        lease_ns,
        maximum_bytes,
        maximum_transactions,
        maximum_operations,
        clock=time.monotonic_ns,
    ):
        """@brief Establish finite memory, history, operation and lease budgets.

        @details Allocates only fixed history initially; image bytes are reserved
        by begin. No ROS, file, model, CUDA or permission operation occurs. The
        caller retains configuration and a trusted monotonic clock for the owner
        lifetime and serializes every method call until close.
        @param[in] configuration Exact selected_modalities result for the policy.
        @param[in] deadline Absolute monotonic nanosecond owner deadline.
        @param[in] lease_ns Upload lease in [1, 60000000000] nanoseconds; never
        extends the owner deadline and is never renewed by a write.
        @param[in] maximum_bytes Whole-observation bytes in [1, MAXIMUM_BYTES].
        @param[in] maximum_transactions Nonreusing nonce history slots in [1,64].
        @param[in] maximum_operations Lifetime operation count in [1,65536].
        @param[in] clock Trusted monotonic nanosecond callable; production default
        is time.monotonic_ns. It is not supplied by a Guest or remote request.
        @return A new empty owner; Refused(22) for invalid declared budgets.
        @see begin
        @see close
        """
        require(
            type(maximum_bytes) is int and 1 <= maximum_bytes <= self.MAXIMUM_BYTES,
            22,
            "explicit whole-observation memory budget required",
        )
        require(
            type(maximum_transactions) is int and 1 <= maximum_transactions <= 64,
            22,
            "finite nonreusing observation history required",
        )
        require(
            type(maximum_operations) is int and 1 <= maximum_operations <= 65536,
            22,
            "finite upload operation budget required",
        )
        require(
            type(lease_ns) is int and 0 < lease_ns <= 60_000_000_000,
            22,
            "finite observation lease required",
        )
        self.configuration = configuration
        self.deadline = deadline
        self.lease_ns = lease_ns
        self.maximum_bytes = maximum_bytes
        self.maximum_operations = maximum_operations
        self.clock = clock
        self.nonces = [0] * maximum_transactions
        self.used = 0
        self.operations = 0
        self.active = None
        self.closed = False
        self.accepted_bytes = 0
        self.completed_observations = 0

    def _admit(self):
        require(not self.closed, 125, "observation owner retired")
        require(self.clock() < self.deadline, 110, "whole owner deadline expired")
        require(
            self.operations < self.maximum_operations,
            90,
            "upload operation budget exhausted",
        )
        self.operations += 1

    @staticmethod
    def _nonce(nonce):
        require(
            type(nonce) is int and 0 < nonce < 2**64,
            22,
            "positive exact observation nonce required",
        )

    def _current(self, nonce):
        self._nonce(nonce)
        require(
            self.active is not None and self.active["nonce"] == nonce,
            125,
            "observation is absent, consumed or belongs to another owner",
        )
        if self.clock() >= self.active["until"]:
            self.active = None
            raise Refused(110, "observation lease expired without renewal")
        return self.active

    def begin(self, nonce, descriptors):
        """@brief Reserve every camera frame for one nonreusable observation ID.

        @details Requires exact actual video keys, positive rank-5 dimensions,
        B=1, actual T and RGB=3. Reserves nonce history before allocating bytes;
        an allocation failure cannot make the nonce reusable. At most one upload
        is active; expiry retires its storage without extending the lease.
        The caller keeps descriptors/configuration immutable until return.
        @param[in] nonce Positive exact Python int below 2**64, local to this
        peer-bound owner; not a native ROS request identifier or permission.
        @param[in] descriptors Complete generated RGBDescriptor records for all
        selected keys; total encoded payload must fit maximum_bytes.
        @return None on success. Refused(17) for another active upload, (125) for
        reused IDs/closed owner, (110) for expiry, (22/90) for invalid/quota input;
        allocation failures propagate. Synchronous, serialized calls only.
        @see write
        @see native_conversion.selected_modalities
        """
        self._admit()
        self._nonce(nonce)
        if self.active is not None and self.clock() >= self.active["until"]:
            self.active = None
        require(self.active is None, 17, "one observation at a time per service owner")
        require(
            nonce not in self.nonces[: self.used],
            125,
            "observation nonce is never reusable",
        )
        require(self.used < len(self.nonces), 90, "observation history exhausted")
        rows = keyed(descriptors, self.configuration["video"][0], 3)
        plan = []
        total = 0
        for key in self.configuration["video"][0]:
            dims, count = shape(rows[key].shape, 5, self.maximum_bytes)
            require(
                dims[0] == 1
                and dims[1] == self.configuration["video"][1]
                and dims[4] == 3,
                22,
                "complete actual B/T/H/W/RGB dimensions required",
            )
            require(
                total <= self.maximum_bytes - count,
                90,
                "whole observation byte budget exceeded",
            )
            total += count
            plan.append((key, dims, count))
        self.nonces[self.used] = nonce
        self.used += 1
        # Reserve history before allocation. A failed allocation does not make
        # this ID reusable. No active frame is published until every allocation.
        frames = {
            key: {"shape": dims, "bytes": bytearray(count), "filled": 0}
            for key, dims, count in plan
        }
        until = min(self.deadline, self.clock() + self.lease_ns)
        require(self.clock() < until, 110, "observation expired during allocation")
        self.active = {"nonce": nonce, "until": until, "frames": frames, "bytes": total}

    def write(self, nonce, key, offset, pixels):
        """@brief Copy exactly the next contiguous chunk into one camera frame.

        @details Validates every uint8 value before commit. The chunk must not
        cross the declared complete frame extent and does not renew its lease.
        Retransmissions, overlap and out-of-order offsets are refused, rather
        than counted twice. Source bytes may be released after this call returns.
        No inference, publication, permissions or async work occurs.
        @param[in] nonce Current admitted positive observation ID.
        @param[in] key Exact selected UTF-8 camera key, at most 64 bytes.
        @param[in] offset Next frame byte offset in [0, 2**32-1].
        @param[in] pixels Stable sequence of 1..CHUNK_BYTES integral values in
        [0,255]; booleans and narrowing from larger integers are rejected.
        @return New filled byte count for this frame. Refused(125) for an absent
        transaction or noncontiguous offset; (110) expiry; (22/90) invalid/quota.
        Owner calls must remain serialized on its executor thread.
        @see begin
        @see take
        """
        self._admit()
        current = self._current(nonce)
        key = text(key, 64)
        require(key in current["frames"], 22, "unknown camera key")
        require(
            type(offset) is int and 0 <= offset <= 0xFFFFFFFF,
            22,
            "exact uint32 offset required",
        )
        require(
            1 <= len(pixels) <= self.CHUNK_BYTES,
            90,
            "complete nonempty bounded RGB chunk required",
        )
        require(
            all(
                isinstance(x, numbers.Integral)
                and not isinstance(x, bool)
                and 0 <= x <= 255
                for x in pixels
            ),
            22,
            "complete uint8 pixels required",
        )
        frame = current["frames"][key]
        require(
            offset == frame["filled"],
            125,
            "only the next contiguous chunk is accepted; no replay",
        )
        require(
            len(pixels) <= len(frame["bytes"]) - offset,
            90,
            "chunk crosses complete frame extent",
        )
        private = bytes(pixels)
        require(
            self.clock() < current["until"],
            110,
            "observation expired before chunk commit",
        )
        frame["bytes"][offset : offset + len(private)] = private
        frame["filled"] += len(private)
        self.accepted_bytes += len(private)
        return frame["filled"]

    def take(self, nonce, np):
        """@brief Consume all complete frames into independent policy arrays.

        @details All cameras must be fully received. Retires the upload before
        allocation/conversion, then copies every uint8 sample into private owned
        NumPy B/T/H/W/RGB arrays. A failed conversion or late completion does not
        permit replay. Returned arrays remain valid after release/close. This
        operation performs no inference and grants no ROS/model/GPU authority.
        @param[in] nonce Current admitted positive observation ID.
        @param[in] np Actual NumPy module from the admitted model environment.
        @return Camera-key-to-owned-array dictionary. Refused(11) means incomplete
        upload, (110) expiry, (125) absent/retired owner; allocation errors
        propagate. Synchronous and confined to the owner's serialized thread.
        @see native_owner.StagedOncePolicy.private_observation
        @see write
        """
        self._admit()
        current = self._current(nonce)
        require(
            all(
                row["filled"] == len(row["bytes"]) for row in current["frames"].values()
            ),
            11,
            "all complete camera frames must arrive before inference",
        )
        # Retire the observation before allocating model inputs. Neither a
        # conversion error nor an uncertain inference makes it replayable.
        self.active = None
        result = {
            key: np.frombuffer(row["bytes"], dtype=np.uint8)
            .reshape(row["shape"])
            .copy()
            for key, row in current["frames"].items()
        }
        require(
            self.clock() < current["until"],
            110,
            "observation expired during private copy",
        )
        self.completed_observations += 1
        return result

    def release(self, nonce):
        """@brief Abandon an active observation without making its ID reusable.

        @details Clears the owner's reference to all staged bytes. Python may
        defer actual memory reclamation; this is not a secure erasure primitive.
        No inference is cancelled and no permissions or native endpoints change.
        @param[in] nonce Exact current observation ID owned by this service.
        @return None; Refused(110/125/90) retains expiry, absent/closed and
        operation-budget errors. Call only on the serialized owner thread.
        @see begin
        @see close
        """
        self._admit()
        self._current(nonce)
        self.active = None

    def close(self):
        """@brief Retire the upload owner and release its active frame references.

        @details Idempotently clears active state and prevents subsequent
        admission with status 125. Nonce history/counters remain available for
        diagnostics. Does not destroy ROS entities or preempt an in-flight model
        callback; the outer native owner performs those independent cleanups.
        @return None. Synchronous and serialized; performs no I/O or permission
        change. Independently owned arrays returned by take remain valid.
        @see take
        @see native_owner.main
        """
        self.active = None
        self.closed = True
