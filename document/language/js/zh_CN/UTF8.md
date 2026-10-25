# 生成记录中的可移植 UTF-8

共享 JavaScript 记录生成器使用 `ros/js/wire` 完成 UTF-8 转换。QuickJS 不提供
浏览器的 `TextEncoder` 和 `TextDecoder` 全局对象。因此，生成的 bounded 与
original-control 记录、手写客体模块及 TypeScript 应用共用同一套 SDK 实现。

应用的完整模块清单必须包含公开模块 `ros/js/wire`，其文件为
`include/platform/ros/js/wire.mjs`。与其他声明的模块一样，清单必须记录其完整
SHA-256。生成器只生成公开导入，不创建第二套引擎、复制私有编码器或授予
ROS/WASI 权限。

字符串上限按编码后的 UTF-8 字节数计算。编码拒绝内嵌 NUL、未配对的代理项及
超出字节上限的值。解码拒绝非法、过长、截断、超出 Unicode 标量范围的序列和
内嵌 NUL。开头的字节顺序标记保留为字符。空字符串及有效的补充平面字符仍受
支持。两种客体位宽使用相同的规范线格式字节。

bounded 配置对非法值抛出 `TypeError`；original-control 配置抛出错误码为 22
的 `ControlCodecError`。生成的完整读取器仍检查记录长度和尾随字节；UTF-8
转换不能替代这些校验。

已有目录需要通过共享生成器重新生成，并同步更新模块清单中的哈希。生成器的
修复不会自动改写历史生成文件。各平台仍须保留完整记录与原生服务身份的独立
测试。可复用的合成 UTF-8 回归位于 VM 仓库的
`test/0073.ros-tests/sdk/tests/js/generated_utf8`；其验收范围是字符串编解码运行，
不代表原生 ROS 验收。
