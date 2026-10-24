// @file bounded_records.ts
// @brief Full leju as codecs and original record metadata.
// @details Complete leju ros1_main_unregistered_dtos values in as. 2 original records retain 5 fields and 2
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/leju/en_US/catalog/.
/** Complete industrial canonical records. No I/O or authority. */
import {Codec, Reader, validUnicode, validUtf8} from '../../assemblyscript/codecs';

export class VendorEncoded
{
    constructor(
        public status: u32 = 0,
        public bytes: Uint8Array = new Uint8Array(0),
    )
    {
    }
}

export class VendorDecoded<T>
{
    value: T|null = null;

    constructor(public status: u32 = 0)
    {
    }
}

export interface VendorCodec<T> extends Codec<T> {
    encode(value: T): Uint8Array;
    valid(bytes: Uint8Array): bool;
    decode(bytes: Uint8Array): T;
    encodeChecked(value: T): VendorEncoded;
    decodeChecked(bytes: Uint8Array): VendorDecoded<T>;
}

/** One exact-size private linear buffer; finish refuses any unexpected extent. */
class VendorWriter
{
    private b: Uint8Array;
    private at: i32 = 0;
    private good: bool = true;

    constructor(n: i32)
    {
        if(n < 0 || n > 32768)
        {
            this.good = false;
            n = 0;
        }
        this.b = new Uint8Array(n);
    }

    u8(v: u8): void
    {
        if(!this.good || this.at >= this.b.length)
        {
            this.good = false;
            return;
        }
        this.b[this.at++] = v;
    }

    integer(v: u64, n: i32): void
    {
        if(!this.good || n < 0 || n > 8 || n > this.b.length - this.at)
        {
            this.good = false;
            return;
        }
        for(let i = 0; i < n; ++i)
            this.b[this.at++] = <u8>(v >> (i * 8));
    }

    u32(v: u32): void
    {
        this.integer(v, 4);
    }

    blob(v: Uint8Array): void
    {
        this.u32(<u32>v.length);
        if(!this.good || v.length > this.b.length - this.at)
        {
            this.good = false;
            return;
        }
        this.b.set(v, this.at);
        this.at += v.length;
    }

    text(v: string): void
    {
        this.blob(Uint8Array.wrap(String.UTF8.encode(v)));
    }

    finish(): VendorEncoded
    {
        return this.good && this.at == this.b.length ? new VendorEncoded(0, this.b) : new VendorEncoded(22);
    }
}

