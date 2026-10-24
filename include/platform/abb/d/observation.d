/**
 * @file observation.d
 * @brief Genuine betterC D records, canonical codecs and owned ABB observations.
 * @details No D runtime, GC, native ROS library or network client is linked.
 * Every record owns fixed arrays; response fields never borrow transport bytes.
 * The pointer adapter contains no codec, owner or polling policy.
 */
module abb.d.observation;
extern(C) @nogc nothrow
{
    /// @brief Read the selected original ROS transport ABI version.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @return Original version value, independently from operation errors.
    uint nl_version();

    /// @brief Open one exact granted alias without retry.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param capabilityAlias Complete immutable strict UTF-8 capability alias.
    /// @param size Complete initialized byte extent.
    /// @param owner Exclusive writable full-width acquired-owner slot.
    /// @return Original unsigned ABI error; owner is acquired only on zero.
    uint nl_open(const(ubyte) * capabilityAlias, uint size, ulong * owner);

    /// @brief Retire one caller-owned acquired capability once.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @return Original independent unsigned close status.
    uint nl_close(ulong handle);

    /// @brief Activate one exact already granted topic subscription.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @return Original unsigned ABI operation status.
    uint nl_subscribe(ulong handle);

    /// @brief Poll exactly one event without implicit retry or decoding.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @param output Exclusive writable canonical response storage.
    /// @param capacity Complete available response byte extent.
    /// @param length Exclusive sentinel-initialized full-width original length slot.
    /// @return Original unsigned transport status and unchanged original length facts.
    uint nl_poll(ulong handle, ubyte * output, uint capacity, ulong * length);

    /// @brief Perform one admitted service call without replay or interpretation.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param handle Caller-owned exact opaque capability identifier.
    /// @param input Complete immutable original canonical request bytes.
    /// @param size Complete initialized byte extent.
    /// @param output Exclusive writable canonical response storage.
    /// @param capacity Complete available response byte extent.
    /// @param length Exclusive sentinel-initialized full-width original length slot.
    /// @return Original unsigned transport status and unchanged original length facts.
    uint nl_call(ulong handle, const(ubyte) * input, uint size, ubyte * output, uint capacity, ulong * length);

    /// @brief Delay only after an explicitly observed idle poll.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
    /// @return Zero, local argument error 22 or original local pause error.
    uint nl_pause(uint milliseconds);

    /// @brief Borrow one complete original WASI command argument.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param index Original zero-based WASI command argument index.
    /// @param extent Exclusive writable original argument byte count.
    /// @return Immutable process-lifetime bytes, or absent/empty when unavailable.
    const(ubyte) * nl_argument(uint index, uint * extent);

    /// @brief Emit complete already owned facts and lossless canonical bytes.
    /// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
    /// @param primary First original operation, canonical-codec or controller error.
    /// @param cleanup Independent original acquired-owner close status.
    /// @param cleanup_present Exactly one only after an acquired-owner close attempt.
    /// @param rpc Original full unsigned transport status without narrowing.
    /// @param rpc_present Exactly one only after an admitted service call or event poll.
    /// @param length_value Original full-width length slot; maximum preserves unwritten state.
    /// @param present Exactly one only after whole-record canonical validation.
    /// @param wire Complete immutable source-language re-encoded canonical bytes.
    /// @param size Complete initialized byte extent.
    /// @return Primary, independent cleanup or output error; no numeric narrowing.
    uint nl_report(uint primary, uint cleanup, uint cleanup_present, uint rpc, uint rpc_present, ulong length_value,
                   uint present, const(ubyte) * wire, uint size);
}

/// @brief Own finite strict Unicode string bytes without a trailing NUL.
/// @details Backing storage belongs to this value; no native ROS owner is created.
/// @param capacity Inclusive original byte bound.
struct Text(uint capacity)
{
    /// @brief Independently owned finite string backing bytes; only size bytes are active.
    ubyte[capacity] data;
    /// @brief Initialized original byte extent, constrained to this string capacity.
    uint size;
}

/// @brief Complete original speed response and controller diagnostic.
/// @details Every field is an ordinary owned value; construction grants no capability.
struct Speed
{
    /// @brief Original unscaled controller speed percentage byte.
    ubyte speedRatio;
    /// @brief Original full unsigned controller result code, including refusals.
    ushort resultCode;
    /// @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    Text !512 message;
}

/// @brief Complete original IO response and controller diagnostic.
/// @details Every field is an ordinary owned value; construction grants no capability.
struct IO
{
    /// @brief Owned complete strict UTF-8 IO signal value, at most 512 bytes.
    Text !512 value;
    /// @brief Original full unsigned controller result code, including refusals.
    ushort resultCode;
    /// @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    Text !512 message;
}

