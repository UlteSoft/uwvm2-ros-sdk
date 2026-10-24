//! @file main.zig
//! @brief Full original Grasp client; send/cancel once, repeat only actual idle polls.
//! @details This module preserves complete original action fields and bounded storage.
//! Runtime authority is supplied explicitly by the caller's deployment configuration.

const client = @import("rosclient");
const grasp = @import("flexiv_client");
const app = @import("support.zig");
const cancel_two = true;

/// @brief Poll correlated feedback with a finite idle-only retry budget.
/// @param owner Borrowed feedback endpoint.
/// @param id Expected opaque correlation ID.
/// @return Zero after a complete record, 110 on timeout, or the actual error.
/// @details Only idle status 11 is retried, at most 600 times.
fn waitFeedback(owner: client.Owner, id: u64) u32
{
    for (0..600) |_|
    {
        var value: grasp.Feedback = .{};
        const code = grasp.feedback(owner, id, &value);
        if (code != 11)
        {
            if (code != 0)
                return code;
            return app.record("FEEDBACK", id, 1, &value);
        }
        const pause = app.pause();
        if (pause != 0)
            return pause;
    }
    return 110;
}
/// @brief Poll and validate the expected complete terminal record.
/// @param owner Borrowed result endpoint.
/// @param id Expected opaque correlation ID.
/// @return Zero after the expected terminal, 110 on timeout, or an error.
/// @details Send and cancellation operations are never replayed by this loop.
fn waitResult(owner: client.Owner, id: u64) u32
{
    for (0..600) |_|
    {
        var received = grasp.result(owner, id);
        if (received.code != 11)
        {
            if (received.code != 0)
                return received.code;
            if (received.kind != (if (cancel_two) @as(u8, 4) else @as(u8, 2)))
                return 22;
            return app.record("RESULT", id, received.kind, &received.value);
        }
        const pause = app.pause();
        if (pause != 0)
            return pause;
    }
    return 110;
}
/// @brief Execute the bounded action scenario using previously acquired endpoints.
/// @param owners Borrowed endpoint slots acquired by nl_entry.
/// @return Primary scenario status; the caller performs independent cleanup.
/// @details The example checks full records and each goal's independent lifecycle.
/// Fixed fixture inputs are intended for the documented offline native peer.
fn run(owners: *[4]?client.Owner) u32
{
    var ids = [_]u64{0} ** 2;
    for (0..(if (cancel_two) @as(usize, 2) else 1)) |i|
    {
        var goal: grasp.Goal = .{ .force = 3.75 * @as(f64, @floatFromInt(i + 1)) };
        const sent = grasp.send(owners[0].?, &goal);
        if (sent.code != 0)
            return sent.code;
        ids[i] = sent.id;
        const logged = app.record("GOAL", sent.id, 0, &goal);
        if (logged != 0)
            return logged;
    }
    if (cancel_two and ids[0] == ids[1])
        return 22;
    for (ids[0..(if (cancel_two) @as(usize, 2) else 1)]) |id|
    {
        const code = waitFeedback(owners[2].?, id);
        if (code != 0)
            return code;
    }
    if (cancel_two)
    {
        const denied = app.refusals(owners[1].?);
        if (denied != 0)
            return denied;
        const canceled = grasp.cancel(owners[1].?, ids[0]);
        if (canceled != 0)
            return canceled;
        if (app.print("CANCEL id={d} ack=1\n", .{ids[0]}) != 0)
            return 5;
    }
    const result_a = waitResult(owners[3].?, ids[0]);
    if (result_a != 0)
        return result_a;
    if (cancel_two)
    {
        const stale = grasp.cancel(owners[1].?, ids[0]);
        if (app.print("STALE id={d} code={d}\n", .{ ids[0], stale }) != 0)
            return 5;
        if (stale != 9)
            return 22;
        for (0..6) |_|
        {
            const status = app.pause();
            if (status != 0)
                return status;
            if (grasp.result(owners[3].?, ids[1]).code != 11)
                return 22;
        }
        const progress = waitFeedback(owners[2].?, ids[1]);
        if (progress != 0)
            return progress;
        const canceled = grasp.cancel(owners[1].?, ids[1]);
        if (canceled != 0)
            return canceled;
        if (app.print("CANCEL id={d} ack=1\n", .{ids[1]}) != 0)
            return 5;
        return waitResult(owners[3].?, ids[1]);
    }
    return 0;
}
/// @brief Acquire explicitly configured roles, execute the example, and retire owners.
/// @return Primary operation status or the first independent cleanup error.
/// @details The public startup invokes this entry; it neither creates policy
/// nor grants ROS rights. Partial acquisition is cleaned up deterministically.
export fn nl_entry() u32
{
    var states = [_]client.State{.{}} ** 4;
    var owners = [_]?client.Owner{null} ** 4;
    const aliases = [_][]const u8{ "send", "cancel", "feedback", "result" };
    for (aliases, 0..) |alias, i|
    {
        const acquired = client.open(&states[i], alias);
        if (acquired.code != 0)
            return app.finish(acquired.code, &owners);
        owners[i] = acquired.owner;
    }
    return app.finish(run(&owners), &owners);
}
