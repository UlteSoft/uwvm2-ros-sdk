# uwvm2-ros-sdk

Language bindings, robot platform SDKs, independent Xmake examples, and
precompiled WebAssembly development inputs for
[uwvm2-ros](https://github.com/UlteSoft/uwvm2-ros).

This repository provides the **SDK**. The virtual machine, runtime permissions
and VM implementation are maintained in the separate **uwvm2-ros** repository.
The SDK root contains `include`, `src`, `lib`, `share`, `tools`, `example` and
`document` directly; there is no additional enclosing `sdk` directory.

## Obtain the complete SDK

Install [Git LFS](https://git-lfs.com/) before cloning, then run:

```sh
git lfs install
git clone https://github.com/UlteSoft/uwvm2-ros-sdk.git
cd uwvm2-ros-sdk
git lfs pull
git lfs fsck
export UWVM_ROS_SDK_ROOT="$PWD"
```

Git LFS stores the actual precompiled host tool bundles, Wasm interpreters,
static libraries and target startup objects. Keep these files: they are SDK
development inputs. A checkout containing only LFS pointer text is incomplete.

On a supported compiler host, each qualified example builds with Xmake using
the bundled toolchain. Xmake verifies and extracts the precompiled inputs into
its cache; it does not first rebuild the compiler or interpreter. The current
bundled compiler host is Linux x86_64. QEMU AArch64 runtime checks do not imply
that an AArch64 compiler-host bundle is available.

For example, with Xmake 2.9.8 or newer installed:

```sh
cd example/platform/unitree/c/ros2/low_state
xmake
```

Building a Wasm module does not require the uwvm2-ros executable. Running a
module with `xmake run` requires an installed uwvm2-ros, the native ROS resources
needed by that example, and explicitly configured WASI/ROS permissions. Follow
the selected example's manual for its architecture, ROS distribution and
deployment configuration. The current platform-bound runtime uses
`--runtime-aot`; checked native unwind is mandatory and has no public control
option. The common ROS and empty-authority launchers rely on that product contract. A missing
or failed native unwind check stops the launch. An embedded Python/JavaScript
engine remains a Wasm guest; selecting VM AOT does not certify language AOT.

## Documentation and qualification

- [English SDK review and current limitations](document/REVIEW.en_US.md)
- [中文 SDK 审查与当前限制](document/REVIEW.zh_CN.md)
- [Platform manuals](document/platform)
- [Language manuals](document/language)
- [Independent platform examples](example/platform)
- [Public directory layout](document/LAYOUT.en_US.md) / [公共目录规范](document/LAYOUT.zh_CN.md)

The SDK is under development. A language or platform directory records source
availability; it does not certify every architecture, library kind or native
ROS transaction. The review documents retain the exact tested scopes and open
work. Repository separation does not expand those qualifications.

## Repository contents

| Directory | Purpose |
|---|---|
| `include` | Public language bindings, platform APIs and target headers |
| `src` | SDK implementations, upstream interpreter sources and native bridges |
| `lib` | Required target libraries, startup objects and Wasm interpreters |
| `share` | Interface catalogs, version pins, licenses and precompiled host tools |
| `tools` | Maintained build, packaging and development utilities |
| `example` | Independent Xmake application and library projects |
| `document` | Chinese and English development manuals |

Regression tests that demonstrate the VM's language, library and native ROS
support live in [uwvm2-ros/test/0073.ros-tests/sdk](https://github.com/UlteSoft/uwvm2-ros/tree/main/test/0073.ros-tests/sdk).
Test drivers, fixtures and execution evidence are maintained in that VM
repository. SDK application examples and the tools needed to build them remain
here. Private SDK orchestration and candidate deliveries stay in the ignored
`.tmp` directory. Directory-level `.gitignore` files exclude regenerable build
products without excluding the shipped precompiled inputs.

## 中文说明

本仓库提供 SDK，底层虚拟机在 `UlteSoft/uwvm2-ros` 独立维护。原来的 SDK
目录内容已完整迁入此仓库根目录。请安装 Git LFS 并执行上面的克隆、拉取命令，
否则获得的可能只是大文件指针，无法使用预编译开发工具。

`lib` 中的 Wasm 解释器、静态库及启动对象，以及 `share/toolchains` 中的预编译
工具链均为正式开发输入，全部保留。已验收示例通过 Xmake 直接构建用户程序，
无需先从源码构建编译器或解释器。`xmake run` 另需安装 uwvm2-ros，并按示例
手册手动配置权限和原生 ROS 环境。当前平台绑定运行时使用
`--runtime-aot`；原生 Unwind 自检和崩溃栈恢复为强制产品能力，不提供控制选项。公共 ROS
与空权限启动器使用这一约定；原生 Unwind 检查失败时停止运行。嵌入的 Python、JavaScript
解释器仍作为 Wasm 客体运行，VM 使用 AOT 不代表该语言已通过原生 AOT 验收。
具体支持范围以双语审查文档为准。

多语言、动静态库及原生 ROS 的回归测试维护在
[uwvm2-ros 的测试目录](https://github.com/UlteSoft/uwvm2-ros/tree/main/test/0073.ros-tests/sdk)，
用于验证虚拟机的实际支持能力。SDK 仓库保留用户开发所需的示例、构建工具和
预编译组件，不收录测试运行结果与中间产物。

## License

The repository is licensed under [MIT](LICENSE). Existing per-file notices and
bundled third-party components retain their applicable licenses. See
[THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) and the component license files.
