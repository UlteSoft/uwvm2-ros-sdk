// SPDX-License-Identifier: Apache-2.0
/**
 * @file guest.d.ts
 * @brief Type the existing QuickJS guest services without creating new authority.
 * @details These declarations describe the shared engine, not browser or Node
 * services. ROS calls remain inside the SDK's original typed platform bindings.
 * Optional exitCode is read by the engine after application evaluation.
 */
interface UwvmGuestServices
{
    /** @brief Immutable process arguments; element zero is the application name. */
    readonly argv: readonly string[];

    /** @brief Write a UTF-8 line to the configured WASI output and return errno. */
    output(text: string): number;

    /** @brief Request a bounded millisecond pause; return the original errno. */
    pause_ms(milliseconds: number): number;
}

/** @brief Existing engine services; declarations neither add nor widen grants. */
declare const __uwvm: UwvmGuestServices;

/** @brief Application exit status consumed by the genuine QuickJS command host. */
declare var exitCode: number | undefined;

/**
 * @brief Describe the existing bounded scalar-library dependency interface.
 * @details The genuine JS library core supplies this object only when Xmake
 * declares one ordinary static or shared dependency. The low 32 result bits
 * encode an exact signed integer; the high 32 bits carry the original errno.
 */
interface UwvmScalarDependency
{
    /** @brief Observe the loader-owned initialization without repeating it. */
    initialize(): void;

    /** @brief Invoke the producer's integer function and return its packed result. */
    apply(left: number, right: number): bigint;

    /** @brief Release owned producer state; repeated closure succeeds harmlessly. */
    close(): number;
}

/** @brief Optional library binding supplied by the selected genuine engine core. */
declare const __foreign: UwvmScalarDependency;

/**
 * @brief Supply the scalar function evaluated inside the Wasm JavaScript engine.
 * @details A library assigns globalThis.apply explicitly. Declaring its type
 * creates neither an implementation nor an implicit dependency or permission.
 */
declare var apply: (left: number, right: number) => number;
