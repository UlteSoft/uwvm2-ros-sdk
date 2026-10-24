-- SPDX-License-Identifier: Apache-2.0
-- Adapted from ROBOTIS TurtleBot3 Patrol Client (2018 ROBOTIS CO., LTD.;
-- Jeonggeun Lim, Ryan Shim, Gilbert), pinned Humble/Jazzy/main original body.
--- @brief Complete bounded original TurtleBot3 Patrol client for actual Lua5.4/WASI.
--- @details Uses the genuine roswasm Session/Capability and native one-use frames.
--- One original Vector3 Goal is followed by bounded complete feedback/result polls.
--- No native server, thread, socket, replay or automatic cancellation is created.
--- The original interactive/unbounded integer input domain is intentionally bounded.
--- @see M.parse_goal M.encode_goal M.run M.program
local ros = require("roswasm")
local raw = require("roswasm_native")
local wire = require("roswasm.wire")
local M = {}
local ZERO = string.rep("\0", 8)

--- @brief Raise an unchanged numeric application/ABI failure inside the protected body.
--- @details Allocates a local error table only; performs no import, replay or cleanup.
--- @param code integer [in] Complete original failure status, never a process exit code.
--- @param stage string [in] Local failing operation or validation description.
--- @return never This helper raises; M.run and M.program retain the error separately.
--- @see M.run M.program
local function fail(code, stage)
    error({ code = code, stage = stage }, 0)
end

--- @brief Inspect one Lua number without coercion or ROS activity.
--- @param value any [in] Borrowed scalar, unchanged.
--- @return boolean finite True for a number other than NaN or either infinity.
--- @see M.encode_goal
local function finite(value)
    return type(value) == "number" and value == value
        and value ~= math.huge and value ~= -math.huge
end

--- @brief Convert one bounded original decimal input to a finite float64 field.
--- @details Count accepts signed integer digits only; distance permits decimal
--- exponent syntax. Lua's actual parser performs conversion after the ASCII
--- extent/character checks. Negative distance zero is retained; count zero is
--- normalized like the original float(int(text)). No robot limit is inferred.
--- @param text string [in] Immutable nonempty ASCII numeric text, at most255 bytes.
--- @param integer_only boolean [in] True only for the original repeat count.
--- @return number value Complete original finite float64 value, or raises code22.
--- @see M.parse_goal fail
local function number(text, integer_only)
    if type(text) ~= "string" or #text == 0 or #text > 255 then
        fail(22, "numeric input extent")
    end
    local first = 1
    if text:byte(1) == 43 or text:byte(1) == 45 then first = 2 end
    if first > #text then fail(22, "numeric digits") end
    for index = first, #text do
        local byte = text:byte(index)
        if byte < 48 or byte > 57 then
            if integer_only or (byte ~= 43 and byte ~= 45 and byte ~= 46 and byte ~= 69 and byte ~= 101) then
                fail(22, "ASCII decimal input")
            end
        end
    end
    local value = tonumber(text)
    if not finite(value) then fail(22, "finite original float64 conversion") end
    if value == 0 then
        -- Python float(distance) preserves -0; float(int(count)) normalizes it.
        if not integer_only and text:byte(1) == 45 then return -0.0 end
        return 0.0
    end
    return value + 0.0
end

--- @brief Check one whole bounded NUL-free UTF-8 string without normalization.
--- @param value any [in] Borrowed value, never coerced or changed.
--- @param maximum integer [in] Inclusive byte bound, not a Unicode character count.
--- @return boolean valid True for a complete string within the selected byte bound.
--- @see M.run complete_text
local function text(value, maximum)
    return type(value) == "string" and #value <= maximum
        and not value:find("\0", 1, true) and utf8.len(value) ~= nil
end

--- @class Goal
--- @brief Own the three complete original Vector3 Goal fields.
--- @details Plain Lua table; callers must keep fields stable during a synchronous
--- call. Construction grants no motion or native model/safety authority.
--- @field mode number Original x: square1 or triangle2, dimensionless.
--- @field distance number Original y: finite distance in metres.
--- @field count number Original z: signed decimal integer converted to float64.
--- @see M.parse_goal M.encode_goal

