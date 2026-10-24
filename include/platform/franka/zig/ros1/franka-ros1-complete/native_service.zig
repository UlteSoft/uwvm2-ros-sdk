//! Complete finite original Noetic Service values for the public Cursor codec.
//! All field order, widths and bounds come from the reviewed original catalog.
const wire = @import("roswire");

/// Complete original franka_msgs/SetJointImpedanceRequest; no record projection.
/// These values grant no native operation and perform no unit conversion.
pub const Ros1Franka_msgsSetJointImpedanceRequest = struct {
    pub const minimum_wire_bytes: usize = 56;
    pub const maximum_wire_bytes: usize = 56;
    pub const native_type = "franka_msgs/SetJointImpedanceRequest";
    pub const native_identity: ?[]const u8 = null;
    pub const codec_identity = "UWVMROS1_29b5419f698b39452d38fbc58a0e3c572b8d285b70c8acf7d326c440eb417c53";
    /// All seven original joint stiffness values, in original order and units.
    field_joint_stiffness: [7]f64 = @splat(0),
};

/// Complete original response; finite owned UTF-8 storage does not borrow input.
/// Native business success is data, independent from transport and cleanup.
pub const Ros1Franka_msgsSetJointImpedanceResponse = struct {
    pub const minimum_wire_bytes: usize = 5;
    pub const maximum_wire_bytes: usize = 261;
    pub const native_type = "franka_msgs/SetJointImpedanceResponse";
    pub const native_identity: ?[]const u8 = null;
    pub const codec_identity = "UWVMROS1_1ae0cd7c4ad89de09ccffd6c4999435fa6965509e99a9adb98b7f3ebb3ea4c55";
    /// Original Boolean, preserved even when the service refuses the request.
    field_success: bool = false,
    /// Complete original diagnostic; 256 bytes is the explicit canonical quota.
    field_error: wire.Text(256, false) = .{},
};
