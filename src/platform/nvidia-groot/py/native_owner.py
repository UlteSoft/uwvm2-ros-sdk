"""Explicit trusted native ROS2 -> actual GR00T N1.7 inference owner.

No model, ROS, CUDA or network operation until --enable-native-inference. This
runs OUTSIDE Wasm under the operator's finite whole-process/cgroup owner. It
never forwards SDK reset/kill/model-path/options to the Guest and never actuates.
"""

import argparse
import os
import re
from pathlib import Path
import time
from native_conversion import (
    Refused,
    observation,
    prepared_response,
    selected_modalities,
    state_language,
)
from owned_sdk_source import capture, install
from staged_video import StagedVideo


class OncePolicy:
    """@brief Serialize finite, nonreplayable calls to the actual GR00T policy.

    @details Application nonces are never native ROS request IDs or Gateway
    tickets. No call is retried after uncertain inference effects. The trusted
    owner admits the exact model, dependencies, device and loopback service before
    construction; this object grants no permissions and never actuates a robot.
    Confine construction and every method to one native executor thread.
    @see call
    @see main
    """

    def __init__(
        self, policy, np, response_type, tensor_type, deadline, maximum, call_ns
    ):
        """@brief Capture actual model modalities and allocate finite call history.

        @details Calls selected_modalities once but performs no inference. Retains
        policy, NumPy and genuine generated classes until the outer owner retires
        all callbacks. Uses the pinned CPython 3.12 GR00T environment; runtime,
        CUDA/ROS and model-license admission occur outside this constructor.
        @param[in] policy Actual admitted Gr00tPolicy instance.
        @param[in] np Actual admitted NumPy module for complete private arrays.
        @param[in] response_type Genuine complete InferAction response class.
        @param[in] tensor_type Genuine complete FloatTensor class.
        @param[in] deadline Absolute time.monotonic_ns owner deadline.
        @param[in] maximum Prevalidated history capacity in [1,64] calls.
        @param[in] call_ns Prevalidated positive per-call budget in nanoseconds,
        no longer than the remaining whole-owner lifetime.
        @return Initialized serialized owner; configuration/allocation exceptions
        propagate before serving any request.
        @see native_conversion.selected_modalities
        @see call
        """
        self.policy = policy
        self.np = np
        self.response_type = response_type
        self.tensor_type = tensor_type
        self.configuration = selected_modalities(policy)
        self.deadline = deadline
        self.call_ns = call_ns
        self.nonces = [0] * maximum
        self.codes = [0] * maximum
        self.called = [False] * maximum
        self.used = 0
        self.busy = False
        self.terminal = False
        self.actual_calls = 0
        self.last_error = 0
        self.effect_unknown = False
        self.ever_uncertain = False

    def failure(self, nonce, code):
        """@brief Construct one complete typed failure response without inference.

        @details Preserves a valid exact uint64 nonce, otherwise uses zero. Action
        is empty and info_is_empty is false, so failure cannot masquerade as a
        successful empty SDK result. Normal generated-object allocation may fail.
        @param[in] nonce Request correlation value; not a permission/ticket.
        @param[in] code Numeric primary SDK status retained without translation.
        @return New generated response; no ROS publication or retry occurs.
        Call only on the serialized owner thread.
        @see call
        @see native_conversion.prepared_response
        """
        out = self.response_type()
        out.application_nonce = (
            nonce if type(nonce) is int and 0 <= nonce < 2**64 else 0
        )
        out.status = code
        out.action = []
        out.info_is_empty = False
        return out

    def private_observation(self, request):
        """@brief Copy the complete small inline request into owned model inputs.

        @details Delegates to the actual inline conversion without running the
        policy. Caller retains the genuine request unchanged until return; all
        returned arrays own their bytes. No model/ROS authority is acquired.
        @param[in] request Complete generated InferAction.Request.
        @return Private full observation; conversion/allocation errors propagate.
        Serialized calls only; normal-sized camera input uses StagedOncePolicy.
        @see native_conversion.observation
        @see StagedOncePolicy.private_observation
        """
        return observation(request, self.configuration, self.np)

    def call(self, request, _unused_response):
        """@brief Admit one nonce, invoke get_action once, and return all actions.

        @details Reserves nonreusing history before input conversion. Rejects busy
        (17), retired/reused (125), invalid nonce (22), full history (90) or expired
        owner (110) before inference. Uses get_action(private, None) exactly once.
        A timeout/model/conversion fault after invocation marks effect uncertainty
        and retires the owner; no replay or partial tensor success is possible.
        Time checks are cooperative: blocked native/GPU work still needs the
        external finite process owner, and timeout does not prove GPU cancellation.
        @param[in] request Actual complete generated request retained by rclpy for
        the callback; application_nonce must be a positive exact uint64.
        @param[in] _unused_response rclpy-provided placeholder, intentionally not
        reused so a failed conversion cannot leak a partially filled response.
        @return New full generated response. Refused retains its status; other
        ordinary exceptions map to 5. Response allocation/BaseException can still
        propagate. Invoke only on the private SingleThreadedExecutor; permissions,
        model license/device admission and service publication are external.
        @see failure
        @see native_conversion.prepared_response
        @see main
        """
        nonce = request.application_nonce
        if self.busy:
            return self.failure(nonce, 17)
        if self.terminal:
            return self.failure(nonce, 125)
        if type(nonce) is not int or not 0 < nonce < 2**64:
            return self.failure(nonce, 22)
        if nonce in self.nonces[: self.used]:
            return self.failure(nonce, 125)
        if self.used == len(self.nonces):
            return self.failure(nonce, 90)
        if time.monotonic_ns() >= self.deadline:
            return self.failure(nonce, 110)
        # Preallocated, nonreusing application transaction history. This nonce
        # is NOT the real ROS request writer/sequence or the Gateway ticket.
        slot = self.used
        self.nonces[slot] = nonce
        self.used += 1
        self.busy = True
        until = min(self.deadline, time.monotonic_ns() + self.call_ns)
        try:
            private = self.private_observation(request)
            if time.monotonic_ns() >= until:
                raise Refused(110, "deadline before inference")
            self.actual_calls += 1
            self.called[slot] = True
            self.effect_unknown = True
            action, info = self.policy.get_action(private, None)  # exactly ONCE
            result = prepared_response(
                nonce,
                action,
                info,
                self.configuration,
                self.np,
                self.response_type,
                self.tensor_type,
            )
            if time.monotonic_ns() >= until:
                raise Refused(110, "inference completed after finite deadline")
            self.effect_unknown = False
            return result
        except Refused as error:
            if self.effect_unknown:
                self.ever_uncertain = True
                self.terminal = True
            self.codes[slot] = error.code
            if not self.last_error:
                self.last_error = error.code
            return self.failure(nonce, error.code)
        except Exception:
            # SDK/model faults have no replay or partial tensor success. Native
            # inference may already have happened; keep that uncertainty.
            if self.effect_unknown:
                self.ever_uncertain = True
                self.terminal = True
            self.codes[slot] = 5
            if not self.last_error:
                self.last_error = 5
            return self.failure(nonce, 5)
        finally:
            self.busy = False


