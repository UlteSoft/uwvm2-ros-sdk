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

/** @brief Complete original builtin_interfaces/msg/Time; spellings are published in generation proof. */
export class Ros2Builtin_interfacesMsgTime
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field sec, native scalar int32. */
    sec: i32 = 0;
    /** @brief Exact native field nanosec, native scalar uint32. */
    nanosec: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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
        if(this.nanosec >= 1000000000)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.sec, 4);
        w.integer(<u64>this.nanosec, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Builtin_interfacesMsgTime
    {
        const value = new Ros2Builtin_interfacesMsgTime();
        {
            const decoded = <i32>r.integer(4);
            value.sec = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.nanosec = decoded;
        }
        if(value.nanosec >= 1000000000)
            r.valid = false;
        return value;
    }
}

export class Ros2Builtin_interfacesMsgTimeCodec implements VendorCodec<Ros2Builtin_interfacesMsgTime>
{
    static readonly codecIdentity: string = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2Builtin_interfacesMsgTime): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Builtin_interfacesMsgTime): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Builtin_interfacesMsgTime>
    {
        const out = new VendorDecoded<Ros2Builtin_interfacesMsgTime>();
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
        const reader = new Reader(bytes), value = Ros2Builtin_interfacesMsgTime.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Builtin_interfacesMsgTime
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Builtin_interfacesMsgTime() : changetype<Ros2Builtin_interfacesMsgTime>(out.value);
    }
}

/** @brief Complete original drdds/msg/MetaType; spellings are published in generation proof. */
export class Ros2DrddsMsgMetaType
{
    static readonly maxWireBytes: i32 = 16;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 16;
    /** @brief Exact native field frame_id, native scalar uint64. */
    frame_id: u64 = 0;
    /** @brief Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(8 > 16 - n)
                return -90;
            n += 8;
            if(n > 16)
                return -90;
        }
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 16 - n)
                return -90;
            n += child;
            if(n > 16)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.frame_id, 8);
        this.stamp.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgMetaType
    {
        const value = new Ros2DrddsMsgMetaType();
        {
            const decoded = <u64>r.integer(8);
            value.frame_id = decoded;
        }
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamp = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgMetaTypeCodec implements VendorCodec<Ros2DrddsMsgMetaType>
{
    static readonly codecIdentity: string = "UWVMROS1_589934883c499944b42386d9aa89152e69c3bb41dcf26d0246cacdbb1b50162f";
    static readonly maxWireBytes: i32 = 16;

    encodeChecked(value: Ros2DrddsMsgMetaType): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgMetaType): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgMetaType>
    {
        const out = new VendorDecoded<Ros2DrddsMsgMetaType>();
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
        const reader = new Reader(bytes), value = Ros2DrddsMsgMetaType.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgMetaType
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgMetaType() : changetype<Ros2DrddsMsgMetaType>(out.value);
    }
}

/** @brief Complete original drdds/msg/BatteryDataValue; spellings are published in generation proof. */
export class Ros2DrddsMsgBatteryDataValue
{
    static readonly maxWireBytes: i32 = 123;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 123;
    /** @brief Exact native field voltage, native scalar uint16. */
    voltage: u16 = 0;
    /** @brief Exact native field current, native scalar int16. */
    current: i16 = 0;
    /** @brief Exact native field remaining_capacity, native scalar uint16. */
    remaining_capacity: u16 = 0;
    /** @brief Exact native field nominal_capacity, native scalar uint16. */
    nominal_capacity: u16 = 0;
    /** @brief Exact native field cycles, native scalar uint16. */
    cycles: u16 = 0;
    /** @brief Exact native field production_date, native scalar uint16. */
    production_date: u16 = 0;
    /** @brief Exact native field balanced_low, native scalar uint16. */
    balanced_low: u16 = 0;
    /** @brief Exact native field balanced_high, native scalar uint16. */
    balanced_high: u16 = 0;
    /** @brief Exact native field protected_state, native scalar uint16. */
    protected_state: u16 = 0;
    /** @brief Exact native field software_version, native scalar uint8. */
    software_version: u8 = 0;
    /** @brief Exact native field battery_level, native scalar uint8. */
    battery_level: u8 = 0;
    /** @brief Exact native field mos_state, native scalar uint8. */
    mos_state: u8 = 0;
    /** @brief Exact native field battery_quantity, native scalar uint8. */
    battery_quantity: u8 = 0;
    /** @brief Exact native field battery_ntc, native scalar uint8. */
    battery_ntc: u8 = 0;
    /** @brief Exact native field battery_temperature, native scalar float32. */
    battery_temperature: Array < f32 >= new Array<f32>();
    /** @brief Exact native field battery_serialnum, native scalar char. */
    battery_serialnum: Array < u8 >= new Array<u8>();

