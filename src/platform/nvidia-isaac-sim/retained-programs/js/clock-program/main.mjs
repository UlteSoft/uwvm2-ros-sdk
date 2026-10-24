/**
 * @file main.mjs
 * @brief Complete original two-phase clock program in the real QuickJS Wasm guest.
 * @details The application owns every frame selection and calls the platform SDK.
 * Input is one bounded length-prefixed strict-UTF8 JSON configuration through the
 * actual basic WASI stdin gate. No Node/std/os/environment/file loader is used.
 * @see main; ClockSession; CLOCK-SDK.md
 */
import {ClockSession} from "nvidia-isaac-sim/js/clock-control/clock.mjs";
import {
    readGuestByte,
    writeGuestOutput,
} from "ros2/js/guest.mjs";

const fields = Object.freeze([
    "call",
    "observer",
    "availability",
    "nonce",
    "pollWorkBudget",
    "availabilityWaitNanoseconds",
    "requestQosHex",
    "responseQosHex",
]);

function invalid(message)
{
    const error = new Error(message);
    error.code = 22;
    return error;
}

function decimal(text)
{
    if(typeof text !== "string" || !/^(0|[1-9][0-9]{0,19})$/.test(text))
        throw invalid("Unsigned decimal string required");
    const n = BigInt(text);
    if(n > 0xffffffffffffffffn)
        throw invalid("uint64 overflow");
    return n;
}

function hexProfile(text)
{
    if(typeof text !== "string" || !/^[0-9a-f]{160}$/.test(text))
        throw invalid("Complete lower-hex QoS80 required");
    const bytes = new Uint8Array(80);
    for(let i = 0; i < 80; ++i)
        bytes[i] = Number.parseInt(text.slice(i * 2, i * 2 + 2), 16);
    return bytes;
}

function byte()
{
    const value = readGuestByte();
    if(!Number.isInteger(value) || value < 0 || value > 255)
        throw invalid("Actual stdin byte outside uint8");
    return value;
}

function readConfiguration()
{
    let length = 0;
    for(let i = 0; i < 4; ++i)
        length += byte() * 2 ** (8 * i);
    if(length < 2 || length > 2048)
        throw invalid("Configuration byte count must be2..2048");
    const bytes = new Uint8Array(length);
    for(let i = 0; i < length; ++i)
        bytes[i] = byte();
    const value = JSON.parse(
        new TextDecoder("utf-8", {fatal : true}).decode(bytes),
    );
    if(!value || typeof value !== "object" || Array.isArray(value) || Object.keys(value).length !== fields.length ||
       fields.some((name) => !Object.hasOwn(value, name)) || !Number.isInteger(value.pollWorkBudget) || value.pollWorkBudget < 1 ||
       value.pollWorkBudget > 65536)
        throw invalid("Complete closed clock configuration required");
    const nonce = decimal(value.nonce), wait = decimal(value.availabilityWaitNanoseconds);
    if(nonce === 0n || wait > 1000000000n)
        throw invalid("Invalid nonce or finite native availability wait");
    return {
        ...value,
        nonce,
        wait,
        qos : [ hexProfile(value.requestQosHex), hexProfile(value.responseQosHex) ],
    };
}

function write(value)
{
    const text = JSON.stringify(value, (_key, item) => {
        if(typeof item === "bigint")
            return {bigint : item.toString()};
        if(item === undefined)
            return {undefined : true};
        if(item instanceof Uint8Array)
            return {bytes : Array.from(item)};
        if(item instanceof Error)
            return {
                name : item.name,
                message : item.message,
                stack : item.stack,
                code : item.code,
            };
        return item;
    });
    const bytes = new TextEncoder().encode(text + "\n");
    if(bytes.length > 1048576)
        return 90;
    // Each actual basic write stays below the selected engine's print bound.
    // Continue only after acknowledged success; an error never retries a chunk.
    for(let at = 0; at < bytes.length; at += 512)
    {
        const status = writeGuestOutput(bytes.subarray(at, Math.min(at + 512, bytes.length)));
        if(status)
            return status;
    }
    return 0;
}

function wait(session, budget)
{
    for(let i = 0; i < budget; ++i)
    {
        const result = session.poll();
        if(result.status === 11)
            continue;
        if(result.status)
            return result.status;
        return write({actualCommittedDelivery : result.delivery});
    }
    const abandoned = session.abandonPending();
    write({
        primary : 90,
        localAbandonStatus : abandoned,
        nativeEffect : "uncertain; no native cancellation acknowledgement",
    });
    return 90;
}

function program(session, input)
{
    let status = session.connect(
        input.call,
        input.observer,
        input.availability,
        input.qos,
        input.wait,
    );
    if(status)
        return status;
    let submitted = session.start();
    if(submitted.status)
        return submitted.status;
    status = wait(session, input.pollWorkBudget);
    if(status)
        return status;
    for(let phase = 0; phase < 2; ++phase)
    {
        for(let frame = 0; frame < 20; ++frame)
        {
            submitted = session.step(phase, frame);
            if(submitted.status)
                return submitted.status;
            status = wait(session, input.pollWorkBudget);
            if(status)
                return status;
        }
    }
    submitted = session.finish();
    if(submitted.status)
        return submitted.status;
    return wait(session, input.pollWorkBudget);
}

/**
 * @brief Execute every original frame using genuine same-Wasm SDK builtins.
 * @details Input is fully decoded before creating the session. Preserve the first
 * failure across explicit native CANCEL and independent cleanup. Successful
 * output includes every actual response, control and same-take metadata field.
 * A blocked read/Host/Kit operation still needs the external finite owner.
 * @return Integer0 only after all actual callbacks/operations/cleanup succeed;
 * otherwise the original first unsigned status or5 for an exception without code.
 * The enclosing engine may map nonzero application outcomes to its own exit code.
 * @see ClockSession; readGuestByte; writeGuestOutput
 */
export function main()
{
    let session = null, primary = 0, input = null;
    try
    {
        input = readConfiguration();
        session = new ClockSession(input.nonce);
        primary = program(session, input);
    }
    catch(error)
    {
        try
        {
            primary = Number.isInteger(error?.code) && error.code > 0 && error.code <= 0xffffffff ? error.code : 5;
        }
        catch
        {
            primary = 5;
        }
        try
        {
            write({primary, threw : true, error});
        }
        catch
        {
            /* Original failure remains primary. */
        }
    }
    finally
    {
        if(session !== null)
        {
            if(primary)
            {
                try
                {
                    const canceled = session.cancelNative();
                    const status = canceled.status || wait(session, input.pollWorkBudget);
                    write({explicitNativeCancelStatus : status});
                }
                catch(error)
                {
                    try
                    {
                        write({cancelThrew : true, error});
                    }
                    catch
                    {
                        /* Preserve the first failure. */
                    }
                }
            }
            let closed = 0;
            try
            {
                closed = session.close();
            }
            catch(error)
            {
                closed = 5;
                try
                {
                    write({cleanupThrew : true, error});
                }
                catch
                {
                    /* Preserve primary and continue diagnostics. */
                }
            }
            if(!primary)
                primary = closed;
            try
            {
                const output = write({
                    primary,
                    close : closed,
                    fullDiagnostics : session.diagnostics(),
                });
                if(!primary)
                    primary = output;
            }
            catch(error)
            {
                if(!primary)
                    primary = 5;
            }
        }
    }
    return primary;
}
