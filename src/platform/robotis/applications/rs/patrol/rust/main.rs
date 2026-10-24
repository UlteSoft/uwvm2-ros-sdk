//! @file main.rs
//! @brief Preserve the original robotis controller application semantics.
//! @details This source uses the public typed SDK and explicit capability aliases.
//! Finite polls preserve primary and cleanup failures independently. Deployment
//! requires a matching source profile and manually supplied runtime permissions.
// SPDX-License-Identifier: Apache-2.0
use roswasm::typed::Canonical;
use std::io::{self, Write};
use uwvm_turtlebot3_patrol::{parse_goal, run};

/// @brief Execute one explicit codec or action invocation.
/// @param arguments Borrowed CLI values, excluding the command name.
/// @return Original primary error code, then a cleanup error when primary succeeded.
fn program(arguments: &[String]) -> u32 {
    if arguments.len() == 4 && arguments[0] == "encode" {
        let bytes = match parse_goal(&arguments[1], &arguments[2], &arguments[3])
            .and_then(|goal| goal.encode())
        {
            Ok(bytes) => bytes,
            Err(error) => return error.code,
        };
        return if io::stdout().write_all(&bytes).is_ok() {
            0
        } else {
            5
        };
    }
    if arguments.len() != 8 {
        return 22;
    }
    if arguments[4] == "x" {
        return 0;
    }
    let goal = match parse_goal(&arguments[4], &arguments[5], &arguments[6]) {
        Ok(goal) => goal,
        Err(error) => return error.code,
    };
    if arguments[7].is_empty()
        || arguments[7].len() > 4
        || !arguments[7].bytes().all(|value| value.is_ascii_digit())
    {
        return 22;
    }
    let polls: usize = match arguments[7].parse() {
        Ok(value) if (1..=4096).contains(&value) => value,
        _ => return 22,
    };
    let report = run(
        [&arguments[0], &arguments[1], &arguments[2], &arguments[3]],
        &goal,
        polls,
    );
    let mut primary = report.primary;
    let output = (|| -> io::Result<()> {
        let mut out = io::stdout().lock();
        if report.goal_id != 0 {
            writeln!(out, "accepted goal={}", report.goal_id)?;
        }
        for text in &report.feedback {
            writeln!(out, "feedback[{}]: {}", text.len(), text)?;
        }
        if let Some((kind, text)) = &report.result {
            writeln!(
                out,
                "terminal kind={} goal={}\nresult[{}]: {}",
                kind,
                report.goal_id,
                text.len(),
                text
            )?;
        }
        Ok(())
    })();
    if output.is_err() && primary == 0 {
        primary = 5;
    }
    if report.result.is_none() && (report.goal_id != 0 || report.send_unknown) {
        eprintln!(
            "goal={} send_unknown={} outcome unresolved; no replay or automatic cancel",
            report.goal_id, report.send_unknown
        );
    }
    eprintln!(
        "primary={} cleanup_reverse_acquisition={:?}",
        primary, report.cleanup.statuses
    );
    for outcome in &report.cleanup.statuses {
        if let Err(error) = outcome {
            if primary == 0 {
                primary = error.code;
            }
        }
    }
    primary
}

/// @brief Parse the bounded CLI and report primary/cleanup failures.
/// @details Command bytes are read only after capability admission.
/// @return Process status limited to the WASI command range.
fn main() {
    let arguments: Vec<String> = std::env::args().skip(1).collect();
    std::process::exit(program(&arguments).min(125) as i32);
}
