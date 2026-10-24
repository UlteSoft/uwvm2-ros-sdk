/** @brief Execute every cross-library assertion inside genuine JavaScript. */
globalThis.apply = function(_a, _b) {
    function check(value)
    {
        if (!value)
            throw new Error("foreign producer assertion");
    }
    __foreign.initialize();
    check(__foreign.apply(4, 7) === 20n);
    check(__foreign.apply(4, 7) === 21n);
    check(__foreign.apply(-1, 7) === (22n << 32n));
    check(__foreign.apply(-2, 7) === (22n << 32n));
    check(__foreign.apply(4, 7) === 22n);
    check(__foreign.close() === 0);
    check(__foreign.close() === 0);
    check(__foreign.apply(4, 7) === 20n);
    check(__foreign.close() === 0);
    return 12345;
};

if (globalThis.apply(0, 0) !== 12345 || globalThis.apply(0, 0) !== 12345) throw new Error("actual consumer return");
