/**
 * @file php/port/network/source/htons.c
 * @brief Retain the local musl 16-bit htons byte-order conversion.
 * @details The original host-order union probe selects the unchanged byte-swap expression. Values pass by copy;
 * the operation owns no allocation and performs no native network I/O.
 */
#include <netinet/in.h>
#include <byteswap.h>

/**
 * @brief Convert one 16-bit address word from host order to network order.
 * @details The retained musl union probe and byte-swap operation use no network service or allocation.
 * @param n Original 16-bit word passed by value; no pointer or ownership is involved.
 * @return The same 16 value bits reordered as required by the host byte order.
 */
uint16_t htons(uint16_t n)
{
    union
    {
        int i;
        char c;
    } u = {1};

    return u.c ? bswap_16(n) : n;
}
