//! @file lib.rs
//! @brief Represent the complete original FANUC ROS 2 canonical value catalog.
//! @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
//! fields, original constants and native defaults; field units and frames follow the retained
//! definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
//! native ROS objects; importing them grants no transport alias.
// SPDX-FileCopyrightText: 2025, FANUC America Corporation
// SPDX-FileCopyrightText: 2025, FANUC CORPORATION
// SPDX-License-Identifier: Apache-2.0
//! @brief Execute the complete caller-visible flow of fanuc.sine-topic in a Rust Guest.
//! @details Ports send_trajectory.py at da5db3f611cdc9dffe687e056c4e79bea584bf5c:
//! subscribe, replace cached JointState in its callback, run the one-second ROS
//! timer, generate all 1001 original points, publish once, complete the local
//! future and close. This command owns its executor loop and reads the actual
//! separately granted ROS clock. No external timer callback driver is required.
//! Aliases still require exact native topic/type/model/joint-order bindings and
//! independent permission. No controller is started or reconfigured. Importing
//! the module performs no IO. Rust 1.85.0/std/2021 is the selected build candidate;
//! current compilation, full installed xmake and native parity remain unqualified.
//! @see run
//! @see make_original_trajectory

#[path = "fanuc/rs/ros2/fanuc-ros2-sine-trajectory-complete/bounded_records.rs"]
mod generated;
use generated::{
    Ros2Builtin_interfacesMsgDuration as SourceDuration,
    Ros2Trajectory_msgsMsgJointTrajectoryPoint as Point,
};
use roswasm::typed::Canonical;
use roswasm::{codes, Backend, Capability, Error, Operation};
use std::time::{Duration, Instant};

/// @brief Complete original sensor_msgs/JointState under the selected full family.
/// @details Owns every original field, including its unchanged header; decoding
/// validates every field before a callback replaces the cached value.
/// @see make_original_trajectory
pub use generated::Ros2Sensor_msgsMsgJointState as JointState;
/// @brief Complete original trajectory_msgs/JointTrajectory, with 1001-point capacity.
/// @details Owns all names/points. This is canonical Guest data, never ROS CDR or
/// authority to publish. The old eight-point source family is not a substitute.
/// @see make_original_trajectory
pub use generated::Ros2Trajectory_msgsMsgJointTrajectory as Trajectory;

/// @brief Original ROS timer period in integer nanoseconds.
/// @details One second, independent of the WASI executor sleep and optional
/// monotonic watchdog. A paused ROS clock does not advance the timer.
/// @see run
pub const TIMER_NS: u64 = 1_000_000_000;

/// @brief Three independently granted capabilities required by the program.
/// @details Borrows strings only for run(). None is a native endpoint name.
/// Roles must be distinct and have separately reviewed types, QoS and quotas.
/// @see run
pub struct Aliases<'a> {
    /// @brief JointState subscription alias for the original /joint_states source.
    /// @details Requires subscribe/poll rights and a whole bounded JointState.
    /// @see JointState
    pub joints: &'a str,
    /// @brief Publish alias bound to the original joint trajectory controller topic.
    /// @details Requires the exact complete 1001-point type and sufficient byte
    /// quota; it neither selects nor activates a controller by itself.
    /// @see Trajectory
    pub trajectory: &'a str,
    /// @brief Alias granting TimeReadRos for the selected ROS clock domain.
    /// @details Native/simulated clock selection is fixed in external policy;
    /// this code never replaces ROS time with wall or steady time.
    /// @see TIMER_NS
    pub ros_clock: &'a str,
}

/// @brief Explicit executor pacing and optional local watchdog configuration.
/// @details Default watchdog None preserves the original indefinite wait for
/// state/ROS time. A configured watchdog is an additional local refusal policy;
/// it cannot interrupt a blocked Host import or stop native motion.
/// @see run
pub struct Options {
    /// @brief WASI monotonic elapsed limit, or None for original unbounded waiting.
    /// @details A supplied duration must be positive. Expiry returns 110 and runs
    /// normal cleanup; separately configured Host deadlines remain authoritative.
    /// @see Outcome::primary
    pub watchdog: Option<Duration>,
    /// @brief Positive executor idle sleep, at most one second.
    /// @details Paces polls only. Actual timer eligibility uses TimeReadRos;
    /// default 1 ms adds ordinary serialized executor scheduling latency.
    /// @see TIMER_NS
    pub idle_sleep: Duration,
}

impl Default for Options {
    /// @brief Select original unbounded waiting with a 1 ms idle poll interval.
    /// @details Pure configuration construction; no clock, sleep or grant occurs.
    /// @return Owned Options with watchdog None.
    /// @see run
    fn default() -> Self {
        Self {
            watchdog: None,
            idle_sleep: Duration::from_millis(1),
        }
    }
}

/// @brief Last meaningful application stage, independent of cleanup/native state.
/// @details A failing run keeps the stage where the failure occurred. Complete
/// only records a successful publish return and local future completion.
/// @see Outcome
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum Phase {
    /// @brief Opening/subscribing/reading the initial clock, before executor work.
    /// @see run
    Opening,
    /// @brief Waiting for complete state and a due original ROS timer callback.
    /// @see TIMER_NS
    Waiting,
    /// @brief Constructing/encoding or entering the sole publication attempt.
    /// @see Outcome::publish_attempted
    Publishing,
    /// @brief Local publication future completed; native execution is unproven.
    /// @see Outcome::published
    Complete,
}

