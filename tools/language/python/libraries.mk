## @file cpython_libraries.mk
## @brief Preserve the genuine configured CPython static link libraries.
## @details GNU Make expands the actual freshly generated target Makefile. Its
## ordinary undefined-variable and nested-variable semantics remain intact.
## The destination is an explicit new file inside the dedicated private tmpfs.

.PHONY: uwvm-python-write-libraries

uwvm-python-write-libraries:
	$(file >$(UWVM_PYTHON_LIBRARIES_OUTPUT),$(LIBS))
	$(file >>$(UWVM_PYTHON_LIBRARIES_OUTPUT),$(MODLIBS))
	$(file >>$(UWVM_PYTHON_LIBRARIES_OUTPUT),$(SYSLIBS))
	@:
