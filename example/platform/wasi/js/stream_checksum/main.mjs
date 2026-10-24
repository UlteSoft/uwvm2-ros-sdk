/**
 * @file main.mjs
 * @brief Execute stream_checksum in the genuine QuickJS engine.
 * @details Only arguments and inherited standard streams are consumed.
 */
import * as std from "std";

/** @brief Preserve all binary stdin bytes through exact modulo-2^32 FNV-1a. */
function main()
{
    const bytes = new Uint8Array(256);
    let value = 2166136261;
    while(true)
    {
        const count = std.in.read(bytes.buffer, 0, bytes.length);
        if(count === 0)
        {
            if(std.in.error())
                return 5;
            break;
        }
        if(count < 0 || count > bytes.length)
            return 5;
        for(let index = 0; index < count; ++index)
            value = Math.imul(value ^ bytes[index], 16777619) >>> 0;
    }
    std.out.puts(value.toString(16).padStart(8, "0") + "\n");
    return std.out.flush() !== 0 || std.out.error() ? 5 : 0;
}

std.exit(main());
