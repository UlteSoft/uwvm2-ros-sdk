/** Finite guest codec fixtures. No runtime/native snapshot authority is minted. */
#include <platform/ros/transplate/ros2/rmw/v7_3_4/qos_snapshot.h>
#include <stdio.h>
#if !defined(__wasm__)
#error "Run these data-codec cases in genuine Wasm"
#endif
static int fail(unsigned line)
{
    fprintf(stderr, "QoS guest codec assertion at line %u\n", line);
    return 0;
}
#define CHECK(x) do { if (!(x)) return fail(__LINE__); } while (0)
static void put(uint8_t * p, uint64_t value, size_t n)
{
    for (size_t i = 0; i < n; ++i) p[i] = (uint8_t)(value >> (8 * i));
}
static uwvm_ros2_rmw_qos_binding binding(void)
{
    uwvm_ros2_rmw_qos_binding b = {UINT64_C(0x100000001), 2, 3, 4, 5};
    return b;
}
static void fixture(uint8_t bytes[256])
{
    memset(bytes, 0, 256);
    put(bytes, UINT32_C(0x45524d55), 4); put(bytes + 4, 1, 2);
    bytes[6] = 2; bytes[7] = 2; put(bytes + 8, 256, 4);
    bytes[12] = 1; bytes[13] = 1; bytes[14] = 1;
    put(bytes + 16, UINT64_C(0x100000001), 8);
    put(bytes + 24, 2, 8); put(bytes + 32, 3, 8);
    put(bytes + 40, 4, 8); put(bytes + 48, 5, 8);
    put(bytes + 64, 1, 4); put(bytes + 68, 1, 4);
    put(bytes + 72, 2, 4); put(bytes + 76, 2, 4);
    put(bytes + 80, 10, 8); bytes[224] = 1;
}
static int decode_fixture(unsigned * vectors)
{
    uint8_t bytes[256]; fixture(bytes);
    uwvm_ros2_rmw_qos_binding expected = binding();
    uwvm_ros2_rmw_qos_snapshot s;
    CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 256, &expected, &s) == 0);
    CHECK(s.values[0].depth == 10 && s.values[0].liveliness == 2);
    CHECK(s.values[0].avoid_ros_namespace_conventions == 0 && s.profiles == 1);
    uint32_t native = 99;
    CHECK(uwvm_ros2_rmw_qos_native_liveliness(s.values[0].liveliness, &native) == 0 && native == 3);
    ++*vectors;
    return 1;
}
static int malformed_preserves_output(unsigned * vectors)
{
    const size_t offsets[] = {0, 7, 12, 13, 14, 15, 56, 64, 68, 72, 76, 136, 137, 225};
    for (size_t i = 0; i < sizeof(offsets) / sizeof(offsets[0]); ++i) {
        uint8_t bytes[256]; fixture(bytes); bytes[offsets[i]] = 255;
        uwvm_ros2_rmw_qos_snapshot s, original;
        memset(&s, 0xa5, sizeof(s)); memcpy(&original, &s, sizeof(s));
        uwvm_ros2_rmw_qos_binding expected = binding();
        CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 256, &expected, &s) != 0);
        CHECK(memcmp(&s, &original, sizeof(s)) == 0);
        ++*vectors;
    }
    uint8_t bytes[256]; fixture(bytes); put(bytes + 4, 2, 2);
    uwvm_ros2_rmw_qos_snapshot s; uwvm_ros2_rmw_qos_binding expected = binding();
    CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 256, &expected, &s) == UWVM_ROS_QOS_UNSUPPORTED_VERSION);
    ++*vectors;
    return 1;
}
static int exact_extent(unsigned * vectors)
{
    uint8_t bytes[257]; fixture(bytes);
    uwvm_ros2_rmw_qos_binding expected = binding();
    for (size_t n = 0; n < 256; ++n) {
        uwvm_ros2_rmw_qos_snapshot s, original;
        memset(&s, 0xa5, sizeof(s)); memcpy(&original, &s, sizeof(s));
        CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, n, &expected, &s) == UWVM_ROS_QOS_INVALID);
        CHECK(memcmp(&s, &original, sizeof(s)) == 0);
        ++*vectors;
    }
    uwvm_ros2_rmw_qos_snapshot s;
    CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 257, &expected, &s) == UWVM_ROS_QOS_INVALID);
    ++*vectors;
    return 1;
}
static int foreign_binding(unsigned * vectors)
{
    uint8_t bytes[256]; fixture(bytes);
    const size_t offsets[] = {16, 24, 32, 40, 48};
    for (size_t i = 0; i < 5; ++i) {
        uint8_t changed[256]; memcpy(changed, bytes, 256); ++changed[offsets[i]];
        uwvm_ros2_rmw_qos_binding expected = binding(); uwvm_ros2_rmw_qos_snapshot s, original;
        memset(&s, 0xa5, sizeof(s)); memcpy(&original, &s, sizeof(s));
        CHECK(uwvm_ros2_rmw_qos_snapshot_decode(changed, 256, &expected, &s) == UWVM_ROS_QOS_FOREIGN_BINDING);
        CHECK(memcmp(&s, &original, sizeof(s)) == 0);
        ++*vectors;
    }
    return 1;
}
static int depth_narrowing(unsigned * vectors)
{
    const uint64_t good[] = {0, 10, INT32_MAX};
    for (size_t i = 0; i < 3; ++i) {
        int32_t value = -1;
        CHECK(uwvm_ros2_rmw_qos_depth_i32(good[i], &value) == 0 && value == (int32_t)good[i]);
        ++*vectors;
    }
    const uint64_t bad[] = {UINT64_C(2147483648), UINT64_MAX};
    for (size_t i = 0; i < 2; ++i) {
        int32_t value = -1;
        CHECK(uwvm_ros2_rmw_qos_depth_i32(bad[i], &value) == UWVM_ROS_QOS_OVERFLOW && value == -1);
        ++*vectors;
    }
    return 1;
}
static int duration_specials(unsigned * vectors)
{
    const uwvm_ros2_rmw_qos_duration values[] = {
        {0,0}, {9223372036ULL,854775807ULL}, {9223372036ULL,854775806ULL}, {7,23}};
    const unsigned kinds[] = {1,2,3,0};
    for (size_t i = 0; i < 4; ++i) {
        unsigned kind = 99;
        CHECK(uwvm_ros2_rmw_qos_duration_classify(values[i], 1, &kind) == 0 && kind == kinds[i]);
        ++*vectors;
    }
    unsigned kind = 99;
    CHECK(uwvm_ros2_rmw_qos_duration_classify(values[2], 2, &kind) == 0 && kind == 0);
    ++*vectors;
    uwvm_ros2_rmw_qos_duration invalid = {0,1000000000ULL}; kind = 99;
    CHECK(uwvm_ros2_rmw_qos_duration_classify(invalid, 1, &kind) == UWVM_ROS_QOS_INVALID && kind == 99);
    ++*vectors;
    return 1;
}
static int lifecycle_shape(unsigned * vectors)
{
    uint8_t bytes[256]; fixture(bytes);
    uwvm_ros2_rmw_qos_binding expected = binding(); expected.incarnation = 0;
    uwvm_ros2_rmw_qos_snapshot s, original;
    memset(&s, 0xa5, sizeof(s)); memcpy(&original, &s, sizeof(s));
    CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 256, &expected, &s) == UWVM_ROS_QOS_INVALID);
    CHECK(memcmp(&s, &original, sizeof(s)) == 0);
    ++*vectors;
    bytes[6] = 1;
    CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 256, &expected, &s) == 0 && s.binding.incarnation == 5);
    ++*vectors;
    return 1;
}
static int independent_value_copy(unsigned * vectors)
{
    uint8_t bytes[256]; fixture(bytes); uwvm_ros2_rmw_qos_snapshot s;
    uwvm_ros2_rmw_qos_binding expected = binding();
    CHECK(uwvm_ros2_rmw_qos_snapshot_decode(bytes, 256, &expected, &s) == 0);
    memset(bytes, 0, 256);
    CHECK(s.values[0].depth == 10 && s.binding.incarnation == 5 && s.gid[0] == 1);
    ++*vectors;
    return 1;
}
int main(int argc, char ** argv)
{
    if (argc != 2) return 1;
    struct testcase { const char * name; int (*run)(unsigned *); };
    const struct testcase tests[] = {
        {"decode-fixture",decode_fixture}, {"malformed-preserves-output",malformed_preserves_output},
        {"exact-extent",exact_extent}, {"foreign-binding",foreign_binding},
        {"depth-narrowing",depth_narrowing}, {"duration-specials",duration_specials},
        {"lifecycle-shape",lifecycle_shape}, {"independent-value-copy",independent_value_copy}};
    for (size_t i = 0; i < sizeof(tests) / sizeof(tests[0]); ++i) {
        if (strcmp(argv[1], tests[i].name) != 0) continue;
        unsigned vectors = 0;
        if (!tests[i].run(&vectors)) return 1;
        printf("{\"case\":\"%s\",\"vectors\":%u}\n", tests[i].name, vectors);
        return 0;
    }
    return 1;
}
