// @file main.rs
// @brief Exercise the selected source-language SDK operation for nvidia-isaac-sim.
// @details Build through this example's Xmake description. Runtime and ROS authority must be supplied explicitly
// by the deployment; source availability does not establish successful native communication.

//! Complete original two-phase clock application. Each of the forty native
//! steps is selected by this Rust application through the platform SDK.
//! argv: call observer availability nonce poll_work_budget request_qos response_qos
//! QoS has12 comma-separated unsigned decimal fields; see CLOCK-SDK.md.
use roswasm::Error;
use roswasm_isaac_sim_clock::{Completion, Qos, Session, Time};

fn failure(code: u32) -> Error {
    Error::new(code)
}
fn qos(text: &str) -> Result<Qos, Error> {
    let fields: Vec<&str> = text.split(',').collect();
    if fields.len() != 12 {
        return Err(failure(22));
    }
    let mut n = [0u64; 12];
    for (i, value) in fields.iter().enumerate() {
        if value.is_empty() || !value.bytes().all(|v| v.is_ascii_digit()) {
            return Err(failure(22));
        }
        n[i] = value.parse().map_err(|_| failure(22))?;
    }
    if n[..4].iter().any(|v| !(1..=2).contains(v))
        || n[11] > 1
        || (n[0] == 1 && n[4] == 0)
        || [n[6], n[8], n[10]].iter().any(|v| *v >= 1_000_000_000)
    {
        return Err(failure(22));
    }
    Ok(Qos {
        history: n[0] as u32,
        reliability: n[1] as u32,
        durability: n[2] as u32,
        liveliness: n[3] as u32,
        depth: n[4],
        deadline: Time {
            sec: n[5],
            nanosec: n[6],
        },
        lifespan: Time {
            sec: n[7],
            nanosec: n[8],
        },
        lease: Time {
            sec: n[9],
            nanosec: n[10],
        },
        avoid_ros_namespace_conventions: n[11] != 0,
    })
}
fn wait(session: &mut Session, work: u32) -> Result<Completion, Error> {
    for _ in 0..work {
        if let Some(value) = session.poll()? {
            let r = &value.response;
            // Every response field and complete same-take metadata are retained.
            println!("status={} nonce={} sequence={} state={} updates={} steps={} has_event={} event_kind={} phase={} frame={} sec={} nanosec={} cleanup={} metadata={:?}",
                r.status,r.session_nonce,r.request_sequence,r.state,r.actual_app_updates,r.completed_steps,
                r.has_event,r.event.kind,r.event.phase,r.event.frame,r.event.sec,r.event.nanosec,r.cleanup_status,value.info);
            return Ok(value);
        }
    }
    let abandon = session.abandon_pending();
    eprintln!(
        "poll work budget exhausted; local abandon={:?}; native effects uncertain",
        abandon
    );
    Err(failure(90))
}
fn run() -> Result<(), Error> {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 8 {
        return Err(failure(22));
    }
    let nonce: u64 = args[4].parse().map_err(|_| failure(22))?;
    let work: u32 = args[5].parse().map_err(|_| failure(22))?;
    if work == 0 || work > 65536 {
        return Err(failure(22));
    }
    let expected = [qos(&args[6])?, qos(&args[7])?];
    let mut session = Session::new(nonce)?;
    let primary = (|| {
        let receipt = session.connect(&args[1], &args[2], &args[3], expected, 1_000_000)?;
        println!("actual retained endpoint receipt={:?}", receipt);
        session.start()?;
        wait(&mut session, work)?;
        for phase in 0..2u8 {
            for frame in 0..20u32 {
                session.step(phase, frame)?;
                wait(&mut session, work)?;
            }
        }
        session.finish()?;
        wait(&mut session, work)?;
        Ok(())
    })();
    if primary.is_err() {
        // A fresh explicit CANCEL can acknowledge cleanup only if no request is
        // pending and the session remains certain. This is never a retry.
        match session.cancel_native() {
            Ok(_) => {
                let result = wait(&mut session, work);
                eprintln!("native cancel={:?}", result.as_ref().map(|_| ()));
            }
            Err(e) => eprintln!("native cancellation not acknowledged: status={}", e.code),
        }
    }
    let closed = session.close();
    eprintln!(
        "latest complete actual reply, including rejected/native error fields={:?}",
        session.last_response()
    );
    eprintln!(
        "latest actual resource control={:?}",
        session.last_control()
    );
    eprintln!(
        "primary={:?} close={} independent_cleanup={} full_transport_diagnostics={:?}",
        primary,
        closed,
        session.cleanup_status(),
        session.diagnostics()
    );
    primary.and(if closed == 0 {
        Ok(())
    } else {
        Err(failure(closed))
    })
}
fn main() {
    if let Err(error) = run() {
        eprintln!("clock-program status={}", error.code);
        std::process::exit(1);
    }
}
