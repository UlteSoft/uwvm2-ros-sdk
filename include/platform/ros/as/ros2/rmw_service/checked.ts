// @file checked.ts
// @brief Provide the selected typed SDK binding and ownership boundary for ros.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/** Checked typed boundary. Empty success is distinct from invalid22/extent90. */
export class EncodeResult
{
    constructor(public status: u32 = 0, public bytes: Uint8Array = new Uint8Array(0))
    {
    }
}

export class DecodeResult<T>
{
    constructor(public status: u32 = 0, public value: T|null = null)
    {
    }
}

/**
 * Explicit generated-code adapter. No bool-valid or encode/decode round trip.
 * A concrete bridge can map ControlEncoded/ControlDecoded into these results;
 * this avoids assuming cross-module concrete class identity in AssemblyScript.
 * Codec methods must not throw/trap, alter ownership, perform native imports or
 * publish partial values. A fatal Wasm trap still requires real instance drain.
 */
export abstract class CheckedCodec<T>
{
    abstract encodeChecked(value: T): EncodeResult;
    abstract decodeChecked(bytes: Uint8Array): DecodeResult<T>;
}