class StagedOncePolicy(OncePolicy):
    """@brief Use a complete consumed RGB upload for the same once-only policy.

    @details The outer owner sets staged to its peer-bound StagedVideo instance.
    History, timeout, uncertainty and serialization semantics remain OncePolicy's;
    the uploaded protocol does not add model, ROS or actuator permissions.
    @see OncePolicy.call
    @see StagedVideo
    """

    def private_observation(self, request):
        """@brief Consume all uploaded pixels and copy full state/language inputs.

        @details Converts non-video inputs first, then consumes the exact upload
        identified by observation_nonce before policy invocation. Failed or late
        conversion never restores an observation or an inference nonce for retry.
        @param[in] request Genuine complete InferUploadedAction.Request retained
        immutably by the serialized callback until conversion returns.
        @return Owned policy observation; Refused/allocation exceptions propagate
        to OncePolicy.call. No inference or permission change occurs here.
        @see StagedVideo.take
        @see native_conversion.state_language
        """
        private = state_language(request, self.configuration, self.np)
        private["video"] = self.staged.take(request.observation_nonce, self.np)
        return private


def staging_callback(staged, operation, response_type):
    """@brief Bind one fixed typed upload operation to its private native owner.

    @details Returns an rclpy callback for begin, write or release; no endpoint is
    created here. Each request preserves observation_nonce and every chunk byte.
    Refused maps to its status, MemoryError to 12, ordinary faults to 5. Callbacks
    must share the same SingleThreadedExecutor as inference and cleanup.
    @param[in] staged Retained peer-bound StagedVideo instance.
    @param[in] operation Fixed trusted string begin/write/release, not a remote
    method selector. Other strings produce a typed invalid-status response.
    @param[in] response_type Actual generated complete response class for that
    operation; retained until its callback is destroyed.
    @return New callback; model, ROS, file and device permissions are unchanged.
    @see StagedVideo.begin
    @see StagedVideo.write
    @see main
    """

    def callback(request, _unused_response):
        """@brief Execute the fixed upload operation on one complete ROS request.

        @details Called only by the admitted serialized native service executor.
        No policy is invoked. The request remains owned by rclpy through return;
        the new generated response owns its result fields.
        @param[in] request Genuine request class matching the fixed operation.
        @param[in] _unused_response Placeholder excluded from partial writes.
        @return Complete status/correlation response; generated allocation errors
        may propagate before conversion. All authority was admitted by main.
        @see staging_callback
        """
        response = response_type()
        nonce = request.observation_nonce
        response.observation_nonce = nonce
        try:
            if operation == "begin":
                staged.begin(nonce, request.video)
            elif operation == "write":
                response.accepted_bytes = staged.write(
                    nonce, request.key, request.offset, request.pixels
                )
            elif operation == "release":
                staged.release(nonce)
            else:
                raise Refused(22, "unknown fixed staging operation")
            response.status = 0
        except Refused as error:
            response.status = error.code
        except MemoryError:
            response.status = 12
        except Exception:
            response.status = 5
        return response

    return callback