/// @brief Own complete values and independent operation/cleanup observations.
/// @details Survives role close; no field establishes physical freshness,
/// controller admission or stopping. All normal errors retain the first primary
/// failure. Panic/abort/allocation termination cannot promise this report.
/// @see run
#[derive(Debug)]
pub struct Outcome {
    /// @brief First local or SDK error code, zero before independent cleanup.
    /// @see status
    pub primary: u32,
    /// @brief Complete original SDK Error, including required-length facts.
    /// @details None on success; cleanup errors never overwrite this field.
    /// @see roswasm::Error
    pub error: Option<Error>,
    /// @brief Final normal-close observations in joints/publisher/clock role order.
    /// @details None means the role was never acquired; Some(0) means one close
    /// succeeded. Close retires ownership once and never cancels native motion.
    /// @see status
    pub cleanup: [Option<u32>; 3],
    /// @brief Last business stage reached; cleanup does not overwrite it.
    /// @see Phase
    pub phase: Phase,
    /// @brief Whether the sole publish import was entered, even on ambiguous error.
    /// @details A true value permanently forbids replay by this run.
    /// @see published
    pub publish_attempted: bool,
    /// @brief Successful publish return and local future completion.
    /// @details This does not observe controller consumption or trajectory execution.
    /// @see Phase::Complete
    pub published: bool,
    /// @brief Number of complete subscription callbacks committed, saturating u64.
    /// @see last_state
    pub state_callbacks: u64,
    /// @brief Number of due ROS timer callbacks, including waits for initial state.
    /// @details Saturating diagnostic count; paused ROS time produces no ticks.
    /// @see TIMER_NS
    pub timer_callbacks: u64,
    /// @brief Most recent complete decoded JointState, retained after close.
    /// @details None before a callback; timestamps are preserved, not certified fresh.
    /// @see JointState
    pub last_state: Option<JointState>,
    /// @brief Complete prepared trajectory, including an ambiguously failed publish.
    /// @details None before successful local construction. This remains owned
    /// Guest data and cannot authorize an automatic resend.
    /// @see Trajectory
    pub trajectory: Option<Trajectory>,
}

impl Outcome {
    /// @brief Select process status without discarding the independent observations.
    /// @details First primary failure wins; otherwise first nonzero cleanup in
    /// clock/publisher/joints retirement order wins. Zero requires both stages.
    /// @return Full u32 SDK/local status; command exit-width clamping is separate.
    /// @see Outcome::cleanup
    pub fn status(&self) -> u32 {
        if self.primary != 0 {
            return self.primary;
        }
        self.cleanup
            .iter()
            .rev()
            .flatten()
            .copied()
            .find(|code| *code != 0)
            .unwrap_or(0)
    }
}

/// @brief Build all original 1001 cosine-displacement/sine-velocity points.
/// @details Uses the pinned original 20-degree amplitude, three-second period,
/// exact operation order and truncating sec/nanosec conversion. Header,
/// acceleration and effort stay at original empty defaults. Unlike the original
/// unchecked Python lists, SDK admission rejects invalid/mismatched dimensions,
/// duplicate/empty names and nonfinite derived values before publication. No
/// source value is clipped or truncated. This pure operation opens no resource.
/// @param[in] state Borrowed whole valid JointState; active names/positions must
/// agree and fit the selected family in native controller order. The original
/// script treats positions as angular radians; review nonrevolute model axes
/// independently. No model-specific conversion or six-joint restriction is added.
/// @return Independently owned complete trajectory, or full Error22/34/90 for
/// invalid, nonfinite or source-family capacity refusal. Input is never mutated.
/// @see Trajectory
/// @see run
pub fn make_original_trajectory(state: &JointState) -> Result<Trajectory, Error> {
    state.encode()?;
    let count = state.name.len();
    if count == 0
        || count != state.position.len()
        || state.name.iter().any(|name| name.is_empty())
        || state
            .name
            .iter()
            .enumerate()
            .any(|(at, name)| state.name[..at].contains(name))
    {
        return Err(Error::new(codes::INVALID));
    }
    let mut output = Trajectory::default();
    output.joint_names = state.name.clone();
    let amplitude = 20.0 * (std::f64::consts::PI / 180.0);
    let omega = (2.0 * std::f64::consts::PI) / 3.0;
    for index in 0..=1000 {
        let time = (index as f64 * 3.0) / 1000.0;
        let phase = omega * time;
        let displacement = amplitude * (1.0 - phase.cos());
        let speed = amplitude * omega * phase.sin();
        let positions: Vec<f64> = state
            .position
            .iter()
            .map(|value| value + displacement)
            .collect();
        if !speed.is_finite() || positions.iter().any(|value| !value.is_finite()) {
            return Err(Error::new(34));
        }
        let seconds = time as i32;
        output.points.push(Point {
            positions,
            velocities: vec![speed; count],
            time_from_start: SourceDuration {
                sec: seconds,
                nanosec: ((time - seconds as f64) * 1e9) as u32,
            },
            ..Point::default()
        });
    }
    output.encode()?;
    Ok(output)
}

