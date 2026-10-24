# LLVM 23 WASI sysroot 构建与维护

`toolchains.json` 是统一构建入口的机器可读契约，其中的路径均相对于
SDK 根目录。只有 `tested: true` 的条目才通过实际执行验证；
`compile_link_tested` 仅表示编译和链接成功。迁移调用方之前，请保留现有
LLVM 22 目录。

参考目录共有 24 种组合，涵盖普通、禁用异常、内存标记、禁用异常并启用
内存标记四种配置。目录存在不代表对应 ABI 已得到验证。上游 WASI SDK
目前支持 wasm32，没有定义 wasm64 Preview 1 ABI。此处的
`wasm64-wasip1` 明确采用 Uwvm 专有的 Preview 1 memory64 扩展：指针和
size_t 参数使用 i64，文件描述符和标志保留 i32，导入函数名添加
`_wasm64` 后缀。它必须与实现相同扩展的 Uwvm 运行时配套使用。

本构建配方面向静态、单线程 Preview 1 闭包，不验证 Preview 2、Preview 3、
线程创建、共享库、内存标记，以及 Uwvm memory64 扩展在其他运行时的兼容性。
此闭包未启用 C `setjmp`/`longjmp` 支持。
`noeh` C++ 配置禁用异常。只有实际存在并通过 throw/catch 执行验证的 `eh`
配置，才可视为已验证标准 Wasm 异常指令。具体能力以每个 manifest 条目为准。

## 源码与编译器来源

`share/wasm/source-lock.json` 记录 wasi-libc 完整源码和 LLVM 运行库源码
子集的 Git 版本及 SHA-256。源码归档不包含原工作树未提交修改，也不包含
预编译目标库。`prepare_wasm64.py` 仅在隔离构建目录生成适配后的源码，其
JSON 输出逐项列出被拓宽的导入参数，便于 ABI 审核。

脚本同时检查 LLVM 主版本必须为 23，且编译器必须包含 WebAssembly 后端。
本次使用 LLVM 官方 23.1.4 Linux x86_64 发布包，其摘要记录在
`llvm23-compiler-artifact.json`。仅声明与官方发布 API 摘要一致，不声称
完成 GPG 或 Sigstore 验证。

运行库源码采用 source lock 中记录的 LLVM 23 开发版本，并使用官方
23.1.4 编译器重新构建。memory64 适配还将 compiler-rt 浮点比较函数的
返回类型修正为 i32，与 LLVM Wasm libcall ABI 保持一致。两个异常 tag
汇编文件单独启用 `-fwasm-exceptions`，其他 builtins 保持普通代码生成。
binary128 比较及 throw/catch 测试覆盖了这些容易遗漏的 ABI 要求。

## Linux 重建步骤

先在本地完成源码修改，再将完整 `tools/wasm`、`src/wasm` 和 `share/wasm`
目录通过 SCP 复制到隔离 Linux 源码目录。所有编译和测试均在已授权的
64 GiB、禁用 swap 的容器中执行；脚本会根据当前进程的 cgroup 路径检查
`memory.max=68719476736` 和 `memory.swap.max=0`。最多使用两个编译任务。

重建需要 Python 3.11 或更新版本、CMake 3.26 或更新版本、Ninja、固定版本
源码缓存，以及 LLVM 23 宿主工具。guest 闭包构建不使用 LLVM 22 编译器。
Xmake 使用已构建闭包时，不需要预装 Python、CMake、Ninja 或 C/C++ 编译器。

上游原件保存在 SDK 外部源码缓存中。将 `SDK`、`WORK`、`LLVM23`、
`SOURCE_CACHE` 分别设置为容器可见的 SDK、工作目录、LLVM 23 工具链及
源码缓存的绝对路径，然后执行：

```sh
python3 "$SDK/tools/wasm/build_llvm23_sysroots.py" \
  --sdk "$SDK" --work "$WORK" --toolchain "$LLVM23" \
  --source-cache "$SOURCE_CACHE" \
  --cmake /host/usr/bin/cmake --ninja /host/usr/bin/ninja \
  --targets wasm32-wasip1 wasm64-wasip1 --profiles noeh eh --jobs 2
python3 "$SDK/tools/wasm/verify_llvm23_sysroots.py" \
  --sdk "$SDK" --work "$WORK/acceptance" --toolchain "$LLVM23" \
  --runtime "$UWVM_ROS_RUNTIME"
```

使用 `/host/usr/bin/cmake` 时，通过容器的 `LD_LIBRARY_PATH` 提供宿主机
CMake 依赖。clang 23 不可用时，必须修复工具链，不得回退到 clang 22。
compiler-rt、wasi-libc、libc++、libc++abi 以及可选的 unwinder 均从固定版本
源码重新编译。完整命令记录保存在 manifest 和隔离工作目录中。

## 使用构建产物

编译时同时指定 manifest 中的 triple、sysroot 和 resource_dir，例如：

