/**
 * @file command_output.js
 * @brief Supply ordinary command print/console.log through the genuine VM output binding.
 * @details The binding writes guest-produced text to explicitly authorized WASI stdout.
 * Output refusal remains a checked exception with the original numeric status.
 */
globalThis.print = function (...values) {
    const status = __uwvm.output(values.map(value => String(value)).join(" "));
    if (status !== 0) {
        const error = new Error("WASI stdout write failed");
        error.code = status;
        throw error;
    }
};
globalThis.console = {log: globalThis.print};
