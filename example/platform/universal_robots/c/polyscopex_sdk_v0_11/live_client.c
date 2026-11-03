/* SPDX-License-Identifier: Apache-2.0 */
#if !defined(__wasm__)
#error "The historical service client must execute in the actual Wasm Guest"
#endif
#include <universal_robots/transplate/ros2/polyscopex/sdk_v0_11/io.h>
#include <platform/ros2/c/roswasm/ros2.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int integer(char const* text, long maximum, int32_t* output)
{
    char* end; long value;
    if(!text || !*text) return 0;
    errno = 0; value = strtol(text, &end, 10);
    if(errno || *end || value < 0 || value > maximum) return 0;
    *output = (int32_t)value;
    return 1;
}
static int number(char const* text, double* output)
{
    char* end; double value;
    if(!text || !*text) return 0;
    errno = 0; value = strtod(text, &end);
    if(errno || *end || !isfinite(value)) return 0;
    *output = value;
    return 1;
}

/* analog ALIAS PIN current|voltage VALUE
 * digital ALIAS PIN STATE
 * speed ALIAS FRACTION
 *
 * ALIAS must be granted to this actual caller for the exact historical scalar
 * service/type. Alias text selects no endpoint, provider or permission by itself.
 * An official matched native peer/type-support adapter is a prerequisite; no
 * fabricated local transport, legacy-array conversion or host business client is
 * installed here. One validated request, one open, one call, one close attempt.
 */
int main(int argc, char** argv)
{
    unsigned kind; uint32_t error, close_error = 0; int32_t pin, state;
    double value; size_t alias_size;
    uwvm_ur_psx011_analog_request analog = {0};
    uwvm_ur_psx011_digital_request digital = {0};
    uwvm_ur_psx011_speed_request speed = {0};
    uwvm_ur_psx011_response response = {0x5a};
    roswasmc_context context = {roswasmc_ros2_backend()};
    roswasmc_capability cap; roswasmc_result result = {22, 0, 0};
    if(argc < 4) return 22;
    if(!strcmp(argv[1], "analog") && argc == 6)
    {
        uint32_t mode;
        if(!integer(argv[3], 1, &pin) || !number(argv[5], &value)) return 22;
        if(!strcmp(argv[4], "current")) mode = UWVM_UR_PSX011_OUTPUT_CURRENT;
        else if(!strcmp(argv[4], "voltage")) mode = UWVM_UR_PSX011_OUTPUT_VOLTAGE;
        else return 22;
        error = uwvm_ur_psx011_make_analog(pin, mode, value, &analog); kind = 1;
    }
    else if(!strcmp(argv[1], "digital") && argc == 5)
    {
        if(!integer(argv[3], 7, &pin) || !integer(argv[4], 1, &state)) return 22;
        error = uwvm_ur_psx011_make_digital(pin, (uint32_t)state, &digital); kind = 2;
    }
    else if(!strcmp(argv[1], "speed") && argc == 4)
    {
        if(!number(argv[3], &value) || value < 0 || value > 1) return 22;
        error = uwvm_ur_psx011_make_speed((float)value, &speed); kind = 3;
    }
    else return 22;
    if(error) return (int)error;
    alias_size = strlen(argv[2]);
    if(!alias_size || alias_size > 255) return 22;
    roswasmc_capability_init(&cap, &context);
    if(!context.backend->abi_version || context.backend->abi_version() != 1) return 95;
    error = roswasmc_open(&cap, argv[2], alias_size);
    if(!error)
    {
        if(kind == 1) result = uwvm_ur_psx011_set_analog_output_call(&cap, &analog, &response);
        else if(kind == 2) result = uwvm_ur_psx011_set_digital_output_call(&cap, &digital, &response);
        else result = uwvm_ur_psx011_set_speed_fraction_call(&cap, &speed, &response);
        error = result.error;
    }
    if(roswasmc_is_open(&cap)) close_error = roswasmc_close(&cap);
    printf("{\"case\":\"historical-live-service\",\"kind\":%u,\"error\":%u,\"has_length\":%u,\"success_present\":%u,\"success\":%u,\"close_error\":%u}\n",
           kind, (unsigned)error, (unsigned)result.has_length,
           (unsigned)(!error), (unsigned)(error ? 0 : response.success), (unsigned)close_error);
    if(error) return (int)error;
    if(close_error) return (int)close_error;
    return response.success ? 0 : 1;
}