    constructor()
    {
        for(let i = 0; i < 32; ++i)
            this.battery_serialnum.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(2 > 123 - n)
                return -90;
            n += 2;
            if(n > 123)
                return -90;
        }
        {
            if(1 > 123 - n)
                return -90;
            n += 1;
            if(n > 123)
                return -90;
        }
        {
            if(1 > 123 - n)
                return -90;
            n += 1;
            if(n > 123)
                return -90;
        }
        {
            if(1 > 123 - n)
                return -90;
            n += 1;
            if(n > 123)
                return -90;
        }
        {
            if(1 > 123 - n)
                return -90;
            n += 1;
            if(n > 123)
                return -90;
        }
        {
            if(1 > 123 - n)
                return -90;
            n += 1;
            if(n > 123)
                return -90;
        }
        {
            if(this.battery_temperature.length > 16)
                return -22;
            if(4 > 123 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.battery_temperature.length; ++i)
            {
                if(!isFinite(this.battery_temperature[i]))
                    return -22;
                if(4 > 123 - n)
                    return -90;
                n += 4;
                if(n > 123)
                    return -90;
            }
        }
        {
            if(this.battery_serialnum.length != 32)
                return -22;
            for(let i = 0; i < this.battery_serialnum.length; ++i)
            {
                if(1 > 123 - n)
                    return -90;
                n += 1;
                if(n > 123)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.voltage, 2);
        w.integer(<u64>this.current, 2);
        w.integer(<u64>this.remaining_capacity, 2);
        w.integer(<u64>this.nominal_capacity, 2);
        w.integer(<u64>this.cycles, 2);
        w.integer(<u64>this.production_date, 2);
        w.integer(<u64>this.balanced_low, 2);
        w.integer(<u64>this.balanced_high, 2);
        w.integer(<u64>this.protected_state, 2);
        w.integer(<u64>this.software_version, 1);
        w.integer(<u64>this.battery_level, 1);
        w.integer(<u64>this.mos_state, 1);
        w.integer(<u64>this.battery_quantity, 1);
        w.integer(<u64>this.battery_ntc, 1);
        w.u32(<u32>this.battery_temperature.length);
        for(let i = 0; i < this.battery_temperature.length; ++i)
        {
            w.integer(<u64>reinterpret<u32>(this.battery_temperature[i]), 4);
        }
        for(let i = 0; i < this.battery_serialnum.length; ++i)
        {
            w.integer(<u64>this.battery_serialnum[i], 1);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgBatteryDataValue
    {
        const value = new Ros2DrddsMsgBatteryDataValue();
        {
            const decoded = <u16>r.integer(2);
            value.voltage = decoded;
        }
        {
            const decoded = <i16>r.integer(2);
            value.current = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.remaining_capacity = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.nominal_capacity = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.cycles = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.production_date = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.balanced_low = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.balanced_high = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.protected_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.software_version = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.battery_level = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.mos_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.battery_quantity = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.battery_ntc = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.battery_temperature = new Array<f32>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = reinterpret<f32>(<u32>r.integer(4));
                if(!isFinite(decoded))
                    r.valid = false;
                value.battery_temperature.push(decoded);
            }
        }
        {
            const count: u32 = 32;
            if(!r.valid || count > 32)
            {
                r.valid = false;
                return value;
            }
            value.battery_serialnum = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.battery_serialnum.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2DrddsMsgBatteryDataValueCodec implements VendorCodec<Ros2DrddsMsgBatteryDataValue>
{
    static readonly codecIdentity: string = "UWVMROS1_076c053d37d08f14e5a1a886e696e6a0f7fe3a7bea54b38206cdcba3a23313bc";
    static readonly maxWireBytes: i32 = 123;

    encodeChecked(value: Ros2DrddsMsgBatteryDataValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgBatteryDataValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgBatteryDataValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgBatteryDataValue>();
        if(bytes.length > 123)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 59)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgBatteryDataValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgBatteryDataValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgBatteryDataValue() : changetype<Ros2DrddsMsgBatteryDataValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/BatteryData; spellings are published in generation proof. */
export class Ros2DrddsMsgBatteryData
{
    static readonly maxWireBytes: i32 = 512;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 512;
    /** @brief Exact native field header, native scalar drdds/msg/MetaType. */
    header: Ros2DrddsMsgMetaType = new Ros2DrddsMsgMetaType();
    /** @brief Exact native field data, native scalar drdds/msg/BatteryDataValue. */
    data: Array < Ros2DrddsMsgBatteryDataValue >= new Array<Ros2DrddsMsgBatteryDataValue>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 512 - n)
                return -90;
            n += child;
            if(n > 512)
                return -90;
        }
        {
            if(this.data.length > 4)
                return -22;
            if(4 > 512 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.data.length; ++i)
            {
                const child = this.data[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 512 - n)
                    return -90;
                n += child;
                if(n > 512)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.u32(<u32>this.data.length);
        for(let i = 0; i < this.data.length; ++i)
        {
            this.data[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgBatteryData
    {
        const value = new Ros2DrddsMsgBatteryData();
        {
            const decoded = Ros2DrddsMsgMetaType.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.data = new Array<Ros2DrddsMsgBatteryDataValue>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2DrddsMsgBatteryDataValue.readControl(r);
                value.data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2DrddsMsgBatteryDataCodec implements VendorCodec<Ros2DrddsMsgBatteryData>
{
    static readonly codecIdentity: string = "UWVMROS1_8ab951a101e2e9522c39bcbb7fabea8966e78ea8141cb568e0aa1ac0c89d692e";
    static readonly maxWireBytes: i32 = 512;

    encodeChecked(value: Ros2DrddsMsgBatteryData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgBatteryData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgBatteryData>
    {
        const out = new VendorDecoded<Ros2DrddsMsgBatteryData>();
        if(bytes.length > 512)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 20)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgBatteryData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgBatteryData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgBatteryData() : changetype<Ros2DrddsMsgBatteryData>(out.value);
    }
}

/** @brief Complete original drdds/msg/GamepadData; spellings are published in generation proof. */
export class Ros2DrddsMsgGamepadData
{
    static readonly maxWireBytes: i32 = 34;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 34;
    /** @brief Exact native field header, native scalar drdds/msg/MetaType. */
    header: Ros2DrddsMsgMetaType = new Ros2DrddsMsgMetaType();
    /** @brief Exact native field left_axis_x, native scalar float32. */
    left_axis_x: f32 = 0;
    /** @brief Exact native field left_axis_y, native scalar float32. */
    left_axis_y: f32 = 0;
    /** @brief Exact native field right_axis_x, native scalar float32. */
    right_axis_x: f32 = 0;
    /** @brief Exact native field right_axis_y, native scalar float32. */
    right_axis_y: f32 = 0;
    /** @brief Exact native field buttons, native scalar uint16. */
    buttons: u16 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 34 - n)
                return -90;
            n += child;
            if(n > 34)
                return -90;
        }
        {
            if(!isFinite(this.left_axis_x))
                return -22;
            if(4 > 34 - n)
                return -90;
            n += 4;
            if(n > 34)
                return -90;
        }
        {
            if(!isFinite(this.left_axis_y))
                return -22;
            if(4 > 34 - n)
                return -90;
            n += 4;
            if(n > 34)
                return -90;
        }
        {
            if(!isFinite(this.right_axis_x))
                return -22;
            if(4 > 34 - n)
                return -90;
            n += 4;
            if(n > 34)
                return -90;
        }
        {
            if(!isFinite(this.right_axis_y))
                return -22;
            if(4 > 34 - n)
                return -90;
            n += 4;
            if(n > 34)
                return -90;
        }
        {
            if(2 > 34 - n)
                return -90;
            n += 2;
            if(n > 34)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.integer(<u64>reinterpret<u32>(this.left_axis_x), 4);
        w.integer(<u64>reinterpret<u32>(this.left_axis_y), 4);
        w.integer(<u64>reinterpret<u32>(this.right_axis_x), 4);
        w.integer(<u64>reinterpret<u32>(this.right_axis_y), 4);
        w.integer(<u64>this.buttons, 2);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgGamepadData
    {
        const value = new Ros2DrddsMsgGamepadData();
        {
            const decoded = Ros2DrddsMsgMetaType.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.left_axis_x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.left_axis_y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.right_axis_x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.right_axis_y = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.buttons = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgGamepadDataCodec implements VendorCodec<Ros2DrddsMsgGamepadData>
{
    static readonly codecIdentity: string = "UWVMROS1_14c915cd4dc71671a25bdc811b65f0fc26aeb415e234205d5d53e53dfd3c6978";
    static readonly maxWireBytes: i32 = 34;

    encodeChecked(value: Ros2DrddsMsgGamepadData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgGamepadData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgGamepadData>
    {
        const out = new VendorDecoded<Ros2DrddsMsgGamepadData>();
        if(bytes.length > 34)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 34)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgGamepadData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgGamepadData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgGamepadData() : changetype<Ros2DrddsMsgGamepadData>(out.value);
    }
}

/** @brief Complete original drdds/msg/ImuDataValue; spellings are published in generation proof. */
export class Ros2DrddsMsgImuDataValue
{
    static readonly maxWireBytes: i32 = 36;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 36;
    /** @brief Exact native field roll, native scalar float32. */
    roll: f32 = 0;
    /** @brief Exact native field pitch, native scalar float32. */
    pitch: f32 = 0;
    /** @brief Exact native field yaw, native scalar float32. */
    yaw: f32 = 0;
    /** @brief Exact native field omega_x, native scalar float32. */
    omega_x: f32 = 0;
    /** @brief Exact native field omega_y, native scalar float32. */
    omega_y: f32 = 0;
    /** @brief Exact native field omega_z, native scalar float32. */
    omega_z: f32 = 0;
    /** @brief Exact native field acc_x, native scalar float32. */
    acc_x: f32 = 0;
    /** @brief Exact native field acc_y, native scalar float32. */
    acc_y: f32 = 0;
    /** @brief Exact native field acc_z, native scalar float32. */
    acc_z: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.roll))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.pitch))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.omega_x))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.omega_y))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.omega_z))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.acc_x))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.acc_y))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
                return -90;
        }
        {
            if(!isFinite(this.acc_z))
                return -22;
            if(4 > 36 - n)
                return -90;
            n += 4;
            if(n > 36)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.roll), 4);
        w.integer(<u64>reinterpret<u32>(this.pitch), 4);
        w.integer(<u64>reinterpret<u32>(this.yaw), 4);
        w.integer(<u64>reinterpret<u32>(this.omega_x), 4);
        w.integer(<u64>reinterpret<u32>(this.omega_y), 4);
        w.integer(<u64>reinterpret<u32>(this.omega_z), 4);
        w.integer(<u64>reinterpret<u32>(this.acc_x), 4);
        w.integer(<u64>reinterpret<u32>(this.acc_y), 4);
        w.integer(<u64>reinterpret<u32>(this.acc_z), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgImuDataValue
    {
        const value = new Ros2DrddsMsgImuDataValue();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.roll = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.pitch = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.omega_x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.omega_y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.omega_z = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc_x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc_y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.acc_z = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgImuDataValueCodec implements VendorCodec<Ros2DrddsMsgImuDataValue>
{
    static readonly codecIdentity: string = "UWVMROS1_c857b56c129bf59c4c6d6e1ea61b4f46e01f6a938b7eb55826c52f0b1f18e859";
    static readonly maxWireBytes: i32 = 36;

    encodeChecked(value: Ros2DrddsMsgImuDataValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgImuDataValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgImuDataValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgImuDataValue>();
        if(bytes.length > 36)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 36)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgImuDataValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgImuDataValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgImuDataValue() : changetype<Ros2DrddsMsgImuDataValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/ImuData; spellings are published in generation proof. */
export class Ros2DrddsMsgImuData
{
    static readonly maxWireBytes: i32 = 52;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 52;
    /** @brief Exact native field header, native scalar drdds/msg/MetaType. */
    header: Ros2DrddsMsgMetaType = new Ros2DrddsMsgMetaType();
    /** @brief Exact native field data, native scalar drdds/msg/ImuDataValue. */
    data: Ros2DrddsMsgImuDataValue = new Ros2DrddsMsgImuDataValue();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 52 - n)
                return -90;
            n += child;
            if(n > 52)
                return -90;
        }
        {
            const child = this.data.wireSize();
            if(child < 0)
                return child;
            if(child > 52 - n)
                return -90;
            n += child;
            if(n > 52)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        this.data.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgImuData
    {
        const value = new Ros2DrddsMsgImuData();
        {
            const decoded = Ros2DrddsMsgMetaType.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2DrddsMsgImuDataValue.readControl(r);
            value.data = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgImuDataCodec implements VendorCodec<Ros2DrddsMsgImuData>
{
    static readonly codecIdentity: string = "UWVMROS1_c98e1cc04d46c99666aea581a36b338bdd91561f843dc4cdfcd86a48e6cb989c";
    static readonly maxWireBytes: i32 = 52;

    encodeChecked(value: Ros2DrddsMsgImuData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgImuData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgImuData>
    {
        const out = new VendorDecoded<Ros2DrddsMsgImuData>();
        if(bytes.length > 52)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 52)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgImuData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgImuData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgImuData() : changetype<Ros2DrddsMsgImuData>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointCmdValue; spellings are published in generation proof. */
export class Ros2DrddsMsgJointCmdValue
{
    static readonly maxWireBytes: i32 = 284;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 284;
    /** @brief Exact native field name, native scalar char. */
    name: Array < u8 >= new Array<u8>();
    /** @brief Exact native field data_id, native scalar uint16. */
    data_id: u16 = 0;
    /** @brief Exact native field control_word, native scalar uint16. */
    control_word: u16 = 0;
    /** @brief Exact native field position, native scalar float32. */
    position: f32 = 0;
    /** @brief Exact native field torque, native scalar float32. */
    torque: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    velocity: f32 = 0;
    /** @brief Exact native field kp, native scalar float32. */
    kp: f32 = 0;
    /** @brief Exact native field kd, native scalar float32. */
    kd: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.name.length > 256)
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(1 > 284 - n)
                    return -90;
                n += 1;
                if(n > 284)
                    return -90;
            }
        }
        {
            if(2 > 284 - n)
                return -90;
            n += 2;
            if(n > 284)
                return -90;
        }
        {
            if(2 > 284 - n)
                return -90;
            n += 2;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.torque))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.kp))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.kd))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.name.length);
        for(let i = 0; i < this.name.length; ++i)
        {
            w.integer(<u64>this.name[i], 1);
        }
        w.integer(<u64>this.data_id, 2);
        w.integer(<u64>this.control_word, 2);
        w.integer(<u64>reinterpret<u32>(this.position), 4);
        w.integer(<u64>reinterpret<u32>(this.torque), 4);
        w.integer(<u64>reinterpret<u32>(this.velocity), 4);
        w.integer(<u64>reinterpret<u32>(this.kp), 4);
        w.integer(<u64>reinterpret<u32>(this.kd), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointCmdValue
    {
        const value = new Ros2DrddsMsgJointCmdValue();
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.name.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.data_id = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.control_word = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.position = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.torque = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.kp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.kd = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgJointCmdValueCodec implements VendorCodec<Ros2DrddsMsgJointCmdValue>
{
    static readonly codecIdentity: string = "UWVMROS1_f685f314bb39c4543735ba73d92655c4cace1d1162a9c699275b3937460738de";
    static readonly maxWireBytes: i32 = 284;

    encodeChecked(value: Ros2DrddsMsgJointCmdValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointCmdValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointCmdValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointCmdValue>();
        if(bytes.length > 284)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointCmdValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointCmdValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointCmdValue() : changetype<Ros2DrddsMsgJointCmdValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointData; spellings are published in generation proof. */
export class Ros2DrddsMsgJointData
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** @brief Exact native field name, native scalar char. */
    name: Array < u8 >= new Array<u8>();
    /** @brief Exact native field data_id, native scalar uint16. */
    data_id: u16 = 0;
    /** @brief Exact native field status_word, native scalar uint16. */
    status_word: u16 = 0;
    /** @brief Exact native field position, native scalar float32. */
    position: f32 = 0;
    /** @brief Exact native field torque, native scalar float32. */
    torque: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    velocity: f32 = 0;
    /** @brief Exact native field motion_temp, native scalar float32. */
    motion_temp: f32 = 0;
    /** @brief Exact native field driver_temp, native scalar float32. */
    driver_temp: f32 = 0;

    constructor()
    {
        for(let i = 0; i < 4; ++i)
            this.name.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.name.length != 4)
                return -22;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(1 > 28 - n)
                    return -90;
                n += 1;
                if(n > 28)
                    return -90;
            }
        }
        {
            if(2 > 28 - n)
                return -90;
            n += 2;
            if(n > 28)
                return -90;
        }
        {
            if(2 > 28 - n)
                return -90;
            n += 2;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.torque))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.motion_temp))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.driver_temp))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.name.length; ++i)
        {
            w.integer(<u64>this.name[i], 1);
        }
        w.integer(<u64>this.data_id, 2);
        w.integer(<u64>this.status_word, 2);
        w.integer(<u64>reinterpret<u32>(this.position), 4);
        w.integer(<u64>reinterpret<u32>(this.torque), 4);
        w.integer(<u64>reinterpret<u32>(this.velocity), 4);
        w.integer(<u64>reinterpret<u32>(this.motion_temp), 4);
        w.integer(<u64>reinterpret<u32>(this.driver_temp), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointData
    {
        const value = new Ros2DrddsMsgJointData();
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.name.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.data_id = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.status_word = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.position = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.torque = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.motion_temp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.driver_temp = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgJointDataCodec implements VendorCodec<Ros2DrddsMsgJointData>
{
    static readonly codecIdentity: string = "UWVMROS1_269b21fc3b8c1461496b2aab41fc3354e9dc17cc9050ca7ce1962e62afce7e05";
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2DrddsMsgJointData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointData>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointData>();
        if(bytes.length > 28)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointData() : changetype<Ros2DrddsMsgJointData>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointDataCmd; spellings are published in generation proof. */
export class Ros2DrddsMsgJointDataCmd
{
    static readonly maxWireBytes: i32 = 28;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 28;
    /** @brief Exact native field name, native scalar char. */
    name: Array < u8 >= new Array<u8>();
    /** @brief Exact native field data_id, native scalar uint16. */
    data_id: u16 = 0;
    /** @brief Exact native field control_word, native scalar uint16. */
    control_word: u16 = 0;
    /** @brief Exact native field position, native scalar float32. */
    position: f32 = 0;
    /** @brief Exact native field torque, native scalar float32. */
    torque: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    velocity: f32 = 0;
    /** @brief Exact native field kp, native scalar float32. */
    kp: f32 = 0;
    /** @brief Exact native field kd, native scalar float32. */
    kd: f32 = 0;

    constructor()
    {
        for(let i = 0; i < 4; ++i)
            this.name.push(0);
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.name.length != 4)
                return -22;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(1 > 28 - n)
                    return -90;
                n += 1;
                if(n > 28)
                    return -90;
            }
        }
        {
            if(2 > 28 - n)
                return -90;
            n += 2;
            if(n > 28)
                return -90;
        }
        {
            if(2 > 28 - n)
                return -90;
            n += 2;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.torque))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.kp))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
                return -90;
        }
        {
            if(!isFinite(this.kd))
                return -22;
            if(4 > 28 - n)
                return -90;
            n += 4;
            if(n > 28)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.name.length; ++i)
        {
            w.integer(<u64>this.name[i], 1);
        }
        w.integer(<u64>this.data_id, 2);
        w.integer(<u64>this.control_word, 2);
        w.integer(<u64>reinterpret<u32>(this.position), 4);
        w.integer(<u64>reinterpret<u32>(this.torque), 4);
        w.integer(<u64>reinterpret<u32>(this.velocity), 4);
        w.integer(<u64>reinterpret<u32>(this.kp), 4);
        w.integer(<u64>reinterpret<u32>(this.kd), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointDataCmd
    {
        const value = new Ros2DrddsMsgJointDataCmd();
        {
            const count: u32 = 4;
            if(!r.valid || count > 4)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.name.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.data_id = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.control_word = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.position = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.torque = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.kp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.kd = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgJointDataCmdCodec implements VendorCodec<Ros2DrddsMsgJointDataCmd>
{
    static readonly codecIdentity: string = "UWVMROS1_c68c64167c2bd6ce84e78a37fe245c0c2bc40d4b2945a486f257222b2e1e7e0e";
    static readonly maxWireBytes: i32 = 28;

    encodeChecked(value: Ros2DrddsMsgJointDataCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointDataCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointDataCmd>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointDataCmd>();
        if(bytes.length > 28)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointDataCmd.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointDataCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointDataCmd() : changetype<Ros2DrddsMsgJointDataCmd>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointValue; spellings are published in generation proof. */
export class Ros2DrddsMsgJointValue
{
    static readonly maxWireBytes: i32 = 284;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 284;
    /** @brief Exact native field name, native scalar char. */
    name: Array < u8 >= new Array<u8>();
    /** @brief Exact native field data_id, native scalar uint16. */
    data_id: u16 = 0;
    /** @brief Exact native field status_word, native scalar uint16. */
    status_word: u16 = 0;
    /** @brief Exact native field position, native scalar float32. */
    position: f32 = 0;
    /** @brief Exact native field torque, native scalar float32. */
    torque: f32 = 0;
    /** @brief Exact native field velocity, native scalar float32. */
    velocity: f32 = 0;
    /** @brief Exact native field motion_temp, native scalar float32. */
    motion_temp: f32 = 0;
    /** @brief Exact native field driver_temp, native scalar float32. */
    driver_temp: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.name.length > 256)
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(1 > 284 - n)
                    return -90;
                n += 1;
                if(n > 284)
                    return -90;
            }
        }
        {
            if(2 > 284 - n)
                return -90;
            n += 2;
            if(n > 284)
                return -90;
        }
        {
            if(2 > 284 - n)
                return -90;
            n += 2;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.position))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.torque))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.velocity))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.motion_temp))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
                return -90;
        }
        {
            if(!isFinite(this.driver_temp))
                return -22;
            if(4 > 284 - n)
                return -90;
            n += 4;
            if(n > 284)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.u32(<u32>this.name.length);
        for(let i = 0; i < this.name.length; ++i)
        {
            w.integer(<u64>this.name[i], 1);
        }
        w.integer(<u64>this.data_id, 2);
        w.integer(<u64>this.status_word, 2);
        w.integer(<u64>reinterpret<u32>(this.position), 4);
        w.integer(<u64>reinterpret<u32>(this.torque), 4);
        w.integer(<u64>reinterpret<u32>(this.velocity), 4);
        w.integer(<u64>reinterpret<u32>(this.motion_temp), 4);
        w.integer(<u64>reinterpret<u32>(this.driver_temp), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointValue
    {
        const value = new Ros2DrddsMsgJointValue();
        {
            const count = r.u32();
            if(!r.valid || count > 256)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<u8>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = <u8>r.integer(1);
                value.name.push(decoded);
            }
        }
        {
            const decoded = <u16>r.integer(2);
            value.data_id = decoded;
        }
        {
            const decoded = <u16>r.integer(2);
            value.status_word = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.position = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.torque = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.velocity = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.motion_temp = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.driver_temp = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgJointValueCodec implements VendorCodec<Ros2DrddsMsgJointValue>
{
    static readonly codecIdentity: string = "UWVMROS1_5c0cb9ecbc1169e7b4cf4656cd0105466cb4e9269c946339debabfd64e5824da";
    static readonly maxWireBytes: i32 = 284;

    encodeChecked(value: Ros2DrddsMsgJointValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointValue>();
        if(bytes.length > 284)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointValue() : changetype<Ros2DrddsMsgJointValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointsDataValue; spellings are published in generation proof. */
export class Ros2DrddsMsgJointsDataValue
{
    static readonly maxWireBytes: i32 = 448;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 448;
    /** @brief Exact native field joints_data, native scalar drdds/msg/JointData. */
    joints_data: Array < Ros2DrddsMsgJointData >= new Array<Ros2DrddsMsgJointData>();

    constructor()
    {
        for(let i = 0; i < 16; ++i)
            this.joints_data.push(new Ros2DrddsMsgJointData());
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.joints_data.length != 16)
                return -22;
            for(let i = 0; i < this.joints_data.length; ++i)
            {
                const child = this.joints_data[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 448 - n)
                    return -90;
                n += child;
                if(n > 448)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.joints_data.length; ++i)
        {
            this.joints_data[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointsDataValue
    {
        const value = new Ros2DrddsMsgJointsDataValue();
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.joints_data = new Array<Ros2DrddsMsgJointData>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2DrddsMsgJointData.readControl(r);
                value.joints_data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2DrddsMsgJointsDataValueCodec implements VendorCodec<Ros2DrddsMsgJointsDataValue>
{
    static readonly codecIdentity: string = "UWVMROS1_e1c01b2edfac0d76f024533b582b3be527bbe70f8be7be45ea74dab31e764bd8";
    static readonly maxWireBytes: i32 = 448;

    encodeChecked(value: Ros2DrddsMsgJointsDataValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointsDataValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointsDataValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointsDataValue>();
        if(bytes.length > 448)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 448)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointsDataValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointsDataValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointsDataValue() : changetype<Ros2DrddsMsgJointsDataValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointsData; spellings are published in generation proof. */
export class Ros2DrddsMsgJointsData
{
    static readonly maxWireBytes: i32 = 464;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 464;
    /** @brief Exact native field header, native scalar drdds/msg/MetaType. */
    header: Ros2DrddsMsgMetaType = new Ros2DrddsMsgMetaType();
    /** @brief Exact native field data, native scalar drdds/msg/JointsDataValue. */
    data: Ros2DrddsMsgJointsDataValue = new Ros2DrddsMsgJointsDataValue();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 464 - n)
                return -90;
            n += child;
            if(n > 464)
                return -90;
        }
        {
            const child = this.data.wireSize();
            if(child < 0)
                return child;
            if(child > 464 - n)
                return -90;
            n += child;
            if(n > 464)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        this.data.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointsData
    {
        const value = new Ros2DrddsMsgJointsData();
        {
            const decoded = Ros2DrddsMsgMetaType.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2DrddsMsgJointsDataValue.readControl(r);
            value.data = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgJointsDataCodec implements VendorCodec<Ros2DrddsMsgJointsData>
{
    static readonly codecIdentity: string = "UWVMROS1_58eaf7ff13be07922dbb6edfb9109be96a3adad0fbd512a5f66af24dc7b4d43d";
    static readonly maxWireBytes: i32 = 464;

    encodeChecked(value: Ros2DrddsMsgJointsData): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointsData): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointsData>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointsData>();
        if(bytes.length > 464)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 464)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointsData.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointsData
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointsData() : changetype<Ros2DrddsMsgJointsData>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointsDataCmdValue; spellings are published in generation proof. */
export class Ros2DrddsMsgJointsDataCmdValue
{
    static readonly maxWireBytes: i32 = 448;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 448;
    /** @brief Exact native field joints_data, native scalar drdds/msg/JointDataCmd. */
    joints_data: Array < Ros2DrddsMsgJointDataCmd >= new Array<Ros2DrddsMsgJointDataCmd>();

    constructor()
    {
        for(let i = 0; i < 16; ++i)
            this.joints_data.push(new Ros2DrddsMsgJointDataCmd());
    }

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(this.joints_data.length != 16)
                return -22;
            for(let i = 0; i < this.joints_data.length; ++i)
            {
                const child = this.joints_data[i].wireSize();
                if(child < 0)
                    return child;
                if(child > 448 - n)
                    return -90;
                n += child;
                if(n > 448)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        for(let i = 0; i < this.joints_data.length; ++i)
        {
            this.joints_data[i].writeControl(w);
        }
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointsDataCmdValue
    {
        const value = new Ros2DrddsMsgJointsDataCmdValue();
        {
            const count: u32 = 16;
            if(!r.valid || count > 16)
            {
                r.valid = false;
                return value;
            }
            value.joints_data = new Array<Ros2DrddsMsgJointDataCmd>();
            for(let i: u32 = 0; i < count; ++i)
            {
                const decoded = Ros2DrddsMsgJointDataCmd.readControl(r);
                value.joints_data.push(decoded);
            }
        }
        return value;
    }
}

export class Ros2DrddsMsgJointsDataCmdValueCodec implements VendorCodec<Ros2DrddsMsgJointsDataCmdValue>
{
    static readonly codecIdentity: string = "UWVMROS1_797ad7349b381083eafb361a8a7d4f28d64c8f3a1ee5719a3008d687893ab016";
    static readonly maxWireBytes: i32 = 448;

    encodeChecked(value: Ros2DrddsMsgJointsDataCmdValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointsDataCmdValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointsDataCmdValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointsDataCmdValue>();
        if(bytes.length > 448)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 448)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointsDataCmdValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointsDataCmdValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointsDataCmdValue() : changetype<Ros2DrddsMsgJointsDataCmdValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/JointsDataCmd; spellings are published in generation proof. */
export class Ros2DrddsMsgJointsDataCmd
{
    static readonly maxWireBytes: i32 = 464;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 464;
    /** @brief Exact native field header, native scalar drdds/msg/MetaType. */
    header: Ros2DrddsMsgMetaType = new Ros2DrddsMsgMetaType();
    /** @brief Exact native field data, native scalar drdds/msg/JointsDataCmdValue. */
    data: Ros2DrddsMsgJointsDataCmdValue = new Ros2DrddsMsgJointsDataCmdValue();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 464 - n)
                return -90;
            n += child;
            if(n > 464)
                return -90;
        }
        {
            const child = this.data.wireSize();
            if(child < 0)
                return child;
            if(child > 464 - n)
                return -90;
            n += child;
            if(n > 464)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        this.data.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgJointsDataCmd
    {
        const value = new Ros2DrddsMsgJointsDataCmd();
        {
            const decoded = Ros2DrddsMsgMetaType.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2DrddsMsgJointsDataCmdValue.readControl(r);
            value.data = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgJointsDataCmdCodec implements VendorCodec<Ros2DrddsMsgJointsDataCmd>
{
    static readonly codecIdentity: string = "UWVMROS1_5b1676cb4fbfd6970756ce6221ca6abf1911bd7e8108146fd9afccf62180bb45";
    static readonly maxWireBytes: i32 = 464;

    encodeChecked(value: Ros2DrddsMsgJointsDataCmd): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgJointsDataCmd): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgJointsDataCmd>
    {
        const out = new VendorDecoded<Ros2DrddsMsgJointsDataCmd>();
        if(bytes.length > 464)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 464)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgJointsDataCmd.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgJointsDataCmd
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgJointsDataCmd() : changetype<Ros2DrddsMsgJointsDataCmd>(out.value);
    }
}

/** @brief Complete original std_msgs/msg/Header; spellings are published in generation proof. */
export class Ros2Std_msgsMsgHeader
{
    static readonly maxWireBytes: i32 = 140;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 140;
    /** @brief Exact native field stamp, native scalar builtin_interfaces/msg/Time. */
    stamp: Ros2Builtin_interfacesMsgTime = new Ros2Builtin_interfacesMsgTime();
    /** @brief Exact native field frame_id, native scalar string. */
    frame_id: string = "";

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.stamp.wireSize();
            if(child < 0)
                return child;
            if(child > 140 - n)
                return -90;
            n += child;
            if(n > 140)
                return -90;
        }
        {
            if(!validUnicode(this.frame_id) || this.frame_id.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.frame_id);
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.stamp.writeControl(w);
        w.text(this.frame_id);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Std_msgsMsgHeader
    {
        const value = new Ros2Std_msgsMsgHeader();
        {
            const decoded = Ros2Builtin_interfacesMsgTime.readControl(r);
            value.stamp = decoded;
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
            value.frame_id = decoded;
        }
        return value;
    }
}

export class Ros2Std_msgsMsgHeaderCodec implements VendorCodec<Ros2Std_msgsMsgHeader>
{
    static readonly codecIdentity: string = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96";
    static readonly maxWireBytes: i32 = 140;

    encodeChecked(value: Ros2Std_msgsMsgHeader): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Std_msgsMsgHeader): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Std_msgsMsgHeader>
    {
        const out = new VendorDecoded<Ros2Std_msgsMsgHeader>();
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
        const reader = new Reader(bytes), value = Ros2Std_msgsMsgHeader.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Std_msgsMsgHeader
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Std_msgsMsgHeader() : changetype<Ros2Std_msgsMsgHeader>(out.value);
    }
}

/** @brief Complete original geometry_msgs/msg/Vector3; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgVector3
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** @brief Exact native field x, native scalar float64. */
    x: f64 = 0;
    /** @brief Exact native field y, native scalar float64. */
    y: f64 = 0;
    /** @brief Exact native field z, native scalar float64. */
    z: f64 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(8 > 24 - n)
                return -90;
            n += 8;
            if(n > 24)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u64>(this.x), 8);
        w.integer(<u64>reinterpret<u64>(this.y), 8);
        w.integer(<u64>reinterpret<u64>(this.z), 8);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgVector3
    {
        const value = new Ros2Geometry_msgsMsgVector3();
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
        return value;
    }
}

export class Ros2Geometry_msgsMsgVector3Codec implements VendorCodec<Ros2Geometry_msgsMsgVector3>
{
    static readonly codecIdentity: string = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2Geometry_msgsMsgVector3): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgVector3): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgVector3>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgVector3>();
        if(bytes.length > 24)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgVector3.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgVector3
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgVector3() : changetype<Ros2Geometry_msgsMsgVector3>(out.value);
    }
}

/** @brief Complete original geometry_msgs/msg/Twist; spellings are published in generation proof. */
export class Ros2Geometry_msgsMsgTwist
{
    static readonly maxWireBytes: i32 = 48;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 48;
    /** @brief Exact native field linear, native scalar geometry_msgs/msg/Vector3. */
    linear: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /** @brief Exact native field angular, native scalar geometry_msgs/msg/Vector3. */
    angular: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.linear.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
            if(n > 48)
                return -90;
        }
        {
            const child = this.angular.wireSize();
            if(child < 0)
                return child;
            if(child > 48 - n)
                return -90;
            n += child;
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.linear.writeControl(w);
        this.angular.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Geometry_msgsMsgTwist
    {
        const value = new Ros2Geometry_msgsMsgTwist();
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.linear = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.angular = decoded;
        }
        return value;
    }
}

export class Ros2Geometry_msgsMsgTwistCodec implements VendorCodec<Ros2Geometry_msgsMsgTwist>
{
    static readonly codecIdentity: string = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e";
    static readonly maxWireBytes: i32 = 48;

    encodeChecked(value: Ros2Geometry_msgsMsgTwist): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Geometry_msgsMsgTwist): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Geometry_msgsMsgTwist>
    {
        const out = new VendorDecoded<Ros2Geometry_msgsMsgTwist>();
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
        const reader = new Reader(bytes), value = Ros2Geometry_msgsMsgTwist.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Geometry_msgsMsgTwist
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Geometry_msgsMsgTwist() : changetype<Ros2Geometry_msgsMsgTwist>(out.value);
    }
}

/** @brief Complete original sensor_msgs/msg/JointState; spellings are published in generation proof. */
export class Ros2Sensor_msgsMsgJointState
{
    static readonly maxWireBytes: i32 = 6044;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 6044;
    /** @brief Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** @brief Exact native field name, native scalar string. */
    name: Array < string >= new Array<string>();
    /** @brief Exact native field position, native scalar float64. */
    position: Array < f64 >= new Array<f64>();
    /** @brief Exact native field velocity, native scalar float64. */
    velocity: Array < f64 >= new Array<f64>();
    /** @brief Exact native field effort, native scalar float64. */
    effort: Array < f64 >= new Array<f64>();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 6044 - n)
                return -90;
            n += child;
            if(n > 6044)
                return -90;
        }
        {
            if(this.name.length > 64)
                return -22;
            if(4 > 6044 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.name.length; ++i)
            {
                if(!validUnicode(this.name[i]) || this.name[i].indexOf("\0") >= 0)
                    return -22;
                const size = String.UTF8.byteLength(this.name[i]);
                if(size > 64)
                    return -22;
                if(4 + size > 6044 - n)
                    return -90;
                n += 4 + size;
                if(n > 6044)
                    return -90;
            }
        }
        {
            if(this.position.length > 64)
                return -22;
            if(4 > 6044 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.position.length; ++i)
            {
                if(!isFinite(this.position[i]))
                    return -22;
                if(8 > 6044 - n)
                    return -90;
                n += 8;
                if(n > 6044)
                    return -90;
            }
        }
        {
            if(this.velocity.length > 64)
                return -22;
            if(4 > 6044 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.velocity.length; ++i)
            {
                if(!isFinite(this.velocity[i]))
                    return -22;
                if(8 > 6044 - n)
                    return -90;
                n += 8;
                if(n > 6044)
                    return -90;
            }
        }
        {
            if(this.effort.length > 64)
                return -22;
            if(4 > 6044 - n)
                return -90;
            n += 4;
            for(let i = 0; i < this.effort.length; ++i)
            {
                if(!isFinite(this.effort[i]))
                    return -22;
                if(8 > 6044 - n)
                    return -90;
                n += 8;
                if(n > 6044)
                    return -90;
            }
        }
        if((this.name.length != 0 && this.position.length != 0 && this.name.length != this.position.length) ||
           (this.name.length != 0 && this.velocity.length != 0 && this.name.length != this.velocity.length) ||
           (this.name.length != 0 && this.effort.length != 0 && this.name.length != this.effort.length) ||
           (this.position.length != 0 && this.velocity.length != 0 && this.position.length != this.velocity.length) ||
           (this.position.length != 0 && this.effort.length != 0 && this.position.length != this.effort.length) ||
           (this.velocity.length != 0 && this.effort.length != 0 && this.velocity.length != this.effort.length))
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.u32(<u32>this.name.length);
        for(let i = 0; i < this.name.length; ++i)
        {
            w.text(this.name[i]);
        }
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
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2Sensor_msgsMsgJointState
    {
        const value = new Ros2Sensor_msgsMsgJointState();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
        }
        {
            const count = r.u32();
            if(!r.valid || count > 64)
            {
                r.valid = false;
                return value;
            }
            value.name = new Array<string>();
            for(let i: u32 = 0; i < count; ++i)
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
                value.name.push(decoded);
            }
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
        if((value.name.length != 0 && value.position.length != 0 && value.name.length != value.position.length) ||
           (value.name.length != 0 && value.velocity.length != 0 && value.name.length != value.velocity.length) ||
           (value.name.length != 0 && value.effort.length != 0 && value.name.length != value.effort.length) ||
           (value.position.length != 0 && value.velocity.length != 0 && value.position.length != value.velocity.length) ||
           (value.position.length != 0 && value.effort.length != 0 && value.position.length != value.effort.length) ||
           (value.velocity.length != 0 && value.effort.length != 0 && value.velocity.length != value.effort.length))
            r.valid = false;
        return value;
    }
}

export class Ros2Sensor_msgsMsgJointStateCodec implements VendorCodec<Ros2Sensor_msgsMsgJointState>
{
    static readonly codecIdentity: string = "UWVMROS1_81135016cfa64b7f2845d6090ce9f70691df1472ab66993c7d98b2a79399907f";
    static readonly maxWireBytes: i32 = 6044;

    encodeChecked(value: Ros2Sensor_msgsMsgJointState): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2Sensor_msgsMsgJointState): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2Sensor_msgsMsgJointState>
    {
        const out = new VendorDecoded<Ros2Sensor_msgsMsgJointState>();
        if(bytes.length > 6044)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 28)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2Sensor_msgsMsgJointState.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2Sensor_msgsMsgJointState
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2Sensor_msgsMsgJointState() : changetype<Ros2Sensor_msgsMsgJointState>(out.value);
    }
}