fn clock_ns(clock: &Capability) -> Result<u64, Error> {
    let mut bytes = [0u8; 8];
    let used = clock.request(Operation::TimeReadRos, &[], &mut bytes)?;
    if used != 8 {
        return Err(Error::new(codes::INVALID));
    }
    Ok(u64::from_le_bytes(bytes))
}

/// @brief Run subscription, original ROS timer, one publication and checked cleanup.
/// @details Owns the serialized executor loop. A complete callback replaces the
/// cache even when names/positions are empty; idle11 preserves it. Fatal poll,
/// framing, clock or encode failure closes every acquired role. A backward ROS
/// clock jump resets the timer anchor; forward jumps skip missed periods and
/// dispatch at most one callback per pass. ROS-time pause preserves the wait.
/// Original timer/future behavior ends only after one successful publish; an
/// ambiguous publish error consumes the sole attempt and returns without retry.
/// The optional monotonic watchdog is explicitly additional behavior. Host calls
/// require independently bounded deadlines; the local loop cannot preempt one.
/// @param[in] aliases Three distinct nonempty aliases, borrowed for this call.
/// Rights must bind the original topics, complete family, ROS clock, quotas and
/// reviewed native model/order. This function cannot provision or broaden grants.
/// @param[in] options Caller-owned immutable pacing/watchdog configuration.
/// @return Owned Outcome preserving complete values and every normal close.
/// Calls must be serialized per Guest instance; panic/abort may prevent cleanup.
/// @see Aliases
/// @see Options
/// @see make_original_trajectory
pub fn run(aliases: &Aliases<'_>, options: &Options) -> Outcome {
    let mut output = Outcome {
        primary: 0,
        error: None,
        cleanup: [None, None, None],
        phase: Phase::Opening,
        publish_attempted: false,
        published: false,
        state_callbacks: 0,
        timer_callbacks: 0,
        last_state: None,
        trajectory: None,
    };
    let mut owners: [Option<Capability>; 3] = [None, None, None];
    let started = Instant::now();
    let result = (|| -> Result<(), Error> {
        let names = [aliases.joints, aliases.trajectory, aliases.ros_clock];
        if options.idle_sleep.is_zero()
            || options.idle_sleep > Duration::from_secs(1)
            || options.watchdog.is_some_and(|limit| limit.is_zero())
            || names
                .iter()
                .any(|name| name.is_empty() || name.len() > 255 || name.as_bytes().contains(&0))
            || names
                .iter()
                .enumerate()
                .any(|(at, name)| names[..at].contains(name))
        {
            return Err(Error::new(codes::INVALID));
        }
        if Backend::Ros2.abi_version() != 1 {
            return Err(Error::new(codes::UNSUPPORTED));
        }
        for index in 0..3 {
            owners[index] = Some(Capability::open(Backend::Ros2, names[index])?);
        }
        let joints = owners[0].as_ref().unwrap();
        let publisher = owners[1].as_ref().unwrap();
        let clock = owners[2].as_ref().unwrap();
        joints.subscribe()?;
        let mut previous = clock_ns(clock)?;
        let mut anchor = previous;
        let mut scratch = vec![0u8; JointState::MAX_WIRE_BYTES];
        output.phase = Phase::Waiting;
        loop {
            if options
                .watchdog
                .is_some_and(|limit| started.elapsed() >= limit)
            {
                return Err(Error::new(110));
            }
            match joints.poll(&mut scratch) {
                Ok(used) => {
                    let state = JointState::decode(&scratch[..used])?;
                    output.last_state = Some(state);
                    output.state_callbacks = output.state_callbacks.saturating_add(1);
                }
                Err(error) if error.code == codes::AGAIN => (),
                Err(error) => return Err(error),
            }
            let now = clock_ns(clock)?;
            if now < previous {
                anchor = now;
            }
            previous = now;
            if now - anchor >= TIMER_NS {
                anchor = now - ((now - anchor) % TIMER_NS);
                output.timer_callbacks = output.timer_callbacks.saturating_add(1);
                if let Some(state) = output
                    .last_state
                    .as_ref()
                    .filter(|state| !state.position.is_empty())
                {
                    output.phase = Phase::Publishing;
                    let trajectory = make_original_trajectory(state)?;
                    let bytes = trajectory.encode()?;
                    output.trajectory = Some(trajectory);
                    output.publish_attempted = true;
                    publisher.publish(&bytes)?;
                    output.published = true;
                    output.phase = Phase::Complete;
                    return Ok(());
                }
            }
            std::thread::sleep(options.idle_sleep);
        }
    })();
    if let Err(error) = result {
        output.primary = error.code;
        output.error = Some(error);
    }
    for index in (0..3).rev() {
        if let Some(owner) = owners[index].as_mut() {
            output.cleanup[index] = Some(owner.close().err().map_or(0, |error| error.code));
        }
    }
    output
}
