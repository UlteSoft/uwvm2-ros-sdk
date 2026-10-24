//! @file main.zig
//! @brief Two original incoming goals and genuine independent native client cancellation.
//! @details This module preserves complete original action fields and bounded storage.
//! Runtime authority is supplied explicitly by the caller's deployment configuration.

const client = @import("rosclient");
const grasp = @import("franka_grasp");
const app = @import("support.zig");
/// @brief Execute the bounded action scenario using previously acquired endpoints.
/// @param owners Borrowed endpoint slots acquired by nl_entry.
/// @return Primary scenario status; the caller performs independent cleanup.
/// @details The example checks full records and each goal's independent lifecycle.
/// Fixed fixture inputs are intended for the documented offline native peer.
fn run(owners: *[3]?client.Owner) u32
{
    var empty: [0]u8 = .{};
    const advertised = owners[0].?.request(.action_advertise, &empty, &empty);
    if (advertised.code != 0)
        return advertised.code;
    var goals: [2]grasp.Incoming = undefined;
    var count: usize = 0;
    for (0..600) |_|
    {
        if (count == 2)
            break;
        const next = grasp.poll(owners[0].?);
        if (next.code == 0)
        {
            goals[count] = next;
            count += 1;
        }
        else if (next.code != 11)
            return next.code;
        if (count != 2)
        {
            const pause = app.pause();
            if (pause != 0)
                return pause;
        }
    }
    if (count != 2 or goals[0].id == goals[1].id or goals[0].goal.force == goals[1].goal.force)
        return 110;
    if (goals[0].goal.force > goals[1].goal.force)
    {
        const first = goals[0];
        goals[0] = goals[1];
        goals[1] = first;
    }
    for (&goals) |*goal|
    {
        const logged = app.record("GOAL", goal.id, 0, &goal.goal);
        if (logged != 0)
            return logged;
        var premature: grasp.Result = .{};
        const status = grasp.respond(owners[1].?, goal.id, 4, &premature);
        if (app.print("PREMATURE id={d} code={d}\n", .{ goal.id, status }) != 0)
            return 5;
        if (status != 13)
            return 22;
    }
    const refused = app.refusals(owners[2].?);
    if (refused != 0)
        return refused;
    var active = [_]bool{ true, true };
    for (0..600) |_|
    {
        for (goals, 0..) |goal, i|
        {
            if (!active[i])
                continue;
            var feedback: grasp.Feedback = .{};
            const code = grasp.respond(owners[1].?, goal.id, 1, &feedback);
            if (code == 9)
            {
                active[i] = false;
                if (app.print("TERMINAL id={d} origin=native-retirement error=9\n", .{goal.id}) != 0)
                    return 5;
                continue;
            }
            if (code != 0)
                return code;
            if (app.record("FEEDBACK", goal.id, 1, &feedback) != 0)
                return 5;
            var value: grasp.Result = .{};
            const status = grasp.respond(owners[1].?, goal.id, 4, &value);
            if (status != 13 and status != 9)
                return if (status == 0) 22 else status;
        }
        if (!active[0] and !active[1])
        {
            for (0..5) |_|
            {
                const pause = app.pause();
                if (pause != 0)
                    return pause;
            }
            return 0;
        }
        const pause = app.pause();
        if (pause != 0)
            return pause;
    }
    return 110;
}
/// @brief Acquire explicitly configured roles, execute the example, and retire owners.
/// @return Primary operation status or the first independent cleanup error.
/// @details The public startup invokes this entry; it neither creates policy
/// nor grants ROS rights. Partial acquisition is cleaned up deterministically.
export fn nl_entry() u32
{
    var states = [_]client.State{.{}} ** 3;
    var owners = [_]?client.Owner{null} ** 3;
    const aliases = [_][]const u8{ "serve", "reply", "own" };
    for (aliases, 0..) |alias, i|
    {
        const acquired = client.open(&states[i], alias);
        if (acquired.code != 0)
            return app.finish(acquired.code, &owners);
        owners[i] = acquired.owner;
    }
    return app.finish(run(&owners), &owners);
}
