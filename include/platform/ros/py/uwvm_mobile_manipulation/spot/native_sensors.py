"""Full original Spot 5.0.1 image/point-cloud RPCs in a trusted native owner.

No constructor authenticates, creates a channel, discovers a service or starts
a worker. A separately supervised native bootstrap lends actual SDK clients
and binds retained Host/robot identities. There is no Guest management route.
"""

from dataclasses import dataclass
from importlib.metadata import version
import math
import threading
import time

from bosdyn.api import image_pb2, point_cloud_pb2
from bosdyn.client import image, point_cloud
from bosdyn.client.common import common_header_errors

OPERATIONS = frozenset(("image.sources", "image.get", "cloud.sources", "cloud.get"))
"""@brief Closed original sensor RPC roles accepted by this provider.
@details These four local names select the actual SDK 5.0.1 requests; the set
does not grant access. Source-list and data-fetch permissions remain separate.
@see SensorPolicy SpotSensorOwner.invoke_from_authenticated_host
"""


@dataclass(frozen=True)
class SensorPolicy:
    """@brief Immutable native identity, source, lifetime and allocation policy.

    @details Default identities, grants and limits deny every call. Owner and
    robot objects are retained and compared by identity, never by Guest text.
    operations is a frozenset subset of OPERATIONS. Source tuples contain at
    most 32 distinct, NUL-free UTF-8 names of 1..128 bytes. expires_at_ns uses
    time.monotonic_ns(), independently of camera/ROS timestamps. Zero bounds
    deny; positive ceilings are 5e9 RPC nanoseconds, 65536 request bytes,
    4194304 response bytes and 8 sources per data request. Byte limits apply to
    complete original protobuf messages. A separate real gRPC receive limit
    must be configured by bootstrap; these checks do not constrain allocation
    before decoding. All values are fixed for an owner's lifetime.
    @see OPERATIONS SpotSensorOwner SensorPolicy.__post_init__
    """

    authenticated_owner: object = None
    authenticated_robot: object = None
    operations: frozenset = frozenset()
    image_sources: tuple = ()
    cloud_sources: tuple = ()
    expires_at_ns: int = 0
    maximum_rpc_ns: int = 0
    maximum_request_bytes: int = 0
    maximum_response_bytes: int = 0
    maximum_sources_per_call: int = 0

    def __post_init__(self):
        """@brief Validate the immutable policy without performing an RPC.

        @details Called by the dataclass constructor. Checks exact container
        types, source encoding/uniqueness and finite integer bounds; does not
        authenticate either identity or infer grants from source names.
        @return None; the frozen policy remains valid or construction fails.
        @raises ValueError A role, source tuple, byte/RPC bound or expiry is invalid.
        @see SensorPolicy SpotSensorOwner.__init__
        """
        if type(self.operations) is not frozenset or not self.operations <= OPERATIONS:
            raise ValueError("closed immutable native sensor operation grants required")
        for sources in (self.image_sources, self.cloud_sources):
            if (
                type(sources) is not tuple
                or len(sources) > 32
                or len(set(sources)) != len(sources)
            ):
                raise ValueError("finite unique native source names required")
            for name in sources:
                if (
                    type(name) is not str
                    or not 0 < len(name.encode("utf-8")) <= 128
                    or "\0" in name
                ):
                    raise ValueError("original nonempty counted source name required")
        for number, ceiling in (
            (self.maximum_rpc_ns, 5_000_000_000),
            (self.maximum_request_bytes, 65536),
            (self.maximum_response_bytes, 4_194_304),
            (self.maximum_sources_per_call, 8),
        ):
            if type(number) is not int or not 0 <= number <= ceiling:
                raise ValueError(
                    "finite native sensor request/response/RPC bounds required"
                )
        if type(self.expires_at_ns) is not int or self.expires_at_ns < 0:
            raise ValueError("absolute native monotonic expiry required")