/** Complete original kuavo_sdk/qv; spellings are published in generation proof. */
export class Ros1Kuavo_sdkQv
{
    static readonly maxWireBytes: i32 = 132;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 132;
    /** Exact native field value, native scalar float64. */
    value: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.value.length > 16)
                return -22;
            if(4 > 132 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.value.length; ++i)
            {
                if(!isFinite(this.value[i]))
                    return -22;
                if(8 > 132 - n)
                    return -90;
                n += 8;
                if(n > 132)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.value.length);
        for(let i = 0; i < this.value.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.value[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Kuavo_sdkQv
    {
        const value = new Ros1Kuavo_sdkQv();
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.value = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.value.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Kuavo_sdkQvCodec implements VendorCodec<Ros1Kuavo_sdkQv>
{
    static readonly codecIdentity: string = 'UWVMROS1_99d76f2c912c99d52786d5e2aa42bb256e1a6c997d3cf9daa2a6918697563e32';
    static readonly maxWireBytes: i32 = 132;

    encodeChecked(value: Ros1Kuavo_sdkQv): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Kuavo_sdkQv): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Kuavo_sdkQv>
    {
        const out = new VendorDecoded<Ros1Kuavo_sdkQv>();
        if(bytes.length > 132)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Kuavo_sdkQv.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Kuavo_sdkQv
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Kuavo_sdkQv() : changetype<Ros1Kuavo_sdkQv>(out.value);
    }
}

/** Complete original kuavo_sdk/fullBodyTargetTrajectories; spellings are published in generation proof. */
export class Ros1Kuavo_sdkFullBodyTargetTrajectories
{
    static readonly maxWireBytes: i32 = 2320;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 2320;
    /** Exact native field timeTrajectory, native scalar float64. */
    timeTrajectory: Array<f64> = new Array<f64>();
    /** Exact native field footIndexTrajectory, native scalar int32. */
    footIndexTrajectory: Array<i32> = new Array<i32>();
    /** Exact native field fullBodyQTrajectory, native scalar kuavo_sdk/qv. */
    fullBodyQTrajectory: Array<Ros1Kuavo_sdkQv> = new Array<Ros1Kuavo_sdkQv>();
    /** Exact native field fullBodyVTrajectory, native scalar kuavo_sdk/qv. */
    fullBodyVTrajectory: Array<Ros1Kuavo_sdkQv> = new Array<Ros1Kuavo_sdkQv>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.timeTrajectory.length > 16)
                return -22;
            if(4 > 2320 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.timeTrajectory.length; ++i)
            {
                if(!isFinite(this.timeTrajectory[i]))
                    return -22;
                if(8 > 2320 - n)
                    return -90;
                n += 8;
                if(n > 2320)
                    return -90;
            }
        }
        {
            if(this.footIndexTrajectory.length > 16)
                return -22;
            if(4 > 2320 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.footIndexTrajectory.length; ++i)
            {
                if(4 > 2320 - n)
                    return -90;
                n += 4;
                if(n > 2320)
                    return -90;
            }
        }
        {
            if(this.fullBodyQTrajectory.length > 8)
                return -22;
            if(4 > 2320 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.fullBodyQTrajectory.length; ++i)
            {
                const child = this.fullBodyQTrajectory[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2320 - n)
                    return -90;
                n += child;
                if(n > 2320)
                    return -90;
            }
        }
        {
            if(this.fullBodyVTrajectory.length > 8)
                return -22;
            if(4 > 2320 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.fullBodyVTrajectory.length; ++i)
            {
                const child = this.fullBodyVTrajectory[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 2320 - n)
                    return -90;
                n += child;
                if(n > 2320)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>- n : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.timeTrajectory.length);
        for(let i = 0; i < this.timeTrajectory.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.timeTrajectory[i]), 8);
        }
        w.u32(<u32>this.footIndexTrajectory.length);
        for(let i = 0; i < this.footIndexTrajectory.length; ++i)
        {
            w.integer(<u64>this.footIndexTrajectory[i], 4);
        }
        w.u32(<u32>this.fullBodyQTrajectory.length);
        for(let i = 0; i < this.fullBodyQTrajectory.length; ++i)
        {
            this.fullBodyQTrajectory[i].writeControl(w);
        }
        w.u32(<u32>this.fullBodyVTrajectory.length);
        for(let i = 0; i < this.fullBodyVTrajectory.length; ++i)
        {
            this.fullBodyVTrajectory[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Kuavo_sdkFullBodyTargetTrajectories
    {
        const value = new Ros1Kuavo_sdkFullBodyTargetTrajectories();
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.timeTrajectory = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.timeTrajectory.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.footIndexTrajectory = new Array<i32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <i32>r.integer(4);
                value.footIndexTrajectory.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.fullBodyQTrajectory = new Array<Ros1Kuavo_sdkQv>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Kuavo_sdkQv.readControl(r);
                value.fullBodyQTrajectory.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.fullBodyVTrajectory = new Array<Ros1Kuavo_sdkQv>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros1Kuavo_sdkQv.readControl(r);
                value.fullBodyVTrajectory.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Kuavo_sdkFullBodyTargetTrajectoriesCodec implements VendorCodec<Ros1Kuavo_sdkFullBodyTargetTrajectories>
{
    static readonly codecIdentity: string = 'UWVMROS1_670fdba890f7bf41db3f446366ef88d583de4966c54a58646b74ebdd07bbfb32';
    static readonly maxWireBytes: i32 = 2320;

    encodeChecked(value: Ros1Kuavo_sdkFullBodyTargetTrajectories): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Kuavo_sdkFullBodyTargetTrajectories): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Kuavo_sdkFullBodyTargetTrajectories>
    {
        const out = new VendorDecoded<Ros1Kuavo_sdkFullBodyTargetTrajectories>();
        if(bytes.length > 2320)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Kuavo_sdkFullBodyTargetTrajectories.readControl(reader);
        if(!reader.done())
        {
            out.status = 22;
            return out;
        }
        const status = value.statusValue();
        if(status)
        {
            out.status = status;
            return out;
        }
        out.value = value;
        return out;
    }

    valid(bytes: Uint8Array): bool
    {
        return this.decodeChecked(bytes).status == 0;
    }

    decode(bytes: Uint8Array): Ros1Kuavo_sdkFullBodyTargetTrajectories
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Kuavo_sdkFullBodyTargetTrajectories() : changetype<Ros1Kuavo_sdkFullBodyTargetTrajectories>(out.value);
    }
}
