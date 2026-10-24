# TypeScript scalar-library example

Read the SDK TypeScript language manual for the source ABI and ownership rules.
Run `xmake f -y -a wasm32 -p wasm-wasip1`, then `xmake`. This independent project
uses ordinary target kinds and dependencies. Its consumer checks two complete
rounds of state, exceptions, invalid return values, closure and fresh creation.
Success exits with status zero. These checks execute inside the Wasm guest.

Review `deployment.json` and select an installed `uwvm2-ros`, then use
`xmake f -y --ros-run-config=deployment.json` and `xmake run consumer`.
Shared variants explicitly preload algorithm under its Xmake identity. No extra
WASI resources or ROS capabilities are granted. A wasm64 build also needs the
matching deployment target and explicit memory64/table64 runtime switches.

中文：本目录独立使用 Xmake 原有 binary/static/shared 与 add_deps。构建后，
消费者在真实 guest 内执行两轮状态、异常、错误返回值、关闭与重新创建断言。
先审查 deployment.json 并配置已安装的 uwvm2-ros，再显式选择该配置执行
xmake run consumer。shared 变体按 algorithm 身份预加载，不授予额外 WASI
资源或 ROS 权限；wasm64 需要同步修改部署 target 并明确启用 memory64/table64。
