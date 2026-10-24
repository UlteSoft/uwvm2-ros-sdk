/**
 * @file php/port/network/include/netinet/in_systm.h
 * @brief Retain the original fixed-width Internet protocol support typedefs.
 * @details The typedefs describe network packet scalar storage without allocating packet buffers or adding
 * transport operations.
 */
#ifndef _NETINET_IN_SYSTM_H
#define _NETINET_IN_SYSTM_H

#include <stdint.h>

typedef uint16_t n_short;
typedef uint32_t n_long, n_time;

#endif
