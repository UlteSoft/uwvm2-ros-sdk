// @file bounded_records.ts
// @brief Full leju as codecs and original record metadata.
// @details Complete leju ros1_main_packaged_ik values in as. 17 original records retain 55 fields and 15 interface
// descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions.
// Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API
// manual under document/platform/leju/en_US/catalog/.
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

/** Complete original motion_capture_ik/armHandPose; spellings are published in generation proof. */
export class Ros1Motion_capture_ikArmHandPose
{
    static readonly maxWireBytes: i32 = 136;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 136;
    /** Exact native field pos_xyz, native scalar float64. */
    pos_xyz: Array<f64> = new Array<f64>();
    /** Exact native field quat_xyzw, native scalar float64. */
    quat_xyzw: Array<f64> = new Array<f64>();
    /** Exact native field elbow_pos_xyz, native scalar float64. */
    elbow_pos_xyz: Array<f64> = new Array<f64>();
    /** Exact native field joint_angles, native scalar float64. */
    joint_angles: Array<f64> = new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
            this.pos_xyz.push(0);
        for(let i = 0; i < 4; ++i)
            this.quat_xyzw.push(0);
        for(let i = 0; i < 3; ++i)
            this.elbow_pos_xyz.push(0);
        for(let i = 0; i < 7; ++i)
            this.joint_angles.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos_xyz.length != 3)
                return -22;
            for(let i = 0; i < this.pos_xyz.length; ++i)
            {
                if(!isFinite(this.pos_xyz[i]))
                    return -22;
                if(8 > 136 - n)
                    return -90;
                n += 8;
                if(n > 136)
                    return -90;
            }
        }
        {
            if(this.quat_xyzw.length != 4)
                return -22;
            for(let i = 0; i < this.quat_xyzw.length; ++i)
            {
                if(!isFinite(this.quat_xyzw[i]))
                    return -22;
                if(8 > 136 - n)
                    return -90;
                n += 8;
                if(n > 136)
                    return -90;
            }
        }
        {
            if(this.elbow_pos_xyz.length != 3)
                return -22;
            for(let i = 0; i < this.elbow_pos_xyz.length; ++i)
            {
                if(!isFinite(this.elbow_pos_xyz[i]))
                    return -22;
                if(8 > 136 - n)
                    return -90;
                n += 8;
                if(n > 136)
                    return -90;
            }
        }
        {
            if(this.joint_angles.length != 7)
                return -22;
            for(let i = 0; i < this.joint_angles.length; ++i)
            {
                if(!isFinite(this.joint_angles[i]))
                    return -22;
                if(8 > 136 - n)
                    return -90;
                n += 8;
                if(n > 136)
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
        for(let i = 0; i < this.pos_xyz.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos_xyz[i]), 8);
        }
        for(let i = 0; i < this.quat_xyzw.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.quat_xyzw[i]), 8);
        }
        for(let i = 0; i < this.elbow_pos_xyz.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.elbow_pos_xyz[i]), 8);
        }
        for(let i = 0; i < this.joint_angles.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.joint_angles[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikArmHandPose
    {
        const value = new Ros1Motion_capture_ikArmHandPose();
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.pos_xyz = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos_xyz.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.quat_xyzw = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.quat_xyzw.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.elbow_pos_xyz = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.elbow_pos_xyz.push(decoded);
            }
        }
        {
            const count: u32 = 7;
            if(!r.valid || count > 7)
            {
                r.valid = false;
                return value;
            }
            value.joint_angles = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_angles.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Motion_capture_ikArmHandPoseCodec implements VendorCodec<Ros1Motion_capture_ikArmHandPose>
{
    static readonly codecIdentity: string = 'UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08';
    static readonly maxWireBytes: i32 = 136;

    encodeChecked(value: Ros1Motion_capture_ikArmHandPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikArmHandPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikArmHandPose>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikArmHandPose>();
        if(bytes.length > 136)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 136)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikArmHandPose.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikArmHandPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikArmHandPose() : changetype<Ros1Motion_capture_ikArmHandPose>(out.value);
    }
}

/** Complete original motion_capture_ik/armHandPoseFree; spellings are published in generation proof. */
export class Ros1Motion_capture_ikArmHandPoseFree
{
    static readonly maxWireBytes: i32 = 212;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 212;
    /** Exact native field pos_xyz, native scalar float64. */
    pos_xyz: Array<f64> = new Array<f64>();
    /** Exact native field quat_xyzw, native scalar float64. */
    quat_xyzw: Array<f64> = new Array<f64>();
    /** Exact native field elbow_pos_xyz, native scalar float64. */
    elbow_pos_xyz: Array<f64> = new Array<f64>();
    /** Exact native field joint_angles, native scalar float64. */
    joint_angles: Array<f64> = new Array<f64>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
            this.pos_xyz.push(0);
        for(let i = 0; i < 4; ++i)
            this.quat_xyzw.push(0);
        for(let i = 0; i < 3; ++i)
            this.elbow_pos_xyz.push(0);
    }

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.pos_xyz.length != 3)
                return -22;
            for(let i = 0; i < this.pos_xyz.length; ++i)
            {
                if(!isFinite(this.pos_xyz[i]))
                    return -22;
                if(8 > 212 - n)
                    return -90;
                n += 8;
                if(n > 212)
                    return -90;
            }
        }
        {
            if(this.quat_xyzw.length != 4)
                return -22;
            for(let i = 0; i < this.quat_xyzw.length; ++i)
            {
                if(!isFinite(this.quat_xyzw[i]))
                    return -22;
                if(8 > 212 - n)
                    return -90;
                n += 8;
                if(n > 212)
                    return -90;
            }
        }
        {
            if(this.elbow_pos_xyz.length != 3)
                return -22;
            for(let i = 0; i < this.elbow_pos_xyz.length; ++i)
            {
                if(!isFinite(this.elbow_pos_xyz[i]))
                    return -22;
                if(8 > 212 - n)
                    return -90;
                n += 8;
                if(n > 212)
                    return -90;
            }
        }
        {
            if(this.joint_angles.length > 16)
                return -22;
            if(4 > 212 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.joint_angles.length; ++i)
            {
                if(!isFinite(this.joint_angles[i]))
                    return -22;
                if(8 > 212 - n)
                    return -90;
                n += 8;
                if(n > 212)
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
        for(let i = 0; i < this.pos_xyz.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.pos_xyz[i]), 8);
        }
        for(let i = 0; i < this.quat_xyzw.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.quat_xyzw[i]), 8);
        }
        for(let i = 0; i < this.elbow_pos_xyz.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.elbow_pos_xyz[i]), 8);
        }
        w.u32(<u32>this.joint_angles.length);
        for(let i = 0; i < this.joint_angles.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.joint_angles[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikArmHandPoseFree
    {
        const value = new Ros1Motion_capture_ikArmHandPoseFree();
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.pos_xyz = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.pos_xyz.push(decoded);
            }
        }
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.quat_xyzw = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.quat_xyzw.push(decoded);
            }
        }
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.elbow_pos_xyz = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.elbow_pos_xyz.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.joint_angles = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.joint_angles.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Motion_capture_ikArmHandPoseFreeCodec implements VendorCodec<Ros1Motion_capture_ikArmHandPoseFree>
{
    static readonly codecIdentity: string = 'UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf';
    static readonly maxWireBytes: i32 = 212;

    encodeChecked(value: Ros1Motion_capture_ikArmHandPoseFree): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikArmHandPoseFree): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikArmHandPoseFree>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikArmHandPoseFree>();
        if(bytes.length > 212)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 84)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikArmHandPoseFree.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikArmHandPoseFree
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikArmHandPoseFree() : changetype<Ros1Motion_capture_ikArmHandPoseFree>(out.value);
    }
}