def parser():
    """@brief Describe the explicit native inference and staged-upload CLI.

    @details Creates an argparse parser without reading SDK/model paths, loading
    dependencies or granting native/Guest authority. Defaults leave inference
    disabled. Every path, domain, service and finite lifetime is explicitly
    supplied; staged defaults are 8 MiB, 5000 ms and 16384 upload operations.
    @return A new parser; parse/validation is performed by main on its thread.
    @see main
    @see README.xmake.md
    """
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--enable-native-inference", action="store_true")
    p.add_argument("--sdk-root", required=True)
    p.add_argument("--sdk-source-inventory", required=True)
    p.add_argument("--model-root", required=True)
    p.add_argument("--embodiment", required=True)
    p.add_argument("--device", required=True)
    p.add_argument("--service", required=True)
    p.add_argument("--domain", type=int, required=True)
    p.add_argument("--lifetime-ms", type=int, required=True)
    p.add_argument("--call-ms", type=int, required=True)
    p.add_argument("--maximum-requests", type=int, required=True)
    p.add_argument("--enable-staged-video", action="store_true")
    p.add_argument("--staging-prefix")
    p.add_argument("--maximum-video-bytes", type=int, default=8 * 1024 * 1024)
    p.add_argument("--observation-lease-ms", type=int, default=5000)
    p.add_argument("--maximum-upload-operations", type=int, default=16384)
    return p