/** @brief Complete original drdds/msg/RobotStatus; spellings are published in generation proof. */
export class Ros2DrddsMsgRobotStatus
{
    static readonly maxWireBytes: i32 = 6845;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 6845;
    /** @brief Exact native field header, native scalar std_msgs/msg/Header. */
    header: Ros2Std_msgsMsgHeader = new Ros2Std_msgsMsgHeader();
    /** @brief Exact native field robot, native scalar string. */
    robot: string = "";
    /** @brief Exact native field command_source, native scalar string. */
    command_source: string = "";
    /** @brief Exact native field current_state, native scalar string. */
    current_state: string = "";
    /** @brief Exact native field current_state_id, native scalar uint8. */
    current_state_id: u8 = 0;
    /** @brief Exact native field requested_state, native scalar string. */
    requested_state: string = "";
    /** @brief Exact native field requested_state_id, native scalar uint8. */
    requested_state_id: u8 = 0;
    /** @brief Exact native field safety_mode, native scalar uint8. */
    safety_mode: u8 = 0;
    /** @brief Exact native field command, native scalar geometry_msgs/msg/Twist. */
    command: Ros2Geometry_msgsMsgTwist = new Ros2Geometry_msgsMsgTwist();
    /** @brief Exact native field command_timed_out, native scalar bool. */
    command_timed_out: bool = false;
    /** @brief Exact native field rejected_commands, native scalar uint64. */
    rejected_commands: u64 = 0;
    /** @brief Exact native field command_updates, native scalar uint64. */
    command_updates: u64 = 0;
    /** @brief Exact native field joint_stamp, native scalar float64. */
    joint_stamp: f64 = 0;
    /** @brief Exact native field imu_stamp, native scalar float64. */
    imu_stamp: f64 = 0;
    /** @brief Exact native field telemetry_fresh, native scalar bool. */
    telemetry_fresh: bool = false;
    /** @brief Exact native field joints, native scalar sensor_msgs/msg/JointState. */
    joints: Ros2Sensor_msgsMsgJointState = new Ros2Sensor_msgsMsgJointState();
    /** @brief Exact native field base_rpy, native scalar geometry_msgs/msg/Vector3. */
    base_rpy: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();
    /** @brief Exact native field base_angular_velocity, native scalar geometry_msgs/msg/Vector3. */
    base_angular_velocity: Ros2Geometry_msgsMsgVector3 = new Ros2Geometry_msgsMsgVector3();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 6845 - n)
                return -90;
            n += child;
            if(n > 6845)
                return -90;
        }
        {
            if(!validUnicode(this.robot) || this.robot.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.robot);
            if(size > 128)
                return -22;
            if(4 + size > 6845 - n)
                return -90;
            n += 4 + size;
            if(n > 6845)
                return -90;
        }
        {
            if(!validUnicode(this.command_source) || this.command_source.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.command_source);
            if(size > 128)
                return -22;
            if(4 + size > 6845 - n)
                return -90;
            n += 4 + size;
            if(n > 6845)
                return -90;
        }
        {
            if(!validUnicode(this.current_state) || this.current_state.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.current_state);
            if(size > 128)
                return -22;
            if(4 + size > 6845 - n)
                return -90;
            n += 4 + size;
            if(n > 6845)
                return -90;
        }
        {
            if(1 > 6845 - n)
                return -90;
            n += 1;
            if(n > 6845)
                return -90;
        }
        {
            if(!validUnicode(this.requested_state) || this.requested_state.indexOf("\0") >= 0)
                return -22;
            const size = String.UTF8.byteLength(this.requested_state);
            if(size > 128)
                return -22;
            if(4 + size > 6845 - n)
                return -90;
            n += 4 + size;
            if(n > 6845)
                return -90;
        }
        {
            if(1 > 6845 - n)
                return -90;
            n += 1;
            if(n > 6845)
                return -90;
        }
        {
            if(1 > 6845 - n)
                return -90;
            n += 1;
            if(n > 6845)
                return -90;
        }
        {
            const child = this.command.wireSize();
            if(child < 0)
                return child;
            if(child > 6845 - n)
                return -90;
            n += child;
            if(n > 6845)
                return -90;
        }
        {
            if(1 > 6845 - n)
                return -90;
            n += 1;
            if(n > 6845)
                return -90;
        }
        {
            if(8 > 6845 - n)
                return -90;
            n += 8;
            if(n > 6845)
                return -90;
        }
        {
            if(8 > 6845 - n)
                return -90;
            n += 8;
            if(n > 6845)
                return -90;
        }
        {
            if(!isFinite(this.joint_stamp))
                return -22;
            if(8 > 6845 - n)
                return -90;
            n += 8;
            if(n > 6845)
                return -90;
        }
        {
            if(!isFinite(this.imu_stamp))
                return -22;
            if(8 > 6845 - n)
                return -90;
            n += 8;
            if(n > 6845)
                return -90;
        }
        {
            if(1 > 6845 - n)
                return -90;
            n += 1;
            if(n > 6845)
                return -90;
        }
        {
            const child = this.joints.wireSize();
            if(child < 0)
                return child;
            if(child > 6845 - n)
                return -90;
            n += child;
            if(n > 6845)
                return -90;
        }
        {
            const child = this.base_rpy.wireSize();
            if(child < 0)
                return child;
            if(child > 6845 - n)
                return -90;
            n += child;
            if(n > 6845)
                return -90;
        }
        {
            const child = this.base_angular_velocity.wireSize();
            if(child < 0)
                return child;
            if(child > 6845 - n)
                return -90;
            n += child;
            if(n > 6845)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        w.text(this.robot);
        w.text(this.command_source);
        w.text(this.current_state);
        w.integer(<u64>this.current_state_id, 1);
        w.text(this.requested_state);
        w.integer(<u64>this.requested_state_id, 1);
        w.integer(<u64>this.safety_mode, 1);
        this.command.writeControl(w);
        w.u8(this.command_timed_out ? 1 : 0);
        w.integer(<u64>this.rejected_commands, 8);
        w.integer(<u64>this.command_updates, 8);
        w.integer(<u64>reinterpret<u64>(this.joint_stamp), 8);
        w.integer(<u64>reinterpret<u64>(this.imu_stamp), 8);
        w.u8(this.telemetry_fresh ? 1 : 0);
        this.joints.writeControl(w);
        this.base_rpy.writeControl(w);
        this.base_angular_velocity.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgRobotStatus
    {
        const value = new Ros2DrddsMsgRobotStatus();
        {
            const decoded = Ros2Std_msgsMsgHeader.readControl(r);
            value.header = decoded;
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
            value.robot = decoded;
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
            value.command_source = decoded;
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
            value.current_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.current_state_id = decoded;
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
            value.requested_state = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.requested_state_id = decoded;
        }
        {
            const decoded = <u8>r.integer(1);
            value.safety_mode = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgTwist.readControl(r);
            value.command = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.command_timed_out = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.rejected_commands = decoded;
        }
        {
            const decoded = <u64>r.integer(8);
            value.command_updates = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.joint_stamp = decoded;
        }
        {
            const decoded = reinterpret<f64>(<u64>r.integer(8));
            if(!isFinite(decoded))
                r.valid = false;
            value.imu_stamp = decoded;
        }
        {
            const bit = r.u8();
            if(bit > 1)
                r.valid = false;
            const decoded = bit != 0;
            value.telemetry_fresh = decoded;
        }
        {
            const decoded = Ros2Sensor_msgsMsgJointState.readControl(r);
            value.joints = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.base_rpy = decoded;
        }
        {
            const decoded = Ros2Geometry_msgsMsgVector3.readControl(r);
            value.base_angular_velocity = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgRobotStatusCodec implements VendorCodec<Ros2DrddsMsgRobotStatus>
{
    static readonly codecIdentity: string = "UWVMROS1_aa90e870c49613a133808e9eade2720e131e77b95138c0a5efe47e1e3cb052ae";
    static readonly maxWireBytes: i32 = 6845;

    encodeChecked(value: Ros2DrddsMsgRobotStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgRobotStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgRobotStatus>
    {
        const out = new VendorDecoded<Ros2DrddsMsgRobotStatus>();
        if(bytes.length > 6845)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 189)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgRobotStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgRobotStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgRobotStatus() : changetype<Ros2DrddsMsgRobotStatus>(out.value);
    }
}

/** @brief Complete original drdds/msg/StdMsgFloat32; spellings are published in generation proof. */
export class Ros2DrddsMsgStdMsgFloat32
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field value, native scalar float32. */
    value: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.value))
                return -22;
            if(4 > 4 - n)
                return -90;
            n += 4;
            if(n > 4)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.value), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgStdMsgFloat32
    {
        const value = new Ros2DrddsMsgStdMsgFloat32();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgStdMsgFloat32Codec implements VendorCodec<Ros2DrddsMsgStdMsgFloat32>
{
    static readonly codecIdentity: string = "UWVMROS1_60c4d2a6c37bc75722023dbd51c1796b1330023c2c773bd4da25aebb4d665c33";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2DrddsMsgStdMsgFloat32): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgStdMsgFloat32): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgStdMsgFloat32>
    {
        const out = new VendorDecoded<Ros2DrddsMsgStdMsgFloat32>();
        if(bytes.length > 4)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgStdMsgFloat32.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgStdMsgFloat32
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgStdMsgFloat32() : changetype<Ros2DrddsMsgStdMsgFloat32>(out.value);
    }
}

