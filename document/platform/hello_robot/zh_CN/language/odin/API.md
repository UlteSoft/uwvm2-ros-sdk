# hello_robot / odin API

公共类型源码位于 `include/platform/hello_robot/odin/`。

完整生成类型、容量、原声明及协议组件见平台 `API_CATALOG.md` 和每个 profile 的 `schema.json`。C/C++/Rust/AS/JS/TinyGo 保留原公开类型；额外语言绑定消费同一份父任务校验的生成器。原生函数只在已显式取得的 capability 上操作；验证不自动取得权限。缺失的公共运行时模块与路线见交付 dependencies.json。

Stretch 的 lift 用米，转角用弧度；轨迹必须保留原 MultiDOF 与容差字段。模型标签不是 homing、运行模式、runstop、工具或校准的证明；SDK 不自动 home、切换模式、解除 runstop 或发送机器人动作。

原始字段顺序、常量、默认值、容量和来源固定在 `share/platform/hello_robot/catalogs/`。