/** Complete original motion_capture_ik/changeArmCtrlModeRequest; spellings are published in generation proof. */
export class Ros1Motion_capture_ikChangeArmCtrlModeRequest
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field control_mode, native scalar bool. */
    control_mode: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
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
        w.u8(this.control_mode ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikChangeArmCtrlModeRequest
    {
        const value = new Ros1Motion_capture_ikChangeArmCtrlModeRequest();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.control_mode = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec implements VendorCodec<Ros1Motion_capture_ikChangeArmCtrlModeRequest>
{
    static readonly codecIdentity: string = 'UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Motion_capture_ikChangeArmCtrlModeRequest): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikChangeArmCtrlModeRequest): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikChangeArmCtrlModeRequest>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikChangeArmCtrlModeRequest>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikChangeArmCtrlModeRequest.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikChangeArmCtrlModeRequest
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikChangeArmCtrlModeRequest() : changetype<Ros1Motion_capture_ikChangeArmCtrlModeRequest>(out.value);
    }
}

/** Complete original motion_capture_ik/changeArmCtrlModeResponse; spellings are published in generation proof. */
export class Ros1Motion_capture_ikChangeArmCtrlModeResponse
{
    static readonly maxWireBytes: i32 = 1;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1;
    /** Exact native field result, native scalar bool. */
    result: bool = false;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(1 > 1 - n)
                return -90;
            n += 1;
            if(n > 1)
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
        w.u8(this.result ? 1 : 0);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikChangeArmCtrlModeResponse
    {
        const value = new Ros1Motion_capture_ikChangeArmCtrlModeResponse();
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.result = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec implements VendorCodec<Ros1Motion_capture_ikChangeArmCtrlModeResponse>
{
    static readonly codecIdentity: string = 'UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac';
    static readonly maxWireBytes: i32 = 1;

    encodeChecked(value: Ros1Motion_capture_ikChangeArmCtrlModeResponse): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikChangeArmCtrlModeResponse): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikChangeArmCtrlModeResponse>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikChangeArmCtrlModeResponse>();
        if(bytes.length > 1)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 1)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikChangeArmCtrlModeResponse.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikChangeArmCtrlModeResponse
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikChangeArmCtrlModeResponse()
                                  : changetype<Ros1Motion_capture_ikChangeArmCtrlModeResponse>(out.value);
    }
}

