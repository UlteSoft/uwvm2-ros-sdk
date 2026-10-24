"""Stretch complete FJT wrapper, retaining mode/tool-specific native validation."""

from ..trajectory_client import TrajectoryClient


class StretchClient(TrajectoryClient):
    """@brief Bind complete standard trajectories to an explicit Stretch domain.

    @details Retains the expected original robot model/driver mode while using
    the shared complete-value TrajectoryClient. This declaration is not a fresh
    native observation; independently validate actual homing, runstop, tool,
    streaming and mode before sending a reviewed trajectory. No implicit mode
    switch, home/stow, runstop release or movement is performed.
    @see TrajectoryClient StretchClient.__init__
    """

    def __init__(self, *args, model, mode, **kwargs):
        """@brief Select a supported model and expected original driver mode.

        @details Does not construct a ROS driver or turn expected state into
        proof of readiness. Base ownership/codec/cleanup rules remain unchanged.
        @param args Positional arguments for the shared TrajectoryClient constructor.
        @param model Exact selected 'RE1V0', 'RE2V0' or 'SE3' model identifier.
        @param mode Expected 'position', 'trajectory' or 'navigation' driver mode.
        @param kwargs Explicit keyword arguments for TrajectoryClient.
        @raises ValueError Model/mode is unsupported or base input validation fails.
        @see TrajectoryClient.__init__ StretchClient
        """
        if model not in ("RE1V0", "RE2V0", "SE3"):
            raise ValueError("explicit actual Stretch model required")
        if mode not in ("position", "trajectory", "navigation"):
            raise ValueError("explicit driver mode required")
        # This selection describes the expected deployment; it does not call
        # switch-mode, home/stow, runstop or command any actuator by itself.
        self.model, self.mode = model, mode
        super().__init__(*args, **kwargs)
