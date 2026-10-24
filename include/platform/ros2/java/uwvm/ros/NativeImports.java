package uwvm.ros;

/**
 * @brief Bind the exact ROS2 capability ABI with full-width scalar signatures.
 * @details The build selects exactly one backend implementation of this class.
 * Offsets and lengths are i64 even for wasm32. All storage is borrowed only
 * for an immediate synchronous call; imported functions retain no Java pointer.
 */
final class NativeImports
{
    /** @brief Prevent construction of this stateless import table. */
    private NativeImports()
    {
    }

    /** @brief Observe the compiled native ROS family. @return Backend 2; no import runs. */
    static int backend()
    {
        return 2;
    }

    /**
     * @brief Observe the actual namespace version.
     * @return ABI version, which must equal one; this value is not an errno.
     * @details No capability is acquired and no storage is changed.
     */
    static int version()
    {
        return Raw.abi_version();
    }

    /**
     * @brief Acquire one explicitly granted alias.
     * @param memory Guest memory index; the facade selects zero.
     * @param alias Borrowed UTF-8 byte offset.
     * @param length Exact alias byte count in 1..255.
     * @param owner Caller-owned eight-byte output handle slot.
     * @return Original ABI errno; a handle is acquired only on zero.
     * @details Output remains unowned on failure; aliases cannot create a grant.
     */
    static int open(int memory, long alias, long length, long owner)
    {
        return Raw.capability_open(memory, alias, length, owner);
    }

    /**
     * @brief Retire one owned capability with a single close attempt.
     * @param owner Full opaque i64 handle acquired by this instance.
     * @return Independent cleanup errno; an error may still mean retired.
     * @details Never retry this close or interpret it as stopping robot motion.
     */
    static int close(long owner)
    {
        return Raw.capability_close(owner);
    }

    /**
     * @brief Perform one bounded synchronous service operation.
     * @param owner Owned service-call capability.
     * @param memory Guest memory index, zero for this facade.
     * @param request Borrowed canonical request offset.
     * @param requestLength Exact canonical request byte count.
     * @param response Caller-owned output buffer offset.
     * @param capacity Output buffer capacity in bytes.
     * @param length Caller-owned eight-byte output-length slot.
     * @return Original ABI errno; inspect output only according to its actual status.
     * @details The service is attempted once. Error 90 does not prove that the
     * required-length slot was written; no request is replayed automatically.
     */
    static int call(long owner, int memory, long request, long requestLength, long response, long capacity, long length)
    {
        return Raw.service_call(owner, memory, request, requestLength, response, capacity, length);
    }

    /**
     * @brief Activate one granted topic subscription.
     * @param owner Owned topic-subscribe capability.
     * @return Original ABI errno.
     * @details Success does not imply the first sample is already queued.
     */
    static int subscribe(long owner)
    {
        return Raw.topic_subscribe(owner);
    }

    /**
     * @brief Consume one complete queued canonical topic sample.
     * @param owner Owned active subscription.
     * @param memory Guest memory index, zero for this facade.
     * @param response Caller-owned output buffer offset.
     * @param capacity Exact output capacity.
     * @param length Caller-owned eight-byte output-length slot.
     * @return Original ABI errno; 11 means the queue is currently empty.
     * @details A failed or consumed sample is never silently retried.
     */
    static int poll(long owner, int memory, long response, long capacity, long length)
    {
        return Raw.event_poll(owner, memory, response, capacity, length);
    }
}