/** Complete original motion_capture_ik/handPose; spellings are published in generation proof. */
export class Ros1Motion_capture_ikHandPose
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** Exact native field x, native scalar float64. */
    x: f64 = 0;
    /** Exact native field y, native scalar float64. */
    y: f64 = 0;
    /** Exact native field z, native scalar float64. */
    z: f64 = 0;
    /** Exact native field roll, native scalar float64. */
    roll: f64 = 0;
    /** Exact native field pitch, native scalar float64. */
    pitch: f64 = 0;
    /** Exact native field yaw, native scalar float64. */
    yaw: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(!isFinite(this.roll))
                return -22;
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(!isFinite(this.pitch))
                return -22;
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(8 > 48 - n)
                return -90;
            n += 8;
            if(n > 48)
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
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
        w.integer(<u64>reinterpret<u64>(this.roll), 8);
        w.integer(<u64>reinterpret<u64>(this.pitch), 8);
        w.integer(<u64>reinterpret<u64>(this.yaw), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikHandPose
    {
        const value = new Ros1Motion_capture_ikHandPose();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.roll = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.pitch = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikHandPoseCodec implements VendorCodec<Ros1Motion_capture_ikHandPose>
{
    static readonly codecIdentity: string = 'UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f';
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros1Motion_capture_ikHandPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikHandPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikHandPose>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikHandPose>();
        if(bytes.length > 48)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 48)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikHandPose.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikHandPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikHandPose() : changetype<Ros1Motion_capture_ikHandPose>(out.value);
    }
}

/** Complete original motion_capture_ik/ikSolveError; spellings are published in generation proof. */
export class Ros1Motion_capture_ikIkSolveError
{
    static readonly maxWireBytes: i32 = 356;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 356;
    /** Exact native field ik_type, native scalar string. */
    ik_type: string = '';
    /** Exact native field left_pose_error, native scalar motion_capture_ik/handPose. */
    left_pose_error: Ros1Motion_capture_ikHandPose = new Ros1Motion_capture_ikHandPose();
    /** Exact native field right_pose_error, native scalar motion_capture_ik/handPose. */
    right_pose_error: Ros1Motion_capture_ikHandPose = new Ros1Motion_capture_ikHandPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.ik_type) || this.ik_type.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.ik_type);
            if(size > 256)
                return -22;
            if(4 + size > 356 - n)
                return -90;
            n += 4 + size;
            if(n > 356)
                return -90;
        }
        {
            const child = this.left_pose_error.wireSize();
            if(child < 0)
                return child;
            if(child > 356 - n)
                return -90;
            n += child;
            if(n > 356)
                return -90;
        }
        {
            const child = this.right_pose_error.wireSize();
            if(child < 0)
                return child;
            if(child > 356 - n)
                return -90;
            n += child;
            if(n > 356)
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
        w.text(this.ik_type);
        this.left_pose_error.writeControl(w);
        this.right_pose_error.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikIkSolveError
    {
        const value = new Ros1Motion_capture_ikIkSolveError();
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.ik_type = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikHandPose.readControl(r);
            value.left_pose_error = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikHandPose.readControl(r);
            value.right_pose_error = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikIkSolveErrorCodec implements VendorCodec<Ros1Motion_capture_ikIkSolveError>
{
    static readonly codecIdentity: string = 'UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94';
    static readonly maxWireBytes: i32 = 356;

    encodeChecked(value: Ros1Motion_capture_ikIkSolveError): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikIkSolveError): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikIkSolveError>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikIkSolveError>();
        if(bytes.length > 356)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 100)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikIkSolveError.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikIkSolveError
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikIkSolveError() : changetype<Ros1Motion_capture_ikIkSolveError>(out.value);
    }
}

