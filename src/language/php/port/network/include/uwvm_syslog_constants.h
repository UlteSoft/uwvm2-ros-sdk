/**
 * @file php/port/network/include/uwvm_syslog_constants.h
 * @brief Retain musl syslog constants and the port's explicit unsupported logger entries.
 * @details Logger calls neither format variadic bytes nor acquire a native logger. Their unchanged implementations
 * set ENOTSUP, and the numeric facility/priority values remain source-compatible.
 */
#ifndef UWVM_PHP_SYSLOG_CONSTANTS_H
#define UWVM_PHP_SYSLOG_CONSTANTS_H
#include <stdarg.h>
/**
 * @brief Report unsupported native logger closure without acquiring logger state.
 * @details Sets errno to ENOTSUP; no socket, file or logger handle is closed.
 */
void closelog(void);
/**
 * @brief Reject native logger connection without retaining caller text.
 * @details Sets errno to ENOTSUP; no logger owner or host side channel is created.
 * @param identity Ignored borrowed identity text.
 * @param options Ignored logger options.
 * @param facility Ignored logger facility.
 */
void openlog(char const* identity, int options, int facility);
/**
 * @brief Reject mutation of an unavailable native logger mask.
 * @param mask Ignored requested mask.
 * @return Minus one with errno ENOTSUP.
 */
int setlogmask(int mask);
/**
 * @brief Reject native log delivery without formatting variadic arguments.
 * @details Sets errno to ENOTSUP; no message is delivered or allocated.
 * @param priority Ignored log priority.
 * @param format Ignored format text.
 * @param ... No variadic argument is read or retained.
 */
void syslog(int priority, char const* format, ...);
/**
 * @brief Reject native log delivery without evaluating format arguments.
 * @details Sets errno to ENOTSUP and emits no native log record.
 * @param priority Ignored log priority.
 * @param format Ignored format text; no bytes are formatted.
 * @param arguments Borrowed va_list left unused; this entry does not consume or end it.
 */
void vsyslog(int priority, char const* format, va_list arguments);
#define LOG_EMERG 0
#define LOG_ALERT 1
#define LOG_CRIT 2
#define LOG_ERR 3
#define LOG_WARNING 4
#define LOG_NOTICE 5
#define LOG_INFO 6
#define LOG_DEBUG 7
#define LOG_PRIMASK 7
#define LOG_PRI(p) ((p) & LOG_PRIMASK)
#define LOG_MAKEPRI(f, p) (((f) << 3) | (p))
#define LOG_MASK(p) (1 << (p))
#define LOG_UPTO(p) ((1 << ((p) + 1)) - 1)
#define LOG_KERN (0 << 3)
#define LOG_USER (1 << 3)
#define LOG_MAIL (2 << 3)
#define LOG_DAEMON (3 << 3)
#define LOG_AUTH (4 << 3)
#define LOG_SYSLOG (5 << 3)
#define LOG_LPR (6 << 3)
#define LOG_NEWS (7 << 3)
#define LOG_UUCP (8 << 3)
#define LOG_CRON (9 << 3)
#define LOG_AUTHPRIV (10 << 3)
#define LOG_FTP (11 << 3)
#define LOG_LOCAL0 (16 << 3)
#define LOG_LOCAL1 (17 << 3)
#define LOG_LOCAL2 (18 << 3)
#define LOG_LOCAL3 (19 << 3)
#define LOG_LOCAL4 (20 << 3)
#define LOG_LOCAL5 (21 << 3)
#define LOG_LOCAL6 (22 << 3)
#define LOG_LOCAL7 (23 << 3)
#define LOG_NFACILITIES 24
#define LOG_FACMASK 0x3f8
#define LOG_FAC(p) (((p) & LOG_FACMASK) >> 3)
#define LOG_PID 0x01
#define LOG_CONS 0x02
#define LOG_ODELAY 0x04
#define LOG_NDELAY 0x08
#define LOG_NOWAIT 0x10
#define LOG_PERROR 0x20
#endif
