/**
 * @file wasi_alias.ts
 * @brief Represent the complete original FANUC ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
/**
 * Basic stdin only: one nonzero byte length, followed by exactly that many
 * strict UTF-8 alias bytes (maximum255). No file, environment or network API.
 * Input chooses an existing alias, never a native topic or a Runtime grant.
 */
import {validUtf8} from "ros/as/codecs";
@external("wasi_snapshot_preview1", "fd_read") declare function fd_read(fd: u32, iovs: usize, count: u32, size: usize): u32;
/**
 * @brief Terminate this Guest command through WASI preview1.
 * @details Does not run language destructors, stop native work or grant rights.
 * Call only after recording normal service cleanup. The Runtime observes the
 * exit code; it is not a controller acknowledgement. No return is expected.
 * @param[in] code Command status; these examples clamp full SDK codes to 125.
 * @see readAlias
 */
@external("wasi_snapshot_preview1", "proc_exit") export declare function proc_exit(code: u32): void;

/**
 * @brief Own the decoded alias and independent input-validation status.
 * @details No native endpoint or capability is stored. Strings use ordinary
 * AssemblyScript managed lifetime; retaining this value extends their lifetime.
 * @see readAlias
 */
export class AliasInput
{
    /**
     * @brief Input status, zero on success or 22 on malformed/read failure.
     * @details Collapses WASI IO errors and incomplete/invalid input to 22.
     * @see readAlias
     */
    public status: u32;
    /**
     * @brief Decoded nonempty strict UTF-8 alias, or empty on failure.
     * @details Input is bounded to 255 bytes and excludes NUL. Later SDK alias
     * validation and externally configured rights remain independent requirements.
     * @see status
     */
    public alias: string;

    /**
     * @brief Store one input observation without IO or authority checks.
     * @param[in] status Caller-supplied u32 observation; default 22 means failure.
     * @param[in] alias Managed string retained by reference; default is empty.
     * @details No validation, mutation, encoding conversion or native open occurs.
     * @see readAlias
     */
    constructor(status: u32 = 22, alias: string = "")
    {
        this.status = status;
        this.alias = alias;
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

/**
 * @brief Read one counted service alias from Basic stdin.
 * @details Consumes one nonzero u8 byte count followed by 1..255 bytes, accepting
 * strict UTF-8 without NUL. Extra input is left for the next frame. Reads are
 * synchronous and caller-serialized; no timer, worker or deadline is created.
 * Reading may wait according to Runtime stdin policy. Input selects an existing
 * alias and supplies no service rights or native connection. AssemblyScript
 * 0.28.20 is the selected frontend baseline, not a cross-version guarantee.
 * @return Owned AliasInput: status 0 with the complete string, otherwise 22 and
 * an empty string. Read/truncation/UTF-8 failures are collapsed to 22. Allocation
 * abort/trap is outside this normal-return contract.
 * @see AliasInput
 * @see proc_exit
 */
export function readAlias(): AliasInput
{
    const prefix = new Uint8Array(1);
    if(!exact(prefix) || prefix[0] == 0)
        return new AliasInput();
    const bytes = new Uint8Array(prefix[0]);
    if(!exact(bytes) || !validUtf8(bytes))
        return new AliasInput();
    for(let i = 0; i < bytes.length; ++i)
        if(bytes[i] == 0)
            return new AliasInput();
    return new AliasInput(0, String.UTF8.decode(bytes.buffer));
}
