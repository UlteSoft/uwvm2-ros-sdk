/**
 * @file bias.d
 * @brief Add an explicit scalar bias in a separately archived D object.
 * @details The archive contributes machine code only when its symbol is used.
 * It requires no allocator, filesystem access, ROS owner, or module initializer.
 */
module library_bias;

/**
 * @brief Add eleven using unsigned arithmetic in the archive producer.
 * @param value Scalar value supplied by the Zig consumer.
 * @return The biased unsigned result.
 */
extern(C) uint scalar_bias(uint value) @nogc nothrow
{
    return value + 11;
}