/** Complete original motion_capture_ik/ikSolveParam; spellings are published in generation proof. */
export class Ros1Motion_capture_ikIkSolveParam
{
    static readonly maxWireBytes: i32 = 56;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 56;
    /** Exact native field major_optimality_tol, native scalar float64. */
    major_optimality_tol: f64 = 0;
    /** Exact native field major_feasibility_tol, native scalar float64. */
    major_feasibility_tol: f64 = 0;
    /** Exact native field minor_feasibility_tol, native scalar float64. */
    minor_feasibility_tol: f64 = 0;
    /** Exact native field major_iterations_limit, native scalar float64. */
    major_iterations_limit: f64 = 0;
    /** Exact native field oritation_constraint_tol, native scalar float64. */
    oritation_constraint_tol: f64 = 0;
    /** Exact native field pos_constraint_tol, native scalar float64. */
    pos_constraint_tol: f64 = 0;
    /** Exact native field pos_cost_weight, native scalar float64. */
    pos_cost_weight: f64 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.major_optimality_tol))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
                return -90;
        }
        {
            if(!isFinite(this.major_feasibility_tol))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
                return -90;
        }
        {
            if(!isFinite(this.minor_feasibility_tol))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
                return -90;
        }
        {
            if(!isFinite(this.major_iterations_limit))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
                return -90;
        }
        {
            if(!isFinite(this.oritation_constraint_tol))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
                return -90;
        }
        {
            if(!isFinite(this.pos_constraint_tol))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
                return -90;
        }
        {
            if(!isFinite(this.pos_cost_weight))
                return -22;
            if(8 > 56 - n)
                return -90;
            n += 8;
            if(n > 56)
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
        w.integer(<u64>reinterpret<u64>(this.major_optimality_tol), 8);
        w.integer(<u64>reinterpret<u64>(this.major_feasibility_tol), 8);
        w.integer(<u64>reinterpret<u64>(this.minor_feasibility_tol), 8);
        w.integer(<u64>reinterpret<u64>(this.major_iterations_limit), 8);
        w.integer(<u64>reinterpret<u64>(this.oritation_constraint_tol), 8);
        w.integer(<u64>reinterpret<u64>(this.pos_constraint_tol), 8);
        w.integer(<u64>reinterpret<u64>(this.pos_cost_weight), 8);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikIkSolveParam
    {
        const value = new Ros1Motion_capture_ikIkSolveParam();
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.major_optimality_tol = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.major_feasibility_tol = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.minor_feasibility_tol = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.major_iterations_limit = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.oritation_constraint_tol = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.pos_constraint_tol = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.pos_cost_weight = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikIkSolveParamCodec implements VendorCodec<Ros1Motion_capture_ikIkSolveParam>
{
    static readonly codecIdentity: string = 'UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981';
    static readonly maxWireBytes: i32 = 56;

    encodeChecked(value: Ros1Motion_capture_ikIkSolveParam): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikIkSolveParam): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikIkSolveParam>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikIkSolveParam>();
        if(bytes.length > 56)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 56)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikIkSolveParam.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikIkSolveParam
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikIkSolveParam() : changetype<Ros1Motion_capture_ikIkSolveParam>(out.value);
    }
}

/** Complete original motion_capture_ik/recordArmHandPose; spellings are published in generation proof. */
export class Ros1Motion_capture_ikRecordArmHandPose
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field left_pose, native scalar motion_capture_ik/armHandPose. */
    left_pose: Ros1Motion_capture_ikArmHandPose = new Ros1Motion_capture_ikArmHandPose();
    /** Exact native field right_pose, native scalar motion_capture_ik/armHandPose. */
    right_pose: Ros1Motion_capture_ikArmHandPose = new Ros1Motion_capture_ikArmHandPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.left_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 272 - n)
                return -90;
            n += child;
            if(n > 272)
                return -90;
        }
        {
            const child = this.right_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 272 - n)
                return -90;
            n += child;
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
        this.left_pose.writeControl(w);
        this.right_pose.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikRecordArmHandPose
    {
        const value = new Ros1Motion_capture_ikRecordArmHandPose();
        {
            const decoded = Ros1Motion_capture_ikArmHandPose.readControl(r);
            value.left_pose = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikArmHandPose.readControl(r);
            value.right_pose = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikRecordArmHandPoseCodec implements VendorCodec<Ros1Motion_capture_ikRecordArmHandPose>
{
    static readonly codecIdentity: string = 'UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros1Motion_capture_ikRecordArmHandPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikRecordArmHandPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikRecordArmHandPose>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikRecordArmHandPose>();
        if(bytes.length > 272)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 272)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikRecordArmHandPose.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikRecordArmHandPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikRecordArmHandPose() : changetype<Ros1Motion_capture_ikRecordArmHandPose>(out.value);
    }
}

/** Complete original motion_capture_ik/recordArmHandPoseFree; spellings are published in generation proof. */
export class Ros1Motion_capture_ikRecordArmHandPoseFree
{
    static readonly maxWireBytes: i32 = 424;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 424;
    /** Exact native field left_pose, native scalar motion_capture_ik/armHandPoseFree. */
    left_pose: Ros1Motion_capture_ikArmHandPoseFree = new Ros1Motion_capture_ikArmHandPoseFree();
    /** Exact native field right_pose, native scalar motion_capture_ik/armHandPoseFree. */
    right_pose: Ros1Motion_capture_ikArmHandPoseFree = new Ros1Motion_capture_ikArmHandPoseFree();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.left_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 424 - n)
                return -90;
            n += child;
            if(n > 424)
                return -90;
        }
        {
            const child = this.right_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 424 - n)
                return -90;
            n += child;
            if(n > 424)
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
        this.left_pose.writeControl(w);
        this.right_pose.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikRecordArmHandPoseFree
    {
        const value = new Ros1Motion_capture_ikRecordArmHandPoseFree();
        {
            const decoded = Ros1Motion_capture_ikArmHandPoseFree.readControl(r);
            value.left_pose = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikArmHandPoseFree.readControl(r);
            value.right_pose = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikRecordArmHandPoseFreeCodec implements VendorCodec<Ros1Motion_capture_ikRecordArmHandPoseFree>
{
    static readonly codecIdentity: string = 'UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811';
    static readonly maxWireBytes: i32 = 424;

    encodeChecked(value: Ros1Motion_capture_ikRecordArmHandPoseFree): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikRecordArmHandPoseFree): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikRecordArmHandPoseFree>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikRecordArmHandPoseFree>();
        if(bytes.length > 424)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 168)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikRecordArmHandPoseFree.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikRecordArmHandPoseFree
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikRecordArmHandPoseFree() : changetype<Ros1Motion_capture_ikRecordArmHandPoseFree>(out.value);
    }
}

