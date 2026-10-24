//! @brief Recover every original nav_msgs/Odometry field with the genuine Rust codec.
//! @details Malformed extents are refused. This command grants no native authority.
use agilex::Ros1Nav_msgsOdometry;
use roswasm::typed::Canonical;
use std::io::{self, Write};
fn main() -> io::Result<()> {
    let value = Ros1Nav_msgsOdometry::default();
    let encoded = value.encode().expect("complete original encode");
    let recovered = Ros1Nav_msgsOdometry::decode(&encoded).expect("complete original decode");
    let restored = recovered.encode().expect("complete original re-encode");
    assert_eq!(encoded, restored);
    let mut trailing = encoded.clone();
    trailing.push(0);
    assert!(Ros1Nav_msgsOdometry::decode(&trailing).is_err());
    if !encoded.is_empty() {
        assert!(Ros1Nav_msgsOdometry::decode(&encoded[..encoded.len() - 1]).is_err());
    }
    let stdout = io::stdout();
    let mut output = stdout.lock();
    writeln!(output, "{}", encoded.len())?;
    output.flush()
}
