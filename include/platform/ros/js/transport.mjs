/**
 * @file transport.mjs
 * @brief Own exact JavaScript ROS handles over the real static import builtin.
 * @details Service replay, hidden callbacks, finalizer cleanup and fallback
 * aliases are absent. Every caller retains independent primary/cleanup facts.
 */
import {utf8Encode} from "ros/js/wire";

/** @brief Own one instance-local exact BigInt handle with explicit retirement. */
export class Capability
{
    /** @brief Adopt one successfully opened owner. @param handle Exact unsigned BigInt. */
    constructor(handle)
    {
        if (typeof handle !== "bigint" || handle <= 0n || handle > (1n << 64n) - 1n)
            throw new RangeError("invalid capability");
        this.handle = handle;
    }
    /**
     * @brief Open one explicitly granted alias exactly once.
     * @param alias Strict nonempty UTF-8 name bounded by 255 bytes.
     * @return [owned capability or null, original errno]; ABI version is checked.
     */
    static open(alias)
    {
        let raw;
        try
        {
            raw = utf8Encode(alias, 255);
        }
        catch
        {
            return [ null, 22 ];
        }
        if (raw.length === 0)
            return [ null, 22 ];
        const version = __uwvm.invoke("abi_version", 0n, new Uint8Array(), 0);
        if (version[0] || version[3] !== 1n)
            return [ null, version[0] || 38 ];
        const result = __uwvm.invoke("capability_open", 0n, raw, 0);
        return [ result[0] === 0 ? new Capability(result[3]) : null, result[0] ];
    }
    /**
     * @brief Issue one raw operation with owned request/output storage.
     * @param operation Explicit original import name.
     * @param request Complete encoded request bytes.
     * @param capacity Full admitted response bound.
     * @return [errno, owned bytes, conditional required BigInt, conditional value].
     */
    invoke(operation, request = new Uint8Array(), capacity = 0)
    {
        if (this.handle === null)
            return [ 9, new Uint8Array(), null, null ];
        return __uwvm.invoke(operation, this.handle, request, capacity);
    }
    /** @brief Retire before exactly one cleanup attempt. @return Original errno or 9 if retired. */
    close()
    {
        if (this.handle === null)
            return 9;
        const handle = this.handle;
        this.handle = null;
        return __uwvm.invoke("capability_close", handle, new Uint8Array(), 0)[0];
    }
}
