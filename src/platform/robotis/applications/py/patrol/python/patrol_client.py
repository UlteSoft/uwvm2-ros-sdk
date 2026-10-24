"""@brief Run a bounded complete original TurtleBot3 Patrol client in CPython/WASI.

@details Requires the actual built-in roswasm bridge and original ROS2 Patrol
resource/type/role grants. No host-Python socket/rclpy fallback is supplied.
The original server is a separate cooperating program. Importing opens nothing.
@see Goal parse_goal run main
"""

from dataclasses import dataclass
import math
import re
import struct
import sys

from roswasm import Backend, Result, RosError, Session


@dataclass(frozen=True)
class Goal:
    """@brief Preserve the complete original Patrol.Goal Vector3 value.

    @details mode is 1 (square) or 2 (triangle), distance is the original metre
    value, and count is the original integer converted to finite float64. This
    value grants no motion or server access and implies no native safety limits.
    @see parse_goal encode_goal run
    """

    mode: float
    distance: float
    count: float


@dataclass
class Report:
    """@brief Retain complete feedback/result, uncertainty and all role cleanup.

    @details primary preserves the exact first exception. goal_id is the full
    accepted uint64; send_unknown records a send without a valid receipt. A
    missing terminal result never permits replay or automatic cancellation.
    feedback contains preallocated slots, of which feedback_used are populated;
    result is (original terminal kind 2/3/4, full original text), or None.
    cleanup retains every shared Session close result in reverse acquisition
    order; cleanup_error separately preserves a thrown cleanup preparation error.
    session retains actual owner/witness state for explicit diagnosis if normal
    cleanup cannot complete. Callers must not mutate it during run/cleanup.
    @see run Session.close
    """

    primary: object = None
    goal_id: int = 0
    send_unknown: bool = False
    feedback: object = None
    feedback_used: int = 0
    result: object = None
    cleanup: object = None
    cleanup_error: object = None
    session: object = None


def parse_goal(mode, distance, count):
    """@brief Parse one bounded original square/triangle Goal without ROS work.

    @details Numeric strings are 1..255 ASCII bytes. Distance permits decimal
    exponents; count requires signed decimal digits and follows float(int(text))
    including positive zero for '-0'. Whitespace/locale/hex/nonfinite values are
    refused. This replaces the original interactive UI with an explicit bounded
    command domain; unbounded Python integer input is not claimed equivalent.
    @param mode Exactly 's' or 't'; main handles 'x' before constructing a Backend.
    @param distance Finite decimal metre value, without an inferred native limit.
    @param count Signed decimal integer converted to finite original float64.
    @return New complete Goal value, with all original Vector3 fields retained.
    @raises ValueError Mode, numeric grammar, extent or finite value is invalid.
    @see Goal encode_goal run
    """
    if mode not in ("s", "t"):
        raise ValueError("exact square/triangle mode required")
    if any(
        type(text) is not str or not 0 < len(text) <= 255 for text in (distance, count)
    ):
        raise ValueError("bounded ASCII numeric arguments required")
    if (
        re.fullmatch(
            r"[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?", distance
        )
        is None
        or re.fullmatch(r"[+-]?[0-9]+", count) is None
    ):
        raise ValueError("finite decimal distance and integer count required")
    value = Goal(1.0 if mode == "s" else 2.0, float(distance), float(int(count)))
    encode_goal(value)
    return value


def encode_goal(goal):
    """@brief Encode the complete original Vector3 as 24 canonical bytes.

    @details Pure conversion with finite-value/integer-count checks. Preserves
    metre distance and original float64 count; no ROS capability is opened.
    @param goal Borrowed Goal, unchanged during this synchronous encoding.
    @return Owned little-endian bytes containing all three original float64 fields.
    @raises ValueError Wrong concrete value, unsupported mode or nonfinite/fractional count.
    @see Goal parse_goal run
    """
    if (
        type(goal) is not Goal
        or goal.mode not in (1.0, 2.0)
        or any(
            type(value) not in (int, float) or not math.isfinite(value)
            for value in (goal.mode, goal.distance, goal.count)
        )
        or not float(goal.count).is_integer()
    ):
        raise ValueError("complete finite original Patrol Goal required")
    return struct.pack("<ddd", goal.mode, goal.distance, goal.count)


def _text(data):
    if len(data) < 4:
        raise RosError(Result(22))
    (size,) = struct.unpack_from("<I", data)
    if size > 256 or len(data) != size + 4:
        raise RosError(Result(22))
    try:
        text = data[4:].decode("utf-8", errors="strict")
    except UnicodeError as error:
        raise RosError(Result(22)) from error
    if "\0" in text:
        raise RosError(Result(22))
    return text


