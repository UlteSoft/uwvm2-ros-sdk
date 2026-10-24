# FANUC 控制器与上游审计

[FANUC-CORPORATION/fanuc_driver](https://github.com/FANUC-CORPORATION/fanuc_driver/tree/da5db3f611cdc9dffe687e056c4e79bea584bf5c), `da5db3f611cdc9dffe687e056c4e79bea584bf5c`.

锁定的 main 版本面向 Jazzy；Humble 需要另一个分支及独立锁。完整目录保留 FANUC 与 RMI 消息/服务、原始 INITIAZLIE 常量拼写和 ON/ZERODN 等字符串默认值。1001 点的原始正弦轨迹使用独立容量目录，不能截短为普通目录的 8 点。所有实际关节、组、前缀和限制必须与控制器一致。STOP/START 仅表示驱动控制状态；FJT 目标取消、终态和物理停止另行观测。

完整原始资源、逐文件哈希和选择条件见 `share/platform/fanuc/driver-audit.json`。本次不执行驱动、固件更新或实体控制器命令。
