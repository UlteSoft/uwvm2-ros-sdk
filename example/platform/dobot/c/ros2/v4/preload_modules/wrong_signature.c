/** @file wrong_signature.c
 * @brief Negative consumer: require rejection of i64/i64 against algorithm's i32/i32 export.
 * @details The runtime must reject before entering this main. This is not a successful application.
 */
#include <stdint.h>
__attribute__((import_module("algorithm"), import_name("score"))) uint64_t wrong_score(uint64_t value);

int main(void)
{
    return (int)wrong_score(1);
}
