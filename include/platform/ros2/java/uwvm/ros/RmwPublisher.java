package uwvm.ros;

import java.util.Arrays;
import org.teavm.interop.Import;
import org.teavm.interop.Unmanaged;

/**
 * @brief Own one real native ROS2 RMW publisher and its actual endpoint receipt.
 * @details Source implementation awaiting native acceptance. Activation creates
 * the native endpoint before a caller waits for independent DDS discovery.
 * Serialize operations. Every buffer, source handle and native incarnation
 * stays in this module; no borrowed array pointer survives an imported call.
 * A timeout can have an effect, and no effect or cleanup is replayed here.
 */
public final class RmwPublisher
{
    private final byte[] original = new byte[256];
    private final byte[] observed = new byte[256];
    private final byte[] sourceSlot = new byte[8];
    private long source;
    private long incarnation;
    private boolean active;
    private boolean busy;
    private boolean retirementAttempted;
    private boolean sourceCloseAttempted;
    private int retirementStatus = 9;
    private int sourceCloseStatus = 9;

    /** @brief Allocate all publisher-owned storage before the first resource open. */
    private RmwPublisher()
    {
    }

    /** @brief Preserve original acquisition/activation/validation and cleanup facts. */
    public static final class Acquisition
    {
        /** @brief First actual failing operation, subsequent validation 13, or zero. */
        public int status;
        /** @brief Whether the additive native activation import actually ran. */
        public boolean activationAttempted;
        /** @brief Actual native activation errno, valid only when attempted. */
        public int activationStatus;
        /** @brief Local full activation-receipt validation result, zero or 13. */
        public int validationStatus;
        /** @brief Whether failure cleanup actually attempted source close. */
        public boolean cleanupAttempted;
        /** @brief Independent actual failed-acquisition source-close errno. */
        public int cleanupStatus;
        /** @brief Newly owned publisher only when the entire acquisition succeeds. */
        public RmwPublisher publisher;
    }

    /** @return Actual additive namespace version, not a capability grant or errno. */
    @Import(module = "uwvm_ros2_rmw_v1", name = "abi_version") @Unmanaged private static native int version();

    /** @return Actual activation errno; only success writes the complete 256-byte receipt. */
    @Import(module = "uwvm_ros2_rmw_v1", name = "publisher_activate") @Unmanaged private static native int activate(long source, int memory, long output);

    /** @return Actual inspection errno for the same retained native incarnation. */
    @Import(module = "uwvm_ros2_rmw_v1", name = "publisher_inspect")
    @Unmanaged
    private static native int inspect(long source, long incarnation, int memory, long output);

    /** @return Original once-only native publish errno without a retained guest pointer. */
    @Import(module = "uwvm_ros2_rmw_v1", name = "publisher_publish")
    @Unmanaged
    private static native int publish(long source, long incarnation, int memory, long payload, long length);

    /** @return Actual once-only native retirement errno, independent of source close. */
    @Import(module = "uwvm_ros2_rmw_v1", name = "publisher_retire") @Unmanaged private static native int retire(long source, long incarnation);

    /** @brief Require actual zero reserved bytes. @return True for the complete extent. */
    private static boolean zero(byte[] bytes, int begin, int end)
    {
        for(int index = begin; index < end; index++)
        {
            if(bytes[index] != 0)
            {
                return false;
            }
        }
        return true;
    }

    /** @brief Validate the protocol's explicit QoS vocabulary. @return True for a complete actual profile. */
    private static boolean qos(byte[] bytes)
    {
        for(int offset = 64; offset < 80; offset += 4)
        {
            int field = Wire.get32(bytes, offset);
            if(field < 1 || field > 2)
            {
                return false;
            }
        }
        if(Wire.get32(bytes, 64) == 1 && Wire.get64(bytes, 80) == 0)
        {
            return false;
        }
        for(int offset = 96; offset <= 128; offset += 16)
        {
            long nanos = Wire.get64(bytes, offset);
            if(nanos < 0 || nanos >= 1000000000L)
            {
                return false;
            }
        }
        return (bytes[136] & 255) <= 1 && zero(bytes, 137, 224);
    }

    /**
     * @brief Validate the entire actual UMRE-v1 publisher activation/inspection.
     * @param bytes Fixed owned 256-byte receipt. @param command One or two.
     * @return True only for the actual owned source and a full native association.
     * @details Backend/role, full handles, reserved bytes, QoS and native GID
     * extents are checked before the incarnation is adopted or compared.
     */
    private boolean associated(byte[] bytes, int command)
    {
        int gid = bytes[14] & 255;
        if(Wire.get32(bytes, 0) != 0x45524d55 || (bytes[4] & 255) != 1 || bytes[5] != 0 || (bytes[6] & 255) != command || bytes[7] != 2 ||
           Wire.get32(bytes, 8) != 256 || bytes[12] != 1 || bytes[13] != 1 || gid < 1 || gid > 32 || bytes[15] != 0 || Wire.get64(bytes, 16) != source ||
           Wire.get64(bytes, 24) == 0 || Wire.get64(bytes, 32) == 0 || Wire.get64(bytes, 40) == 0 || Wire.get64(bytes, 48) == 0 || !zero(bytes, 56, 64) ||
           !qos(bytes) || !zero(bytes, 224 + gid, 256))
        {
            return false;
        }
        return (int)source != 0 && (int)(source >>> 32) != 0;
    }

