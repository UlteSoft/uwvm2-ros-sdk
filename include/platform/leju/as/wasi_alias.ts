// @file wasi_alias.ts
// @brief Provide the complete leju wasi_alias.ts source contract.
// @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local
// encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
/**
 * Basic stdin only: mode0(state)/1(command), one nonzero byte length, followed by exactly that many
 * strict UTF-8 alias bytes (maximum255). No file, environment or network API.
 * Input chooses an existing alias, never a native topic or a Runtime grant.
 */
import {validUtf8} from 'ros/as/codecs';
@external("wasi_snapshot_preview1", "fd_read")

declare function fd_read(fd: u32, iovs: usize, count: u32, size: usize): u32;
@external("wasi_snapshot_preview1", "proc_exit")

export declare function proc_exit(code: u32): void;

export class AliasInput
{
    constructor(
        public status: u32 = 22,
        public alias: string = '',
        public query: bool = false,
    )
    {
    }
}

function exact(bytes: Uint8Array): bool
{
    let offset: i32 = 0;
    const iov = new Uint32Array(2), received = new Uint32Array(1);
    while(offset < bytes.length)
    {
        iov[0] = <u32>(bytes.dataStart + offset);
        iov[1] = <u32>(bytes.length - offset);
        received[0] = 0;
        if(fd_read(0, iov.dataStart, 1, received.dataStart) || received[0] == 0 || received[0] > iov[1])
            return false;
        offset += <i32>received[0];
    }
    return true;
}

export function readAlias(): AliasInput
{
    const mode = new Uint8Array(1);
    if(!exact(mode) || mode[0] > 1)
        return new AliasInput();
    const prefix = new Uint8Array(1);
    if(!exact(prefix) || prefix[0] == 0)
        return new AliasInput();
    const bytes = new Uint8Array(prefix[0]);
    if(!exact(bytes) || !validUtf8(bytes))
        return new AliasInput();
    for(let i = 0; i < bytes.length; ++i)
        if(bytes[i] == 0)
            return new AliasInput();
    return new AliasInput(0, String.UTF8.decode(bytes.buffer), mode[0] == 1);
}

/** Counted canonical command. The caller must first admit its capability. */
export class PayloadInput
{
    constructor(
        public status: u32 = 22,
        public bytes: Uint8Array = new Uint8Array(0),
    )
    {
    }
}

export function readPayload(): PayloadInput
{
    const p = new Uint8Array(4);
    if(!exact(p))
        return new PayloadInput();
    const n = (<u32>p[0]) | ((<u32>p[1]) << 8) | ((<u32>p[2]) << 16) | ((<u32>p[3]) << 24);
    if(n > 32768)
        return new PayloadInput(90);
    const b = new Uint8Array(<i32>n);
    return exact(b) ? new PayloadInput(0, b) : new PayloadInput();
}