/** @brief Complete original drdds/msg/StdMsgInt32; spellings are published in generation proof. */
export class Ros2DrddsMsgStdMsgInt32
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field value, native scalar int32. */
    value: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 4 - n)
                return -90;
            n += 4;
            if(n > 4)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.value, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgStdMsgInt32
    {
        const value = new Ros2DrddsMsgStdMsgInt32();
        {
            const decoded = <i32>r.integer(4);
            value.value = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgStdMsgInt32Codec implements VendorCodec<Ros2DrddsMsgStdMsgInt32>
{
    static readonly codecIdentity: string = "UWVMROS1_460694ceb9e0e29101e97b5758a3171e02b7830565fec83358ee7fa6157d42b1";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2DrddsMsgStdMsgInt32): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgStdMsgInt32): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgStdMsgInt32>
    {
        const out = new VendorDecoded<Ros2DrddsMsgStdMsgInt32>();
        if(bytes.length > 4)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgStdMsgInt32.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgStdMsgInt32
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgStdMsgInt32() : changetype<Ros2DrddsMsgStdMsgInt32>(out.value);
    }
}

/** @brief Complete original drdds/msg/StdStatus; spellings are published in generation proof. */
export class Ros2DrddsMsgStdStatus
{
    static readonly maxWireBytes: i32 = 8;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 8;
    /** @brief Exact native field state, native scalar int32. */
    state: i32 = 0;
    /** @brief Exact native field error_code, native scalar uint32. */
    error_code: u32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.state, 4);
        w.integer(<u64>this.error_code, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgStdStatus
    {
        const value = new Ros2DrddsMsgStdStatus();
        {
            const decoded = <i32>r.integer(4);
            value.state = decoded;
        }
        {
            const decoded = <u32>r.integer(4);
            value.error_code = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgStdStatusCodec implements VendorCodec<Ros2DrddsMsgStdStatus>
{
    static readonly codecIdentity: string = "UWVMROS1_4d9ff460d62c4251ecda42a2637156e54b5e9adcce2ff442299c04968d6a2b28";
    static readonly maxWireBytes: i32 = 8;

    encodeChecked(value: Ros2DrddsMsgStdStatus): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgStdStatus): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgStdStatus>
    {
        const out = new VendorDecoded<Ros2DrddsMsgStdStatus>();
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
        const reader = new Reader(bytes), value = Ros2DrddsMsgStdStatus.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgStdStatus
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgStdStatus() : changetype<Ros2DrddsMsgStdStatus>(out.value);
    }
}

/** @brief Complete original drdds/msg/SteerValue; spellings are published in generation proof. */
export class Ros2DrddsMsgSteerValue
{
    static readonly maxWireBytes: i32 = 24;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 24;
    /** @brief Exact native field x, native scalar float32. */
    x: f32 = 0;
    /** @brief Exact native field y, native scalar float32. */
    y: f32 = 0;
    /** @brief Exact native field z, native scalar float32. */
    z: f32 = 0;
    /** @brief Exact native field roll, native scalar float32. */
    roll: f32 = 0;
    /** @brief Exact native field pitch, native scalar float32. */
    pitch: f32 = 0;
    /** @brief Exact native field yaw, native scalar float32. */
    yaw: f32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(!isFinite(this.x))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.y))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.z))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.roll))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.pitch))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
                return -90;
        }
        {
            if(!isFinite(this.yaw))
                return -22;
            if(4 > 24 - n)
                return -90;
            n += 4;
            if(n > 24)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>reinterpret<u32>(this.x), 4);
        w.integer(<u64>reinterpret<u32>(this.y), 4);
        w.integer(<u64>reinterpret<u32>(this.z), 4);
        w.integer(<u64>reinterpret<u32>(this.roll), 4);
        w.integer(<u64>reinterpret<u32>(this.pitch), 4);
        w.integer(<u64>reinterpret<u32>(this.yaw), 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgSteerValue
    {
        const value = new Ros2DrddsMsgSteerValue();
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.x = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.y = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.z = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.roll = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.pitch = decoded;
        }
        {
            const decoded = reinterpret<f32>(<u32>r.integer(4));
            if(!isFinite(decoded))
                r.valid = false;
            value.yaw = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgSteerValueCodec implements VendorCodec<Ros2DrddsMsgSteerValue>
{
    static readonly codecIdentity: string = "UWVMROS1_10007d7ed0f14ea52138dba2c3dfee590070ed8f2c0e5f48adab2486c371a236";
    static readonly maxWireBytes: i32 = 24;

    encodeChecked(value: Ros2DrddsMsgSteerValue): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgSteerValue): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgSteerValue>
    {
        const out = new VendorDecoded<Ros2DrddsMsgSteerValue>();
        if(bytes.length > 24)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 24)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsMsgSteerValue.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgSteerValue
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgSteerValue() : changetype<Ros2DrddsMsgSteerValue>(out.value);
    }
}