/** Complete original motion_capture_ik/robotArmQVVD; spellings are published in generation proof. */
export class Ros1Motion_capture_ikRobotArmQVVD
{
    static readonly maxWireBytes: i32 = 396;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 396;
    /** Exact native field q, native scalar float64. */
    q: Array<f64> = new Array<f64>();
    /** Exact native field v, native scalar float64. */
    v: Array<f64> = new Array<f64>();
    /** Exact native field vd, native scalar float64. */
    vd: Array<f64> = new Array<f64>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.q.length > 16)
                return -22;
            if(4 > 396 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.q.length; ++i)
            {
                if(!isFinite(this.q[i]))
                    return -22;
                if(8 > 396 - n)
                    return -90;
                n += 8;
                if(n > 396)
                    return -90;
            }
        }
        {
            if(this.v.length > 16)
                return -22;
            if(4 > 396 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.v.length; ++i)
            {
                if(!isFinite(this.v[i]))
                    return -22;
                if(8 > 396 - n)
                    return -90;
                n += 8;
                if(n > 396)
                    return -90;
            }
        }
        {
            if(this.vd.length > 16)
                return -22;
            if(4 > 396 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.vd.length; ++i)
            {
                if(!isFinite(this.vd[i]))
                    return -22;
                if(8 > 396 - n)
                    return -90;
                n += 8;
                if(n > 396)
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
        w.u32(<u32>this.q.length);
        for(let i = 0; i < this.q.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.q[i]), 8);
        }
        w.u32(<u32>this.v.length);
        for(let i = 0; i < this.v.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.v[i]), 8);
        }
        w.u32(<u32>this.vd.length);
        for(let i = 0; i < this.vd.length; ++i)
        {
            w.integer(<u64>reinterpret<u64>(this.vd[i]), 8);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikRobotArmQVVD
    {
        const value = new Ros1Motion_capture_ikRobotArmQVVD();
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.q = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.q.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.v = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.v.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.vd = new Array<f64>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f64>(<u64>r.integer(8));
                if(!isFinite(decoded))
                    r.valid = false;
                value.vd.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Motion_capture_ikRobotArmQVVDCodec implements VendorCodec<Ros1Motion_capture_ikRobotArmQVVD>
{
    static readonly codecIdentity: string = 'UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb';
    static readonly maxWireBytes: i32 = 396;

    encodeChecked(value: Ros1Motion_capture_ikRobotArmQVVD): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikRobotArmQVVD): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikRobotArmQVVD>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikRobotArmQVVD>();
        if(bytes.length > 396)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikRobotArmQVVD.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikRobotArmQVVD
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikRobotArmQVVD() : changetype<Ros1Motion_capture_ikRobotArmQVVD>(out.value);
    }
}

/** Complete original time; spellings are published in generation proof. */
export class Ros1Time
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** Exact native field sec, native scalar uint32. */
    sec: u32 = 0;
    /** Exact native field nsec, native scalar uint32. */
    nsec: u32 = 0;

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 8 - n)
                return -90;
            n += 4;
            if(n > 8)
                return -90;
        }
        {
            if(4 > 8 - n)
                return -90;
            n += 4;
            if(n > 8)
                return -90;
        }
        if(this.nsec >= 1000000000)
            return -22;
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
        w.integer(<u64>this.sec, 4);
        w.integer(<u64>this.nsec, 4);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Time
    {
        const value = new Ros1Time();
        {
            const decoded = <u32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.nsec = decoded;
        }
        if(value.nsec >= 1000000000)
            r.valid = false;
        return value;
    }
}

export class Ros1TimeCodec implements VendorCodec<Ros1Time>
{
    static readonly codecIdentity: string = 'UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0';
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros1Time): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Time): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Time>
    {
        const out = new VendorDecoded<Ros1Time>();
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
        const reader = new Reader(bytes), value = Ros1Time.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Time
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Time() : changetype<Ros1Time>(out.value);
    }
}

