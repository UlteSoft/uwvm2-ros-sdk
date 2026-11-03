/**
 * @file native.h
 * @brief Register the static GNU R raw ROS import functions.
 * @details Call only after genuine R initialization. Registration opens no native
 * capability, performs no dynamic loading and installs no language parser.
 */
#ifndef UWVM_R_NATIVE_H
#define UWVM_R_NATIVE_H

/**
 * @brief Register the bounded .Call functions with R's embedding DLL registry.
 * @details The registry is owned by the initialized R interpreter. Applications
 * own every explicit alias, handle and close attempt. Call once per instance.
 */
void uwvm_r_register_native(void);

#endif
