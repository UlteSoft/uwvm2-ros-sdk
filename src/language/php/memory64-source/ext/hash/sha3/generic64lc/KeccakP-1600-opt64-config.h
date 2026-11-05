/**
 * @file KeccakP-1600-opt64-config.h
 * @brief Maintain the original PHP and Zend implementation for the standalone Wasm runtime.
 * @details Original algorithms, licensing and copyright remain intact.
 * Target-specific behavior is documented by the adjacent port manifest.
 */
#define KeccakP1600_implementation_config "lane complementing, all rounds unrolled"
#define KeccakP1600_fullUnrolling
#define KeccakP1600_useLaneComplementing
