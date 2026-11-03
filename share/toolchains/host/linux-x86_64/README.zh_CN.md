# Linux x86-64 构建工具

公共 Xmake 适配器正在使用本目录。每份 JSON 清单指定一个 XMZ 压缩包，并锁定
SHA-256、内部文件和可执行入口。要在仅安装 Xmake 的环境中构建 Wasm，完整 SDK
必须提供这些编译工具输入。

LLVM 23 提供共享的 C 系列编译器、链接器和归档工具，其余包提供真实的
AssemblyScript、MoonBit、JVM 和其他语言前端。各平台共用同一语言的同一版本。
目录名称表示编译工具运行于 Linux x86-64，客体的 wasm32／wasm64 架构另行配置。

Xmake 会校验所选压缩包并将其安装到共享工具缓存。可通过 `ros-tool-cache`
指定缓存位置；默认使用 `XDG_CACHE_HOME/uwvm-ros/host-tools` 或用户目录下的
对应缓存。解压缓存可由发行包重建；当前 installer 在复用缓存前也先检查原归档
存在且 SHA 匹配，有效解压缓存不意味着可以删除清单/归档。缺归档时失败，不由此
安装器下载。本目录只提供构建输入，不证明全部29条语言路线及完整 target/runtime
依赖已能在仅装 Xmake 的 OS bootstrap；冷启动、默认入口及必需公共测试仍须独立验收。

应用和共享模块的输出是 `.wasm`；`static` 目标生成链接阶段使用的 Wasm 对象归档。
本目录保存编译工具输入。只部署已构建模块无需携带这些宿主 compiler，但仍需真实
取得资格的安装 VM 及 OS/loader/native runtime 闭包。ROS 示例还需匹配受控网关、
type support 和官方 provider，并提供且实际执行逐调用者策略。ELF 路径或 JSON
模板本身不证明部署；编译工具归档解包成功不使单可执行 runtime release 或完整 SDK
安装取得资格。

参见[英文说明](README.md)。

`python-supervisor.json`现提供固定python-build-standalone20260728上游host3.12.13
supervisor。共享`tools/xmake/python_runtime.lua`先复用合适的现有Python，否则经同一
Xmake bundle installer恢复分发XMZ；无效显式`UWVM_SDK_PYTHON`拒绝而不fallback。
独立冷测的3475个安装regular文件包括3474个不改字节的原payload和SOURCE.json，
另1048个原别名。隔离视图缺Python/bwrap、安装缓存空、PATH仅Xmake；外层harness用
既有bwrap。分发归档必需，不证明network-only获取、可信OS bwrap安装、全语言冷部署、
guest CPython engine、source权限或原机器人任务；缺bwrap时native构造在输出前拒绝。
维护者可在已准入环境从`python-supervisor-source.json`固定的原tar.gz重建同字节XMZ：

    python3 -I -S -B /absolute/sdk/tools/xmake/package_python_supervisor.py --sdk /absolute/sdk --archive /absolute/original.tar.gz --output /absolute/new-package --xmake /absolute/xmake

原regular payload逐字节保留，链接仅元数据规范化到已声明regular member；完整安装/
包装检查包括empty file。这是native host supervisor，不替换独立编译的Wasm CPython。

另一个Ubuntu25.10 x86_64候选在缺bwrap时，从签名index固定的4个匹配原OS包stage，
随后拒绝native构造、等待可信OS安装审阅。cold/warm stage及错OS拒绝有实证，安装、
policy加载、缺Python+bwrap当前UR整链未验收。既有先决条件shared029→当前019
native启动/退场已有独立027证据；新冻结028 metadata/033 owner README已声明一致目标source，保留027实际029producer；
这关闭候选声明的一致性缺口，不代替新constructor/当前019或可信安装的实际运行。
六文件须一致审阅/合入，本批仍不覆盖owner01的native README。
