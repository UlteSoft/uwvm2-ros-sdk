/** @brief Maintain computation state inside the actual JavaScript module instance. */
let calls = 0;
globalThis.apply = function(a, b) {
    if (a === -1)
        throw new Error("controlled language exception");
    if (a === -2)
        return "invalid return type";
    calls += 1;
    return a * 3 + b + calls;
};
