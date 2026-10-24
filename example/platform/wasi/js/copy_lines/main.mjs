/**
 * @file main.mjs
 * @brief Execute copy_lines in the genuine QuickJS engine.
 * @details Only arguments and inherited standard streams are consumed.
 */
import * as std from "std";

/**
 * @brief Complete one bounded native QuickJS stdout write without text conversion.
 * @param bytes Owned Uint8Array view rooted for every synchronous native call.
 * @return True after complete output; false on an error or invalid write count.
 */
function writeAll(bytes)
{
    let offset = 0;
    while(offset < bytes.length)
    {
        const count = std.out.write(bytes.buffer, bytes.byteOffset + offset, bytes.length - offset);
        if(count <= 0 || count > bytes.length - offset)
            return false;
        offset += count;
    }
    return true;
}

/** @brief Copy binary stdin with a bounded buffer and explicit stream errors. */
function main()
{
    const bytes = new Uint8Array(256);
    while(true)
    {
        const count = std.in.read(bytes.buffer, 0, bytes.length);
        if(count === 0)
        {
            if(std.in.error())
                return 5;
            break;
        }
        if(count < 0 || count > bytes.length || !writeAll(bytes.subarray(0, count)))
            return 5;
    }
    return std.out.flush() !== 0 || std.out.error() ? 5 : 0;
}

std.exit(main());
