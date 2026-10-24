# SPDX-FileCopyrightText: Copyright (c) 2020-2026 NVIDIA CORPORATION & AFFILIATES. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
# Modifications: authored allowlisted retained-service interface for SDK clients.
"""Genuine Kit backend for language-specific complete clock-program SDKs.

This server executes the same native graph and Clock callbacks as native_clock.
The language application owns START/two20-frame phases/FINISH orchestration.
No generic Kit command, model path, plugin loading or physical control is exposed.
"""

import argparse
import json
import os
from pathlib import Path
import re
import sys
import time


class ClockProgramOwner:
    """@brief Own actual Kit, private service/Clock Contexts and a finite session.

    @details Every operation runs on the constructing thread. The service uses
    its own executor; the real ClockSubscribers uses a separate private executor
    so STEP dispatches exactly one genuine Clock callback without recursively
    spinning the service executor. Native call/deadline uncertainty retires this
    session; no operation is replayed. Actual matching CPython3.12/Kit/rclpy and
    generated ROSIDL services are mandatory, never supplied by this module.
    @see handle
    @see serve
    @see close
    """

    def __init__(self, sdk, domain, service, topics, nonce, lifetime_ms):
        """@brief Start genuine Kit and advertise the preselected native service.

        @details The caller has separately admitted native simulation/commands,
        exact physical SDK, loopback DDS and finite file/process/GPU resources.
        Constructs no clock graph until START. Constructor failure independently
        retires every acquired resource. No global rclpy shutdown is performed.
        @param[in] sdk Validated physical SDK Path containing imported isaacsim.
        @param[in] domain Explicit native domain0..232, fixed for this owner.
        @param[in] service Prevalidated private absolute ClockControl service.
        @param[in] topics Distinct automatic/manual absolute Clock topics.
        @param[in] nonce Positive uint64 session correlation; not authentication.
        @param[in] lifetime_ms Whole owner lifetime1..120000ms including Kit setup.
        @return New native owner; real dependency/native errors propagate.
        @see main
        """
        self._app = self._app_utils = self._observer = None
        self._context = self._node = self._executor = self._service = None
        self._state = self._steps = self._next = self._updates = self._calls = 0
        self._nonce, self._domain, self._topics = nonce, domain, topics
        self._deadline = time.monotonic_ns() + lifetime_ms * 1000000
        self._primary = self._retirement = 0
        self._cleanup = []
        self._closed = self._busy = self._graph_retired = False
        self._requests = []
        self._graph = "/UwvmClockSdkGraph"
        try:
            import isaacsim

            locations = [
                Path(value).resolve(strict=True) for value in isaacsim.__path__
            ]
            if not locations or any(
                not value.is_relative_to(sdk) for value in locations
            ):
                raise PermissionError(
                    "actual isaacsim must belong to the selected physical SDK"
                )
            from isaacsim import SimulationApp

            self._app = SimulationApp(
                {"renderer": "RealTimePathTracing", "headless": True}
            )
            import isaacsim.core.experimental.utils.app as app_utils
            import isaacsim.core.experimental.utils.stage as stage_utils
            import omni.graph.core as og
            from isaacsim.core.simulation_manager import SimulationManager

            self._app_utils, self._stage_utils, self._og = app_utils, stage_utils, og
            self._simulation_manager = SimulationManager
            app_utils.enable_extension("isaacsim.ros2.bridge")
            self._update()
            import rclpy
            from rclpy.context import Context
            from rclpy.executors import SingleThreadedExecutor
            from rclpy.qos import (
                QoSProfile,
                ReliabilityPolicy,
                DurabilityPolicy,
                HistoryPolicy,
            )
            from uwvm_isaac_sim_bridge.srv import ClockControl

            self._rclpy = rclpy
            self._context = Context()
            rclpy.init(context=self._context, domain_id=domain)
            self._node = rclpy.create_node(
                "uwvm_sim_clock_control", context=self._context
            )
            self._executor = SingleThreadedExecutor(context=self._context)
            self._executor.add_node(self._node)
            qos = QoSProfile(
                depth=1,
                history=HistoryPolicy.KEEP_LAST,
                reliability=ReliabilityPolicy.RELIABLE,
                durability=DurabilityPolicy.VOLATILE,
            )
            self._service = self._node.create_service(
                ClockControl, service, self.handle, qos_profile=qos
            )
        except BaseException:
            self.close()
            raise

    def _check(self):
        if time.monotonic_ns() >= self._deadline:
            raise TimeoutError("actual native clock owner lifetime expired")

    def _update(self):
        self._check()
        if not self._app.is_running():
            raise InterruptedError("actual Kit application stopped")
        self._app.update()
        self._updates += 1
        self._check()

    def _pause(self, milliseconds):
        self._check()
        if time.monotonic_ns() + milliseconds * 1000000 > self._deadline:
            raise TimeoutError("source pacing exceeds the native owner lifetime")
        time.sleep(milliseconds / 1000.0)
        self._check()

    def _retire_graph(self):
        if self._graph_retired:
            return self._retirement
        self._graph_retired = True
        operations = []
        if self._app_utils is not None:
            operations.append(("playback", self._app_utils.stop))
        for name, operation in operations:
            try:
                value = operation()
                self._cleanup.append({"resource": name, "result": value})
                if value is False:
                    self._retirement = self._retirement or 5
            except Exception as error:
                self._cleanup.append({"resource": name, "error": repr(error)})
                self._retirement = self._retirement or 5
        if self._observer is not None:
            rows = self._observer.close()
            self._cleanup.extend(rows)
            if any("error" in row or row.get("result") is False for row in rows):
                self._retirement = self._retirement or 5
        return self._retirement

    def handle(self, request, response):
        """@brief Execute one exact allowlisted original-program operation once.

        @details Validates nonce/full sequence/scheduling fields before mutation.
        START preserves discovery wait and original graph/setup updates. Each
        STEP performs real impulse/extra/normal updates, one actual Clock poll
        and100ms pacing. FINISH requires all40 frames; CANCEL retires a partial
        simulation. The callback returns before final service/Kit teardown so a
        real response can be sent. Unknown native effects set terminal state3.
        @param[in] request Complete genuine generated ClockControl request.
        @param[in,out] response Real generated response, all fields assigned here;
        has_event false retains the complete zero-default event as absence only.
        @return Complete native response. Invalid22, busy17, quota90, unsupported95,
        expired110, retired125 and native5 remain explicit; no implicit retry.
        @see close
        @see serve
        """
        response.status = 0
        response.session_nonce = request.session_nonce
        response.request_sequence = request.request_sequence
        response.has_event = False
        response.event.kind = response.event.phase = response.event.frame = 0
        response.event.sec = response.event.nanosec = 0
        # Invalid inputs consume the finite request-history budget too.
        self._calls += 1
        if self._busy:
            response.status = 17
        elif self._state >= 2 or self._closed:
            response.status = 125
        elif self._calls > 64:
            response.status = 90
            self._state = 3
        elif (
            request.session_nonce != self._nonce
            or request.request_sequence != self._next
        ):
            response.status = 22
        else:
            self._busy = True
            try:
                self._check()
                operation = request.operation
                if operation == 1:
                    if (
                        self._state != 0
                        or self._next != 0
                        or request.phase
                        or request.frame
                        or request.impulse
                        or request.extra_update
                        or request.pacing_milliseconds != 1000
                    ):
                        response.status = 22
                    else:
                        from roswasm_nvidia_isaac_sim.native_clock import ClockSubscribers, configure_graph

                        configure_graph(
                            self._og, self._domain, self._topics, self._graph
                        )
                        self._update()
                        self._update()
                        self._observer = ClockSubscribers(
                            self._rclpy, self._domain, *self._topics, 64
                        )
                        self._pause(1000)
                        self._stage_utils.set_stage_units(meters_per_unit=1.0)
                        self._simulation_manager.setup_simulation(
                            dt=1.0 / 60.0, device="cpu"
                        )
                        self._app_utils.play()
                        self._update()
                        self._state = 1
                elif operation == 2:
                    phase, frame = self._steps // 20, self._steps % 20
                    impulse = frame % 10 == 0
                    extra = phase == 0 and impulse
                    if (
                        self._state != 1
                        or self._steps >= 40
                        or request.phase != phase
                        or request.frame != frame
                        or request.impulse != impulse
                        or request.extra_update != extra
                        or request.pacing_milliseconds != 100
                    ):
                        response.status = 22
                    else:
                        before = len(self._observer.events)
                        if impulse:
                            self._og.Controller.set(
                                self._og.Controller.attribute(
                                    self._graph + "/OnImpulseEvent.state:enableImpulse"
                                ),
                                True,
                            )
                            if extra:
                                self._update()
                        self._update()
                        self._observer.poll(phase, frame)
                        if self._observer.primary:
                            response.status = self._observer.primary
                            self._state = 3
                            return self._complete(request, response)
                        if len(self._observer.events) != before:
                            event = self._observer.events[-1]
                            response.has_event = True
                            response.event.kind = (
                                1 if event["callback"] == "automatic" else 2
                            )
                            response.event.phase, response.event.frame = (
                                event["phase"],
                                event["frame"],
                            )
                            response.event.sec, response.event.nanosec = (
                                event["sec"],
                                event["nanosec"],
                            )
                        self._pause(100)
                        self._steps += 1
                elif operation in (3, 4):
                    if (
                        request.phase
                        or request.frame
                        or request.impulse
                        or request.extra_update
                        or request.pacing_milliseconds
                        or (operation == 3 and self._steps != 40)
                    ):
                        response.status = 22
                    else:
                        response.status = self._retire_graph()
                        self._state = 2
                else:
                    response.status = 95
                if response.status == 0:
                    self._next += 1
            except TimeoutError:
                response.status, self._state = 110, 3
            except InterruptedError:
                response.status, self._state = 125, 3
            except Exception as error:
                response.status, self._state = 5, 3
                self._cleanup.append({"resource": "operation", "error": repr(error)})
            finally:
                self._busy = False
        return self._complete(request, response)

    def _complete(self, request, response):
        if self._state == 3:
            self._primary = self._primary or response.status or 5
            self._retire_graph()
        response.state = self._state
        response.actual_app_updates = self._updates
        response.completed_steps = self._steps
        response.cleanup_status = self._retirement
        if len(self._requests) < 64:
            self._requests.append(
                {
                    "operation": request.operation,
                    "sequence": request.request_sequence,
                    "status": response.status,
                    "state": self._state,
                    "steps": self._steps,
                    "explicit_app_updates": self._updates,
                    "has_actual_callback": response.has_event,
                }
            )
        return response

    def serve(self):
        """@brief Dispatch finite actual control requests without implicit sim ticks.

        @details Spins only the private service executor while state is new/active.
        Kit updates occur only inside actual accepted program operations. Returning
        from spin_once lets rclpy send FINISH/CANCEL before service teardown.
        Blocking SDK work still needs the external finite whole-process owner.
        @return Native primary status,0/5/90/110/125. No response or frame count
        alone proves real callbacks, complete program success or Guest acceptance.
        @see handle
        @see close
        """
        try:
            while self._state < 2 and self._context.ok():
                self._check()
                self._executor.spin_once(timeout_sec=0.01)
            if self._state < 2:
                self._primary = self._primary or 125
                self._state = 3
        except TimeoutError:
            self._primary = self._primary or 110
            self._state = 3
        except KeyboardInterrupt:
            self._primary = self._primary or 125
            self._state = 3
        return self._primary

    def close(self):
        """@brief Retire graph/readers, control resources and finally Kit once.

        @details Every ordinary exception/false cleanup is retained; first primary
        failure wins. Call only after service dispatch returns. Repeated close is
        inert. This is simulation cleanup, not a physical stop guarantee or proof
        that a client received the preceding retirement acknowledgement.
        @return Primary/cleanup status. Native termination/OOM can prevent finally;
        the external finite process owner remains necessary.
        @see evidence
        """
        if self._closed:
            return self._primary or self._retirement
        self._closed = True
        self._retire_graph()
        operations = []
        if self._service is not None:
            operations.append(
                ("service", lambda: self._node.destroy_service(self._service))
            )
        if self._executor is not None:
            operations.append(
                ("executor-remove", lambda: self._executor.remove_node(self._node))
            )
            operations.append(
                ("executor", lambda: self._executor.shutdown(timeout_sec=0.5))
            )
        if self._node is not None:
            operations.append(("node", self._node.destroy_node))
        if self._context is not None:
            operations.append(
                (
                    "context",
                    lambda: self._context.shutdown() if self._context.ok() else None,
                )
            )
        if self._app is not None:
            operations.append(("kit", self._app.close))
        for name, operation in operations:
            try:
                value = operation()
                self._cleanup.append({"resource": name, "result": value})
                if value is False:
                    self._retirement = self._retirement or 5
            except Exception as error:
                self._cleanup.append({"resource": name, "error": repr(error)})
                self._retirement = self._retirement or 5
        return self._primary or self._retirement

    def evidence(self):
        """@brief Copy complete actual session outcomes for the native evidence file.

        @details Contains every observed Clock Time value, operation status and
        explicit app-update count plus independent cleanup outcomes. Configuration
        and call counts do not establish native identity, DDS delivery or motion.
        @return Fresh mapping with copied lists; serialized constructing thread
        only. Allocations can fail normally. No SDK/Guest action is performed.
        @see close
        """
        return {
            "format": "uwvm-real-kit-clock-control-v1",
            "primary": self._primary,
            "cleanup_status": self._retirement,
            "state": self._state,
            "session_nonce": self._nonce,
            "completed_steps": self._steps,
            "explicit_app_updates": self._updates,
            "requests": [row.copy() for row in self._requests],
            "actual_clock_callbacks": [row.copy() for row in self._observer.events]
            if self._observer
            else [],
            "cleanup": [row.copy() for row in self._cleanup],
            "physical_robot_commands": 0,
            "guest_executions": 0,
            "native_type_identity_verified": False,
        }
