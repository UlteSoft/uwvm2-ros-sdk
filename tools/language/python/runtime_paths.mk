## @file cpython_runtime_paths.mk
## @brief Preserve CPython's qualified logical runtime source prefix explicitly.
## @details The genuine getpath.c embeds VPATH as an ordinary C string macro.
## Compiler file-prefix maps do not rewrite ordinary string literals. A private
## target-specific Make variable sets only this runtime configuration string;
## all real source lookup and prerequisite paths retain the private source root.
## @param UWVM_PYTHON_LOGICAL_SOURCE Stable public logical source prefix.

ifeq ($(strip $(UWVM_PYTHON_LOGICAL_SOURCE)),)
$(error The locked logical CPython source prefix must be supplied explicitly)
endif

Modules/getpath.o: private VPATH := $(UWVM_PYTHON_LOGICAL_SOURCE)
