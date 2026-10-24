//! @brief Recover every original clearpath_platform_msgs/msg/RGB field with the genuine Rust codec.
//! @details Malformed extents are refused. This command grants no native authority.
use clearpath::Ros2Clearpath_platform_msgsMsgRGB;
use roswasm::typed::Canonical;
use std::io::{self, Write};
fn main() -> io::Result<()> {
    let value = Ros2Clearpath_platform_msgsMsgRGB::default();
    let encoded = value.encode().expect("complete original encode");
    let recovered =
        Ros2Clearpath_platform_msgsMsgRGB::decode(&encoded).expect("complete original decode");
    let restored = recovered.encode().expect("complete original re-encode");
    assert_eq!(encoded, restored);
    let mut trailing = encoded.clone();
    trailing.push(0);
    assert!(Ros2Clearpath_platform_msgsMsgRGB::decode(&trailing).is_err());
    if !encoded.is_empty() {
        assert!(Ros2Clearpath_platform_msgsMsgRGB::decode(&encoded[..encoded.len() - 1]).is_err());
    }
    let stdout = io::stdout();
    let mut output = stdout.lock();
    writeln!(output, "{}", encoded.len())?;
    output.flush()
}