def run(aliases, goal, polls):
    """@brief Send one complete Goal, poll both channels and close every role.

    @details Creates only the genuine built-in Backend(2)/Session. Opens distinct
    send, cancel-own, feedback and result roles before sending once. Each of
    1..4096 iterations performs at most one feedback and one result RPC. Idle 11
    is observed without replaying a consumed/malformed value; other original
    failures remain exact. Full uint64 ID, terminal kind and complete UTF-8 text
    are validated before committing terminal ownership. No implicit native server
    wait, cancellation, mode repair or robot motion permission is introduced.
    Single synchronous Guest caller only; do not concurrently mutate returned owners.
    @param aliases Tuple of four distinct NUL-free UTF-8 aliases, 1..255 bytes each,
    in send/cancel-own/feedback/result order, with independently provisioned grants.
    @param goal Borrowed complete Goal; original metres/count are preserved.
    @param polls Integer 1..4096, replacing the original unbounded native spin.
    @return Report preserving original outcome/error, all cleanup results and
    unresolved ownership. Acceptance alone does not prove physical completion.
    @raises ValueError Pure argument validation failed before opening any capability.
    @raises ImportError The actual built-in Wasm bridge is unavailable; no fallback.
    @see Goal parse_goal Report Session.close
    """
    encoded = encode_goal(goal)
    if (
        type(aliases) is not tuple
        or len(aliases) != 4
        or any(
            type(alias) is not str
            or not 0 < len(alias.encode("utf-8")) <= 255
            or "\0" in alias
            for alias in aliases
        )
        or len(set(aliases)) != 4
        or type(polls) is not int
        or not 1 <= polls <= 4096
    ):
        raise ValueError("four exact aliases and finite poll budget required")
    report = Report(feedback=[None] * polls)
    owners = [None] * 4
    session = Session(Backend(2), maximum_owners=4)
    report.session = session
    try:
        session.check_abi()
        for index, alias in enumerate(aliases):
            owners[index] = session.open(alias)
        report.send_unknown = True
        reply = owners[0].invoke("action_send_goal", encoded, 8).checked()
        if len(reply.data) != 8:
            raise RosError(Result(22))
        (goal_id,) = struct.unpack("<Q", reply.data)
        if not goal_id:
            raise RosError(Result(22))
        report.goal_id, report.send_unknown = goal_id, False
        selector = struct.pack("<Q", goal_id)
        for _ in range(polls):
            reply = owners[2].invoke("action_receive_feedback", selector, 268)
            if reply.error == 0:
                if (
                    len(reply.data) < 8
                    or struct.unpack_from("<Q", reply.data)[0] != goal_id
                ):
                    raise RosError(Result(22))
                report.feedback[report.feedback_used] = _text(reply.data[8:])
                report.feedback_used += 1
            elif reply.error != 11:
                reply.checked()
            reply = owners[3].invoke("action_receive_result", selector, 269)
            if reply.error == 11:
                continue
            reply.checked()
            if (
                len(reply.data) < 9
                or struct.unpack_from("<Q", reply.data)[0] != goal_id
                or not 2 <= reply.data[8] <= 4
            ):
                raise RosError(Result(22))
            text = _text(reply.data[9:])
            report.result = (reply.data[8], text)
            break
        else:
            raise RosError(Result(110))
    except BaseException as error:
        report.primary = error
    finally:
        try:
            report.cleanup = session.close(report.primary)
        except BaseException as error:
            report.cleanup_error = error
    return report


def main(arguments=None):
    """@brief Execute the bounded original client from explicit WASI argv.

    @details Accepts encode s|t DIST COUNT with binary stdout and no Backend, or
    SEND CANCEL_OWN FEEDBACK RESULT s|t|x DIST COUNT POLLS. x returns before any
    open. Other modes retain/print every original feedback/result and independent
    cleanup status. No robot or ROS fallback is selected by command parsing.
    @param arguments Optional explicit argv list excluding program name; None uses sys.argv.
    @return Primary numeric status, then first cleanup failure if no primary;
    process entry caps statuses to 125 without altering the retained Report.
    @raises Exception Unexpected bridge/stdio error remains visible, never replayed.
    @see run parse_goal encode_goal
    """
    arguments = sys.argv[1:] if arguments is None else arguments
    if len(arguments) == 4 and arguments[0] == "encode":
        try:
            encoded = encode_goal(parse_goal(*arguments[1:]))
        except ValueError:
            return 22
        return 0 if sys.stdout.buffer.write(encoded) == len(encoded) else 5
    if len(arguments) != 8:
        return 22
    if arguments[4] == "x":
        return 0
    try:
        goal = parse_goal(*arguments[4:7])
        if (
            not 1 <= len(arguments[7]) <= 4
            or not arguments[7].isascii()
            or not arguments[7].isdigit()
        ):
            return 22
        polls = int(arguments[7])
        if not 1 <= polls <= 4096:
            return 22
    except ValueError:
        return 22
    report = run(tuple(arguments[:4]), goal, polls)
    primary = (
        report.primary.error
        if isinstance(report.primary, RosError)
        else 22 if report.primary else 0
    )
    if report.goal_id:
        print(f"accepted goal={report.goal_id}")
    for index in range(report.feedback_used):
        text = report.feedback[index]
        print(f'feedback[{len(text.encode("utf-8"))}]: {text}')
    if report.result is not None:
        kind, text = report.result
        print(
            f'terminal kind={kind} goal={report.goal_id}\nresult[{len(text.encode("utf-8"))}]: {text}'
        )
    elif report.goal_id or report.send_unknown:
        print(
            f"goal={report.goal_id} send_unknown={report.send_unknown} outcome unresolved; no replay or automatic cancel",
            file=sys.stderr,
        )
    print(
        dict(
            primary=report.primary,
            cleanup=report.cleanup,
            cleanup_error=report.cleanup_error,
        ),
        file=sys.stderr,
    )
    if report.cleanup is not None and not primary:
        for outcome in report.cleanup.outcomes:
            if isinstance(outcome, BaseException):
                primary = 22
                break
            if outcome is None or outcome.error:
                primary = 22 if outcome is None else outcome.error
                break
    return primary or (22 if report.cleanup_error else 0)


if __name__ == "__main__":
    raise SystemExit(min(main(), 125))