--- @brief Parse all original goal fields before opening any capability.
--- @details Numeric strings have at most255 ASCII bytes. Count requires signed
--- decimal digits; distance permits decimal/exponent notation accepted by Lua's
--- numeric parser. Whitespace, hexadecimal and nonfinite values are refused.
--- Count conversion preserves the original int-to-float behavior within this
--- bounded domain; it does not invent an integer motor or safety limit.
--- @param mode string [in] Exactly s or t; program() handles x separately.
--- @param distance string [in] Original distance in metres, at most255 bytes.
--- @param count string [in] Signed decimal integer, at most255 bytes.
--- @return Goal goal Caller-owned complete plain table; no native activity.
--- @see M.encode_goal M.run
function M.parse_goal(mode, distance, count)
    if mode ~= "s" and mode ~= "t" then fail(22, "original mode") end
    return { mode = mode == "s" and 1.0 or 2.0,
        distance = number(distance, false), count = number(count, true) }
end

--- @brief Encode every original Vector3 field as canonical little-endian float64.
--- @details Pure24-byte conversion. Rejects extra fields, metatables, malformed
--- modes, nonfinite values and fractional counts before any resource is opened.
--- @param goal Goal [in] Borrowed complete plain value, unchanged during the call.
--- @return string bytes Owned immutable24-byte original goal payload.
--- @see M.parse_goal M.run
function M.encode_goal(goal)
    if type(goal) ~= "table" or getmetatable(goal) ~= nil then fail(22, "plain Goal") end
    local fields = 0
    for key in pairs(goal) do
        if key ~= "mode" and key ~= "distance" and key ~= "count" then fail(22, "Goal field") end
        fields = fields + 1
    end
    if fields ~= 3 or (goal.mode ~= 1.0 and goal.mode ~= 2.0)
        or not finite(goal.distance) or not finite(goal.count)
        or math.floor(goal.count) ~= goal.count then fail(22, "complete original Goal") end
    return string.pack("<ddd", goal.mode, goal.distance, goal.count)
end

--- @brief Invoke one genuine owned buffer-returning operation exactly once.
--- @details Checks the original numeric status, prepared-frame protocol and full
--- output extent before copying its immutable bytes. A permitted idle11 returns
--- nil. Size90, timeout110 or an unknown effect never authorizes resize/replay.
--- @param capability Capability [in,out] Live genuine selected role; borrowed.
--- @param operation string [in] Exact selected ROS2 ABI operation name.
--- @param input string [in] Whole immutable original request/correlation bytes.
--- @param capacity integer [in] Explicit complete-output capacity in bytes.
--- @param idle_allowed boolean [in] True only for feedback/result polls.
--- @return string|nil bytes Whole successful reply, nil for permitted idle; otherwise raises.
--- @see M.run complete_text
local function returned(capability, operation, input, capacity, idle_allowed)
    local frame, code = capability:invoke(operation, input, capacity)
    if idle_allowed and code == 11 then return nil end
    if code ~= 0 then fail(code, operation) end
    if not frame or not frame:valid() then fail(5, operation .. " returned-frame protocol") end
    local bytes = frame:data()
    if #bytes > capacity then fail(5, operation .. " output extent") end
    return bytes
end

--- @brief Decode one complete original bounded string and reject any trailing bytes.
--- @details Reads its u32LE byte extent, checks the entire UTF-8 value and retains
--- it unchanged. ID and terminal-kind validation belongs to the calling receive.
--- @param bytes string [in] Whole immutable feedback/result frame.
--- @param offset integer [in] One-based string-length location:9 feedback,10 result.
--- @return string value Complete original string up to256 bytes, or raises code22.
--- @see M.run text
local function complete_text(bytes, offset)
    if #bytes < offset + 3 then fail(22, "complete original string header") end
    local count, at = string.unpack("<I4", bytes, offset)
    if count > 256 or #bytes ~= at + count - 1 then fail(22, "complete original string extent") end
    local value = bytes:sub(at)
    if not text(value, 256) then fail(22, "strict original UTF-8 string") end
    return value
