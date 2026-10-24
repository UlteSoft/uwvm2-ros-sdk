/** @file observation.mjs
 * @brief Own complete schema-bound platform observations and independent original transport/close facts.
 * @details Genuine guest QuickJS executes all policy and strict codec calls.
 * Idle 11 alone permits another bounded poll; no failed effect is replayed. */
import { Capability } from 'ros/js/transport';
import { CodecError } from 'ros/js/wire';

/** @brief Create local empty facts without native effects. @return Owned outcome. */
export function empty() {
    return {
        primary: 0,
        cleanup: 0,
        cleanup_present: 0,
        rpc_status: 0,
        rpc_present: 0,
        response_present: 0,
        polls: 0,
        required_present: 0,
        required: '0',
        length: '18446744073709551615',
        wire_hex: '',
        value: null,
    };
}

/** @brief Receive one entire original record while retaining one exact owner.
 * @param alias Existing exact native-type policy alias; no fallback occurs.
 * @param codec Complete original class from the selected catalog.
 * @param attempts Integer poll budget 1..250, including the immediate poll.
 * @param pause Caller-controlled synchronous idle wait; required above one poll.
 * @return Complete owned value and independent unsigned status/length/cleanup.
 * @details Ordinary exceptions close once in finally. Fatal traps and allocation
 * failures can prevent normal cleanup and require outer instance retirement. */
export function receive(alias, codec, attempts, pause) {
    const result = empty();
    if (
        !Number.isInteger(attempts) ||
        attempts < 1 ||
        attempts > 250 ||
        (attempts > 1 && typeof pause !== 'function')
    ) {
        result.primary = 22;
        return result;
    }
    const [owner, code] = Capability.open(alias);
    result.primary = code;
    if (owner === null) return result;
    try {
        result.primary = owner.invoke('topic_subscribe')[0];
        if (result.primary === 0) {
            let frame = null;
            for (let attempt = 0; attempt < attempts; ++attempt) {
                frame = owner.invoke('event_poll', new Uint8Array(), codec.schema.maximum);
                ++result.polls;
                result.rpc_present = 1;
                result.primary = result.rpc_status = frame[0];
                if (frame[2] !== null) {
                    result.required_present = 1;
                    result.required = result.length = frame[2].toString();
                }
                if (frame[0] !== 11 || attempt + 1 === attempts) break;
                const code = pause();
                result.primary = Number.isInteger(code) && code >= 0 && code <= 4294967295 ? code : 22;
                if (result.primary !== 0) break;
            }
            if (result.primary === 0 && frame !== null) {
                const value = codec.decode(frame[1]);
                const encoded = value.encode();
                if (encoded.length !== frame[1].length || encoded.some((byte, i) => byte !== frame[1][i]))
                    throw new CodecError();
                result.value = value;
                result.response_present = 1;
                result.wire_hex = Array.from(encoded, (byte) => byte.toString(16).padStart(2, '0')).join('');
            }
        }
    } catch (error) {
        result.primary ||= error instanceof CodecError ? error.code : 5;
    } finally {
        result.cleanup_present = 1;
        try {
            result.cleanup = owner.close();
        } catch {
            result.cleanup = 5;
        }
    }
    return result;
}

/** @brief Emit exact complete wire hex after cleanup. @param result Whole owned outcome.
 * @return Primary, cleanup or original output error clamped for process exit. */
export function output(result) {
    const { value, ...facts } = result;
    const written = __uwvm.output(JSON.stringify(facts));
    return Math.min(result.primary || result.cleanup || written, 125);
}
