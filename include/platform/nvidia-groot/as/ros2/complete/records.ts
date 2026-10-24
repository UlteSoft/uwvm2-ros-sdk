/** @brief Complete industrial canonical records. No I/O or authority. */
import {Codec, Reader, validUnicode, validUtf8} from "ros/as/codecs";

export class VendorEncoded
{
    constructor(public status: u32 = 0, public bytes: Uint8Array = new Uint8Array(0))
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

/** @brief One exact-size private linear buffer; finish refuses any unexpected extent. */
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

/** @brief Complete original uwvm_groot_bridge/msg/RGBFrame; spellings are published in generation proof. */
export class Ros2Uwvm_groot_bridgeMsgRGBFrame
{
    static readonly maxWireBytes: i32 = 860;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 860;
    /** @brief Exact native field key, native scalar string. */
    key: string = "";
    /** @brief Exact native field shape, native scalar uint32. */
    shape: Array<u32> = new Array<u32>();
    /** @brief Exact native field pixels, native scalar uint8. */
    pixels: Array<u8> = new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 5; ++i)
            this.shape.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.key) || this.key.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 64)
                return -22;
            if(4 + size > 860 - n)
                return -90;
            n += 4 + size;
            if(n > 860)
                return -90;
        }
        {
            if(this.shape.length != 5)
                return -22;
            for(let i = 0; i < this.shape.length; ++i)
            {
                if(4 > 860 - n)
                    return -90;
                n += 4;
                if(n > 860)
                    return -90;
            }
        }
        {
            if(this.pixels.length > 768)
                return -22;
            if(4 > 860 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pixels.length; ++i)
            {
                if(1 > 860 - n)
                    return -90;
                n += 1;
                if(n > 860)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.key);
        for(let i = 0; i < this.shape.length; ++i)
        {
            w.integer(<u64>this.shape[i], 4);
        }
        w.u32(<u32>this.pixels.length);
        for(let i = 0; i < this.pixels.length; ++i)
        {
            w.integer(<u64>this.pixels[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeMsgRGBFrame
    {
        const value = new Ros2Uwvm_groot_bridgeMsgRGBFrame();
        {
            const size = r.u32();
            if(!r.valid || size > 64)
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
        {
            const count: u32 = 5;
            if(!r.valid || count > 5)
            {
                r.valid = false;
                return value;
            }
            value.shape = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.shape.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 768)
            {
                r.valid = false;
                return value;
            }
            value.pixels = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.pixels.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeMsgRGBFrameCodec implements VendorCodec<Ros2Uwvm_groot_bridgeMsgRGBFrame>
{
    static readonly codecIdentity: string = "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364";
    static readonly maxWireBytes: i32 = 860;

    encodeChecked(value: Ros2Uwvm_groot_bridgeMsgRGBFrame): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeMsgRGBFrame): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeMsgRGBFrame>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeMsgRGBFrame>();
        if(bytes.length > 860)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeMsgRGBFrame.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeMsgRGBFrame
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeMsgRGBFrame() : changetype<Ros2Uwvm_groot_bridgeMsgRGBFrame>(out.value);
    }
}

/** @brief Complete original uwvm_groot_bridge/msg/FloatTensor; spellings are published in generation proof. */
export class Ros2Uwvm_groot_bridgeMsgFloatTensor
{
    static readonly maxWireBytes: i32 = 1364;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1364;
    /** @brief Exact native field key, native scalar string. */
    key: string = "";
    /** @brief Exact native field shape, native scalar uint32. */
    shape: Array<u32> = new Array<u32>();
    /** @brief Exact native field values, native scalar float32. */
    values: Array<f32> = new Array<f32>();

    constructor()
    {
        for(let i = 0; i < 3; ++i)
            this.shape.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.key) || this.key.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 64)
                return -22;
            if(4 + size > 1364 - n)
                return -90;
            n += 4 + size;
            if(n > 1364)
                return -90;
        }
        {
            if(this.shape.length != 3)
                return -22;
            for(let i = 0; i < this.shape.length; ++i)
            {
                if(4 > 1364 - n)
                    return -90;
                n += 4;
                if(n > 1364)
                    return -90;
            }
        }
        {
            if(this.values.length > 320)
                return -22;
            if(4 > 1364 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.values.length; ++i)
            {
                if(!isFinite(this.values[i]))
                    return -22;
                if(4 > 1364 - n)
                    return -90;
                n += 4;
                if(n > 1364)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.key);
        for(let i = 0; i < this.shape.length; ++i)
        {
            w.integer(<u64>this.shape[i], 4);
        }
        w.u32(<u32>this.values.length);
        for(let i = 0; i < this.values.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.values[i]), 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeMsgFloatTensor
    {
        const value = new Ros2Uwvm_groot_bridgeMsgFloatTensor();
        {
            const size = r.u32();
            if(!r.valid || size > 64)
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
        {
            const count: u32 = 3;
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.shape = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.shape.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 320)
            {
                r.valid = false;
                return value;
            }
            value.values = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.values.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeMsgFloatTensorCodec implements VendorCodec<Ros2Uwvm_groot_bridgeMsgFloatTensor>
{
    static readonly codecIdentity: string = "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae";
    static readonly maxWireBytes: i32 = 1364;

    encodeChecked(value: Ros2Uwvm_groot_bridgeMsgFloatTensor): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeMsgFloatTensor): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeMsgFloatTensor>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
        if(bytes.length > 1364)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeMsgFloatTensor.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeMsgFloatTensor
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeMsgFloatTensor() : changetype<Ros2Uwvm_groot_bridgeMsgFloatTensor>(out.value);
    }
}

/** @brief Complete original uwvm_groot_bridge/msg/TextSequence; spellings are published in generation proof. */
export class Ros2Uwvm_groot_bridgeMsgTextSequence
{
    static readonly maxWireBytes: i32 = 1120;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 1120;
    /** @brief Exact native field key, native scalar string. */
    key: string = "";
    /** @brief Exact native field shape, native scalar uint32. */
    shape: Array<u32> = new Array<u32>();
    /** @brief Exact native field texts, native scalar string. */
    texts: Array<string> = new Array<string>();

    constructor()
    {
        for(let i = 0; i < 2; ++i)
            this.shape.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.key) || this.key.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 64)
                return -22;
            if(4 + size > 1120 - n)
                return -90;
            n += 4 + size;
            if(n > 1120)
                return -90;
        }
        {
            if(this.shape.length != 2)
                return -22;
            for(let i = 0; i < this.shape.length; ++i)
            {
                if(4 > 1120 - n)
                    return -90;
                n += 4;
                if(n > 1120)
                    return -90;
            }
        }
        {
            if(this.texts.length > 4)
                return -22;
            if(4 > 1120 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.texts.length; ++i)
            {
                if(!validUnicode(this.texts[i]) || this.texts[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.texts[i]);
                if(size > 256)
                    return -22;
                if(4 + size > 1120 - n)
                    return -90;
                n += 4 + size;
                if(n > 1120)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.key);
        for(let i = 0; i < this.shape.length; ++i)
        {
            w.integer(<u64>this.shape[i], 4);
        }
        w.u32(<u32>this.texts.length);
        for(let i = 0; i < this.texts.length; ++i)
        {
            w.text(this.texts[i]);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeMsgTextSequence
    {
        const value = new Ros2Uwvm_groot_bridgeMsgTextSequence();
        {
            const size = r.u32();
            if(!r.valid || size > 64)
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
        {
            const count: u32 = 2;
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.shape = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.shape.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.texts = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
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
                value.texts.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeMsgTextSequenceCodec implements VendorCodec<Ros2Uwvm_groot_bridgeMsgTextSequence>
{
    static readonly codecIdentity: string = "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d";
    static readonly maxWireBytes: i32 = 1120;

    encodeChecked(value: Ros2Uwvm_groot_bridgeMsgTextSequence): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeMsgTextSequence): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeMsgTextSequence>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeMsgTextSequence>();
        if(bytes.length > 1120)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeMsgTextSequence.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeMsgTextSequence
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeMsgTextSequence() : changetype<Ros2Uwvm_groot_bridgeMsgTextSequence>(out.value);
    }
}

/** @brief Complete original uwvm_groot_bridge/srv/InferAction_Request; spellings are published in generation proof. */
export class Ros2Uwvm_groot_bridgeSrvInferAction_Request
{
    static readonly maxWireBytes: i32 = 10296;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10296;
    /** @brief Exact native field application_nonce, native scalar uint64. */
    application_nonce: u64 = 0;
    /** @brief Exact native field video, native scalar uwvm_groot_bridge/msg/RGBFrame. */
    video: Array<Ros2Uwvm_groot_bridgeMsgRGBFrame> = new Array<Ros2Uwvm_groot_bridgeMsgRGBFrame>();
    /** @brief Exact native field state, native scalar uwvm_groot_bridge/msg/FloatTensor. */
    state: Array<Ros2Uwvm_groot_bridgeMsgFloatTensor> = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
    /** @brief Exact native field language, native scalar uwvm_groot_bridge/msg/TextSequence. */
    language: Array<Ros2Uwvm_groot_bridgeMsgTextSequence> = new Array<Ros2Uwvm_groot_bridgeMsgTextSequence>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 10296 - n)
                return -90;
            n += 8;
            if(n > 10296)
                return -90;
        }
        {
            if(this.video.length > 3)
                return -22;
            if(4 > 10296 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.video.length; ++i)
            {
                const child = this.video[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10296 - n)
                    return -90;
                n += child;
                if(n > 10296)
                    return -90;
            }
        }
        {
            if(this.state.length > 4)
                return -22;
            if(4 > 10296 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.state.length; ++i)
            {
                const child = this.state[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10296 - n)
                    return -90;
                n += child;
                if(n > 10296)
                    return -90;
            }
        }
        {
            if(this.language.length > 2)
                return -22;
            if(4 > 10296 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.language.length; ++i)
            {
                const child = this.language[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10296 - n)
                    return -90;
                n += child;
                if(n > 10296)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.application_nonce, 8);
        w.u32(<u32>this.video.length);
        for(let i = 0; i < this.video.length; ++i)
        {
            this.video[i].writeControl(w);
        }
        w.u32(<u32>this.state.length);
        for(let i = 0; i < this.state.length; ++i)
        {
            this.state[i].writeControl(w);
        }
        w.u32(<u32>this.language.length);
        for(let i = 0; i < this.language.length; ++i)
        {
            this.language[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvInferAction_Request
    {
        const value = new Ros2Uwvm_groot_bridgeSrvInferAction_Request();
        {
            const decoded = <u64>r.integer(8);
            value.application_nonce = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.video = new Array<Ros2Uwvm_groot_bridgeMsgRGBFrame>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgRGBFrame.readControl(r);
                value.video.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.state = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor.readControl(r);
                value.state.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.language = new Array<Ros2Uwvm_groot_bridgeMsgTextSequence>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgTextSequence.readControl(r);
                value.language.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvInferAction_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6";
    static readonly maxWireBytes: i32 = 10296;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvInferAction_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvInferAction_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferAction_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferAction_Request>();
        if(bytes.length > 10296)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvInferAction_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvInferAction_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvInferAction_Request() : changetype<Ros2Uwvm_groot_bridgeSrvInferAction_Request>(out.value);
    }
}

/** @brief Complete original uwvm_groot_bridge/srv/InferAction_Response; spellings are published in generation proof. */
export class Ros2Uwvm_groot_bridgeSrvInferAction_Response
{
    static readonly maxWireBytes: i32 = 10929;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10929;
    /** @brief Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** @brief Exact native field application_nonce, native scalar uint64. */
    application_nonce: u64 = 0;
    /** @brief Exact native field action, native scalar uwvm_groot_bridge/msg/FloatTensor. */
    action: Array<Ros2Uwvm_groot_bridgeMsgFloatTensor> = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
    /** @brief Exact native field info_is_empty, native scalar bool. */
    info_is_empty: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 10929 - n)
                return -90;
            n += 4;
            if(n > 10929)
                return -90;
        }
        {
            if(8 > 10929 - n)
                return -90;
            n += 8;
            if(n > 10929)
                return -90;
        }
        {
            if(this.action.length > 8)
                return -22;
            if(4 > 10929 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.action.length; ++i)
            {
                const child = this.action[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10929 - n)
                    return -90;
                n += child;
                if(n > 10929)
                    return -90;
            }
        }
        {
            if(1 > 10929 - n)
                return -90;
            n += 1;
            if(n > 10929)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.integer(<u64>this.application_nonce, 8);
        w.u32(<u32>this.action.length);
        for(let i = 0; i < this.action.length; ++i)
        {
            this.action[i].writeControl(w);
        }
        w.u8(this.info_is_empty ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvInferAction_Response
    {
        const value = new Ros2Uwvm_groot_bridgeSrvInferAction_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.application_nonce = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.action = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor.readControl(r);
                value.action.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.info_is_empty = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvInferAction_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce";
    static readonly maxWireBytes: i32 = 10929;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvInferAction_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvInferAction_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferAction_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferAction_Response>();
        if(bytes.length > 10929)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvInferAction_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvInferAction_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvInferAction_Response() : changetype<Ros2Uwvm_groot_bridgeSrvInferAction_Response>(out.value);
    }
}

/** @brief Complete original uwvm_groot_bridge/msg/RGBDescriptor; spellings are published in generation proof. */
export class Ros2Uwvm_groot_bridgeMsgRGBDescriptor
{
    static readonly maxWireBytes: i32 = 88;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 88;
    /** @brief Exact native field key, native scalar string. */
    key: string = "";
    /** @brief Exact native field shape, native scalar uint32. */
    shape: Array<u32> = new Array<u32>();

    constructor()
    {
        for(let i = 0; i < 5; ++i)
            this.shape.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!validUnicode(this.key) || this.key.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 64)
                return -22;
            if(4 + size > 88 - n)
                return -90;
            n += 4 + size;
            if(n > 88)
                return -90;
        }
        {
            if(this.shape.length != 5)
                return -22;
            for(let i = 0; i < this.shape.length; ++i)
            {
                if(4 > 88 - n)
                    return -90;
                n += 4;
                if(n > 88)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.text(this.key);
        for(let i = 0; i < this.shape.length; ++i)
        {
            w.integer(<u64>this.shape[i], 4);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeMsgRGBDescriptor
    {
        const value = new Ros2Uwvm_groot_bridgeMsgRGBDescriptor();
        {
            const size = r.u32();
            if(!r.valid || size > 64)
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
        {
            const count: u32 = 5;
            if(!r.valid || count > 5)
            {
                r.valid = false;
                return value;
            }
            value.shape = new Array<u32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u32>r.integer(4);
                value.shape.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec implements VendorCodec<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>
{
    static readonly codecIdentity: string = "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40";
    static readonly maxWireBytes: i32 = 88;

    encodeChecked(value: Ros2Uwvm_groot_bridgeMsgRGBDescriptor): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeMsgRGBDescriptor): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>();
        if(bytes.length > 88)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeMsgRGBDescriptor.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeMsgRGBDescriptor
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeMsgRGBDescriptor() : changetype<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/BeginObservation_Request; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
{
    static readonly maxWireBytes: i32 = 276;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 276;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;
    /** @brief Exact native field video, native scalar uwvm_groot_bridge/msg/RGBDescriptor. */
    video: Array<Ros2Uwvm_groot_bridgeMsgRGBDescriptor> = new Array<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 276 - n)
                return -90;
            n += 8;
            if(n > 276)
                return -90;
        }
        {
            if(this.video.length > 3)
                return -22;
            if(4 > 276 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.video.length; ++i)
            {
                const child = this.video[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 276 - n)
                    return -90;
                n += child;
                if(n > 276)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.observation_nonce, 8);
        w.u32(<u32>this.video.length);
        for(let i = 0; i < this.video.length; ++i)
        {
            this.video[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
    {
        const value = new Ros2Uwvm_groot_bridgeSrvBeginObservation_Request();
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 3)
            {
                r.valid = false;
                return value;
            }
            value.video = new Array<Ros2Uwvm_groot_bridgeMsgRGBDescriptor>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgRGBDescriptor.readControl(r);
                value.video.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2";
    static readonly maxWireBytes: i32 = 276;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>();
        if(bytes.length > 276)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 12)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvBeginObservation_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvBeginObservation_Request()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvBeginObservation_Request>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/BeginObservation_Response; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** @brief Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.integer(<u64>this.observation_nonce, 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
    {
        const value = new Ros2Uwvm_groot_bridgeSrvBeginObservation_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049";
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>();
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
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvBeginObservation_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvBeginObservation_Response()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvBeginObservation_Response>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/WriteRGBChunk_Request; spellings are published in generation proof.
 */
export class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
{
    static readonly maxWireBytes: i32 = 852;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 852;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;
    /** @brief Exact native field key, native scalar string. */
    key: string = "";
    /** @brief Exact native field offset, native scalar uint32. */
    offset: u32 = 0;
    /** @brief Exact native field pixels, native scalar uint8. */
    pixels: Array<u8> = new Array<u8>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 852 - n)
                return -90;
            n += 8;
            if(n > 852)
                return -90;
        }
        {
            if(!validUnicode(this.key) || this.key.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.key);
            if(size > 64)
                return -22;
            if(4 + size > 852 - n)
                return -90;
            n += 4 + size;
            if(n > 852)
                return -90;
        }
        {
            if(4 > 852 - n)
                return -90;
            n += 4;
            if(n > 852)
                return -90;
        }
        {
            if(this.pixels.length > 768)
                return -22;
            if(4 > 852 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.pixels.length; ++i)
            {
                if(1 > 852 - n)
                    return -90;
                n += 1;
                if(n > 852)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.observation_nonce, 8);
        w.text(this.key);
        w.integer(<u64>this.offset, 4);
        w.u32(<u32>this.pixels.length);
        for(let i = 0; i < this.pixels.length; ++i)
        {
            w.integer(<u64>this.pixels[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
    {
        const value = new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request();
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        {
            const size = r.u32();
            if(!r.valid || size > 64)
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
        {
            const decoded = <u32>r.integer(4);
            value.offset = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 768)
            {
                r.valid = false;
                return value;
            }
            value.pixels = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.pixels.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c";
    static readonly maxWireBytes: i32 = 852;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>();
        if(bytes.length > 852)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request() : changetype<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/WriteRGBChunk_Response; spellings are published in generation proof.
 */
export class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;
    /** @brief Exact native field accepted_bytes, native scalar uint32. */
    accepted_bytes: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        {
            if(8 > 16 - n)
                return -90;
            n += 8;
            if(n > 16)
                return -90;
        }
        {
            if(4 > 16 - n)
                return -90;
            n += 4;
            if(n > 16)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.integer(<u64>this.observation_nonce, 8);
        w.integer(<u64>this.accepted_bytes, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
    {
        const value = new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.accepted_bytes = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba";
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>();
        if(bytes.length > 16)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 16)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/ReleaseObservation_Request; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.observation_nonce, 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
    {
        const value = new Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request();
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>();
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
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/ReleaseObservation_Response; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
{
    static readonly maxWireBytes: i32 = 12;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 12;
    /** @brief Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 12 - n)
                return -90;
            n += 4;
            if(n > 12)
                return -90;
        }
        {
            if(8 > 12 - n)
                return -90;
            n += 8;
            if(n > 12)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.integer(<u64>this.observation_nonce, 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
    {
        const value = new Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69";
    static readonly maxWireBytes: i32 = 12;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>();
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
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/InferUploadedAction_Request; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
{
    static readonly maxWireBytes: i32 = 7720;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 7720;
    /** @brief Exact native field application_nonce, native scalar uint64. */
    application_nonce: u64 = 0;
    /** @brief Exact native field observation_nonce, native scalar uint64. */
    observation_nonce: u64 = 0;
    /** @brief Exact native field state, native scalar uwvm_groot_bridge/msg/FloatTensor. */
    state: Array<Ros2Uwvm_groot_bridgeMsgFloatTensor> = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
    /** @brief Exact native field language, native scalar uwvm_groot_bridge/msg/TextSequence. */
    language: Array<Ros2Uwvm_groot_bridgeMsgTextSequence> = new Array<Ros2Uwvm_groot_bridgeMsgTextSequence>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 7720 - n)
                return -90;
            n += 8;
            if(n > 7720)
                return -90;
        }
        {
            if(8 > 7720 - n)
                return -90;
            n += 8;
            if(n > 7720)
                return -90;
        }
        {
            if(this.state.length > 4)
                return -22;
            if(4 > 7720 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.state.length; ++i)
            {
                const child = this.state[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 7720 - n)
                    return -90;
                n += child;
                if(n > 7720)
                    return -90;
            }
        }
        {
            if(this.language.length > 2)
                return -22;
            if(4 > 7720 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.language.length; ++i)
            {
                const child = this.language[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 7720 - n)
                    return -90;
                n += child;
                if(n > 7720)
                    return -90;
            }
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.application_nonce, 8);
        w.integer(<u64>this.observation_nonce, 8);
        w.u32(<u32>this.state.length);
        for(let i = 0; i < this.state.length; ++i)
        {
            this.state[i].writeControl(w);
        }
        w.u32(<u32>this.language.length);
        for(let i = 0; i < this.language.length; ++i)
        {
            this.language[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
    {
        const value = new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request();
        {
            const decoded = <u64>r.integer(8);
            value.application_nonce = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.observation_nonce = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.state = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor.readControl(r);
                value.state.push(decoded);
            }
        }
        {
            const count = r.u32();
            if(!r.valid || count > 2)
            {
                r.valid = false;
                return value;
            }
            value.language = new Array<Ros2Uwvm_groot_bridgeMsgTextSequence>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgTextSequence.readControl(r);
                value.language.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d";
    static readonly maxWireBytes: i32 = 7720;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>();
        if(bytes.length > 7720)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request>(out.value);
    }
}

/**
 * @brief Complete original uwvm_groot_bridge/srv/InferUploadedAction_Response; spellings are published in generation
 * proof.
 */
export class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
{
    static readonly maxWireBytes: i32 = 10929;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 10929;
    /** @brief Exact native field status, native scalar uint32. */
    status: u32 = 0;
    /** @brief Exact native field application_nonce, native scalar uint64. */
    application_nonce: u64 = 0;
    /** @brief Exact native field action, native scalar uwvm_groot_bridge/msg/FloatTensor. */
    action: Array<Ros2Uwvm_groot_bridgeMsgFloatTensor> = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
    /** @brief Exact native field info_is_empty, native scalar bool. */
    info_is_empty: bool = false;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 10929 - n)
                return -90;
            n += 4;
            if(n > 10929)
                return -90;
        }
        {
            if(8 > 10929 - n)
                return -90;
            n += 8;
            if(n > 10929)
                return -90;
        }
        {
            if(this.action.length > 8)
                return -22;
            if(4 > 10929 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.action.length; ++i)
            {
                const child = this.action[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 10929 - n)
                    return -90;
                n += child;
                if(n > 10929)
                    return -90;
            }
        }
        {
            if(1 > 10929 - n)
                return -90;
            n += 1;
            if(n > 10929)
                return -90;
        }
        return n;
    }

    statusValue(): u32
    {
        const n = this.wireSize();
        return n < 0 ? <u32>(-n) : 0;
    }

    validValue(): bool
    {
        return this.statusValue() == 0;
    }

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.status, 4);
        w.integer(<u64>this.application_nonce, 8);
        w.u32(<u32>this.action.length);
        for(let i = 0; i < this.action.length; ++i)
        {
            this.action[i].writeControl(w);
        }
        w.u8(this.info_is_empty ? 1 : 0);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
    {
        const value = new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response();
        {
            const decoded = <u32>r.integer(4);
            value.status = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.application_nonce = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 8)
            {
                r.valid = false;
                return value;
            }
            value.action = new Array<Ros2Uwvm_groot_bridgeMsgFloatTensor>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2Uwvm_groot_bridgeMsgFloatTensor.readControl(r);
                value.action.push(decoded);
            }
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.info_is_empty = decoded;
        }
        return value;
    }
}

export class Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec implements VendorCodec<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e";
    static readonly maxWireBytes: i32 = 10929;

    encodeChecked(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>(-n));
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>
    {
        const out = new VendorDecoded<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>();
        if(bytes.length > 10929)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 17)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
                                  : changetype<Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response>(out.value);
    }
}
