/**
 * @file native_protocol.h
 * @brief Provide bounded C++17 native metadata output and a finite control gate.
 * @details This maintenance helper creates no ROS entity, robot connection,
 * Guest import, callback, or authority. The owner supplies genuine inherited
 * file descriptors, retains the reader process, and checks its complete result.
 */
#pragma once
#include <array>
#include <charconv>
#include <chrono>
#include <cerrno>
#include <poll.h>
#include <stdexcept>
#include <string_view>
#include <type_traits>
#include <unistd.h>

namespace bounded_native_io
{
    /**
     * @brief Own one bounded native text fragment without dynamic allocation.
     * @details Only the initialized prefix is written. Mutation is synchronous
     * and exclusive to the metadata-reader thread; no native pointer escapes.
     */
    struct fragment
    {
        /** @brief Complete finite owned byte capacity; unused bytes are never read. */
        std::array<char, 512> bytes{};
        /** @brief Initialized prefix extent, always at most bytes.size(). */
        std::size_t size{};
    };

    /**
     * @brief Append one exact literal or full-width integer to a bounded fragment.
     * @tparam Value Original native integer, char, or string-view-compatible value.
     * @param[in,out] text Exclusive owned fragment; a refused fragment is discarded.
     * @param[in] value Immutable native value, borrowed only until return.
     * @return True after complete append; false on the fixed capacity refusal.
     * @details No integer is routed through floating point. This local helper
     * transfers no ownership and performs no file, ROS, or Guest operation.
     */
    template <typename Value>
    bool append(fragment& text, Value const& value)
    {
        if(text.size > text.bytes.size())
        {
            return false;
        }
        if constexpr(std::is_integral_v<Value> && !std::is_same_v<Value, char>)
        {
            auto written = std::to_chars(text.bytes.data() + text.size, text.bytes.data() + text.bytes.size(), value);
            if(written.ec != std::errc{})
            {
                return false;
            }
            text.size = static_cast<std::size_t>(written.ptr - text.bytes.data());
        }
        else
        {
            std::string_view bytes;
            if constexpr(std::is_same_v<Value, char>)
            {
                bytes = {&value, 1};
            }
            else
            {
                bytes = value;
            }
            if(bytes.size() > text.bytes.size() - text.size)
            {
                return false;
            }
            for(char byte: bytes)
            {
                text.bytes[text.size++] = byte;
            }
        }
        return true;
    }

    /**
     * @brief Write all bytes of one already bounded native escaped text value.
     * @param[in] descriptor Actual controller-owned inherited output descriptor.
     * @param[in] text Immutable complete text prefix, borrowed through synchronous return.
     * @throws std::length_error Text exceeds the 16 MiB metadata-source ceiling.
     * @throws std::runtime_error Actual output fails before complete delivery.
     * @details Short writes and EINTR complete the same byte prefix. No source
     * metadata is reacquired, no native ROS owner is created, and no pointer escapes.
     */
    inline void emit(int descriptor, std::string_view text)
    {
        if(text.size() > 16 * 1024 * 1024)
        {
            throw std::length_error{"Native metadata text extent"};
        }
        std::size_t offset = 0;
        while(offset < text.size())
        {
            ssize_t count = ::write(descriptor, text.data() + offset, text.size() - offset);
            if(count < 0 && errno == EINTR)
            {
                continue;
            }
            if(count <= 0)
            {
                throw std::runtime_error{"Native metadata output failed"};
            }
            offset += static_cast<std::size_t>(count);
        }
    }

    /**
     * @brief Write one complete bounded native metadata text fragment.
     * @tparam Values Complete sequence of literal/integer fragment components.
     * @param[in] descriptor Actual inherited native output descriptor owned by the controller.
     * @param[in] values Immutable synchronous fragment inputs; no reference escapes.
     * @throws std::length_error The complete fixed text fragment exceeds 512 bytes.
     * @throws std::runtime_error Actual descriptor output fails before full completion.
     * @details Short writes and EINTR are completed without repeating metadata
     * acquisition. The caller must reject any partial or unsuccessfully terminated receipt.
     */
    template <typename... Values>
    void print(int descriptor, Values const&... values)
    {
        fragment text;
        if(!(append(text, values) && ...))
        {
            throw std::length_error{"Native metadata text extent"};
        }
        emit(descriptor, {text.bytes.data(), text.size});
    }

    /**
     * @brief Await the exact controller-owned input gate with a finite deadline.
     * @param[in] expected Exact one-byte control token; callers use 'I'.
     * @throws std::runtime_error The 30-second gate times out, errors, or receives another token.
     * @details This follows the separately owned SIGSTOP gate. Reading one
     * inherited stdin byte creates no ROS object or Guest execution authority.
     */
    inline void gate(char expected)
    {
        pollfd input{STDIN_FILENO, POLLIN, 0};
        int ready = 0;
        auto deadline = std::chrono::steady_clock::now() + std::chrono::seconds{30};
        while(true)
        {
            auto remaining = std::chrono::duration_cast<std::chrono::milliseconds>(deadline - std::chrono::steady_clock::now()).count();
            if(remaining <= 0)
            {
                break;
            }
            ready = ::poll(&input, 1, static_cast<int>(remaining));
            if(ready < 0 && errno == EINTR)
            {
                continue;
            }
            break;
        }
        if(ready != 1 || !(input.revents & POLLIN))
        {
            throw std::runtime_error{"Native metadata control deadline"};
        }
        char byte{};
        ssize_t count;
        do
        {
            count = ::read(STDIN_FILENO, &byte, 1);
        }
        while(count < 0 && errno == EINTR);
        if(count != 1 || byte != expected)
        {
            throw std::runtime_error{"Native metadata control token"};
        }
    }
}  // namespace bounded_native_io
