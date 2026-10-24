"""Gen3 model checks around the complete standard FollowJointTrajectory SDK."""

from ..trajectory_client import TrajectoryClient

from .models import GEN3_6DOF, GEN3_7DOF


class Gen3Client(TrajectoryClient):
    """@brief Submit complete standard trajectories with exact Gen3 joint order.

    @details Adds selected-model validation to the shared TrajectoryClient;
    original Goal, feedback/result, UUID ownership, cancel and cleanup behavior
    remain in that base class. Model selection creates no driver, authority,
    connection, collision guarantee or joint-limit policy. Joint positions use
    standard ROS trajectory units (radians), not Kortex API angle units.
    @see TrajectoryClient Gen3Client.submit GEN3_6DOF GEN3_7DOF
    """

    def __init__(self, *args, model, **kwargs):
        """@brief Select the exact original Gen3 six- or seven-joint domain.

        @details Delegates explicit capability/codec/lifetime construction to
        TrajectoryClient after checking model; no model is inferred from array size.
        @param args Positional arguments for the shared TrajectoryClient constructor.
        @param model Exactly 'gen3-6dof' or 'gen3-7dof'; retained for this client.
        @param kwargs Explicit keyword arguments for TrajectoryClient.
        @raises ValueError Model is absent/unsupported or base construction refuses input.
        @see TrajectoryClient.__init__ GEN3_6DOF GEN3_7DOF
        """
        if model not in ("gen3-6dof", "gen3-7dof"):
            raise ValueError("explicit Gen3 6DOF/7DOF model required")
        self.model = model
        self.joint_names = GEN3_6DOF if model == "gen3-6dof" else GEN3_7DOF
        super().__init__(*args, **kwargs)

    def submit(self, complete_goal):
        """@brief Submit one complete Goal with the selected exact joint order.

        @details Requires every selected joint because the pinned controller
        disables partial joint goals. No field is discarded or reordered. Base
        validation checks the rest of the complete original trajectory value.
        Caller must independently review native robot readiness and limits.
        @param complete_goal Borrowed full typed FollowJointTrajectory Goal;
        keep it unchanged while the synchronous base encoder/submit runs.
        @return The original shared TrajectoryClient.submit ownership receipt.
        @raises ValueError Joint order is incomplete or belongs to another model.
        @raises Exception Original base transport/codec failure; never replay an
        uncertain send or infer motion completion from Goal acceptance.
        @see TrajectoryClient.submit Gen3Client GEN3_6DOF GEN3_7DOF
        """
        # Selected driver config has allow_partial_joints_goal=false. This is
        # extra model validation; the complete standard codec still validates
        # every other field. It is not a joint-limit or collision guarantee.
        if tuple(complete_goal.trajectory.joint_names) != self.joint_names:
            raise ValueError("complete selected joint order required")
        return super().submit(complete_goal)