/// @brief Complete original RAPIDTaskState without field projection.
/// @details Every field is an ordinary owned value; construction grants no capability.
struct Task
{
    /// @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    Text !64 name;
    /// @brief Original activation flag, encoded as exactly zero or one.
    bool activated;
    /// @brief Original unscaled RAPID execution_state byte.
    ubyte executionState;
    /// @brief Original motion_task flag, encoded as exactly zero or one.
    bool motionTask;
}

/// @brief Complete original MechanicalUnitState without field projection.
/// @details Every field is an ordinary owned value; construction grants no capability.
struct Unit
{
    /// @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    Text !64 name;
    /// @brief Original activation flag, encoded as exactly zero or one.
    bool activated;
}

/// @brief Complete original ROS 2 Header, flags, RAPID tasks and mechanical units.
/// @details Every field is an ordinary owned value; construction grants no capability.
struct SystemState
{
    /// @brief Original signed ROS 2 timestamp seconds without unit conversion.
    int seconds;
    /// @brief Original normalized timestamp nanoseconds in 0..999999999.
    uint nanoseconds;
    /// @brief Owned complete original frame identifier, at most 64 UTF-8 bytes.
    Text !64 frameId;
    /// @brief Original motors_on flag, encoded as exactly zero or one.
    bool motorsOn;
    /// @brief Original auto_mode flag, encoded as exactly zero or one.
    bool autoMode;
    /// @brief Original rapid_running flag, encoded as exactly zero or one.
    bool rapidRunning;
    /// @brief Independent backing storage for at most 16 complete original RAPID tasks.
    Task[16] tasks;
    /// @brief Active original RAPID task count, constrained to 0..16.
    uint taskCount;
    /// @brief Independent backing storage for at most 16 complete mechanical units.
    Unit[16] units;
    /// @brief Active original mechanical-unit count, constrained to 0..16.
    uint unitCount;
}

/// @brief Complete owned records and independent operation, transport and close facts.
/// @details Every field is an ordinary owned value; construction grants no capability.
struct Observation
{
    /// @brief First original operation, canonical-codec or controller failure.
    uint primary;
    /// @brief Independent original close status for the once-retired acquired owner.
    uint cleanup;
    /// @brief Original last full unsigned transport status without narrowing.
    uint rpc;
    /// @brief True only after a close attempt on an actually acquired owner.
    bool cleanupPresent;
    /// @brief True only after an admitted service call or explicit event poll.
    bool rpcPresent;
    /// @brief Original full-width length slot; the maximum value preserves an unwritten slot.
    ulong length = ulong.max;
    /// @brief True only after the whole original response passed canonical validation.
    bool responsePresent;
    /// @brief Complete independently owned speed reply; valid only for a present speed response.
    Speed speed;
    /// @brief Complete independently owned IO reply; valid only for a present IO response.
    IO io;
    /// @brief Complete independently owned state; valid only for a present state response.
    SystemState state;
    /// @brief Owned complete source-language canonical storage, including every response field.
    ubyte[2327] wire;
    /// @brief Initialized complete canonical byte extent, constrained to the backing capacity.
    uint wireSize;
}

/// @brief Validate strict scalar UTF-8 without NUL. @param bytes Borrowed bytes.
/// @return True only for canonical Unicode scalar encodings, including empty text.
bool utf8(const(ubyte)[] bytes) @nogc nothrow
{
    uint remaining, scalar, minimum;
    foreach (value; bytes)
    {
        if (!remaining)
        {
            if (!value)
                return false;
            if (value < 128)
                continue;
            if (value >= 194 && value <= 223)
            {
                remaining = 1;
                scalar = value & 31;
                minimum = 128;
            }
            else if (value >= 224 && value <= 239)
            {
                remaining = 2;
                scalar = value & 15;
                minimum = 2048;
            }
            else if (value >= 240 && value <= 244)
            {
                remaining = 3;
                scalar = value & 7;
                minimum = 65536;
            }
            else
                return false;
        }
        else
        {
            if ((value & 192) != 128)
                return false;
            scalar = (scalar << 6) | (value & 63);
            --remaining;
            if (!remaining && (scalar < minimum || scalar > 0x10ffff || (scalar >= 0xd800 && scalar <= 0xdfff)))
                return false;
        }
    }
    return remaining == 0;
}

