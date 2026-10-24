--- @brief Execute same-language and cross-language producer checks in actual Lua.
function apply(a, b)
    __foreign.initialize()
    assert(__foreign.apply(4, 7) == 20)
    assert(__foreign.apply(4, 7) == 21)
    assert(__foreign.apply(-1, 7) == 22 << 32)
    assert(__foreign.apply(-2, 7) == 22 << 32)
    assert(__foreign.apply(4, 7) == 22)
    assert(__foreign.close() == 0)
    assert(__foreign.close() == 0)
    assert(__foreign.apply(4, 7) == 20)
    assert(__foreign.close() == 0)
    return 12345
end

assert(apply(0, 0) == 12345)
assert(apply(0, 0) == 12345)
