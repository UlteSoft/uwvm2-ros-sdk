/* SPDX-License-Identifier: Apache-2.0
 * Complete bounded command entry for the original ROBOTIS obstacle controller.
 * Source attribution and exact original behavior are in controller.h.
 */
#include "controller.h"
#include <stdio.h>
#include <stdlib.h>

static unsigned iterations(char const* text)
{
    unsigned value = 0;
    size_t index, count;
    if(!text || !(count = strlen(text)) || count > 5)
        return 0;
    for(index = 0; index < count; ++index)
    {
        if(text[index] < '0' || text[index] > '9')
            return 0;
        value = value * 10 + (unsigned)(text[index] - '0');
    }
    return value > 0 && value <= 65536 ? value : 0;
}

/* Pure business-logic inspection: u32LE complete scan byte count, the whole
 * generated scan payload, u8 has_raw, optionally a complete48-byte Twist, EOF.
 * Output is f64LE selected minimum, u8 obstacle, then all48 Twist bytes.
 * This mode opens no alias and performs no clock/log/publication import.
 */
static uint32_t step(void)
{
    unsigned char length_bytes[4], scan_wire[ROSWASMC_BOUNDED_2_SENSOR_MSGS_MSG_LASERSCAN_MAX_WIRE_BYTES];
    unsigned char raw_wire[48], output[57];
    uint32_t length, code;
    uint64_t decoded_length;
    int has_raw;
    size_t used = 0;
    uwvm_tb3_obstacle_state state;
    uwvm_tb3_obstacle_scan scan;
    uwvm_tb3_obstacle_decision decision;
    roswasmc_twist raw;
    roswasmc_writer writer;
    roswasmc_reader reader;
    if(fread(length_bytes, 1, sizeof length_bytes, stdin) != sizeof length_bytes)
        return 22;
    reader = roswasmc_reader_init(length_bytes, sizeof length_bytes);
    if(!roswasmc_read_integer(&reader, &decoded_length, 4) || !roswasmc_reader_done(&reader))
        return 22;
    length = (uint32_t)decoded_length;
    if(length > sizeof scan_wire || fread(scan_wire, 1, length, stdin) != length)
        return 22;
    has_raw = fgetc(stdin);
    if(has_raw != 0 && has_raw != 1)
        return 22;
    if(has_raw && fread(raw_wire, 1, sizeof raw_wire, stdin) != sizeof raw_wire)
        return 22;
    if(fgetc(stdin) != EOF || ferror(stdin))
        return 22;
    code = uwvm_tb3_obstacle_init(&state);
    if(!code)
        code = roswasmc_bounded_2_sensor_msgs_msg_LaserScan_decode(scan_wire, length, &scan);
    if(!code)
        code = uwvm_tb3_obstacle_accept_scan(&state, &scan);
    if(!code && has_raw)
        code = roswasmc_decode_twist(raw_wire, sizeof raw_wire, &raw);
    if(!code && has_raw)
        code = uwvm_tb3_obstacle_accept_raw(&state, &raw);
    if(!code)
        code = uwvm_tb3_obstacle_decide(&state, &decision);
    if(code)
        return code;
    writer = roswasmc_writer_init(output, 9);
    if(!roswasmc_write_float64(&writer, decision.minimum_distance_m) || !roswasmc_write_integer(&writer, (uint64_t)decision.obstacle, 1) || writer.size != 9)
        return 22;
    code = roswasmc_encode_twist(&decision.command, output + 9, 48, &used);
    if(code || used != 48)
        return code ? code : 22;
    if(fwrite(output, 1, sizeof output, stdout) != sizeof output || fflush(stdout))
        return 5;
    return 0;
}

/** @brief Enter one bounded pure inspection or real original controller command.
 * @details step consumes the complete binary input documented above and emits
 * the whole decision. quit performs no ROS call. run requires five original
 * receive/publish/clock/log aliases and a finite iteration budget; it reports
 * primary and every independent cleanup status, without any implicit Stop.
 * @param[in] argc Argument count, including the command executable.
 * @param[in] argv Stable NUL-terminated command fields: step; quit; or
 * run SCAN RAW_TWIST PUBLISH_TWIST STEADY_CLOCK INFO_LOG ITERATIONS.
 * @return Process status0 for pure success/quit,22 invalid input, native error,
 *110 exhausted run budget; statuses greater than125 map to125 in this CLI only.
 * @see uwvm_tb3_obstacle_run uwvm_tb3_obstacle_decide
 */
int main(int argc, char** argv)
{
    uwvm_tb3_obstacle_state state;
    uwvm_tb3_obstacle_report report;
    roswasmc_string aliases[5];
    uint32_t code;
    unsigned budget, index;
    if(argc == 2 && !strcmp(argv[1], "step"))
        return (int)step();
    if(argc == 2 && !strcmp(argv[1], "quit"))
        return 0;
    if(argc != 8 || strcmp(argv[1], "run") || !(budget = iterations(argv[7])))
        return 22;
    for(index = 0; index < 5; ++index)
    {
        aliases[index].data = argv[index + 2];
        aliases[index].size = strlen(argv[index + 2]);
    }
    memset(&report, 0, sizeof report);
    code = uwvm_tb3_obstacle_run(aliases, budget, &state, &report);
    if(fprintf(
           stderr,
           "primary=%u cleanup=%u acquired=%u attempted=%zu failed=%zu " "iterations=%u scans=%u raw=%u timer_callbacks=%u publish_attempts=%u " "publish_replies=%u publish_unknown=%d log_attempts=%u log_replies=%u " "log_unknown=%d\n",
           (unsigned)code,
           (unsigned)report.cleanup.cleanup_error,
           report.acquired,
           report.cleanup.attempted,
           report.cleanup.failed,
           report.iterations,
           report.scans,
           report.raw_commands,
           report.timer_callbacks,
           report.publish_attempts,
           report.publish_replies,
           report.publish_unknown,
           report.log_attempts,
           report.log_replies,
           report.log_unknown) < 0 &&
       !code)
        code = 5;
    for(index = 0; index < report.acquired; ++index)
        if(fprintf(stderr, "close[%u]=%u\n", index, (unsigned)report.close_status[index]) < 0 && !code)
            code = 5;
    return code ? (int)(code < 126 ? code : 125) : 0;
}
