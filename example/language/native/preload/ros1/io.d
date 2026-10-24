/** @brief Emit the actual computed value through this D module's WASI memory. */
module library_io;

extern(C) @nogc nothrow
{
    ptrdiff_t write(int, const(void)*, size_t);
    uint nl_open(const(ubyte)*, uint, ulong*);
    uint nl_close(ulong);
}

/** @brief Format and write a scalar without borrowing another module's pointer. */
extern(C) uint io_report(uint value) @nogc nothrow
{
    ubyte[16] bytes;
    size_t at = bytes.length;
    bytes[--at] = '\n';
    do
    {
        bytes[--at] = cast(ubyte)('0' + value % 10);
        value /= 10;
    } while (value);
    size_t extent = bytes.length - at;
    return write(1, bytes.ptr + at, extent) == cast(ptrdiff_t) extent ? 0 : 5;
}

/** @brief Require permission_denied and preserve the original local owner slot. */
extern(C) uint io_denied() @nogc nothrow
{
    immutable capabilityAlias = "library_pub";
    ulong owner = 0xfedcba9876543210;
    uint status = nl_open(
        cast(const(ubyte)*) capabilityAlias.ptr,
        cast(uint) capabilityAlias.length,
        &owner);
    if (status == 0)
    {
        nl_close(owner);
        return 100;
    }
    return status == 13 && owner == 0xfedcba9876543210 ? 13 : 101;
}