    /**
     * @brief Open one granted source and create one retained real native publisher.
     * @param alias Complete explicit capability alias, at most 255 strict UTF-8 bytes.
     * @return Owned facts; only total success transfers the publisher close obligation.
     * @details Local validation/allocation precedes open. Native metadata is read
     * only after actual successful activation. Failure closes the source once,
     * even when activation may have had an unknown native effect.
     */
    public static Acquisition acquire(String alias)
    {
        Acquisition result = new Acquisition();
        RmwPublisher next = new RmwPublisher();
        byte[] name;
        try
        {
            byte[] encoded = Wire.string(alias, 255);
            name = Arrays.copyOfRange(encoded, 4, encoded.length);
            if(name.length == 0)
            {
                result.status = 22;
                return result;
            }
        }
        catch(IllegalArgumentException invalid)
        {
            result.status = 22;
            return result;
        }
        if(Raw.abi_version() != 1 || version() != 1)
        {
            result.status = 22;
            return result;
        }
        result.status = Raw.capability_open(0, Wasi.address(name), name.length, Wasi.address(next.sourceSlot));
        if(result.status != 0)
        {
            return result;
        }
        next.source = Wire.get64(next.sourceSlot, 0);
        boolean adopted = false;
        try
        {
            result.activationAttempted = true;
            result.activationStatus = activate(next.source, 0, Wasi.address(next.original));
            result.status = result.activationStatus;
            if(result.status != 0)
            {
                return result;
            }
            result.validationStatus = next.associated(next.original, 1) ? 0 : 13;
            result.status = result.validationStatus;
            if(result.status != 0)
            {
                return result;
            }
            next.incarnation = Wire.get64(next.original, 48);
            next.active = true;
            result.publisher = next;
            adopted = true;
            return result;
        }
        finally
        {
            if(!adopted)
            {
                result.cleanupAttempted = true;
                result.cleanupStatus = Raw.capability_close(next.source);
                next.source = 0;
            }
        }
    }

    /** @brief Begin serialized ownership access. @return Zero, closed 9 or reentry 17. */
    private int enter()
    {
        if(!active)
        {
            return 9;
        }
        if(busy)
        {
            return 17;
        }
        busy = true;
        return 0;
    }

    /**
     * @brief Inspect the exact retained endpoint before a subsequent publish.
     * @return Original inspection errno or local association-mismatch 13.
     * @details Actual native GID, QoS, source, instance, generation, session and
     * incarnation must match activation. Inspection creates no replacement.
     */
    public int inspectChecked()
    {
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        try
        {
            Arrays.fill(observed, (byte)0);
            status = inspect(source, incarnation, 0, Wasi.address(observed));
            if(status != 0)
            {
                return status;
            }
            if(!associated(observed, 2))
            {
                return 13;
            }
            for(int index = 0; index < original.length; index++)
            {
                if(index != 6 && original[index] != observed[index])
                {
                    return 13;
                }
            }
            return 0;
        }
        finally
        {
            busy = false;
        }
    }

    /**
     * @brief Publish the entire canonical payload exactly once through this endpoint.
     * @param bytes Borrowed stable complete canonical message for the granted type.
     * @return Original publish errno; local invalid extent returns 22 before import.
     * @details The host validates the granted full type and resource limits.
     */
    public int publish(byte[] bytes)
    {
        if(bytes == null || bytes.length > 4193786)
        {
            return 22;
        }
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        try
        {
            return publish(source, incarnation, 0, Wasi.address(bytes), bytes.length);
        }
        finally
        {
            busy = false;
        }
    }

    /**
     * @brief Retire the native endpoint once, then always close its source once.
     * @return First actual retirement error, otherwise actual source-close errno.
     * @details Local ownership retires before either import. Separate original
     * cleanup results remain available below; neither failure is replayed.
     */
    public int closeChecked()
    {
        int status = enter();
        if(status != 0)
        {
            return status;
        }
        active = false;
        long ownedSource = source;
        long ownedIncarnation = incarnation;
        source = incarnation = 0;
        try
        {
            retirementAttempted = true;
            retirementStatus = retire(ownedSource, ownedIncarnation);
        }
        finally
        {
            try
            {
                sourceCloseAttempted = true;
                sourceCloseStatus = Raw.capability_close(ownedSource);
            }
            finally
            {
                busy = false;
            }
        }
        return retirementStatus != 0 ? retirementStatus : sourceCloseStatus;
    }

    /** @return True only after actual endpoint-retirement invocation began. */
    public boolean retirementAttempted()
    {
        return retirementAttempted;
    }

    /** @return Actual endpoint-retirement errno; inspect attempted flag separately. */
    public int retirementStatus()
    {
        return retirementStatus;
    }

    /** @return True only after actual source-close invocation began. */
    public boolean sourceCloseAttempted()
    {
        return sourceCloseAttempted;
    }

    /** @return Actual source-close errno; inspect attempted flag separately. */
    public int sourceCloseStatus()
    {
        return sourceCloseStatus;
    }

    /** @return Newly owned complete original native activation receipt bytes. */
    public byte[] activationReceipt()
    {
        return original.clone();
    }
}
