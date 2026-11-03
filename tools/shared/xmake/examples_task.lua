-- SPDX-License-Identifier: Apache-2.0
-- @brief Register the SDK main Xmake's one public child-project scheduler.
local root = path.absolute("../../..", os.scriptdir())
task("examples")
    set_category("action")
    set_menu {usage = "xmake examples [options]", description = "Build and test every public child example through bounded main-Xmake jobs.",
        options = {{"j", "jobs", "kv", "2", "Main scheduler jobs (1..4); child Xmake always uses -j1."},
                   {nil, "shard-index", "kv", "1", "One-based deterministic shard."},
                   {nil, "shard-count", "kv", "1", "Total shard count, up to 128."},
                   {nil, "group", "kv", nil, "Exact versioned public project group; subset scope is explicit."},
                   {nil, "timeout", "kv", "300", "Per public child command timeout seconds."},
                   {nil, "output", "kv", nil, "Generated evidence root, outside deployable target directories."},
                   {nil, "refresh-catalog", "k", nil, "Regenerate complete source catalog for explicit review, no acceptance."},
                   {nil, "merge", "kv", nil, "Verify every shard against the full public catalog; no child execution."}}}
    on_run(function()
        import("example_matrix", {rootdir = path.join(root, "tools/shared/xmake"), anonymous = true}).main(root)
    end)
task_end()
