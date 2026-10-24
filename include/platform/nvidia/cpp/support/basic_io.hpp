/** Checked finite WASIp1 binary/text I/O. Exact real imports, no host stub. */
#pragma once
#include <cstddef>
#include <cstdint>
#if !defined(__wasm__) || !defined(__clang__) || UINTPTR_MAX != UINT32_MAX
# error "These Guest applications require the real Clang wasm32 WASIp1 lane"
#endif
namespace humanoid_io
{
    /**
     * @brief One actual wasm32 WASIp1 counted I/O vector.
     * @details pointer covers bytes stable readable/writable bytes through the
     * corresponding synchronous import; this struct owns no memory or rights.
     * The compile-time guard rejects a host or incompatible pointer ABI.
     * @see read
     * @see write
     */
    struct Vec
    {
        void* pointer;
        std::size_t bytes;
    };

    /**
     * @brief Invoke genuine WASIp1 fd_read with admitted descriptor rights.
     * @details The caller proves all vector/output extents and retains storage
     * through return. Native I/O can block; an outer finite process owner is needed.
     * No ROS, clock, random, network or device permission is granted by this import.
     * @param[in] descriptor Descriptor index, used as stdin (0) by input.
     * @param[in] vectors Readable vectors pointing to writable destinations.
     * @param[in] count Exact vector count.
     * @param[out] actual Writable byte count, meaningful only after status 0.
     * @return Actual WASIp1 errno; output on failure is not interpreted as progress.
     * @see input
     */
    extern "C" __attribute__((import_module("wasi_snapshot_preview1"), import_name("fd_read"))) std::uint32_t
        read(std::uint32_t descriptor, Vec const* vectors, std::uint32_t count, std::uint32_t* actual);
    /**
     * @brief Invoke genuine WASIp1 fd_write on an admitted descriptor.
     * @details Source vectors/bytes and output count remain valid until synchronous
     * return. No additional descriptor, ROS, device or Guest authority follows.
     * @param[in] descriptor Descriptor index, used as stdout (1) by output.
     * @param[in] vectors Readable vectors and complete immutable source extents.
     * @param[in] count Exact vector count.
     * @param[out] actual Writable byte count, interpreted only after success.
     * @return Actual WASIp1 errno; blocking I/O still needs finite outer ownership.
     * @see output
     */
    extern "C" __attribute__((import_module("wasi_snapshot_preview1"), import_name("fd_write"))) std::uint32_t
        write(std::uint32_t descriptor, Vec const* vectors, std::uint32_t count, std::uint32_t* actual);

    /**
     * @brief Read an entire bounded stdin extent without silent EOF.
     * @details Allows at most 32772 bytes and 4096 actual attempts, retrying only
     * EINTR (27). EOF/invalid progress cannot produce partial successful input.
     * Destination may already contain partial data when an error is returned.
     * @param[out] data Proven writable size-byte extent retained until return;
     * concurrent access is forbidden during the synchronous import.
     * @param[in] size Exact required byte count, including zero.
     * @return 0 for complete input, 90 quota, 22 invalid/EOF progress, 110 attempt
     * exhaustion, or actual errno. Requires ordinary stdin read rights; no ROS or
     * device right or preemptive I/O cancellation is implied.
     * @see read
     */
    inline std::uint32_t input(void* data, std::size_t size)
    {
        if(size > 32772)
            return 90;
        std::size_t at{};
        for(unsigned attempts{}; at < size && attempts < 4096; ++attempts)
        {
            std::uint32_t n = UINT32_MAX;
            Vec v{static_cast<unsigned char*>(data) + at, size - at};
            auto e = read(0, &v, 1, &n);
            if(e == 27)
                continue;
            if(e)
                return e;
            if(!n || n > size - at)
                return 22;
            at += n;
        }
        return at == size ? 0 : 110;
    }

    /**
     * @brief Write every byte of one bounded stdout record with checked progress.
     * @details Allows 4096 bytes and 4096 actual attempts, retrying only EINTR (27).
     * Partial external output cannot be rolled back on failure. Requires ordinary
     * stdout access and outer finite ownership for a blocking native import.
     * @param[in] data Proven immutable readable size-byte extent through return.
     * @param[in] size Exact complete length, including zero.
     * @return 0 for full output, 90 quota, 107 invalid/zero progress, 110 attempt
     * exhaustion, otherwise actual WASIp1 errno. No ROS/device permissions change.
     * @see write
     */
    inline std::uint32_t output(char const* data, std::size_t size)
    {
        if(size > 4096)
            return 90;
        std::size_t at{};
        for(unsigned attempts{}; at < size && attempts < 4096; ++attempts)
        {
            std::uint32_t n = UINT32_MAX;
            Vec v{const_cast<char*>(data + at), size - at};
            auto e = write(1, &v, 1, &n);
            if(e == 27)
                continue;
            if(e)
                return e;
            if(!n || n > size - at)
                return 107;
            at += n;
        }
        return at == size ? 0 : 110;
    }

    /**
     * @brief Read one exact little-endian uint32 from admitted local bytes.
     * @details Pure C++20+ arithmetic with no allocation, I/O or permissions. This
     * helper is not a Wasm memory validator; the caller first proves the full extent.
     * @param[in] p At least four readable bytes retained unchanged until return.
     * @return Exact unsigned value, with no alignment assumption or narrowing.
     * @see input
     */
    inline std::uint32_t little32(unsigned char const* p)
    {
        return p[0] | (std::uint32_t(p[1]) << 8) | (std::uint32_t(p[2]) << 16) | (std::uint32_t(p[3]) << 24);
    }
}  // namespace humanoid_io