/** Complete original std_msgs/Header; spellings are published in generation proof. */
export class Ros1Std_msgsHeader
{
    static readonly maxWireBytes: i32 = 272;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 272;
    /** Exact native field seq, native scalar uint32. */
    seq: u32 = 0;
    /** Exact native field stamp, native scalar time. */
    stamp: Ros1Time = new Ros1Time();
    /** Exact native field frame_id, native scalar string. */
    frame_id: string = '';

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 272 - n)
                return -90;
            n += 4;
            if(n > 272)
                return -90;
        }
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 272 - n)
                return -90;
            n += child;
            if(n > 272)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf('\0') >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
            if(size > 256)
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
        w.integer(<u64>this.seq, 4);
        this.stamp.writeControl(w);
        w.text(this.frame_id);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Std_msgsHeader
    {
        const value = new Ros1Std_msgsHeader();
        {
            const decoded = <u32>r.integer(4);
            value.seq = decoded;
        }
        {
            const decoded = Ros1Time.readControl(r);
            value.stamp = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 256)
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
            value.frame_id = decoded;
        }
        return value;
    }
}

export class Ros1Std_msgsHeaderCodec implements VendorCodec<Ros1Std_msgsHeader>
{
    static readonly codecIdentity: string = 'UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7';
    static readonly maxWireBytes: i32 = 272;

    encodeChecked(value: Ros1Std_msgsHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Std_msgsHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Std_msgsHeader>
    {
        const out = new VendorDecoded<Ros1Std_msgsHeader>();
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
        const reader = new Reader(bytes), value = Ros1Std_msgsHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Std_msgsHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Std_msgsHeader() : changetype<Ros1Std_msgsHeader>(out.value);
    }
}

/** Complete original motion_capture_ik/robotHandPosition; spellings are published in generation proof. */
export class Ros1Motion_capture_ikRobotHandPosition
{
    static readonly maxWireBytes: i32 = 792;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 792;
    /** Exact native field header, native scalar std_msgs/Header. */
    header: Ros1Std_msgsHeader = new Ros1Std_msgsHeader();
    /** Exact native field left_hand_position, native scalar uint8. */
    left_hand_position: Array<u8> = new Array<u8>();
    /** Exact native field right_hand_position, native scalar uint8. */
    right_hand_position: Array<u8> = new Array<u8>();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 792 - n)
                return -90;
            n += child;
            if(n > 792)
                return -90;
        }
        {
            if(this.left_hand_position.length > 256)
                return -22;
            if(4 > 792 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.left_hand_position.length; ++i)
            {
                if(1 > 792 - n)
                    return -90;
                n += 1;
                if(n > 792)
                    return -90;
            }
        }
        {
            if(this.right_hand_position.length > 256)
                return -22;
            if(4 > 792 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.right_hand_position.length; ++i)
            {
                if(1 > 792 - n)
                    return -90;
                n += 1;
                if(n > 792)
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
        this.header.writeControl(w);
        w.u32(<u32>this.left_hand_position.length);
        for(let i = 0; i < this.left_hand_position.length; ++i)
        {
            w.integer(<u64>this.left_hand_position[i], 1);
        }
        w.u32(<u32>this.right_hand_position.length);
        for(let i = 0; i < this.right_hand_position.length; ++i)
        {
            w.integer(<u64>this.right_hand_position[i], 1);
        }
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikRobotHandPosition
    {
        const value = new Ros1Motion_capture_ikRobotHandPosition();
        {
            const decoded = Ros1Std_msgsHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.left_hand_position = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.left_hand_position.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.right_hand_position = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.right_hand_position.push(decoded);
            }
        }
        return value;
    }
}

export class Ros1Motion_capture_ikRobotHandPositionCodec implements VendorCodec<Ros1Motion_capture_ikRobotHandPosition>
{
    static readonly codecIdentity: string = 'UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa';
    static readonly maxWireBytes: i32 = 792;

    encodeChecked(value: Ros1Motion_capture_ikRobotHandPosition): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikRobotHandPosition): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikRobotHandPosition>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikRobotHandPosition>();
        if(bytes.length > 792)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikRobotHandPosition.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikRobotHandPosition
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikRobotHandPosition() : changetype<Ros1Motion_capture_ikRobotHandPosition>(out.value);
    }
}

