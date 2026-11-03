/**
 * @file qdPDF.h
 * @brief Maintain the original R implementation for the standalone Wasm runtime.
 * @details Original algorithms, licensing and copyright remain intact.
 * Target-specific behavior is documented by the adjacent port manifest.
 */
#include <R.h>
#include <R_ext/QuartzDevice.h>

QuartzDesc_t QuartzPDF_DeviceCreate(void* dd, QuartzFunctions_t* fn, QuartzParameters_t* par);
