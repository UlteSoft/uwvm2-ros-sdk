/**
 * @file php/port/network/include/arpa/nameser_compat.h
 * @brief Expose the original DNS compatibility aliases through nameser.h.
 * @details This include-only compatibility header owns no parser state, allocation or resolver operation; all
 * original DNS layout declarations remain in the selected nameser header.
 */
#include <arpa/nameser.h>