/** Complete original motion_capture_ik/twoArmHandPose; spellings are published in generation proof. */
export class Ros1Motion_capture_ikTwoArmHandPose
{
    static readonly maxWireBytes: i32 = 544;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 544;
    /** Exact native field header, native scalar std_msgs/Header. */
    header: Ros1Std_msgsHeader = new Ros1Std_msgsHeader();
    /** Exact native field left_pose, native scalar motion_capture_ik/armHandPose. */
    left_pose: Ros1Motion_capture_ikArmHandPose = new Ros1Motion_capture_ikArmHandPose();
    /** Exact native field right_pose, native scalar motion_capture_ik/armHandPose. */
    right_pose: Ros1Motion_capture_ikArmHandPose = new Ros1Motion_capture_ikArmHandPose();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 544 - n)
                return -90;
            n += child;
            if(n > 544)
                return -90;
        }
        {
            const child = this.left_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 544 - n)
                return -90;
            n += child;
            if(n > 544)
                return -90;
        }
        {
            const child = this.right_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 544 - n)
                return -90;
            n += child;
            if(n > 544)
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
        this.header.writeControl(w);
        this.left_pose.writeControl(w);
        this.right_pose.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikTwoArmHandPose
    {
        const value = new Ros1Motion_capture_ikTwoArmHandPose();
        {
            const decoded = Ros1Std_msgsHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikArmHandPose.readControl(r);
            value.left_pose = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikArmHandPose.readControl(r);
            value.right_pose = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikTwoArmHandPoseCodec implements VendorCodec<Ros1Motion_capture_ikTwoArmHandPose>
{
    static readonly codecIdentity: string = 'UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181';
    static readonly maxWireBytes: i32 = 544;

    encodeChecked(value: Ros1Motion_capture_ikTwoArmHandPose): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikTwoArmHandPose): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikTwoArmHandPose>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikTwoArmHandPose>();
        if(bytes.length > 544)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 288)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikTwoArmHandPose.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikTwoArmHandPose
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikTwoArmHandPose() : changetype<Ros1Motion_capture_ikTwoArmHandPose>(out.value);
    }
}

/** Complete original motion_capture_ik/twoArmHandPoseCmd; spellings are published in generation proof. */
export class Ros1Motion_capture_ikTwoArmHandPoseCmd
{
    static readonly maxWireBytes: i32 = 602;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 602;
    /** Exact native field hand_poses, native scalar motion_capture_ik/twoArmHandPose. */
    hand_poses: Ros1Motion_capture_ikTwoArmHandPose = new Ros1Motion_capture_ikTwoArmHandPose();
    /** Exact native field use_custom_ik_param, native scalar bool. */
    use_custom_ik_param: bool = false;
    /** Exact native field joint_angles_as_q0, native scalar bool. */
    joint_angles_as_q0: bool = false;
    /** Exact native field ik_param, native scalar motion_capture_ik/ikSolveParam. */
    ik_param: Ros1Motion_capture_ikIkSolveParam = new Ros1Motion_capture_ikIkSolveParam();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.hand_poses.wireSize();
            if(child < 0)
                return child;
            if(child > 602 - n)
                return -90;
            n += child;
            if(n > 602)
                return -90;
        }
        {
            if(1 > 602 - n)
                return -90;
            n += 1;
            if(n > 602)
                return -90;
        }
        {
            if(1 > 602 - n)
                return -90;
            n += 1;
            if(n > 602)
                return -90;
        }
        {
            const child = this.ik_param.wireSize();
            if(child < 0)
                return child;
            if(child > 602 - n)
                return -90;
            n += child;
            if(n > 602)
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
        this.hand_poses.writeControl(w);
        w.u8(this.use_custom_ik_param ? 1 : 0);
        w.u8(this.joint_angles_as_q0 ? 1 : 0);
        this.ik_param.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikTwoArmHandPoseCmd
    {
        const value = new Ros1Motion_capture_ikTwoArmHandPoseCmd();
        {
            const decoded = Ros1Motion_capture_ikTwoArmHandPose.readControl(r);
            value.hand_poses = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.use_custom_ik_param = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.joint_angles_as_q0 = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikIkSolveParam.readControl(r);
            value.ik_param = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikTwoArmHandPoseCmdCodec implements VendorCodec<Ros1Motion_capture_ikTwoArmHandPoseCmd>
{
    static readonly codecIdentity: string = 'UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc';
    static readonly maxWireBytes: i32 = 602;

    encodeChecked(value: Ros1Motion_capture_ikTwoArmHandPoseCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikTwoArmHandPoseCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikTwoArmHandPoseCmd>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikTwoArmHandPoseCmd>();
        if(bytes.length > 602)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 346)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikTwoArmHandPoseCmd.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikTwoArmHandPoseCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikTwoArmHandPoseCmd() : changetype<Ros1Motion_capture_ikTwoArmHandPoseCmd>(out.value);
    }
}

/** Complete original motion_capture_ik/twoArmHandPoseFree; spellings are published in generation proof. */
export class Ros1Motion_capture_ikTwoArmHandPoseFree
{
    static readonly maxWireBytes: i32 = 696;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 696;
    /** Exact native field header, native scalar std_msgs/Header. */
    header: Ros1Std_msgsHeader = new Ros1Std_msgsHeader();
    /** Exact native field left_pose, native scalar motion_capture_ik/armHandPoseFree. */
    left_pose: Ros1Motion_capture_ikArmHandPoseFree = new Ros1Motion_capture_ikArmHandPoseFree();
    /** Exact native field right_pose, native scalar motion_capture_ik/armHandPoseFree. */
    right_pose: Ros1Motion_capture_ikArmHandPoseFree = new Ros1Motion_capture_ikArmHandPoseFree();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 696 - n)
                return -90;
            n += child;
            if(n > 696)
                return -90;
        }
        {
            const child = this.left_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 696 - n)
                return -90;
            n += child;
            if(n > 696)
                return -90;
        }
        {
            const child = this.right_pose.wireSize();
            if(child < 0)
                return child;
            if(child > 696 - n)
                return -90;
            n += child;
            if(n > 696)
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
        this.header.writeControl(w);
        this.left_pose.writeControl(w);
        this.right_pose.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikTwoArmHandPoseFree
    {
        const value = new Ros1Motion_capture_ikTwoArmHandPoseFree();
        {
            const decoded = Ros1Std_msgsHeader.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikArmHandPoseFree.readControl(r);
            value.left_pose = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikArmHandPoseFree.readControl(r);
            value.right_pose = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikTwoArmHandPoseFreeCodec implements VendorCodec<Ros1Motion_capture_ikTwoArmHandPoseFree>
{
    static readonly codecIdentity: string = 'UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c';
    static readonly maxWireBytes: i32 = 696;

    encodeChecked(value: Ros1Motion_capture_ikTwoArmHandPoseFree): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikTwoArmHandPoseFree): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikTwoArmHandPoseFree>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikTwoArmHandPoseFree>();
        if(bytes.length > 696)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 184)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikTwoArmHandPoseFree.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikTwoArmHandPoseFree
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikTwoArmHandPoseFree() : changetype<Ros1Motion_capture_ikTwoArmHandPoseFree>(out.value);
    }
}