/// @brief Borrow one exclusive bounded canonical span.
/// @details No host action occurs; failed composite values and prefixes remain unusable.
private
struct Cursor
{
    /// @brief Exclusive borrowed canonical storage; no reference escapes a decoded record.
    ubyte[] bytes;
    /// @brief Consumed or initialized prefix, constrained to the borrowed extent.
    uint at;
    /// @brief First canonical refusal; all partial values become unusable.
    bool failed;
    /// @brief True encodes; false decodes into independently owned fields.
    bool writing;
    /// @brief Traverse one exact-width original scalar bit pattern.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param T Exact original scalar type.
    /// @param value Complete independently owned original value; usable only after whole-record success.
    void integer(T)(ref T value) @nogc nothrow
    {
        if (failed || T.sizeof > bytes.length - at)
        {
            failed = true;
            return;
        }
        if (writing)
        {
            ulong bits = cast(ulong) value;
            foreach (index; 0 ..T.sizeof)
            {
                bytes[at++] = cast(ubyte)(bits >> (index * 8));
            }
        }
        else
        {
            ulong bits;
            foreach (index; 0 ..T.sizeof)
            {
                bits |= cast(ulong) bytes[at++] << (index * 8);
            }
            value = cast(T) bits;
        }
    }
    /// @brief Traverse one exact canonical zero/one flag.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param value Complete independently owned original value; usable only after whole-record success.
    void boolean(ref bool value) @nogc nothrow
    {
        ubyte raw = value ? 1 : 0;
        integer(raw);
        if (raw > 1)
            failed = true;
        value = raw != 0;
    }
    /// @brief Traverse one finite independently owned Unicode string.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param capacity Inclusive original byte bound.
    /// @param value Complete independently owned original value; usable only after whole-record success.
    void text(uint capacity)(ref Text !capacity value) @nogc nothrow
    {
        integer(value.size);
        if (failed || value.size > capacity || value.size > bytes.length - at)
        {
            failed = true;
            return;
        }
        if (writing)
        {
            if (!utf8(value.data[0 ..value.size]))
            {
                failed = true;
                return;
            }
            bytes[at..at + value.size] = value.data[0 ..value.size];
        }
        else
        {
            if (!utf8(bytes[at..at + value.size]))
            {
                failed = true;
                return;
            }
            value.data[0 ..value.size] = bytes[at..at + value.size];
        }
        at += value.size;
    }
}

/// @brief Traverse every selected original field in declaration order.
/// @details No host action occurs; failed composite values and prefixes remain unusable.
/// @param operation Exact complete speed, IO or SystemState response selector.
/// @param value Complete independently owned original value; usable only after whole-record success.
/// @param cursor Exclusive bounded cursor borrowed only until this traversal returns.
private void
fields(uint operation, ref Observation value, ref Cursor cursor) @nogc nothrow
{
    if (operation == 1)
    {
        cursor.integer(value.speed.speedRatio);
        cursor.integer(value.speed.resultCode);
        cursor.text(value.speed.message);
    }
    else if (operation == 2)
    {
        cursor.text(value.io.value);
        cursor.integer(value.io.resultCode);
        cursor.text(value.io.message);
    }
    else if (operation == 3)
    {
        auto state = &value.state;
        cursor.integer(state.seconds);
        cursor.integer(state.nanoseconds);
        cursor.text(state.frameId);
        if (state.nanoseconds >= 1_000_000_000)
        {
            cursor.failed = true;
            return;
        }
        cursor.boolean(state.motorsOn);
        cursor.boolean(state.autoMode);
        cursor.boolean(state.rapidRunning);
        cursor.integer(state.taskCount);
        if (state.taskCount > 16)
        {
            cursor.failed = true;
            return;
        }
        foreach (ref task; state.tasks[0 ..state.taskCount])
        {
            cursor.text(task.name);
            cursor.boolean(task.activated);
            cursor.integer(task.executionState);
            cursor.boolean(task.motionTask);
        }
        cursor.integer(state.unitCount);
        if (state.unitCount > 16)
        {
            cursor.failed = true;
            return;
        }
        foreach (ref unit; state.units[0 ..state.unitCount])
        {
            cursor.text(unit.name);
            cursor.boolean(unit.activated);
        }
    }
    else
        cursor.failed = true;
}

/// @brief Decode all selected fields, reject trailing bytes, then encode all fields.
/// @param operation 1=speed, 2=IO, 3=SystemState. @param value Owned wire and records.
/// @return Zero on a complete canonical value, otherwise 22; ignore records on error.
uint decode(uint operation, ref Observation value) @nogc nothrow
{
    if (value.wireSize > value.wire.length)
        return 22;
    Cursor reader = Cursor(value.wire[0 ..value.wireSize], 0, false, false);
    fields(operation, value, reader);
    if (reader.failed || reader.at != value.wireSize)
        return 22;
    return encode(operation, value);
}

