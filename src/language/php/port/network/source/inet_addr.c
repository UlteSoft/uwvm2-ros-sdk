/**
 * @file php/port/network/source/inet_addr.c
 * @brief Convert legacy IPv4 presentation text using the retained local musl parser.
 * @details The API returns a network-order address word and preserves the traditional all-ones failure ambiguity.
 * Parsing never resolves names, opens sockets or allocates a result owner.
 */
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

/**
 * @brief Parse the retained legacy one-to-four-component IPv4 notation.
 * @details No network lookup, allocation or native descriptor is used.
 * @par Parameters
 * 1. Borrowed NUL-terminated input with the original musl base-selection rules.
 * 2. Caller-owned struct in_addr; a late range failure may leave earlier address bytes written.
 * @return One for a valid address, or zero for malformed/out-of-range components.
 */
int __inet_aton(const char*, struct in_addr*);

/**
 * @brief Convert legacy IPv4 text into its network-order address word.
 * @param p Borrowed NUL-terminated IPv4 text parsed by the retained local algorithm.
 * @return The network-order address, or (in_addr_t)-1 for invalid text; the all-ones address is ambiguous by this
 * legacy API.
 */
in_addr_t inet_addr(const char* p)
{
    struct in_addr a;
    if (!__inet_aton(p, &a))
        return -1;
    return a.s_addr;
}
