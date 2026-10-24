--- @brief Own explicitly granted ROS capabilities in an embedded Lua Guest.
--- @details Requires the statically linked roswasm_native module for one ROS
--- backend and Lua 5.4.8 with signed 64-bit lua_Integer. Calls are synchronous
--- on the caller's Lua thread; the module starts no executor, clock or thread.
--- Local construction grants no authority. No finalizer performs ROS I/O.
--- Fatal traps, OOM and process death require outer Instance cleanup.
--- @see Session.close
local raw = require("roswasm_native")
local M = {
    --- @brief Identify the backend selected when compiling the native bridge.
    --- @details Integer 1 means ROS1; 2 means ROS2. Treat this field as read-only.
    --- It selects an ABI namespace and confers no endpoint permissions.
    --- @see Session.open
    backend = raw.backend,
}
local ZERO = string.rep("\0", 8)

--- @class Session
--- @brief Keep a finite, explicitly retired capability ledger.
--- @details Created by session(). Each open attempt consumes a lifetime slot,
--- including a denied attempt; closing owners does not recycle ledger slots.
--- Treat bookkeeping fields as private. Retain the Session while capabilities
--- are used and call close() explicitly before discarding it. It is single-threaded
--- and may not be shut down while a poll callback holds a dispatch lease.
--- @see M.session
local Session = {}

--- @class Capability
--- @brief Own one successful open in its originating Session and backend.
--- @details Opaque handles belong to the originating Runtime Instance. Keep the
--- Session alive, do not mutate bookkeeping fields, and retire once explicitly.
--- Errors 90, 107 or 110 do not trigger replay; admitted effects may persist
--- after timeout. Closing a capability does not establish a physical robot stop.
--- @see Session.open
local Capability = {}
Session.__index = Session
Capability.__index = Capability

--- @brief Allocate a finite local owner ledger without opening ROS resources.
--- @details This factory performs only Lua allocation. It requires no grant and
--- registers no finalizer. The returned ledger supports one caller Lua thread.
--- Invalid limits raise a Lua assertion; allocation failure propagates normally.
--- @param maximum integer [in] Lifetime open-attempt limit, inclusive 1..1024.
--- @return Session session A new open ledger owned by the caller.
--- @see Session.close
function M.session(maximum)
    assert(math.type(maximum) == "integer" and maximum >= 1 and maximum <= 1024, "finite owner limit1..1024 required")
    return setmetatable({ maximum = maximum, owners = {}, closed = false, busy = 0 }, Session)
end

