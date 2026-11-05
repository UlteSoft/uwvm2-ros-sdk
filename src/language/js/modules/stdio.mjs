/** @file stdio.mjs
 * @brief Finite command stream operations backed by actual granted WASI libc.
 * @details No file opening or authority is implicit. Reads return their actual
 * short count; EOF returns zero; I/O failures throw. Callers own all buffers.
 */
const input = Object.freeze({
    read(buffer, offset, length) {
        return globalThis.__uwvm.read_stdin(buffer, offset, length);
    }
});
export {input as in};
export const err = Object.freeze({
    puts(text) { return globalThis.__uwvm.write_stderr(String(text)); }
});
export function exit(status) { return globalThis.__uwvm.exit(status); }