/** Complete original motion_capture_ik/twoArmHandPoseCmdFree; spellings are published in generation proof. */
export class Ros1Motion_capture_ikTwoArmHandPoseCmdFree
{
    static readonly maxWireBytes: i32 = 754;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 754;
    /** Exact native field hand_poses, native scalar motion_capture_ik/twoArmHandPoseFree. */
    hand_poses: Ros1Motion_capture_ikTwoArmHandPoseFree = new Ros1Motion_capture_ikTwoArmHandPoseFree();
    /** Exact native field use_custom_ik_param, native scalar bool. */
    use_custom_ik_param: bool = false;
    /** Exact native field joint_angles_as_q0, native scalar bool. */
    joint_angles_as_q0: bool = false;
    /** Exact native field ik_param, native scalar motion_capture_ik/ikSolveParam. */
    ik_param: Ros1Motion_capture_ikIkSolveParam = new Ros1Motion_capture_ikIkSolveParam();

    /** Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.hand_poses.wireSize();
            if(child < 0)
                return child;
            if(child > 754 - n)
                return -90;
            n += child;
            if(n > 754)
                return -90;
        }
        {
            if(1 > 754 - n)
                return -90;
            n += 1;
            if(n > 754)
                return -90;
        }
        {
            if(1 > 754 - n)
                return -90;
            n += 1;
            if(n > 754)
                return -90;
        }
        {
            const child = this.ik_param.wireSize();
            if(child < 0)
                return child;
            if(child > 754 - n)
                return -90;
            n += child;
            if(n > 754)
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
        this.hand_poses.writeControl(w);
        w.u8(this.use_custom_ik_param ? 1 : 0);
        w.u8(this.joint_angles_as_q0 ? 1 : 0);
        this.ik_param.writeControl(w);
    }

    /** Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros1Motion_capture_ikTwoArmHandPoseCmdFree
    {
        const value = new Ros1Motion_capture_ikTwoArmHandPoseCmdFree();
        {
            const decoded = Ros1Motion_capture_ikTwoArmHandPoseFree.readControl(r);
            value.hand_poses = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.use_custom_ik_param = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.joint_angles_as_q0 = decoded;
        }
        {
            const decoded = Ros1Motion_capture_ikIkSolveParam.readControl(r);
            value.ik_param = decoded;
        }
        return value;
    }
}

export class Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec implements VendorCodec<Ros1Motion_capture_ikTwoArmHandPoseCmdFree>
{
    static readonly codecIdentity: string = 'UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773';
    static readonly maxWireBytes: i32 = 754;

    encodeChecked(value: Ros1Motion_capture_ikTwoArmHandPoseCmdFree): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros1Motion_capture_ikTwoArmHandPoseCmdFree): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros1Motion_capture_ikTwoArmHandPoseCmdFree>
    {
        const out = new VendorDecoded<Ros1Motion_capture_ikTwoArmHandPoseCmdFree>();
        if(bytes.length > 754)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 242)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros1Motion_capture_ikTwoArmHandPoseCmdFree.readControl(reader);
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

    decode(bytes: Uint8Array): Ros1Motion_capture_ikTwoArmHandPoseCmdFree
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros1Motion_capture_ikTwoArmHandPoseCmdFree() : changetype<Ros1Motion_capture_ikTwoArmHandPoseCmdFree>(out.value);
    }
}