@dataclass
class SensorOutcome:
    """@brief Preserve one original sensor request's result and uncertainty.

    @details correlation is a nonzero full uint64 chosen once by native code.
    operation is one of OPERATIONS. delivery moves from unused to reserved,
    unknown before the actual RPC, and returned after complete reply checks.
    value retains the original protobuf even if a later size/deadline check
    fails; error retains the exact exception. This mutable diagnostic record
    belongs to SpotSensorOwner and must not be modified by observers.
    @see SpotSensorOwner.outcomes_native_only SpotSensorOwner.invoke_from_authenticated_host
    """

    correlation: int = 0
    operation: str = ""
    delivery: str = "unused"
    value: object = None
    error: object = None


class SpotSensorOwner:
    """@brief Dispatch bounded original sensor RPCs without field projection.

    @details
    Calls use the genuine version-specific BaseClient.call API, leaving its
    value extractor unset so GetImageResponse/GetPointCloudResponse headers,
    transforms, timestamps, calibration, custom parameters and all original
    fields survive. SDK error handlers retain their original exception types
    and complete error response. No numpy/OpenCV conversion is substituted.

    transport_receive_limit is a trusted bootstrap record of the real channel's
    configured maximum. This class cannot inspect a borrowed gRPC channel's
    options. Bootstrap must actually apply that limit; post-decode ByteSize
    checks alone do not establish a transport allocation bound.
    Dispatch uses a nonblocking lock; concurrent/reentrant calls fail rather
    than retry. The owner creates no worker and never closes borrowed clients.
    @see SensorPolicy SensorOutcome SpotSensorOwner.retire_native_only
    """

    def __init__(
        self,
        image_client=None,
        cloud_client=None,
        *,
        policy=SensorPolicy(),
        transport_receive_limit=0,
        maximum_history=32,
    ):
        """@brief Borrow real SDK clients and reserve the finite outcome history.

        @details Requires bosdyn-client/api/core 5.0.1. Construction performs no
        discovery, authentication, network operation, or background work.
        @param image_client Borrowed actual ImageClient, or None to refuse image RPCs.
        @param cloud_client Borrowed actual PointCloudClient, or None to refuse cloud RPCs.
        @param policy Concrete immutable SensorPolicy retained for this lifetime.
        @param transport_receive_limit Actual bootstrap-configured gRPC maximum
        in bytes; 0 denies, and a positive value cannot exceed policy response bytes.
        @param maximum_history Lifetime non-reusing slots, integer 1..64.
        @raises TypeError A client or policy has the wrong concrete type.
        @raises ValueError SDK versions or finite history/receive bounds disagree.
        @see SpotSensorOwner.invoke_from_authenticated_host SensorPolicy
        """
        if any(
            version(name) != "5.0.1"
            for name in ("bosdyn-client", "bosdyn-api", "bosdyn-core")
        ):
            raise ValueError("the actual selected Spot SDK 5.0.1 is required")
        if (
            image_client is not None
            and not isinstance(image_client, image.ImageClient)
            or cloud_client is not None
            and not isinstance(cloud_client, point_cloud.PointCloudClient)
        ):
            raise TypeError("genuine selected native SDK clients required")
        if type(policy) is not SensorPolicy:
            raise TypeError("immutable concrete native SensorPolicy required")
        if (
            type(maximum_history) is not int
            or not 1 <= maximum_history <= 64
            or type(transport_receive_limit) is not int
            or not 0 <= transport_receive_limit <= policy.maximum_response_bytes
        ):
            raise ValueError(
                "finite history and actual configured transport receive bound required"
            )
        self._image, self._cloud, self._policy = image_client, cloud_client, policy
        self._transport_limit = transport_receive_limit
        self._history = tuple(SensorOutcome() for _ in range(maximum_history))
        self._used, self._retired = 0, False
        self._lock = threading.Lock()

    def _request(self, operation, original):
        expected = {
            "image.sources": image_pb2.ListImageSourcesRequest,
            "image.get": image_pb2.GetImageRequest,
            "cloud.sources": point_cloud_pb2.ListPointCloudSourcesRequest,
            "cloud.get": point_cloud_pb2.GetPointCloudRequest,
        }[operation]
        if not isinstance(original, expected) or not original.IsInitialized():
            raise TypeError(
                "complete original request for the selected SDK RPC required"
            )
        if original.ByteSize() > self._policy.maximum_request_bytes:
            raise OSError(90, "complete request exceeds native grant")
        request = expected()
        request.CopyFrom(original)
        if request.ByteSize() > self._policy.maximum_request_bytes:
            raise OSError(90, "copied complete request exceeds native grant")
        if operation in ("image.get", "cloud.get"):
            values = (
                request.image_requests
                if operation == "image.get"
                else request.point_cloud_requests
            )
            allowed = (
                self._policy.image_sources
                if operation == "image.get"
                else self._policy.cloud_sources
            )
            if not 1 <= len(values) <= self._policy.maximum_sources_per_call:
                raise ValueError("explicit finite requested source set required")
            names = set()
            for value in values:
                name = (
                    value.image_source_name
                    if operation == "image.get"
                    else value.point_cloud_source_name
                )
                if name not in allowed or name in names:
                    raise PermissionError(
                        13,
                        "native source is not independently granted or is duplicated",
                    )
                names.add(name)
                if operation == "image.get":
                    # The original proto explicitly defines resize_ratio=0 as
                    # no resize. Keep all original enums/custom parameters.
                    if (
                        not math.isfinite(value.quality_percent)
                        or not 0 <= value.quality_percent <= 100
                        or not math.isfinite(value.resize_ratio)
                        or not 0 <= value.resize_ratio <= 1
                    ):
                        raise ValueError(
                            "finite original image quality/resize semantics required"
                        )
        return request

    def invoke_from_authenticated_host(
        self,
        authenticated_owner,
        authenticated_robot,
        operation,
        correlation,
        deadline_ns,
        original_request,
    ):
        """@brief Invoke exactly one independently granted original sensor RPC.

        @details Copies the complete typed request before the RPC. Data fetches
        require distinct explicitly allowed source names; image quality is
        finite 0..100 and resize ratio 0..1, with original zero semantics.
        BaseClient.call retains the entire original response and original SDK
        exception types. No image/point-cloud array conversion or truncation
        occurs. Once reserved, a correlation is never reused after failure.
        @param authenticated_owner Trusted object identical to policy's owner.
        @param authenticated_robot Trusted object identical to policy's robot.
        @param operation Exact granted string in OPERATIONS.
        @param correlation Integer 1..2**64-1, unique for this owner's lifetime.
        @param deadline_ns Absolute time.monotonic_ns() deadline within expiry
        and maximum_rpc_ns; unrelated to original response timestamps.
        @param original_request Borrowed initialized SDK 5.0.1 request matching
        the operation; do not mutate it while this synchronous call copies it.
        @return Owned full original ListImageSources/GetImage/ListPointCloudSources/
        GetPointCloud response. The native diagnostic row also retains it.
        @raises PermissionError Identity, role, lifetime or requested source is refused.
        @raises BlockingIOError Another call currently holds the nonblocking lock.
        @raises TimeoutError Absolute budget is invalid or elapsed, including after RPC.
        @raises OSError Size/history limits or missing real client refuse the call.
        @raises Exception Original SDK error; an entered RPC remains unknown and
        must not be replayed, even when a local post-reply check fails.
        @see SensorPolicy SensorOutcome SpotSensorOwner.outcomes_native_only
        """
        if not self._lock.acquire(blocking=False):
            raise BlockingIOError(17, "native sensor owner is busy")
        try:
            policy, now = self._policy, time.monotonic_ns()
            if (
                self._retired
                or authenticated_owner is None
                or authenticated_owner is not policy.authenticated_owner
                or authenticated_robot is None
                or authenticated_robot is not policy.authenticated_robot
                or operation not in policy.operations
                or not policy.maximum_rpc_ns
                or not policy.maximum_request_bytes
                or not policy.maximum_response_bytes
                or not self._transport_limit
                or now >= policy.expires_at_ns
            ):
                raise PermissionError(13, "no live authenticated native sensor grant")
            if (
                type(deadline_ns) is not int
                or not now < deadline_ns <= policy.expires_at_ns
                or deadline_ns - now > policy.maximum_rpc_ns
            ):
                raise TimeoutError(
                    "absolute RPC deadline exceeds native lifetime or allowance"
                )
            if type(correlation) is not int or not 0 < correlation < 1 << 64:
                raise ValueError("original nonzero u64 correlation required")
            if self._used == len(self._history):
                raise OSError(90, "non-reusing native sensor history exhausted")
            if any(
                row.correlation == correlation for row in self._history[: self._used]
            ):
                raise ValueError("native sensor correlation is never replayed")
            request = self._request(operation, original_request)
            client = self._image if operation.startswith("image.") else self._cloud
            if client is None:
                raise OSError(95, "genuine selected native client was not prepared")
            method, error_handler = {
                "image.sources": ("ListImageSources", common_header_errors),
                "image.get": ("GetImage", image._error_from_response),
                "cloud.sources": ("ListPointCloudSources", common_header_errors),
                "cloud.get": ("GetPointCloud", point_cloud._error_from_response),
            }[operation]
            rpc = getattr(client._stub, method)
            row = self._history[self._used]
            self._used += 1
            row.correlation, row.operation, row.delivery = (
                correlation,
                operation,
                "reserved",
            )
            try:
                remaining = deadline_ns - time.monotonic_ns()
                if remaining <= 0:
                    raise TimeoutError("native sensor deadline elapsed before RPC")
                row.delivery = "unknown"
                response = client.call(
                    rpc,
                    request,
                    value_from_response=None,
                    error_from_response=error_handler,
                    copy_request=False,
                    timeout=remaining / 1_000_000_000,
                )
                row.value = response
                if response.ByteSize() > min(
                    policy.maximum_response_bytes, self._transport_limit
                ):
                    raise OSError(
                        90, "complete native response exceeds grant; no truncation"
                    )
                if time.monotonic_ns() > deadline_ns:
                    raise TimeoutError(
                        "native sensor response exceeded absolute deadline"
                    )
                row.delivery = "returned"
                return response
            except BaseException as error:
                row.error = error
                raise
        finally:
            self._lock.release()

    def retire_native_only(self, authenticated_owner):
        """@brief Permanently refuse future sensor dispatch for the native owner.

        @details Waits for an in-flight synchronous call's lock, then retires
        local dispatch. Performs no gRPC cancellation, client/channel shutdown,
        or history erasure. Bootstrap retains those lifetime responsibilities.
        @param authenticated_owner Trusted object identical to policy's owner.
        @return None; repeat retirement has no additional external effect.
        @raises PermissionError The actual native owner identity is absent or wrong.
        @see SpotSensorOwner.invoke_from_authenticated_host SpotSensorOwner.outcomes_native_only
        """
        if (
            authenticated_owner is not self._policy.authenticated_owner
            or authenticated_owner is None
        ):
            raise PermissionError(13, "native sensor owner identity required")
        with self._lock:
            self._retired = True

    def outcomes_native_only(self):
        """@brief Inspect every consumed native sensor outcome in admission order.

        @details Takes the owner lock and returns a new tuple of borrowed mutable
        SensorOutcome records. Callers must not mutate records or their retained
        protobufs and must keep this owner alive. Reading creates no authority
        and does not turn unknown delivery into a known outcome.
        @return Tuple of used records; unused history slots are omitted.
        @see SensorOutcome SpotSensorOwner.retire_native_only
        """
        with self._lock:
            return tuple(self._history[: self._used])