/** @brief Complete original drdds/msg/Steer; spellings are published in generation proof. */
export class Ros2DrddsMsgSteer
{
    static readonly maxWireBytes: i32 = 40;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 40;
    /** @brief Exact native field header, native scalar drdds/msg/MetaType. */
    header: Ros2DrddsMsgMetaType = new Ros2DrddsMsgMetaType();
    /** @brief Exact native field data, native scalar drdds/msg/SteerValue. */
    data: Ros2DrddsMsgSteerValue = new Ros2DrddsMsgSteerValue();

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            const child = this.header.wireSize();
            if(child < 0)
                return child;
            if(child > 40 - n)
                return -90;
            n += child;
            if(n > 40)
                return -90;
        }
        {
            const child = this.data.wireSize();
            if(child < 0)
                return child;
            if(child > 40 - n)
                return -90;
            n += child;
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        this.header.writeControl(w);
        this.data.writeControl(w);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsMsgSteer
    {
        const value = new Ros2DrddsMsgSteer();
        {
            const decoded = Ros2DrddsMsgMetaType.readControl(r);
            value.header = decoded;
        }
        {
            const decoded = Ros2DrddsMsgSteerValue.readControl(r);
            value.data = decoded;
        }
        return value;
    }
}

export class Ros2DrddsMsgSteerCodec implements VendorCodec<Ros2DrddsMsgSteer>
{
    static readonly codecIdentity: string = "UWVMROS1_0749b852b4689e1d6df3fe333e91280ae87065f16267a255e548d73ed9e14793";
    static readonly maxWireBytes: i32 = 40;

