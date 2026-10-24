//! @brief Recover every original nav_msgs/msg/Odometry field with the genuine Rust codec.
//! @details Malformed extents are refused. This command grants no native authority.
use agilex::Ros2Nav_msgsMsgOdometry;
use roswasm::typed::Canonical;
use std::io::{self, Write};
fn main() -> io::Result<()> {
    let value = Ros2Nav_msgsMsgOdometry::default();
    let encoded = value.encode().expect("complete original encode");
    let recovered = Ros2Nav_msgsMsgOdometry::decode(&encoded).expect("complete original decode");
    let restored = recovered.encode().expect("complete original re-encode");
    assert_eq!(encoded, restored);
    let mut trailing = encoded.clone();
    trailing.push(0);
    assert!(Ros2Nav_msgsMsgOdometry::decode(&trailing).is_err());
    if !encoded.is_empty() {
        assert!(Ros2Nav_msgsMsgOdometry::decode(&encoded[..encoded.len() - 1]).is_err());
    }
    let stdout = io::stdout();
    let mut output = stdout.lock();
    writeln!(output, "{}", encoded.len())?;
    output.flush()
}
