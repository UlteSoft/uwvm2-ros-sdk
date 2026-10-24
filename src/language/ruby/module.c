/**
 * @file module.c
 * @brief Enter the existing genuine ruby VM through a typed Core library ABI.
 * @details The checked source slot is the original initialized application
 * region of command.c, included once through the maintained embedding source.
 * Source is parsed by the real VM; the producer changes no code/import/export
 * sections. Ordinary Xmake integration remains separately qualified.
 */
#include "embed.c"
#include <language/common/module.h>

static unsigned module_state;
static uint32_t module_status;
#ifdef UWVM_MODULE_REACTOR
void _initialize(void);
static unsigned libc_initialized;
#endif

/** @brief Return the immutable scalar interface version without VM effects. */
uint32_t uwvm_library_abi_version(void)
{
    return 1;
}

/** @brief Evaluate complete original source at most once in this instance. */
uint32_t uwvm_library_init(void)
{
#ifdef UWVM_MODULE_REACTOR
    if (!libc_initialized)
    {
        libc_initialized = 1;
        _initialize();
    }
#endif
    if (module_state == 2)
    {
        return module_status = 125;
    }
    if (module_state == 1)
    {
        return module_status = 0;
    }
    if (module_state == 3)
    {
        return module_status;
    }
    module_state = 3;
    uint32_t length = uwvm_load32(application.length);
    module_status = uwvm_ruby_embed_eval((char const*)application.source, length);
    if (module_status == 0)
    {
        module_state = 1;
    }
    return module_status;
}

/** @brief Preserve a genuine source result and its independent operation status. */
int32_t uwvm_library_call_i32(int32_t value)
{
    if (uwvm_library_init() != 0)
    {
        return 0;
    }
    int32_t result = uwvm_ruby_embed_call_i32("Uwvm::Library", "call_i32", value);
    module_status = uwvm_ruby_embed_last_status();
    return result;
}

/** @brief Observe status without running or retrying any source operation. */
uint32_t uwvm_library_status(void)
{
    return module_status;
}

/** @brief Retire this VM once; a new independent instance is needed afterward. */
uint32_t uwvm_library_retire(void)
{
    if (module_state == 2)
    {
        return module_status = 125;
    }
    module_state = 2;
    return module_status = uwvm_ruby_embed_retire();
}
