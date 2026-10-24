# 平台公共目录规范

源码使用以下层级：

```text
include/platform/<平台>/<语言>/<ros1|ros2>/<配置>/...
src/platform/<平台>/<语言>/<ros1|ros2>/<配置>/...
```

后端层只能是 `ros1` 或 `ros2`，发行版、分支、型号或配置放在下一层。例如，
UBTech 的 main 配置通过 `ubtech/js/ros2/main/records` 导入 JavaScript 记录，
Python 对应 `ubtech.py.ros2.main.records`。Go 模块路径和 D 模块名遵循同样的分层。

`ros.sdk.profile = "ros2_main"` 等配置键仍选择原来的固定目录数据，配置身份
与后端文件夹名称分别维护。已经位于规范后端目录下的完整类型目录保留各自
名称和记录，不会因为文件同名就合并不同版本。

生成器直接输出规范路径，可复用 `tools/shared/backend_layout.py`。Provider
清单、Python 父包、源码模块声明、示例和手册必须同步，不安装旧目录兼容别名。
目录检查维护在虚拟机仓库的 SDK 兼容性测试中；通过目录检查不代表编译器、
解释器、目标位宽或原生 ROS 通信已经验收。