    encodeChecked(value: Ros2DrddsMsgSteer): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsMsgSteer): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsMsgSteer>
    {
        const out = new VendorDecoded<Ros2DrddsMsgSteer>();
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
        const reader = new Reader(bytes), value = Ros2DrddsMsgSteer.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsMsgSteer
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsMsgSteer() : changetype<Ros2DrddsMsgSteer>(out.value);
    }
}

/** @brief Complete original drdds/srv/StdSrvInt32_Request; spellings are published in generation proof. */
export class Ros2DrddsSrvStdSrvInt32_Request
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field command, native scalar int32. */
    command: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 4 - n)
                return -90;
            n += 4;
            if(n > 4)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.command, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsSrvStdSrvInt32_Request
    {
        const value = new Ros2DrddsSrvStdSrvInt32_Request();
        {
            const decoded = <i32>r.integer(4);
            value.command = decoded;
        }
        return value;
    }
}

export class Ros2DrddsSrvStdSrvInt32_RequestCodec implements VendorCodec<Ros2DrddsSrvStdSrvInt32_Request>
{
    static readonly codecIdentity: string = "UWVMROS1_00be6642e848f5cb36a34038277cf0002cdd2a76de8384ac17e11cd101fcd25e";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2DrddsSrvStdSrvInt32_Request): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsSrvStdSrvInt32_Request): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsSrvStdSrvInt32_Request>
    {
        const out = new VendorDecoded<Ros2DrddsSrvStdSrvInt32_Request>();
        if(bytes.length > 4)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsSrvStdSrvInt32_Request.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsSrvStdSrvInt32_Request
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsSrvStdSrvInt32_Request() : changetype<Ros2DrddsSrvStdSrvInt32_Request>(out.value);
    }
}

