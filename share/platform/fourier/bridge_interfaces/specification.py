# @file specification.py
# @brief Provide the complete fourier specification.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
# encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
"""Authored ROS envelope for the documented Fourier Aurora client API.

These definitions belong to uwvm2, not Fourier's DDS wire protocol. They carry
complete documented method arguments/results through explicit per-operation
ROS capabilities. Native SDK objects, participant QoS, configuration paths,
client construction and client shutdown remain operator-owned host lifecycle.
The finite codecs never infer a physical limit, model or permission grant.
"""

MESSAGES = {
    'GroupValues': '''# One explicitly configured control group; original order and units are preserved.
string group
float64[] values
''',
    'GroupState': '''# Whole configured group state. A partial snapshot is never published.
string group
float64[] position
float64[] velocity
float64[] effort
int32 motion_state
''',
    'Status': '''# Complete bridge snapshot of the documented global and configured joint states.
int32 fsm_state
string fsm_name
int32 upper_fsm_state
string upper_fsm_name
int32 velocity_source
string velocity_source_name
float64[] stand_pose
GroupState[] groups
''',
    'VelocityCommand': '''# Explicit caller data. The host checks the sequence and configured limits first.
uint64 sequence
float64 vx
float64 vy
float64 yaw
float64 duration
''',
    'MotionRecipe': '''# Portable recipe; the native MoveCommand object never crosses into Wasm.
# move_type: 0 absolute joint, 1 joint-space Cartesian target, 2 linear Cartesian target.
uint8 move_type
string group
float64[] position
bool has_velocity
float64[] velocity
int32 expected_velocity
''',
}

# Every service starts with a client-owned sequence. The host consumes each
# increasing sequence before invoking the native SDK, so a lost reply cannot
# cause an automatic reapplication. Deploy one endpoint namespace per principal.
# Error text is a finite public classification, never a native traceback.
SERVICES = {
    'GetFsmState': ('get_fsm_state', '', 'int32 value\n'),
    'GetFsmName': ('get_fsm_name', '', 'string value\n'),
    'GetUpperFsmState': ('get_upper_fsm_state', '', 'int32 value\n'),
    'GetUpperFsmName': ('get_upper_fsm_name', '', 'string value\n'),
    'GetVelocitySource': ('get_velocity_source', '', 'int32 value\n'),
    'GetVelocitySourceName': ('get_velocity_source_name', '', 'string value\n'),
    'GetStandPose': ('get_stand_pose', '', 'float64[] values\n'),
    'GetGroupState': ('get_group_state', 'string group\nstring key\n', 'float64[] values\n'),
    'GetCartesianState': ('get_cartesian_state', 'string group\nstring key\n', 'float64[] values\n'),
    'GetGroupMotorCfg': ('get_group_motor_cfg', 'string group\nstring key\n', 'float64[] values\n'),
    'GetBaseData': ('get_base_data', 'string key\n', 'float64[] values\n'),
    'GetContactData': ('get_contact_data', 'string key\n', 'float64[] values\n'),
    'GetGroupMotionState': ('get_group_motion_state', 'string group\n', 'int32 value\n'),
    'WaitGroupsMotionComplete': ('wait_groups_motion_complete',
        'string[] groups\nfloat64 timeout_seconds\nfloat64 poll_seconds\n', 'bool complete\n'),
    'SetFsmState': ('set_fsm_state', 'int32 state\n', ''),
    'SetUpperFsmState': ('set_upper_fsm_state', 'int32 state\n', ''),
    'SetVelocitySource': ('set_velocity_source', 'int32 source\n', ''),
    'SetVelocity': ('set_velocity', 'float64 vx\nfloat64 vy\nfloat64 yaw\nfloat64 duration\n', ''),
    'SetStandPose': ('set_stand_pose', 'float64 delta_z\nfloat64 delta_pitch\nfloat64 delta_yaw\n', ''),
    'SetGroupCommand': ('set_group_cmd',
        'GroupValues[] position\nGroupValues[] velocity\nGroupValues[] torque\n', ''),
    'SetMotorCfgPd': ('set_motor_cfg_pd', 'GroupValues[] kp\nGroupValues[] kd\n', ''),
    'ExecuteMove': ('set_move_command', 'MotionRecipe[] moves\n', ''),
    'GetSnapshot': ('snapshot', '', 'Status value\n'),
}

LIFECYCLE = {
    'AuroraClient.get_instance': 'Host-only explicit domain, model, namespace and participant configuration.',
    'AuroraClient.close': 'Host-only process retirement; never a Guest administrative operation.',
    'MoveCommandManager.init': 'Host-only pinned model configuration; no Guest filesystem path.',
    'MoveCommandManager.joint_move_command': 'ExecuteMove move_type 0; complete position and optional velocity.',
    'MoveCommandManager.cartesian_move_command': 'ExecuteMove move_type 1 or 2; complete configured Cartesian target.',
    'MoveCommandManager.get_move_command': 'ExecuteMove assembles an opaque native value and applies it once.',
}