--- @brief Open an alias already granted by the trusted host to this Instance.
--- @details Reserves the owner object and its ledger slot before entering the
--- import. The alias must contain 1..255 UTF-8 bytes and no NUL. Closed sessions,
--- callback dispatch, malformed aliases and exhausted ledgers raise Lua errors.
--- The call is synchronous and never invents, widens or retries a grant. Failed
--- opens stay recorded as retired attempts for deterministic later cleanup.
--- @param alias string [in] Exact trusted alias; Lua retains the immutable bytes.
--- @return Capability|nil capability Caller-owned capability only on success.
--- @return integer code ABI status: 0 success, 13 denied, or another ABI error;
--- 5 denotes a successful native reply with an invalid handle protocol.
--- @see Capability.close
function Session:open(alias)
    assert(not self.closed and self.busy == 0, "session closed or dispatch busy")
    assert(
        type(alias) == "string" and #alias >= 1 and #alias <= 255 and not alias:find("\0", 1, true) and utf8.len(alias),
        "bounded UTF-8 alias required"
    )
    assert(#self.owners < self.maximum, "finite owner ledger exhausted")
    local frame = raw.prepare("capability_open", ZERO, alias, 0, ZERO, ZERO)
    local capability = setmetatable({
        session = self,
        alias = alias,
        frame = frame,
        retired = false,
        busy = 0,
    }, Capability)
    -- Root the owner and its ledger slot before the actual capability_open.
    self.owners[#self.owners + 1] = capability
    local code = raw.invoke(frame)
    if code ~= 0 then
        capability.retired = true
        return nil, code
    end
    if not frame:valid() then
        capability.retired = true
        return nil, 5
    end
    return capability, 0
end

--- @brief Prepare and synchronously invoke one exact operation on this handle.
--- @details Uses the native bridge's one-use frame; no callback or hidden retry
--- occurs. prepare() validates and roots bytes before the effect. A returned
--- frame retains its input and output until Lua releases it. Check its valid()
--- method before consuming data/value, even when code is 0. Local validation
--- raises Lua errors; ABI errors are returned unchanged. Callers must select
--- the endpoint/type/operation/QoS/deadline grant required by the actual import.
--- @param operation string [in] Exact ABI v1 name supported by this backend.
--- @param input? string [in] Canonical bytes, at most 4193786; default empty.
--- @param capacity? integer [in] Output capacity in bytes, 0..4194304; default 0.
--- event_ready requires exactly 32. This reserves memory, not authority.
--- @param other? string [in] Second handle as exactly eight LE bytes; default 0.
--- @param correlation? string [in] Correlation ID as eight LE bytes; default 0.
--- @return userdata|nil frame Prepared result, or nil if locally retired/closed.
--- @return integer code ABI result; 9 for a locally retired/closed capability.
--- @see wire.lua
function Capability:invoke(operation, input, capacity, other, correlation)
    if self.retired or self.session.closed then
        return nil, 9
    end
    local handle = self.frame:value()
    local prepared = raw.prepare(operation, handle, input or "", capacity or 0, other or ZERO, correlation or ZERO)
    local code = raw.invoke(prepared)
    return prepared, code
end

--- @brief Retire this local owner and close its handle at most once.
--- @details Marks retirement before entering capability_close; a failed import
--- does not permit replay. No other owner is closed. Callback-time retirement
--- returns 17 before mutation. The operation is synchronous and is resource
--- cleanup, not an actuator stop command; no additional permission is granted.
--- @return integer code 0 or native ABI error; 9 already retired; 17 dispatch conflict.
--- @see Session.close
function Capability:close()
    if self.retired then
        return 9
    end
    if self.busy ~= 0 or self.session.busy ~= 0 then
        return 17
    end
    self.retired = true
    return raw.retire(self.frame, false)
end

--- @brief Revoke this alias once and retire local same-alias siblings.
--- @details Before one capability_revoke import, marks all owners of the exact
--- alias in this Session retired. No later close or retry is scheduled for them,
--- including if revocation returns an error. A live callback lease returns 17
--- before mutation. Revocation affects the trusted alias contract; it does not
--- broaden rights or prove that physical motion stopped.
--- @return integer code 0 or native ABI error; 9 already retired; 17 dispatch conflict.
--- @see Capability.close
function Capability:revoke()
    if self.retired then
        return 9
    end
    if self.session.busy ~= 0 then
        return 17
    end
    for _, owner in ipairs(self.session.owners) do
        if owner.alias == self.alias and owner.busy ~= 0 then
            return 17
        end
    end
    for _, owner in ipairs(self.session.owners) do
        if owner.alias == self.alias then
            owner.retired = true
        end
    end
    return raw.retire(self.frame, true)
end

--- @class CleanupOutcome
--- @brief Describe one ledger attempt in reverse open order.
--- @details The report owns this ordinary Lua table; it contains no live handle.
--- A skipped/denied/already retired attempt has attempted=false and code=0.
--- @field alias string Exact attempted alias.
--- @field attempted boolean Whether this cleanup entered native retirement.
--- @field code integer Native retirement status when the call returned.
--- @field error any Lua error object, or false when no Lua error was caught.
--- @see Session.close

--- @class CleanupReport
--- @brief Preserve the primary failure and all ordinary cleanup outcomes.
--- @details Allocated completely before the first retirement. success reflects
--- cleanup only; primary may still describe an application failure. Fatal traps,
--- process death and unrecoverable allocation failure require outer cleanup.
--- @field primary any The caller's unchanged primary result/error reference.
--- @field outcomes CleanupOutcome[] Reverse ledger order, including skipped attempts.
--- @field success boolean False on any nonzero cleanup status or caught Lua error.
--- @see Session.close

--- @brief Close the ledger and retire outstanding owners in reverse order.
--- @details Allocates every outcome first, sets the session closed, then attempts
--- each unretired owner once. Ordinary Lua errors are caught per owner so later
--- cleanup continues. Repeated calls return a fresh report with skipped owners.
--- A callback lease returns nil,17 before changing state or allocating a report.
--- The function is synchronous and starts no clock, finalizer or background work.
--- @param primary? any [in] Primary error/result preserved by reference, not copied.
--- @return CleanupReport|nil report Caller-owned cleanup report, or nil on conflict.
--- @return integer code 0 when a report is returned, 17 for a dispatch conflict;
--- inspect report.success and each outcome for native cleanup failures.
--- @see Capability.close
function Session:close(primary)
    if self.busy ~= 0 then
        return nil, 17
    end
    for _, owner in ipairs(self.owners) do
        if owner.busy ~= 0 then
            return nil, 17
        end
    end
    local report = { primary = primary, outcomes = {}, success = true }
    for i = #self.owners, 1, -1 do
        report.outcomes[#report.outcomes + 1] = {
            alias = self.owners[i].alias,
            attempted = false,
            code = 0,
            error = false,
        }
    end
    self.closed = true
    local index = 1
    for i = #self.owners, 1, -1 do
        local owner = self.owners[i]
        local item = report.outcomes[index]
        index = index + 1
        if not owner.retired and owner.frame:owns() then
            owner.retired = true
            item.attempted = true
            local ok, result = pcall(raw.retire, owner.frame, false)
            if ok then
                item.code = result
                if result ~= 0 then
                    report.success = false
                end
            else
                item.error = result
                report.success = false
            end
        end
    end
    return report, 0
end

--- @brief Encode a complete value and perform one topic_publish import.
--- @details Encoding happens before any effect and may raise a Lua validation
--- error. This uses the current capability's exact topic/type grant; no node,
--- topic, publisher or authority is created. There is no retry on timeout or quota.
--- @param codec table [in] Generated complete-record class with encode(value).
--- @param value table [in] Complete value accepted by that exact codec.
--- @return userdata|nil frame One-use publish result; see invoke() for lifetime.
--- @return integer code ABI publish status or local retired/closed status 9.
--- @see Capability.invoke
function Capability:publish(codec, value)
    return self:invoke("topic_publish", codec.encode(value), 0)
end

--- @brief Poll one event and dispatch its decoded value under a local lease.
--- @details Performs exactly one event_poll. Nonzero ABI status returns without
--- invoking the callback. On success, decode and callback execute synchronously
--- inside pcall on the caller's Lua thread. Both leases are released before a
--- callback/decode error is rethrown unchanged. Closing/revoking this Session's
--- owners while leased returns 17; nested polling of this owner also returns 17.
--- This function does not activate a subscription, retry a consumed event, or
--- interpret generic event envelopes. Select a codec for the exact returned data.
--- @param codec table [in] Codec whose decode accepts the selected event bytes.
--- @param callback function [in] Called once with the decoded caller-owned value;
--- its result is discarded and no callback survives this call.
--- @param maximum integer [in] Output buffer byte capacity, 0..4194304.
--- @return userdata|nil frame Retained poll result, or nil for local conflicts.
--- @return integer code 0 on dispatch; native error, 9 retired/closed, or 17 leased.
--- @see Capability.invoke
function Capability:poll(codec, callback, maximum)
    if self.busy ~= 0 then
        return nil, 17
    end
    local prepared, code = self:invoke("event_poll", "", maximum)
    if code ~= 0 then
        return prepared, code
    end
    self.busy = self.busy + 1
    self.session.busy = self.session.busy + 1
    local ok, result = pcall(function()
        return callback(codec.decode(prepared:data()))
    end)
    self.busy = self.busy - 1
    self.session.busy = self.session.busy - 1
    if not ok then
        error(result, 0)
    end
    return prepared, 0
end

return M