/** @brief Complete original drdds/srv/StdSrvInt32_Response; spellings are published in generation proof. */
export class Ros2DrddsSrvStdSrvInt32_Response
{
    static readonly maxWireBytes: i32 = 4;
    static readonly aggregateWireBytes: i32 = 0;
    static readonly cartesianWireBytes: u64 = 4;
    /** @brief Exact native field result, native scalar int32. */
    result: i32 = 0;

    /** @brief Exact active logical bytes or negative errno; no cartesian allocation. */
    wireSize(): i32
    {
        let n: i32 = 0;
        {
            if(4 > 4 - n)
                return -90;
            n += 4;
            if(n > 4)
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

    /** @brief Internal trusted writer; public encode first measures the complete value. */
    writeControl(w: VendorWriter): void
    {
        w.integer(<u64>this.result, 4);
    }

    /** @brief Internal shared reader. Only decodeChecked publishes accepted values. */
    static readControl(r: Reader): Ros2DrddsSrvStdSrvInt32_Response
    {
        const value = new Ros2DrddsSrvStdSrvInt32_Response();
        {
            const decoded = <i32>r.integer(4);
            value.result = decoded;
        }
        return value;
    }
}

export class Ros2DrddsSrvStdSrvInt32_ResponseCodec implements VendorCodec<Ros2DrddsSrvStdSrvInt32_Response>
{
    static readonly codecIdentity: string = "UWVMROS1_a264c039c6b47e96c72615b8eba30d74b4bba736dabe5d52457f173930a9dcb4";
    static readonly maxWireBytes: i32 = 4;

    encodeChecked(value: Ros2DrddsSrvStdSrvInt32_Response): VendorEncoded
    {
        const n = value.wireSize();
        if(n < 0)
            return new VendorEncoded(<u32>- n);
        const w = new VendorWriter(n);
        value.writeControl(w);
        return w.finish();
    }

    encode(value: Ros2DrddsSrvStdSrvInt32_Response): Uint8Array
    {
        return this.encodeChecked(value).bytes;
    }

    decodeChecked(bytes: Uint8Array): VendorDecoded<Ros2DrddsSrvStdSrvInt32_Response>
    {
        const out = new VendorDecoded<Ros2DrddsSrvStdSrvInt32_Response>();
        if(bytes.length > 4)
        {
            out.status = 90;
            return out;
        }
        if(bytes.length < 4)
        {
            out.status = 22;
            return out;
        }
        const reader = new Reader(bytes), value = Ros2DrddsSrvStdSrvInt32_Response.readControl(reader);
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

    decode(bytes: Uint8Array): Ros2DrddsSrvStdSrvInt32_Response
    {
        const out = this.decodeChecked(bytes);
        return out.value === null ? new Ros2DrddsSrvStdSrvInt32_Response() : changetype<Ros2DrddsSrvStdSrvInt32_Response>(out.value);
    }
}