end

--- @class CleanupOutcome
--- @brief Preserve one independently attempted original role close.
--- @field attempted boolean True only when this acquired owner entered close().
--- @field code integer Complete native close status when no Lua error was raised.
--- @field error_failed boolean Distinguishes any Lua error object, including false/nil.
--- @field error any Original unchanged Lua error object; consume when error_failed.
--- @see Report M.run

--- @class Report
--- @brief Own the complete original values and separately retained cleanup outcomes.
--- @details Local tables/strings only; no live capability is returned. Preserve
--- primary_failed separately because Lua can throw false/nil. Only feedback entries
---1..feedback_used contain original strings. A kind2/3/4 commits only after full ID,
--- string and trailing-byte checks. A missing terminal result or unknown send never
--- permits replay, inferred cancellation or physical completion claims. Cleanup
--- failures do not replace the primary outcome. Fatal traps/OOM/process death
--- still require outer Instance cleanup. Single caller; no SDK state mutation.
--- @field primary_failed boolean Whether the body raised an ordinary Lua error.
--- @field primary any Exact body error object, including an application code/stage.
--- @field goal_id string All uint64 bits as exactly eight opaque LE bytes; zero unknown.
--- @field send_unknown boolean Conservative once send invocation is attempted.
--- @field feedback string[] Preallocated finite storage; use feedback_used.
--- @field feedback_used integer Number of completely decoded original feedback strings.
--- @field terminal_kind integer 0 unresolved, or original terminal kind2/3/4.
--- @field result_text string Complete original result text after terminal commit.
--- @field cleanup CleanupOutcome[] Send/cancel-own/feedback/result order, all separate.
--- @field session_summary table|nil Final genuine Session.close report, after role closes.
--- @field session_code integer Final Session.close status, independently retained.
--- @field session_error_failed boolean Whether Session.close raised an ordinary Lua error.
--- @field session_error any Exact Session.close error object when that flag is true.
--- @see M.run wire.uint64_hex

