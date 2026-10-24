/**
 * @file native_command.mjs
 * @brief Own whole native ROS String/Trigger fields, codecs and finite lifetimes.
 * @details Genuine guest QuickJS executes all application logic. The static
 * builtin only adapts scalar imports and owned byte frames; handles remain BigInt.
 */
import {Capability} from "ros/js/transport";
import {CodecError, utf8Encode, utf8Decode} from "ros/js/wire";

/**
 * @brief Encode one entire original strict UTF-8 field.
 * @param value Original JavaScript string. @param maximum Explicit inclusive byte quota.
 * @return Owned complete canonical bytes; invalid text/length throws CodecError.
 */
function encodeText(value, maximum)
{
    const text = utf8Encode(value, maximum);
    const bytes = new Uint8Array(4 + text.length);
    for(let index = 0; index < 4; ++index)
        bytes[index] = (text.length >>> (8 * index)) & 255;
    bytes.set(text, 4);
    return bytes;
}

/**
 * @brief Decode exactly one whole original strict UTF-8 field.
 * @param bytes Complete canonical Uint8Array. @param maximum Explicit inclusive quota.
 * @return Owned complete string; malformed/trailing input throws CodecError.
 */
function decodeText(bytes, maximum)
{
    if(!(bytes instanceof Uint8Array) || bytes.length < 4 || bytes.length > maximum + 4)
        throw new CodecError();
    const count = bytes[0] + bytes[1] * 256 + bytes[2] * 65536 + bytes[3] * 16777216;
    if(count > maximum || count !== bytes.length - 4)
        throw new CodecError();
    return utf8Decode(bytes.slice(4));
}

/** @brief Own the complete original std_msgs String data field. */
export class StringValue
{
    /** @brief Construct a local record. @param data Whole original text; encoding validates it. */
    constructor(data = "")
    {
        this.data = data;
    }

    /** @brief Validate and encode all original fields. @return Complete owned bytes or CodecError. */
    encode()
    {
        return encodeText(this.data, 252);
    }

    /** @brief Decode a whole record. @param bytes Complete bytes. @return Owned StringValue. */
    static decode(bytes)
    {
        return new StringValue(decodeText(bytes, 252));
    }
}

/** @brief Own both original Trigger response fields; the request is empty. */
export class TriggerResponse
{
    /** @brief Construct whole local fields. @param success Original bool. @param message Whole text. */
    constructor(success = false, message = "")
    {
        this.success = success;
        this.message = message;
    }

    /** @brief Encode both original fields, including false. @return Complete bytes or CodecError. */
    encode()
    {
        if(typeof this.success !== "boolean")
            throw new CodecError();
        const text = encodeText(this.message, 251);
        const bytes = new Uint8Array(1 + text.length);
        bytes[0] = this.success ? 1 : 0;
        bytes.set(text, 1);
        return bytes;
    }

    /**
     * @brief Decode every original field transactionally.
     * @param bytes Complete canonical Uint8Array. @return Whole owned response or CodecError.
     */
    static decode(bytes)
    {
        if(!(bytes instanceof Uint8Array) || bytes.length < 5 || bytes.length > 256 || bytes[0] > 1)
            throw new CodecError();
        return new TriggerResponse(bytes[0] === 1, decodeText(bytes.slice(1), 251));
    }
}

/** @brief Construct ordinary independent facts without native effects. @return Owned result. */
function outcome()
{
    return {
        primary : 0,
        cleanup : 0,
        cleanup_present : false,
        rpc_status : 0,
        rpc_present : false,
        response_present : false,
        length : ((1n << 64n) - 1n).toString(),
        wire_hex : "",
        value : null
    };
}

/** @brief Encode every original byte losslessly. @param bytes Whole bytes. @return Safe ASCII hex. */
function hex(bytes)
{
    return Array.from(bytes, byte => byte.toString(16).padStart(2, "0")).join("");
}

/**
 * @brief Execute one original finite operation and close one acquired owner once.
 * @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
 * @param alias Existing exact policy alias, synchronously borrowed.
 * @return Whole typed value, canonical bytes and independent RPC/length/cleanup facts.
 * @details Two publication samples are scheduled one discovery second apart.
 * Only idle 11 permits another of at most 250 polls. No failed effect or call
 * replays. Ordinary JavaScript exceptions retire the owner in finally.
 */
export function run(operation, alias)
{
    const result = outcome();
    if(!Number.isInteger(operation) || operation < 1 || operation > 3)
    {
        result.primary = 22;
        return result;
    }
    const publication = operation === 1 ? new StringValue("hello native ROS").encode() : new Uint8Array();
    if(operation === 1)
        result.wire_hex = hex(publication);
    const [owner, opened] = Capability.open(alias);
    result.primary = opened;
    if(owner === null)
        return result;
    try
    {
        if(operation === 1)
        {
            result.rpc_present = true;
            result.rpc_status = owner.invoke("topic_publish", publication)[0];
            result.primary = result.rpc_status;
            if(!result.primary)
                result.primary = __uwvm.pause_ms(1000);
            if(!result.primary)
            {
                result.rpc_status = owner.invoke("topic_publish", publication)[0];
                result.primary = result.rpc_status;
            }
            if(!result.primary)
                result.primary = __uwvm.pause_ms(200);
        }
        else
        {
            if(operation === 2)
                result.primary = owner.invoke("topic_subscribe")[0];
            if(!result.primary)
            {
                let frame;
                for(let attempt = 0; attempt < (operation === 2 ? 250 : 1); ++attempt)
                {
                    frame = owner.invoke(operation === 2 ? "event_poll" : "service_call", new Uint8Array(), 256);
                    result.rpc_present = true;
                    result.rpc_status = result.primary = frame[0];
                    result.length = (frame[2] === null ? (1n << 64n) - 1n : frame[2]).toString();
                    if(operation !== 2 || frame[0] !== 11 || attempt === 249)
                        break;
                    result.primary = __uwvm.pause_ms(20);
                    if(result.primary)
                        break;
                }
                if(!result.primary)
                {
                    try
                    {
                        if(frame[2] !== BigInt(frame[1].length) || frame[1].length > 256)
                            throw new CodecError();
                        const value = (operation === 2 ? StringValue : TriggerResponse).decode(frame[1]);
                        result.wire_hex = hex(value.encode());
                        result.value = value;
                        result.response_present = true;
                        if(operation === 3 && !value.success)
                            result.primary = 5;
                    }
                    catch(error)
                    {
                        if(!(error instanceof CodecError))
                            throw error;
                        result.primary = 22;
                    }
                }
            }
        }
    }
    finally
    {
        result.cleanup_present = true;
        result.cleanup = owner.close();
    }
    return result;
}

/**
 * @brief Emit complete safe-ASCII diagnostics after explicit cleanup.
 * @param result Whole owned result. @return First primary, cleanup or stdout error, clamped for exit.
 * @details Wire hex retains all original field bytes; u64 length uses exact decimal text.
 */
export function report(result)
{
    const {value, ...diagnostic} = result;
    const output = __uwvm.output(JSON.stringify(diagnostic));
    return Math.min(result.primary || result.cleanup || output, 125);
}