def main(argv=None):
    """@brief Run the explicitly enabled, finite, source-bound native GR00T service.

    @details Returns 13 before SDK/model/file/ROS/CUDA work unless enabled. The
    enabled path requires fixed admitted SDK sources, local licensed weights,
    genuine CPython 3.12/Torch/NumPy/ROS/CUDA dependencies, explicit domain/service,
    and an external finite process owner. Uses a private ROS Context and one
    serialized executor, retires services/node/context independently, never
    forwards model paths/reset/kill operations to a Guest, and never actuates.
    Owner lifetime is 1..60000 ms, calls 1..lifetime ms, history 1..64; staged
    leases/bytes/operations remain independently bounded. Blocking model/GPU work
    is not preempted by Python deadline checks.
    @param[in] argv Optional immutable CLI argument list; None uses sys.argv.
    @return Numeric primary/cleanup status; argparse may raise SystemExit for
    invalid CLI syntax. No return code alone proves native inference, transport
    binding, safe robot behavior or physical cancellation.
    @see parser
    @see OncePolicy.call
    @see run_captured.run
    """
    a = parser().parse_args(argv)
    if not a.enable_native_inference:
        return 13
    if not (
        0 <= a.domain <= 232
        and 1 <= a.lifetime_ms <= 60000
        and 1 <= a.call_ms <= a.lifetime_ms
        and 1 <= a.maximum_requests <= 64
    ):
        return 22
    topic = re.compile(r"/(?:[A-Za-z_][A-Za-z0-9_]*)(?:/[A-Za-z_][A-Za-z0-9_]*)*")
    if len(a.service) > 255 or topic.fullmatch(a.service) is None:
        return 22
    if a.enable_staged_video:
        if (
            not a.staging_prefix
            or len(a.staging_prefix) > 220
            or topic.fullmatch(a.staging_prefix) is None
            or not 1 <= a.maximum_video_bytes <= StagedVideo.MAXIMUM_BYTES
            or not 1 <= a.observation_lease_ms <= a.lifetime_ms
            or not 1 <= a.maximum_upload_operations <= 65536
        ):
            return 22
        if a.service in {
            a.staging_prefix + "/" + leaf for leaf in ("begin", "write", "release")
        }:
            return 22
    model = Path(a.model_root)
    if (
        not model.is_absolute()
        or model.resolve(strict=True) != model
        or not model.is_dir()
    ):
        return 22
    deadline = time.monotonic_ns() + a.lifetime_ms * 1000000
    captured = capture(a.sdk_root, a.sdk_source_inventory)
    install(captured)
    os.environ["HF_HUB_OFFLINE"] = "1"
    os.environ["TRANSFORMERS_OFFLINE"] = "1"
    os.environ["ROS_LOCALHOST_ONLY"] = "1"
    os.environ["ROS_AUTOMATIC_DISCOVERY_RANGE"] = "LOCALHOST"
    # These are genuine native imports. Their full environment, weight files,
    # binary extensions and device must be independently frozen/qualified by
    # the process owner. No remote model identifier or Guest-supplied path.
    import numpy as np
    from gr00t.policy.gr00t_policy import Gr00tPolicy
    import rclpy
    from rclpy.context import Context
    from rclpy.executors import SingleThreadedExecutor
    from rclpy.qos import QoSProfile, HistoryPolicy, ReliabilityPolicy, DurabilityPolicy
    from uwvm_groot_bridge.srv import InferAction
    from uwvm_groot_bridge.msg import FloatTensor

    policy = Gr00tPolicy(a.embodiment, str(model), device=a.device, strict=True)
    staged = None
    staging = []
    if a.enable_staged_video:
        from uwvm_groot_bridge.srv import (
            BeginObservation,
            WriteRGBChunk,
            ReleaseObservation,
            InferUploadedAction,
        )

        service_type = InferUploadedAction
        owner = StagedOncePolicy(
            policy,
            np,
            service_type.Response,
            FloatTensor,
            deadline,
            a.maximum_requests,
            a.call_ms * 1000000,
        )
        staged = StagedVideo(
            owner.configuration,
            deadline,
            a.observation_lease_ms * 1000000,
            a.maximum_video_bytes,
            a.maximum_requests,
            a.maximum_upload_operations,
        )
        owner.staged = staged
        staging = [
            ("begin", BeginObservation),
            ("write", WriteRGBChunk),
            ("release", ReleaseObservation),
        ]
    else:
        service_type = InferAction
        owner = OncePolicy(
            policy,
            np,
            service_type.Response,
            FloatTensor,
            deadline,
            a.maximum_requests,
            a.call_ms * 1000000,
        )
    if time.monotonic_ns() >= deadline:
        return 110
    context = Context()
    node = None
    executor = None
    services = []
    cleanup = []
    primary = 0
    try:
        rclpy.init(context=context, domain_id=a.domain)
        node = rclpy.create_node("uwvm_groot_inference", context=context)
        executor = SingleThreadedExecutor(context=context)
        executor.add_node(node)
        qos = QoSProfile(
            depth=1,
            history=HistoryPolicy.KEEP_LAST,
            reliability=ReliabilityPolicy.RELIABLE,
            durability=DurabilityPolicy.VOLATILE,
        )
        services.append(
            node.create_service(service_type, a.service, owner.call, qos_profile=qos)
        )
        for operation, kind in staging:
            services.append(
                node.create_service(
                    kind,
                    a.staging_prefix + "/" + operation,
                    staging_callback(staged, operation, kind.Response),
                    qos_profile=qos,
                )
            )
        while (
            context.ok()
            and time.monotonic_ns() < deadline
            and owner.used < a.maximum_requests
            and not owner.terminal
        ):
            remaining = (deadline - time.monotonic_ns()) / 1e9
            if remaining <= 0:
                break
            executor.spin_once(timeout_sec=min(0.05, remaining))
        primary = owner.last_error
    except Exception:
        primary = 5
    finally:
        if executor is not None:
            try:
                if node is not None:
                    executor.remove_node(node)
                cleanup.append(("executor", executor.shutdown(timeout_sec=0.5)))
            except Exception as e:
                cleanup.append(("executor", e))
        for service in reversed(services):
            try:
                cleanup.append(("service", bool(node.destroy_service(service))))
            except Exception as e:
                cleanup.append(("service", e))
        if staged is not None:
            staged.close()
        if node is not None:
            try:
                cleanup.append(("node", node.destroy_node()))
            except Exception as e:
                cleanup.append(("node", e))
        try:
            if context.ok():
                context.shutdown()
                cleanup.append(("context", True))
        except Exception as e:
            cleanup.append(("context", e))
        # Retain independent real cleanup and inference facts for a caller's
        # harness; never label inference timeout as DDS cancellation or stop.
        main.last = {
            "primary": primary,
            "cleanup": cleanup,
            "calls": owner.actual_calls,
            "unknown": owner.effect_unknown,
            "ever_uncertain": owner.ever_uncertain,
            "staging_operations": staged.operations if staged is not None else 0,
            "uploaded_bytes": staged.accepted_bytes if staged is not None else 0,
            "complete_observations": staged.completed_observations
            if staged is not None
            else 0,
        }
    return primary or (
        5 if any(isinstance(v, Exception) or v is False for _, v in cleanup) else 0
    )


if __name__ == "__main__":
    raise SystemExit(main())