/// @brief Encode every selected record field without truncating storage.
/// @param operation Exact record selector. @param value Owned complete records/output.
/// @return Zero on success; 22 on invalid field, bound, UTF-8 or output capacity.
uint encode(uint operation, ref Observation value) @nogc nothrow
{
    Cursor writer = Cursor(value.wire[], 0, false, true);
    fields(operation, value, writer);
    if (writer.failed)
        return 22;
    value.wireSize = writer.at;
    return 0;
}

/// @brief Acquire, use and retire one exact ABB capabilityAlias in genuine D.
/// @param operation 1=speed, 2=IO, 3=state. @param capabilityAlias Existing exact UTF-8 grant.
/// @param signal IO signal bytes, otherwise empty. @param attempts Finite state budget 1..1000.
/// @return Owned complete outcome retaining original RPC status and independent close.
/// @details Only idle polls repeat; no service call is replayed. A complete
/// controller refusal retains the entire reply and returns application error 5.
Observation observe(uint operation, const(ubyte)[] capabilityAlias, const(ubyte)[] signal, uint attempts = 1)
    @nogc nothrow
{
    Observation outcome;
    if (operation < 1 || operation > 3 || !capabilityAlias.length || capabilityAlias.length > 255 ||
        !utf8(capabilityAlias) || !attempts || attempts > 1000)
    {
        outcome.primary = 22;
        return outcome;
    }
    ubyte[516] request;
    uint requestSize;
    if (operation == 2)
    {
        if (!signal.length || signal.length > 512 || !utf8(signal))
        {
            outcome.primary = 22;
            return outcome;
        }
        uint size = cast(uint) signal.length;
        foreach (index; 0 ..4)
        {
            request[index] = cast(ubyte)(size >> (index * 8));
        }
        request[4 ..4 + size] = signal;
        requestSize = size + 4;
    }
    if (nl_version() != 1)
    {
        outcome.primary = 95;
        return outcome;
    }
    ulong handle;
    outcome.primary = nl_open(capabilityAlias.ptr, cast(uint) capabilityAlias.length, &handle);
    if (outcome.primary)
        return outcome;
    if (operation == 3)
    {
        outcome.primary = nl_subscribe(handle);
        if (!outcome.primary)
            foreach (index; 0 ..attempts)
            {
                outcome.length = ulong.max;
                outcome.rpc = nl_poll(handle, outcome.wire.ptr, cast(uint) outcome.wire.length, &outcome.length);
                outcome.rpcPresent = true;
                outcome.primary = outcome.rpc;
                if (outcome.rpc != 11 || index + 1 == attempts)
                    break;
                outcome.primary = nl_pause(10);
                if (outcome.primary)
                    break;
            }
    }
    else
    {
        outcome.rpc = nl_call(handle, request.ptr, requestSize, outcome.wire.ptr, cast(uint) outcome.wire.length,
                              &outcome.length);
        outcome.rpcPresent = true;
        outcome.primary = outcome.rpc;
    }
    if (!outcome.primary)
    {
        if (outcome.length > outcome.wire.length)
            outcome.primary = 22;
        else
        {
            outcome.wireSize = cast(uint) outcome.length;
            outcome.primary = decode(operation, outcome);
            outcome.responsePresent = !outcome.primary;
            if (outcome.responsePresent &&
                ((operation == 1 && (outcome.speed.resultCode != 1 || outcome.speed.speedRatio > 100)) ||
                 (operation == 2 && outcome.io.resultCode != 1)))
                outcome.primary = 5;
        }
    }
    outcome.cleanup = nl_close(handle);
    outcome.cleanupPresent = true;
    return outcome;
}

/// @brief Borrow an original WASI argument. @param index Argument index.
/// @return Immutable argument bytes valid through command return, or empty if absent.
const(ubyte)[] argument(uint index) @nogc nothrow
{
    uint size;
    auto pointer = nl_argument(index, &size);
    return pointer ? pointer[0 ..size] : null;
}
/// @brief Emit complete facts and canonical data. @param value Owned immutable report.
/// @return Original unsigned status; the WASI entry alone clamps process status.
uint report(ref Observation value) @nogc nothrow
{
    return nl_report(value.primary, value.cleanup, value.cleanupPresent, value.rpc, value.rpcPresent, value.length,
                     value.responsePresent, value.wire.ptr, value.wireSize);
}
