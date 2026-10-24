//! @file lib.rs
//! @brief Preserve the original robotis controller application semantics.
//! @details This source uses the public typed SDK and explicit capability aliases.
//! Finite polls preserve primary and cleanup failures independently. Deployment
//! requires a matching source profile and manually supplied runtime permissions.
//! @brief Execute the bounded original TurtleBot3 Patrol client application.
//! @details Uses the actual generated full-value ROS2 Patrol action owner and
//! shared Rust capability bridge. Select exactly Humble, Jazzy or main; no
//! native ROS socket, server, motion permission or automatic recovery is added.
//! @see parse_goal run Report

#[cfg(feature = "humble")]
use robotis::humble as selected_profile;
#[cfg(feature = "jazzy")]
use robotis::jazzy as selected_profile;
#[cfg(feature = "main")]
use robotis::main as selected_profile;
use roswasm::typed::Canonical;
use roswasm::{Backend, Error};
use selected_profile::bounded_interfaces::{Cleanup, Ros2Turtlebot3_msgsActionPatrolClient};
use selected_profile::bounded_records::Ros2Turtlebot3_msgsActionPatrol_Goal;

/// @brief Retain a complete original goal, feedback/result and every role close.
/// @details primary preserves the first failure; 110 means the finite poll
/// budget ended with unknown terminal state. goal_id is the full accepted u64;
/// send_unknown records a send without a validated receipt. Neither permits
/// replay. feedback/result retain the original bounded UTF-8 values. cleanup
/// contains each actual close in reverse acquisition order; partial-open rollback
/// is retained on construction failure. No destructor result substitutes for it.
/// @see run parse_goal Ros2Turtlebot3_msgsActionPatrolClient
pub struct Report {
    pub primary: u32,
    pub goal_id: u64,
    pub send_unknown: bool,
    pub feedback: Vec<String>,
    pub result: Option<(u8, String)>,
    pub cleanup: Cleanup,
}

fn invalid() -> Error {
    Error::new(22)
}

fn number(text: &str, integer: bool) -> Result<f64, Error> {
    if text.is_empty() || text.len() > 255 {
        return Err(invalid());
    }
    if integer {
        let bytes = text.as_bytes();
        let start = usize::from(bytes[0] == b'+' || bytes[0] == b'-');
        if start == bytes.len() || !bytes[start..].iter().all(u8::is_ascii_digit) {
            return Err(invalid());
        }
    } else if !text
        .bytes()
        .all(|value| value.is_ascii_digit() || b"+-.eE".contains(&value))
    {
        return Err(invalid());
    }
    let value: f64 = text.parse().map_err(|_| invalid())?;
    if !value.is_finite() {
        return Err(invalid());
    }
    Ok(if integer && value == 0.0 { 0.0 } else { value })
}

/// @brief Parse s/t, finite metre distance and float(decimal integer count).
/// @details Pure bounded CLI conversion; no capability is opened. Each numeric
/// argument is at most 255 ASCII bytes. Hex/locale/whitespace/nonfinite input is
/// refused. The original Python interactive and unbounded integer domains are
/// documented differences, not silently approximated native compatibility.
/// @param mode Exactly s (square=1) or t (triangle=2); the CLI handles x before open.
/// @param distance Finite original metre value, without an inferred model limit.
/// @param count Signed decimal integer converted to original float64 count.
/// @return Complete original generated Goal, or numeric invalid Error 22.
/// @see run Report
pub fn parse_goal(
    mode: &str,
    distance: &str,
    count: &str,
) -> Result<Ros2Turtlebot3_msgsActionPatrol_Goal, Error> {
    let mut goal = Ros2Turtlebot3_msgsActionPatrol_Goal::default();
    goal.goal.x = match mode {
        "s" => 1.0,
        "t" => 2.0,
        _ => return Err(invalid()),
    };
    goal.goal.y = number(distance, false)?;
    goal.goal.z = number(count, true)?;
    Ok(goal)
}

/// @brief Open exact roles, send one complete goal, poll and close every owner.
/// @details Caller-driven on one Guest thread. Requires the original ROS2 Patrol
/// type/resource and separate send, cancel-own, feedback and result grants. No
/// native server wait, replay, automatic cancel or motion recovery is performed.
/// Generated codecs retain every Vector3/string field and verify the full u64
/// ID/terminal kind before local terminal ownership changes. Native server and
/// driver remain separate cooperating programs. Default extra authority is empty.
/// @param aliases Four distinct explicit UTF-8 aliases in send/cancel-own/feedback/
/// result order; no optional cancel-any role is requested.
/// @param goal Borrowed complete generated Goal, unchanged while encoding/sending.
/// @param polls Finite iteration count 1..4096; each iteration polls both channels.
/// @return Report with primary failure, full original values and all checked
/// cleanup/rollback statuses. Goal acceptance does not establish physical completion.
/// @see parse_goal Report Ros2Turtlebot3_msgsActionPatrolClient
pub fn run(
    aliases: [&str; 4],
    goal: &Ros2Turtlebot3_msgsActionPatrol_Goal,
    polls: usize,
) -> Report {
    let mut report = Report {
        primary: 0,
        goal_id: 0,
        send_unknown: false,
        feedback: Vec::new(),
        result: None,
        cleanup: Cleanup {
            primary: 0,
            statuses: Vec::new(),
        },
    };
    if !(1..=4096).contains(&polls)
        || (goal.goal.x != 1.0 && goal.goal.x != 2.0)
        || !goal.goal.y.is_finite()
        || !goal.goal.z.is_finite()
        || goal.goal.z.fract() != 0.0
        || goal.encode().is_err()
    {
        report.primary = 22;
        return report;
    }
    if report.feedback.try_reserve_exact(polls).is_err() {
        report.primary = 90;
        return report;
    }
    let mut client =
        match Ros2Turtlebot3_msgsActionPatrolClient::open(Backend::Ros2, aliases, None, 1) {
            Ok(client) => client,
            Err(error) => {
                report.primary = error.primary.code;
                report.cleanup = error.rollback;
                return report;
            }
        };
    let result = (|| -> Result<(), Error> {
        report.send_unknown = true;
        report.goal_id = client.send_goal(goal)?;
        report.send_unknown = false;
        for _ in 0..polls {
            match client.feedback(report.goal_id) {
                Ok(value) => report.feedback.push(value.state),
                Err(error) if error.code == 11 => (),
                Err(error) => return Err(error),
            }
            match client.result(report.goal_id) {
                Ok((kind, value)) => {
                    report.result = Some((kind, value.result));
                    return Ok(());
                }
                Err(error) if error.code == 11 => (),
                Err(error) => return Err(error),
            }
        }
        Err(Error::new(110))
    })();
    report.primary = result.err().map_or(0, |error| error.code);
    report.cleanup = client.close_checked(report.primary);
    report
}
