# libc file transactions

This complete SDK C command uses `fopen`, `fread`, `fwrite`, `fseeko`, `ftello`, and `fclose` on an explicitly mounted directory. The Xmake tests check the actual file bytes and a sparse offset past 4 GiB, plus create/truncate refusal when the descriptor table is full. Allowed cases first make 100 failing opens to exercise reservation rollback.

Set `UWVM_ROS_SDK_ROOT` and `UWVM_ROS_FILE_TEST_VM`, then configure, build and test this project in a separate build directory. Tests grant the listed WASI interfaces and libc's requested file rights explicitly; no directory is exposed by default.