--- @brief Send one full original goal, poll complete values and close every acquired role.
--- @details Uses the actual ROS2 imports with four independently granted original
--- Patrol aliases. The matching native server remains a separate program. Goal,
--- alias, poll and feedback-storage validation/allocation precedes acquisition.
--- Receive loops are finite and nonblocking at the ABI; no cancel-any operation,
--- native wait, retry, finalizer or automatic cancellation is introduced. Unknown
--- send is conservative even if the SDK raises during its pre-entry preparation.
--- Every acquired role closes once in reverse order under its separate cleanup
--- grant. The final Session.close sees retired roles and does not repeat native
--- retirement. Ordinary errors are captured per role; no trap cleanup is promised.
--- @param aliases string[] [in] Exact four distinct NUL-free UTF-8 aliases,1..255 bytes.
--- Order is send, cancel-own, feedback, result; keep them stable during the call.
--- @param goal Goal [in] Complete borrowed original value, stable during the call.
--- @param polls integer [in]1..4096; one feedback and one result poll per iteration.
--- @return Report report Exact complete values and original primary/cleanup errors.
--- @see M.parse_goal M.encode_goal Report
function M.run(aliases, goal, polls)
    local encoded = M.encode_goal(goal)
    if math.type(polls) ~= "integer" or polls < 1 or polls > 4096 then fail(22, "finite poll budget") end
    if type(aliases) ~= "table" or getmetatable(aliases) ~= nil or #aliases ~= 4 then
        fail(22, "four original role aliases")
    end
    local keys = 0
    for key in pairs(aliases) do
        if math.type(key) ~= "integer" or key < 1 or key > 4 then fail(22, "alias field") end
        keys = keys + 1
    end
    if keys ~= 4 then fail(22, "complete aliases") end
    for index = 1, 4 do
        if not text(aliases[index], 255) or #aliases[index] == 0 then fail(22, "bounded original alias") end
        for earlier = 1, index - 1 do
            if aliases[earlier] == aliases[index] then fail(22, "distinct original roles") end
        end
    end
    local report = { primary_failed = false, goal_id = ZERO, send_unknown = false,
        feedback = {}, feedback_used = 0, terminal_kind = 0, result_text = "", cleanup = {},
        session_code = 0, session_error_failed = false }
    for index = 1, polls do report.feedback[index] = false end
    for index = 1, 4 do
        report.cleanup[index] = { attempted = false, code = 0, error_failed = false }
    end
    local session = ros.session(4)
    local owners = {}
    local ok, primary = pcall(function()
        if ros.backend ~= 2 then fail(95, "actual ROS2 backend required") end
        local version = raw.prepare("abi_version", ZERO, "", 0, ZERO, ZERO)
        if raw.invoke(version) ~= 0 or not version:valid()
            or version:value() ~= "\1\0\0\0\0\0\0\0" then fail(95, "actual ABI v1 required") end
        for index = 1, 4 do
            local owner, code = session:open(aliases[index])
            owners[index] = owner
            if code ~= 0 then fail(code, "open original role" .. index) end
        end
        report.send_unknown = true
        local id = returned(owners[1], "action_send_goal", encoded, 8, false)
        if #id ~= 8 or id == ZERO then fail(22, "complete nonzero original goal ID") end
        report.goal_id, report.send_unknown = id, false
        for iteration = 1, polls do
            local feedback = returned(owners[3], "action_receive_feedback", id, 268, true)
            if feedback then
                if #feedback < 12 or feedback:sub(1, 8) ~= id then fail(22, "full feedback identity") end
                local value = complete_text(feedback, 9)
                report.feedback_used = report.feedback_used + 1
                report.feedback[report.feedback_used] = value
            end
            local result = returned(owners[4], "action_receive_result", id, 269, true)
            if result then
                if #result < 13 or result:sub(1, 8) ~= id then fail(22, "full result identity") end
                local kind = result:byte(9)
                if kind < 2 or kind > 4 then fail(22, "original terminal kind") end
                local value = complete_text(result, 10)
                report.result_text, report.terminal_kind = value, kind
                break
            end
        end
        if report.terminal_kind == 0 then fail(110, "finite polling unresolved; no replay or automatic cancel") end
    end)
    report.primary_failed, report.primary = not ok, primary
    for index = 4, 1, -1 do
        if owners[index] then
            local item = report.cleanup[index]
            item.attempted = true
            local closed, code = pcall(owners[index].close, owners[index])
            if closed then item.code = code else item.error_failed, item.error = true, code end
        end
    end
    local closed, summary, code = pcall(session.close, session, report.primary)
    if closed then report.session_summary, report.session_code = summary, code
    else report.session_error_failed, report.session_error = true, summary end
    return report
end

--- @brief Select a bounded numeric status while preserving the original error object.
--- @details Reads a raw code field only from a plain table; other ordinary Lua
--- errors map locally to22. This does not overwrite Report.primary or per-role errors.
--- @param value any [in] Exact caught Lua error, including nil/false.
--- @return integer code Original positive u32 status when present, otherwise22.
--- @see M.program Report
local function error_code(value)
    if type(value) == "table" and getmetatable(value) == nil then
        local code = rawget(value, "code")
        if math.type(code) == "integer" and code > 0 and code <= 0xffffffff then return code end
    end
    return 22
end

