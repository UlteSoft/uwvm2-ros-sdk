/**
 * @file php/port/network/source/ntohl.c
 * @brief Retain the local musl 32-bit ntohl byte-order conversion.
 * @details The original host-order union probe selects the unchanged byte-swap expression. Values pass by copy;
 * the operation owns no allocation and performs no native network I/O.
 */
#include <netinet/in.h>
#include <byteswap.h>

/**
 * @brief Convert one 32-bit address word from network order to host order.
 * @details The retained musl union probe and byte-swap operation use no network service or allocation.
 * @param n Original 32-bit word passed by value; no pointer or ownership is involved.
 * @return The same 32 value bits reordered as required by the host byte order.
 */
uint32_t ntohl(uint32_t n)
{
    union
    {
        int i;
        char c;
    } u = {1};

    return u.c ? bswap_32(n) : n;
}
