// @file bounded_records.ts
// @brief Full fourier as codecs and original record metadata.
// @details Complete fourier ros2_aurora_bridge_v1 values in as. 51 original records retain 138 fields and 28
// interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
// definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
// profile API manual under document/platform/fourier/en_US/catalog/.
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

/** Complete original uwvm_fourier_bridge/msg/GroupState; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeMsgGroupState
{
    static readonly maxWireBytes: i32 = 1684;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1684;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field position, native scalar float64. */
    position: Array<f64> = new Array<f64>();
    /** Exact native field velocity, native scalar float64. */
    velocity: Array<f64> = new Array<f64>();
    /** Exact native field effort, native scalar float64. */
    effort: Array<f64> = new Array<f64>();
    /** Exact native field motion_state, native scalar int32. */
    motion_state: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 1684 - n)
                return -90;
            n += 4 + size;
            if(n > 1684)
                return -90;
        }
        {
            if(this.position.length > 64)
                return -22;
            if(4 > 1684 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 1684 - n)
                    return -90;
                n += 8;
                if(n > 1684)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 64)
                return -22;
            if(4 > 1684 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 1684 - n)
                    return -90;
                n += 8;
                if(n > 1684)
                    return -90;
            }
        }
        {
            if(this.effort.length > 64)
                return -22;
            if(4 > 1684 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 1684 - n)
                    return -90;
                n += 8;
                if(n > 1684)
                    return -90;
            }
        }
        {
            if(4 > 1684 - n)
                return -90;
            n += 4;
            if(n > 1684)
                return -90;
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
        w.text(this.group);
        w.u32(<u32>this.position.length);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.position[i]), 8);
        }
        w.u32(<u32>this.velocity.length);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.velocity[i]), 8);
        }
        w.u32(<u32>this.effort.length);
        for(let i = 0; i < this.effort.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.effort[i]), 8);
        }
        w.integer(<u64>this.motion_state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeMsgGroupState
    {
        const value = new Ros2Uwvm_fourier_bridgeMsgGroupState();
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.position.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.velocity.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.effort = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.effort.push(decoded);
            }
        }
        {
            const decoded = <i32>r.integer(4);
            value.motion_state = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeMsgGroupStateCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeMsgGroupState>
{
    static readonly codecIdentity: string = 'UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4';
    static readonly maxWireBytes: i32 = 1684;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeMsgGroupState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeMsgGroupState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeMsgGroupState>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeMsgGroupState>();
        if(bytes.length > 1684)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeMsgGroupState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeMsgGroupState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeMsgGroupState() : changetype<Ros2Uwvm_fourier_bridgeMsgGroupState>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/msg/GroupValues; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeMsgGroupValues
{
    static readonly maxWireBytes: i32 = 648;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 648;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 648 - n)
                return -90;
            n += 4 + size;
            if(n > 648)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 648 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 648 - n)
                    return -90;
                n += 8;
                if(n > 648)
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
        w.text(this.group);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeMsgGroupValues
    {
        const value = new Ros2Uwvm_fourier_bridgeMsgGroupValues();
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeMsgGroupValuesCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeMsgGroupValues>
{
    static readonly codecIdentity: string = 'UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3';
    static readonly maxWireBytes: i32 = 648;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeMsgGroupValues): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeMsgGroupValues): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeMsgGroupValues>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
        if(bytes.length > 648)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeMsgGroupValues.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeMsgGroupValues
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeMsgGroupValues() : changetype<Ros2Uwvm_fourier_bridgeMsgGroupValues>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/msg/MotionRecipe; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeMsgMotionRecipe
{
    static readonly maxWireBytes: i32 = 1170;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1170;
    /** Exact native field move_type, native scalar uint8. */
    move_type: u8 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field position, native scalar float64. */
    position: Array<f64> = new Array<f64>();
    /** Exact native field has_velocity, native scalar bool. */
    has_velocity: bool = false;
    /** Exact native field velocity, native scalar float64. */
    velocity: Array<f64> = new Array<f64>();
    /** Exact native field expected_velocity, native scalar int32. */
    expected_velocity: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1170 - n)
                return -90;
            n += 1;
            if(n > 1170)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 1170 - n)
                return -90;
            n += 4 + size;
            if(n > 1170)
                return -90;
        }
        {
            if(this.position.length > 64)
                return -22;
            if(4 > 1170 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 1170 - n)
                    return -90;
                n += 8;
                if(n > 1170)
                    return -90;
            }
        }
        {
            if(1 > 1170 - n)
                return -90;
            n += 1;
            if(n > 1170)
                return -90;
        }
        {
            if(this.velocity.length > 64)
                return -22;
            if(4 > 1170 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 1170 - n)
                    return -90;
                n += 8;
                if(n > 1170)
                    return -90;
            }
        }
        {
            if(4 > 1170 - n)
                return -90;
            n += 4;
            if(n > 1170)
                return -90;
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
        w.integer(<u64>this.move_type, 1);
        w.text(this.group);
        w.u32(<u32>this.position.length);
        for(let i = 0; i < this.position.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.position[i]), 8);
        }
        w.u8(this.has_velocity ? 1 : 0);
        w.u32(<u32>this.velocity.length);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.velocity[i]), 8);
        }
        w.integer(<u64>this.expected_velocity, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeMsgMotionRecipe
    {
        const value = new Ros2Uwvm_fourier_bridgeMsgMotionRecipe();
        {
            const decoded = <u8>r.integer(1);
            value.move_type = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.position.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.has_velocity = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.velocity.push(decoded);
            }
        }
        {
            const decoded = <i32>r.integer(4);
            value.expected_velocity = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>
{
    static readonly codecIdentity: string = 'UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14';
    static readonly maxWireBytes: i32 = 1170;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeMsgMotionRecipe): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeMsgMotionRecipe): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>();
        if(bytes.length > 1170)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 18)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeMsgMotionRecipe.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeMsgMotionRecipe
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeMsgMotionRecipe() : changetype<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/msg/Status; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeMsgStatus
{
    static readonly maxWireBytes: i32 = 14400;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 14400;
    /** Exact native field fsm_state, native scalar int32. */
    fsm_state: i32 = 0;
    /** Exact native field fsm_name, native scalar string. */
    fsm_name: string = '';
    /** Exact native field upper_fsm_state, native scalar int32. */
    upper_fsm_state: i32 = 0;
    /** Exact native field upper_fsm_name, native scalar string. */
    upper_fsm_name: string = '';
    /** Exact native field velocity_source, native scalar int32. */
    velocity_source: i32 = 0;
    /** Exact native field velocity_source_name, native scalar string. */
    velocity_source_name: string = '';
    /** Exact native field stand_pose, native scalar float64. */
    stand_pose: Array<f64> = new Array<f64>();
    /** Exact native field groups, native scalar uwvm_fourier_bridge/msg/GroupState. */
    groups: Array<Ros2Uwvm_fourier_bridgeMsgGroupState> = new Array<Ros2Uwvm_fourier_bridgeMsgGroupState>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 14400 - n)
                return -90;
            n += 4;
            if(n > 14400)
                return -90;
        }
        {
            if(!validUnicode(this.fsm_name) || this.fsm_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.fsm_name);
            if(size > 128)
                return -22;
            if(4 + size > 14400 - n)
                return -90;
            n += 4 + size;
            if(n > 14400)
                return -90;
        }
        {
            if(4 > 14400 - n)
                return -90;
            n += 4;
            if(n > 14400)
                return -90;
        }
        {
            if(!validUnicode(this.upper_fsm_name) || this.upper_fsm_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.upper_fsm_name);
            if(size > 128)
                return -22;
            if(4 + size > 14400 - n)
                return -90;
            n += 4 + size;
            if(n > 14400)
                return -90;
        }
        {
            if(4 > 14400 - n)
                return -90;
            n += 4;
            if(n > 14400)
                return -90;
        }
        {
            if(!validUnicode(this.velocity_source_name) || this.velocity_source_name.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.velocity_source_name);
            if(size > 128)
                return -22;
            if(4 + size > 14400 - n)
                return -90;
            n += 4 + size;
            if(n > 14400)
                return -90;
        }
        {
            if(this.stand_pose.length > 64)
                return -22;
            if(4 > 14400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.stand_pose.length; ++i)
            {
                if(!isFinite(this.stand_pose[i]))
                    return -22;
                if(8 > 14400 - n)
                    return -90;
                n += 8;
                if(n > 14400)
                    return -90;
            }
        }
        {
            if(this.groups.length > 8)
                return -22;
            if(4 > 14400 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.groups.length; ++i)
            {
                const child = this.groups[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 14400 - n)
                    return -90;
                n += child;
                if(n > 14400)
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
        w.integer(<u64>this.fsm_state, 4);
        w.text(this.fsm_name);
        w.integer(<u64>this.upper_fsm_state, 4);
        w.text(this.upper_fsm_name);
        w.integer(<u64>this.velocity_source, 4);
        w.text(this.velocity_source_name);
        w.u32(<u32>this.stand_pose.length);
        for(let i = 0; i < this.stand_pose.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.stand_pose[i]), 8);
        }
        w.u32(<u32>this.groups.length);
        for(let i = 0; i < this.groups.length; ++i)
        {
            this.groups[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeMsgStatus
    {
        const value = new Ros2Uwvm_fourier_bridgeMsgStatus();
        {
            const decoded = <i32>r.integer(4);
            value.fsm_state = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.fsm_name = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.upper_fsm_state = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.upper_fsm_name = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.velocity_source = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.velocity_source_name = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.stand_pose = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.stand_pose.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.groups = new Array<Ros2Uwvm_fourier_bridgeMsgGroupState>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupState.readControl(r);
                value.groups.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeMsgStatusCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeMsgStatus>
{
    static readonly codecIdentity: string = 'UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e';
    static readonly maxWireBytes: i32 = 14400;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeMsgStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeMsgStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeMsgStatus>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeMsgStatus>();
        if(bytes.length > 14400)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeMsgStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeMsgStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeMsgStatus() : changetype<Ros2Uwvm_fourier_bridgeMsgStatus>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/msg/VelocityCommand; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeMsgVelocityCommand
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field vx, native scalar float64. */
    vx: f64 = 0;
    /** Exact native field vy, native scalar float64. */
    vy: f64 = 0;
    /** Exact native field yaw, native scalar float64. */
    yaw: f64 = 0;
    /** Exact native field duration, native scalar float64. */
    duration: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vx))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vy))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.duration))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>reinterpret<u64>(this.vx), 8);
        w.integer(<u64>reinterpret<u64>(this.vy), 8);
        w.integer(<u64>reinterpret<u64>(this.yaw), 8);
        w.integer(<u64>reinterpret<u64>(this.duration), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeMsgVelocityCommand
    {
        const value = new Ros2Uwvm_fourier_bridgeMsgVelocityCommand();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vx = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vy = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.duration = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeMsgVelocityCommand>
{
    static readonly codecIdentity: string = 'UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d';
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeMsgVelocityCommand): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeMsgVelocityCommand): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeMsgVelocityCommand>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeMsgVelocityCommand>();
        if(bytes.length > 40)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeMsgVelocityCommand.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeMsgVelocityCommand
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeMsgVelocityCommand() : changetype<Ros2Uwvm_fourier_bridgeMsgVelocityCommand>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/ExecuteMove_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
{
    static readonly maxWireBytes: i32 = 9372;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 9372;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field moves, native scalar uwvm_fourier_bridge/msg/MotionRecipe. */
    moves: Array<Ros2Uwvm_fourier_bridgeMsgMotionRecipe> = new Array<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 9372 - n)
                return -90;
            n += 8;
            if(n > 9372)
                return -90;
        }
        {
            if(this.moves.length > 8)
                return -22;
            if(4 > 9372 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.moves.length; ++i)
            {
                const child = this.moves[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 9372 - n)
                    return -90;
                n += child;
                if(n > 9372)
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
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.moves.length);
        for(let i = 0; i < this.moves.length; ++i)
        {
            this.moves[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.moves = new Array<Ros2Uwvm_fourier_bridgeMsgMotionRecipe>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgMotionRecipe.readControl(r);
                value.moves.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b';
    static readonly maxWireBytes: i32 = 9372;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request>();
        if(bytes.length > 9372)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/ExecuteMove_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetBaseData_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 140 - n)
                return -90;
            n += 8;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetBaseData_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetCartesianState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 272 - n)
                return -90;
            n += 8;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetCartesianState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetContactData_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 140 - n)
                return -90;
            n += 8;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetContactData_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetContactData_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetContactData_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetContactData_Request>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetContactData_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetContactData_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetContactData_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetContactData_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetContactData_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetContactData_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetContactData_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetContactData_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetContactData_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetContactData_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetFsmName_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetFsmName_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e';
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response>();
        if(bytes.length > 268)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response() : changetype<Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetFsmState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetFsmState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetGroupMotionState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 140 - n)
                return -90;
            n += 8;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetGroupMotionState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 272 - n)
                return -90;
            n += 8;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetGroupState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field group, native scalar string. */
    group: string = '';
    /** Exact native field key, native scalar string. */
    key: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 272 - n)
                return -90;
            n += 8;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.group) || this.group.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.group);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 128)
                return -22;
            if(4 + size > 272 - n)
                return -90;
            n += 4 + size;
            if(n > 272)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.text(this.group);
        w.text(this.key);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.group = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.key = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetGroupState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetSnapshot_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetSnapshot_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
{
    static readonly maxWireBytes: i32 = 14536;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 14536;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar uwvm_fourier_bridge/msg/Status. */
    value: Ros2Uwvm_fourier_bridgeMsgStatus = new Ros2Uwvm_fourier_bridgeMsgStatus();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 14536 - n)
                return -90;
            n += 4;
            if(n > 14536)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 14536 - n)
                return -90;
            n += 4 + size;
            if(n > 14536)
                return -90;
        }
        {
            const child = this.value.wireSize();
            if(child < 0)
                return child;
            if(child > 14536 - n)
                return -90;
            n += child;
            if(n > 14536)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        this.value.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = Ros2Uwvm_fourier_bridgeMsgStatus.readControl(r);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3';
    static readonly maxWireBytes: i32 = 14536;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response>();
        if(bytes.length > 14536)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetStandPose_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetStandPose_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
{
    static readonly maxWireBytes: i32 = 652;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 652;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field values, native scalar float64. */
    values: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 652 - n)
                return -90;
            n += 4;
            if(n > 652)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 652 - n)
                return -90;
            n += 4 + size;
            if(n > 652)
                return -90;
        }
        {
            if(this.values.length > 64)
                return -22;
            if(4 > 652 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(8 > 652 - n)
                    return -90;
                n += 8;
                if(n > 652)
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.values[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2';
    static readonly maxWireBytes: i32 = 652;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response>();
        if(bytes.length > 652)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetUpperFsmName_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetUpperFsmName_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed';
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response>();
        if(bytes.length > 268)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetUpperFsmState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetUpperFsmState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetVelocitySource_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetVelocitySource_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 140 - n)
                return -90;
            n += 4 + size;
            if(n > 140)
                return -90;
        }
        {
            if(4 > 140 - n)
                return -90;
            n += 4;
            if(n > 140)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.integer(<u64>this.value, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53';
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response>();
        if(bytes.length > 140)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetVelocitySourceName_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 8 - n)
                return -90;
            n += 8;
            if(n > 8)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request>();
        if(bytes.length > 8)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/GetVelocitySourceName_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
{
    static readonly maxWireBytes: i32 = 268;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 268;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field value, native scalar string. */
    value: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 268 - n)
                return -90;
            n += 4;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
        }
        {
            if(!validUnicode(this.value) || this.value.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.value);
            if(size > 128)
                return -22;
            if(4 + size > 268 - n)
                return -90;
            n += 4 + size;
            if(n > 268)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.text(this.value);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40';
    static readonly maxWireBytes: i32 = 268;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response>();
        if(bytes.length > 268)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetFsmState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field state, native scalar int32. */
    state: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>this.state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.state = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request>();
        if(bytes.length > 12)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetFsmState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetGroupCommand_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
{
    static readonly maxWireBytes: i32 = 15572;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 15572;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field position, native scalar uwvm_fourier_bridge/msg/GroupValues. */
    position: Array<Ros2Uwvm_fourier_bridgeMsgGroupValues> = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
    /** Exact native field velocity, native scalar uwvm_fourier_bridge/msg/GroupValues. */
    velocity: Array<Ros2Uwvm_fourier_bridgeMsgGroupValues> = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
    /** Exact native field torque, native scalar uwvm_fourier_bridge/msg/GroupValues. */
    torque: Array<Ros2Uwvm_fourier_bridgeMsgGroupValues> = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 15572 - n)
                return -90;
            n += 8;
            if(n > 15572)
                return -90;
        }
        {
            if(this.position.length > 8)
                return -22;
            if(4 > 15572 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                const child = this.position[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 15572 - n)
                    return -90;
                n += child;
                if(n > 15572)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 8)
                return -22;
            if(4 > 15572 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                const child = this.velocity[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 15572 - n)
                    return -90;
                n += child;
                if(n > 15572)
                    return -90;
            }
        }
        {
            if(this.torque.length > 8)
                return -22;
            if(4 > 15572 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.torque.length; ++i)
            {
                const child = this.torque[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 15572 - n)
                    return -90;
                n += child;
                if(n > 15572)
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
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.position.length);
        for(let i = 0; i < this.position.length; ++i)
        {
            this.position[i].writeControl(w);
        }
        w.u32(<u32>this.velocity.length);
        for(let i = 0; i < this.velocity.length; ++i)
        {
            this.velocity[i].writeControl(w);
        }
        w.u32(<u32>this.torque.length);
        for(let i = 0; i < this.torque.length; ++i)
        {
            this.torque[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.position = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues.readControl(r);
                value.position.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.velocity = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues.readControl(r);
                value.velocity.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.torque = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues.readControl(r);
                value.torque.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9';
    static readonly maxWireBytes: i32 = 15572;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request>();
        if(bytes.length > 15572)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetGroupCommand_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetMotorCfgPd_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
{
    static readonly maxWireBytes: i32 = 10384;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10384;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field kp, native scalar uwvm_fourier_bridge/msg/GroupValues. */
    kp: Array<Ros2Uwvm_fourier_bridgeMsgGroupValues> = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
    /** Exact native field kd, native scalar uwvm_fourier_bridge/msg/GroupValues. */
    kd: Array<Ros2Uwvm_fourier_bridgeMsgGroupValues> = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 10384 - n)
                return -90;
            n += 8;
            if(n > 10384)
                return -90;
        }
        {
            if(this.kp.length > 8)
                return -22;
            if(4 > 10384 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.kp.length; ++i)
            {
                const child = this.kp[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10384 - n)
                    return -90;
                n += child;
                if(n > 10384)
                    return -90;
            }
        }
        {
            if(this.kd.length > 8)
                return -22;
            if(4 > 10384 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.kd.length; ++i)
            {
                const child = this.kd[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10384 - n)
                    return -90;
                n += child;
                if(n > 10384)
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
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.kp.length);
        for(let i = 0; i < this.kp.length; ++i)
        {
            this.kp[i].writeControl(w);
        }
        w.u32(<u32>this.kd.length);
        for(let i = 0; i < this.kd.length; ++i)
        {
            this.kd[i].writeControl(w);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.kp = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues.readControl(r);
                value.kp.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.kd = new Array<Ros2Uwvm_fourier_bridgeMsgGroupValues>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_fourier_bridgeMsgGroupValues.readControl(r);
                value.kd.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de';
    static readonly maxWireBytes: i32 = 10384;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request>();
        if(bytes.length > 10384)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetMotorCfgPd_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetStandPose_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
{
    static readonly maxWireBytes: i32 = 32;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 32;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field delta_z, native scalar float64. */
    delta_z: f64 = 0;
    /** Exact native field delta_pitch, native scalar float64. */
    delta_pitch: f64 = 0;
    /** Exact native field delta_yaw, native scalar float64. */
    delta_yaw: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.delta_z))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.delta_pitch))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
        }
        {
            if(!isFinite(this.delta_yaw))
                return -22;
            if(8 > 32 - n)
                return -90;
            n += 8;
            if(n > 32)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>reinterpret<u64>(this.delta_z), 8);
        w.integer(<u64>reinterpret<u64>(this.delta_pitch), 8);
        w.integer(<u64>reinterpret<u64>(this.delta_yaw), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.delta_z = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.delta_pitch = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.delta_yaw = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211';
    static readonly maxWireBytes: i32 = 32;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request>();
        if(bytes.length > 32)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 32)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetStandPose_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetUpperFsmState_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field state, native scalar int32. */
    state: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>this.state, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.state = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request>();
        if(bytes.length > 12)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetUpperFsmState_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetVelocity_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field vx, native scalar float64. */
    vx: f64 = 0;
    /** Exact native field vy, native scalar float64. */
    vy: f64 = 0;
    /** Exact native field yaw, native scalar float64. */
    yaw: f64 = 0;
    /** Exact native field duration, native scalar float64. */
    duration: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vx))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.vy))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
        }
        {
            if(!isFinite(this.duration))
                return -22;
            if(8 > 40 - n)
                return -90;
            n += 8;
            if(n > 40)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>reinterpret<u64>(this.vx), 8);
        w.integer(<u64>reinterpret<u64>(this.vy), 8);
        w.integer(<u64>reinterpret<u64>(this.yaw), 8);
        w.integer(<u64>reinterpret<u64>(this.duration), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vx = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.vy = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.duration = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44';
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request>();
        if(bytes.length > 40)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 40)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request() : changetype<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetVelocity_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetVelocitySource_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field source, native scalar int32. */
    source: i32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.integer(<u64>this.source, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const decoded = <i32>r.integer(4);
            value.source = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c';
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request>();
        if(bytes.length > 12)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/SetVelocitySource_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 136 - n)
                return -90;
            n += 4;
            if(n > 136)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 136 - n)
                return -90;
            n += 4 + size;
            if(n > 136)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 8)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
{
    static readonly maxWireBytes: i32 = 1084;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1084;
    /** Exact native field sequence, native scalar uint64. */
    sequence: u64 = 0;
    /** Exact native field groups, native scalar string. */
    groups: Array<string> = new Array<string>();
    /** Exact native field timeout_seconds, native scalar float64. */
    timeout_seconds: f64 = 0;
    /** Exact native field poll_seconds, native scalar float64. */
    poll_seconds: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 1084 - n)
                return -90;
            n += 8;
            if(n > 1084)
                return -90;
        }
        {
            if(this.groups.length > 8)
                return -22;
            if(4 > 1084 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.groups.length; ++i)
            {
                if(!validUnicode(this.groups[i]) || this.groups[i].indexOf('\0') >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.groups[i]);
                if(size > 128)
                    return -22;
                if(4 + size > 1084 - n)
                    return -90;
                n += 4 + size;
                if(n > 1084)
                    return -90;
            }
        }
        {
            if(!isFinite(this.timeout_seconds))
                return -22;
            if(8 > 1084 - n)
                return -90;
            n += 8;
            if(n > 1084)
                return -90;
        }
        {
            if(!isFinite(this.poll_seconds))
                return -22;
            if(8 > 1084 - n)
                return -90;
            n += 8;
            if(n > 1084)
                return -90;
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
        w.integer(<u64>this.sequence, 8);
        w.u32(<u32>this.groups.length);
        for(let i = 0; i < this.groups.length; ++i)
        {
            w.text(this.groups[i]);
        }
        w.integer(<u64>reinterpret<u64>(this.timeout_seconds), 8);
        w.integer(<u64>reinterpret<u64>(this.poll_seconds), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request();
        {
            const decoded = <u64>r.integer(8);
            value.sequence = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.groups = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const size = r.u32();
                if(!r.valid || size > 128)
                {
                    r.valid = false;
                    return value;
                }
                const raw = r.take(size);
                if(!r.valid || !validUtf8(raw, false))
                {
                    r.valid = false;
                    return value;
                }
                const decoded = String.UTF8.decode(raw.buffer);
                value.groups.push(decoded);
            }
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.timeout_seconds = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.poll_seconds = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodec implements VendorCodec<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request>
{
    static readonly codecIdentity: string = 'UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202';
    static readonly maxWireBytes: i32 = 1084;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request>();
        if(bytes.length > 1084)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request>(out.value);
    }
}

/** Complete original uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response; spellings are published in generation proof. */
export class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
{
    static readonly maxWireBytes: i32 = 137;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 137;
    /** Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** Exact native field error, native scalar string. */
    error: string = '';
    /** Exact native field complete, native scalar bool. */
    complete: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 137 - n)
                return -90;
            n += 4;
            if(n > 137)
                return -90;
        }
        {
            if(!validUnicode(this.error) || this.error.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.error);
            if(size > 128)
                return -22;
            if(4 + size > 137 - n)
                return -90;
            n += 4 + size;
            if(n > 137)
                return -90;
        }
        {
            if(1 > 137 - n)
                return -90;
            n += 1;
            if(n > 137)
                return -90;
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
        w.integer(<u64>this.status, 4);
        w.text(this.error);
        w.u8(this.complete ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
    {
        const value = new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 128)
            {
                r.valid = false;
                return value;
            }
            const raw = r.take(size);
            if(!r.valid || !validUtf8(raw, false))
            {
                r.valid = false;
                return value;
            }
            const decoded = String.UTF8.decode(raw.buffer);
            value.error = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.complete = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodec implements
    VendorCodec<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response>
{
    static readonly codecIdentity: string = 'UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f';
    static readonly maxWireBytes: i32 = 137;

    encodeChecked(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response>();
        if(bytes.length > 137)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 9)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
                                  : changetype<Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response>(out.value);
    }
}