--- @brief Read one finite LF-delimited operator field before native work.
--- @details EOF may terminate a nonempty final field; missing/oversized fields
--- raise22 and stream errors raise5. Reads may wait, so outer supervision owns
--- the input deadline. No alias, target, repeated goal or ROS activity is inferred.
--- @param maximum integer [in] Inclusive byte extent excluding the LF delimiter.
--- @return string field Whole immutable field without its LF, or raises.
--- @see M.program
local function line(maximum)
    local bytes = {}
    for index = 0, maximum do
        local byte, message = io.read(1)
        if byte == nil then
            if message then fail(5, "stdin I/O") end
            if index == 0 then fail(22, "missing stdin field") end
            return table.concat(bytes)
        end
        if byte == "\n" then return table.concat(bytes) end
        if index == maximum then fail(22, "stdin field extent") end
        bytes[#bytes + 1] = byte
    end
end

--- @brief Write complete report fragments after work and independent retirement.
--- @details Raises a local output error on a short/failed standard stream write.
--- It never invokes ROS, retries native work or changes the retained Report.
--- @param ... string|number [in] Exact fragments accepted by Lua io.write.
--- @return nil No value on success; stream failure propagates to the embedding.
--- @see M.program
local function write(...)
    if not io.write(...) then error("Patrol stdout I/O failed", 0) end
end

--- @brief Run the bounded stdin protocol supported by the actual frozen Lua embedding.
--- @details That embedding has no argv or os.exit. x plus LF quits before any open.
--- encode plus LF/mode/distance/count emits exactly24 raw goal bytes. run plus LF,
--- four role aliases, mode, distance, count and polls executes one full goal. Every
--- field ends with LF (EOF may terminate the last nonempty field); maximum widths
--- are7/255/255/255/4 bytes as appropriate. Extra input is left unread; no loop or
--- second goal is implied. Reads may wait for their host stream, so outer Instance
--- supervision must bound input time as well as native resource deadlines.
--- Run output reports primary as a numeric ABI/application status, full16-digit
--- goal hex, length-prefixed original feedback/result text, terminal kind and each
--- cleanup outcome. The genuine embedding returns process0 after a normal return;
--- consumers must inspect primary/cleanup statuses. Uncaught/fatal/output I/O errors
--- remain nonzero process failures. No command grants native robot authority.
--- @return integer status Exact primary/first cleanup status, also written for run.
--- @see M.run M.parse_goal M.encode_goal
function M.program()
    local ok, result = pcall(function()
        local command = line(7)
        if command == "x" then return { status = 0 } end
        if command == "encode" then
            local mode = line(1)
            local distance = line(255)
            local count = line(255)
            return { encoded = M.encode_goal(M.parse_goal(mode, distance, count)) }
        end
        if command ~= "run" then fail(22, "stdin command") end
        local aliases = {}
        for index = 1, 4 do aliases[index] = line(255) end
        local mode = line(1)
        local distance = line(255)
        local count = line(255)
        local goal = M.parse_goal(mode, distance, count)
        local budget = line(4)
        if #budget == 0 or budget:find("[^0-9]") then fail(22, "poll digits") end
        local polls = math.tointeger(tonumber(budget))
        return { report = M.run(aliases, goal, polls) }
    end)
    if not ok then
        local code = error_code(result)
        write("primary=", code, "\n")
        if not io.flush() then error("Patrol stdout flush failed", 0) end
        return code
    end
    if result.encoded then
        write(result.encoded)
        if not io.flush() then error("Patrol goal flush failed", 0) end
        return 0
    end
    local report = result.report
    if not report then
        write("primary=", result.status, "\n")
        if not io.flush() then error("Patrol stdout flush failed", 0) end
        return result.status
    end
    local status = report.primary_failed and error_code(report.primary) or 0
    write("primary=", status, "\ngoal=", wire.uint64_hex(report.goal_id),
        "\nsend_unknown=", tostring(report.send_unknown), "\n")
    for index = 1, report.feedback_used do
        local value = report.feedback[index]
        write("feedback[", index, "][", #value, "]=", value, "\n")
    end
    write("terminal_kind=", report.terminal_kind, "\nresult[", #report.result_text, "]=", report.result_text, "\n")
    for index = 1, 4 do
        local item = report.cleanup[index]
        local code = item.error_failed and error_code(item.error) or item.code
        write("cleanup[", index, "]=", code, " attempted=", tostring(item.attempted), "\n")
        if status == 0 and item.attempted then status = code end
    end
    local session_code = report.session_error_failed and error_code(report.session_error) or report.session_code
    write("session_cleanup=", session_code, "\n")
    if status == 0 then status = session_code end
    if not io.flush() then error("Patrol stdout flush failed", 0) end
    return status
end

-- An embedding may suppress the stdio entry; this flag grants no authority.
-- The genuine installed command embedding leaves the flag absent and runs once.
if rawget(_G, "ROSWASM_PATROL_LIBRARY_ONLY") ~= true then M.program() end
return M