```sh
clang --target=wasm32-wasip1 \
  --sysroot="$SDK/lib/wasm/llvm23/noeh/wasm32-wasip1" \
  -resource-dir="$SDK/lib/language/cfamily/clang/23" hello.c -o hello.wasm
clang++ --target=wasm32-wasip1 \
  --sysroot="$SDK/lib/wasm/llvm23/noeh/wasm32-wasip1" \
  -resource-dir="$SDK/lib/language/cfamily/clang/23" \
  -stdlib=libc++ -fno-exceptions hello.cpp -o hello-cxx.wasm
```

头文件通过 SDK 内部的相对符号链接接入 Clang 的标准 sysroot 搜索路径。
`eh` 配置还需要条目中的 `cxxflags` 和 `ldflags`，包括
`-fwasm-exceptions -mllvm -wasm-use-legacy-eh=false` 及 `-lunwind`。
memory64 必须使用对应 `wasm64-wasip1` 条目及其 sysroot，不能只修改
wasm32 构建的 target 参数。

通过 Uwvm 执行时还必须传入条目中的 `runtime_flags`。memory64 输出同时
使用 memory64 和 table64，需要
`--wasm-feature-enable-memory64 --wasm-feature-enable-table64`。验收程序
除了执行普通 64 位 C/C++ 程序，还通过 `fd_write_wasm64` 写入位于 4 GiB
以上的缓冲区。这只验证声明的测试范围，不等同于验证全部 libc 系统调用。

交付前，将生成的版本化库、头文件和 Clang resource 完整目录复制回本地
SDK，并保留相对符号链接。验证报告记录对象架构、最终内存位宽、导入签名、
测试程序摘要、执行输出及未覆盖能力。整体迁移 SDK 后再次验证，以排除
对原始绝对路径的依赖。

## 宿主编译器缓存包

`package_llvm23_host.py` 生成 gzip tar 包，包含官方 Linux x86_64 编译器、
链接器、归档及检查工具、resource 头文件、许可证和来源记录。配套 JSON
提供包 SHA-256、根目录名、可执行文件相对路径及原生运行库依赖，供统一
Xmake bootstrap 使用。审核及发布策略允许之前，缓存包保留在公开 SDK 外。

Linux 包需要 `libc.so.6`、`libm.so.6`、`libgcc_s.so.1`、`libstdc++.so.6`、
`libz.so.1` 和 ELF loader。最低符号版本为 GLIBC 2.34、GLIBCXX 3.4.30、
CXXABI 1.3.13。这些系统库没有打入包中，bootstrap 必须提供或检查它们，
不能仅依据已安装 Xmake 就认定依赖齐全。其他宿主系统和架构需要对应的
固定版本编译器发布包。

另外暂存的 `llvm-23.1.4-linux-x86_64-closure` 原生闭包目录消除了 Linux
x86_64 消费端对这些预装运行库的要求。原始发布程序保留在 `original/bin`，
匹配的 Debian 运行库与 ELF loader 位于 `lib/host-runtime`，资源头文件位于
`lib/clang/23/include`。`share/uwvm/llvm23-host-closure.json` 记录每个文件的
校验和、原始编译器来源、运行库包版本和许可证。常规 `bin/clang`、
`bin/clang++`、`bin/wasm-ld` 及归档工具入口由真正的原生静态 launcher 提供。
它直接使用 Linux 系统调用，不依赖 C 运行库或 ELF interpreter，通过
`/proc/self/exe` 确定安装根并保留原始参数向量；要求 `/proc` 已挂载，执行时
无需 shell、Python、tar 或下载工具。

在 Linux 运行 `prepare_llvm23_host_closure.py --sdk SDK --toolchain LLVM23
--output NEW_DIRECTORY` 可重新准备该目录。launcher 源码位于
`src/wasm/host/llvm23_host_launcher.c`，完整 LLVM 23 构建命令和 `readelf`
证据保存在原生闭包 manifest。运行库 copyright 文本与 LLVM 许可证一并保留，
对应原始源码缓存仍放在 SDK 外。

通过此闭包调用 Clang 时，必须显式传入目标条目的 SDK resource directory
和 `-fintegrated-cc1`；链接使用
`-fuse-ld=ABSOLUTE_CLOSURE_PATH/bin/wasm-ld`。LLVM 23 的 WebAssembly driver
不处理 `--ld-path`，unused-argument 警告不能证明选择了指定链接器。
`-fuse-ld` 的绝对路径保证 Clang 启动的链接器也使用原生 launcher 和自带
loader。清理宿主工具 PATH、清空 `LD_LIBRARY_PATH` 后的完整接受测试保存在
`llvm23-native-host-validation.json`。根层 Xmake 在审核后负责将该原始目录
打包为缓存并完成安装。

上游支持范围：[WASI SDK limitations](https://github.com/WebAssembly/wasi-sdk#notable-limitations)。

验证前将 `UWVM_ROS_RUNTIME` 设置为匹配的已安装 VM 的绝对路径。正式构建统一使用固定 LLVM 23，历史参考布局不能作为默认工具链。
