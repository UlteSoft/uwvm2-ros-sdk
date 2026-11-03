# 已知验收限制

当前尚无完整 SDK 发布验收结论。阅读平台、语言、示例或历史通过回执前，请先
阅读[场景验收说明](simulation-validation.zh_CN.md)。

## 完整上游任务仍是主验收要求

本文不建立任何平台完整原始上游机器人任务通过。每个平台仍需保留上游源码/commit/
许可证、原任务行为 oracle、完整运行依赖及移植补丁，提供真实 Wasm 模块、一键官方
部署和实际 VM 边界负例。已审查的 ABB/FANUC/Yaskawa、RRBot、Fourier、UBTECH 和 Isaac Sim profile
使用 SDK generic C0 step；Unitree 保留通用传感器字节摘要，Kinova typed-feedback
guest 和 PAL 维护的 Java String 子集是额外 SDK 应用。这些均未建立保留完整原始
上游任务及移植补丁的证据。另有独立原始 Unitree Go2 stand 应用现已进入公共树，
保留控制源码及可审查的 CRC/static-library 补丁。普通 wasm32 构建选中了真实
CRC archive 和链接原任务，两个实际产物的声明/成员字节检查通过。这种限定构建
不验收完整框架/依赖移植或官方任务执行。UR/Trossen 的失败占位及 Doosan 明确
缺失的官方场景入口仍是必需缺口。

应用/ROS 层须在真实 Wasm 内运行：任务决策、ROS 客户端调用、回调及反馈处理
不能由原生替身执行。官方原生驱动、虚拟控制器、仿真器、物理/渲染引擎及基础依赖
允许作明确职责的外部环境，无须先移植成 Wasm。记录职责、精确版本、许可及经过
VM 的真实通信；开源与闭源适用同一规则。只有仍原生执行的应用/ROS 任务行为属于
未移植缺口。此处修正先前对全部原生组件的过度要求，不改写其历史规则或失败记录。不要求同一移植重写29次，但既有语言及 static/dynamic/独立 multi-memory
承诺仍须全部核验。

五个真实任务仍是Go2、SCOUT、RRBot、TurtleBot3、UR。新公共集成含11gateway及
10TB3源码/deployment修订。完整原Unitree native类型DDS/VM回归已20publish、2capture/
dequeue、23checkedjoins PASS，使用匹配selector的VM构建。这是native测试数据，非
Go2任务/生产准入；旧r15 FAIL因原native registration缺失，非已证VMbug，原结果保留。

TB3 SYSTEM_TIME/prepare/bundle/burst修订已公共，6构建图完成、r40整job FAIL保留，
r41仅配置检查PASS，旧FAIL保留。
公共whole-lifetime002已关闭bootstrap/source缺口：8文件、7项精确grant、唯一Context
300001 failurebudget、until_shutdown及一致26module bundle/source lock已合入；4模板
亦匹配真实native RMW（TB3/SCOUT为Cyclone），仅配置不是interop。原3197字节Python任务
不变。真实exact002/final818 wasm64在4GiB/1CPU、120s于AOT object emission超时；
同资源300s在135.7158s完成46项真实configuration/import检查。preflight与原app产物
不同，未运行原constructor/ROSinit/task。旧001/r52无phase失败不改写，不指认其唯一
原因、不称VMbug或ROS性能结论。

后续UR019的7文件cleanup/lifecycle修订已公共；实际native driver-loss及4项EACCES
cleanup故障有23个local actor退场证据，另8项filesystem错误覆盖16个真实进程。限定
native结果保留旧FAIL，未运行Wasm Action goal或原任务。

完整constructor/物理任务仍未跑。long003 normal120s/失败130s，而所选5Hz primary需
200s及1000个实际因果sample。whole300/native600不证明fit或准入；preflight AOT不同于
原app。SCOUT/RRBot fullguest及原UR ActionClient仍未验收。

旧默认边界证据仍INVALID：8193/8368 suppression、20005次成功操作缺5条、5000次
成功操作drop1198，原synthetic peer及ELF75f6身份保留。最终显式容量实现现已独立
通过完整large-payload/count/file测试，不改写旧默认执行。

最终可配置容量VM ELF的SHA256为
`81838249a42106bb003b7fcaac4df6fc769f7c7c23d99ac3b0141c5f9bff5e05`。
独立审查匹配全部2492份源码、最终产物、6份root任务回执及owned退场。真实LLVM-AOT
Wasm32 generic测试完整保留8192/8193/8368三次操作、20005次操作，以及5000次8192字节
操作的88,228,713字节journal；完整bytes、逐次顺序和零loss footer均通过。这些generic
peer是checked synthetic IPC。另一次真实native Humble DDS String往返完整保留
8192/8193/8368，合法65536字节log及65537字节error90拒绝均保留完整input。观察配额选
65537，ROS log grant仍65536。该native运行关闭了不支持8368 profile的serialized
observer；8368字节String不是LaserScan，也不证明完整native CDR窗口。

12项host component和17项真实CLI拒绝通过。仅组件范围另含双向各4MiB、8线程并发、
capture loss分类、allocation failure及4096字节partial write缺footer，后者明确INVALID。
它们不证明4MiB ROS传输、真实guest OOM或实际VM IO故障。原6项generic及5项portable
控制全部通过。早期source pin、input capture、拒绝诊断及检查器FAIL原样保留，后续
限定PASS不改写原结果。

[完整有界参数提案](performance/observation-capacity.zh_CN.md)已覆盖每VMprocess/
instance、完整type、begin/footer、全部阶段及reference/VTune规划，与已实现的有限
VM配额分层；v5 JSON不是runtime权限或生产准入。默认8192/20000/64MiB/32KiB不变，
最终技术上限4MiB/UINT32_MAX/4TiB/32MiB不是预约。选定record仅一次heap分配，关闭
观察不分配；active input snapshot有界且明确capture loss。完整native CDR窗口、
多VM、pagecache及reference/VTune增长仍需source界及kernel预算证明。
完整Go2阶段保守例为195GiB/四臂block，非实测用量或必要硬下限；仍需所有source phase/
格式/reference/collector增长证明。既有VTune2026.4 strictPID支撑及排除systemwide
数据规则不变。完整官方Wasm任务、正式nativeROS/Wasm对照仍0PASS；36平台/29语言及
static/dynamic/独立multimemory要求保留。

公共Go2 native020五文件已保护startup、原bridge部分constructor及cleanup异常，
有真实EACCES/method failure、owner-loss和fresh-restart退场证据。这是native基础设施，
不是Wasm stand任务、guest取消或任务恢复。trace明确为msg.serialize()产生的native
object reserialization，received RMW CDR、RTPS capture及guest-memory proof均false。
历史object trace字节保留，仅按纠正范围解释；独立r22有限native RMW/VM fixture是另一次
证明，不是机器人任务。

新冻结complete-epoch plan002和merged carriers001已取代“尚无完整trial设计”的旧状态。
它事前固定W/E0/E1/V/RW/RN：W/RW完成原全部动作但不声称额外measurement hold，E0/E1
在验证reset后固定为两个完整120s measured epoch。240s hold在设计上可满足200s时长，
但nominal1200绝不替代1000个实际唯一原callback sample。warmup/fault/recovery样本不能
补E0/E1，结果后不能追加epoch。原approach/turn/resume/zero/cancel及3197B Python均保留；
6个C构建图通过，原4个short/measured产物逐字节相同，没有运行原ROS任务/回调trial。

每臂6个fresh environment和4个120s normal hold，使四臂声明的最低时长2640s，仅余
固定3600s中的960s覆盖AOT/native setup/动作/reset/stop/drain/export。这不是成功界：
130项source stage cap及已准入的before-first-exec RAW到全树退场/committed footer账目
仍缺。app VM guard300s、measured observer240s、warmup observer300s不同；C300s从open
后开始。private exact-app AOT cache已事前声明但未准入/实测，不扩大gate/grant/deadline。

公共native021另有两个真实native5Hz窗口，各约220s/1099个不同Gazebo packet，总区间
611.189s、generation间45.190s均保留；各实际source版本不冒充最终atomic-ready修订。
这些不是received RMW CDR或原Python callback。1040s双native generation分配不是六
epoch设计fit或完整cold-task保证。实际queue Unix和native MONOTONIC账目不能编造缺失
before-exec RAW时间戳；24个正式arm/generation账目仍NOT_RUN。

## 公共执行与反馈

VM侧generic buffer journal已实现，并有真实有限Wasm32 copy/IPC/length/footer
回归及更新的实际native DDS gateway/queue/VM journal关联；旧synthetic peer回归分记。当前格式`uwvm-ros-buffer-journal-v1`经私有write-only
继承FD启用，与下述SDK固定joint反馈consumer分层。单个defined/unshared memory
证明不验收unified-event/RMW API、多memory/语言/库场景、完整选定机器人type、生产
source/collector准入或性能；canonical copy标志不推断native CDR或应用callback。已实现接口
及容量限制见[场景验收](simulation-validation.zh_CN.md)。

公共运行时边界仍是未验收的消费者合同。
`share/platform/ros/runtime-boundary/v0.2.0/contract.json` 中，producer 协议
达成及生产资格仍为 false。已批准 producer 的记录带有历史 boot 绑定，且
`product_qualified: false`。固定源码的诊断许可不能授权任意应用或新的 boot。
边界合同变化需要 VM 负责人及新的内核与生命周期证明。

v0.3 witness 合同已撤回；v0.4 kernel-object 提案尚未注册，
`execution_admissible: false`，批准的 relation 和 producer 集合为空。capability
全零 actor 检查和只读 kernel-FD 传递仅是前提，不能证明封闭 runtime/source
身份、认证 consumer 或 guardian 继承的 canonical lease open-file description。
协议对端回归不等于官方机器人场景运行。

`tools/shared/python/guest_feedback.py` 当前只识别一个精确的 4449 字节
joint-step Wasm 产物及其源码哈希。其他产物被
`BLOCKED_UNSUPPORTED_FROZEN_GUEST_FEEDBACK_PROFILE` 拒绝。这不代表通用
传感器、回调、语言或 multi-memory 反馈已经实现。真实客体处理必须单独证明，
不能用宿主状态复制标志替代。

必需仿真清单仍保留真实 Wasm ROS 迁移缺口。宿主原生 `rcl`/`rclcpp`/
`rclpy`/`rcljava` 应用回退不是修复方式。保留兼容 API 名称，但应用行为必须
位于 Wasm 内且受 wasmros 权限约束。官方仿真的原生端点属于独立角色。

## 构建、运行时与打包

编译宿主目录只列出 Linux x86_64。两种客体指针位宽虽已声明，但声明不等于
全部编译器或解释器、EH/线程/TLS、原生 ABI 和运行时通过验收。AArch64 运行
证据不会增加 AArch64 构建宿主包。运行时安装合同仍记录
`NO_CURRENT_DEV_RELEASE_MANIFEST_OR_ELF_QUALIFIED`；开发 ELF 不是已验收的
单 ELF 发布。原生动态依赖及 Unwind 配对需针对实际安装产物检查。

历史审查保留限定范围的 AArch64 checked-AOT TypeScript memory64 失败、
R 引擎工作、Unitree CLR 资格，以及未完成的语言、库及厂商矩阵。真实、未合入的
Fortran 候选现有空工具缓存下十四次真实 Xmake 构建，并已独立检查实际
wasm32/wasm64 产物字节。这只是 Preview1/noeh/单线程/free-form binary 的
限定证据；所审查公共 provider 仍缺失。guest ISO_C ABI、static/dynamic/
independent 消费者及完整获取/许可/relink/发布闭包仍未完成。零实现和完整
Fortran 通过都不能描述这些层次。

managed adapter 已重定向 target 用户/缓存状态并关闭证书/global-tool 设置。
三种语言真实 full-AOT 构建还需要为上游 named mutex 提供私有 `/tmp`。仅设环境
变量不验收完整隔离或冷安装。编译器源码、预编译包及 LFS 指针仍需独立的干净安装
验证；历史失败继续绑定其原源码/产物身份。

在 2026-11-02 审阅的源码快照中，C/C++ static-pointer 示例生成了有索引的
Wasm 归档及已链接消费者，声明的32/64位内存与所选位宽一致。WAT32 图生成
显式 dynamic 和 independent 库：通信内存在 index0 导入，独立库在 index1
自有且不导出私有内存。所选 WAT64 示例因源码位宽冲突在配置阶段拒绝。
JS32 和 TypeScript64 shared 示例生成自有内存的 Core preload 产物。这些只是
精确产物声明检查，不能泛化为语言或库运行时验收。

WAT 归档中无内存声明的 relocatable member 不能证明指针 ABI。有索引、linking
metadata 和链接成功不能证明成员抽取行为或消费者断言已执行。所有导入内存仍需
显式模型、精确 import 名、有限非共享边界及规定的所有权布局；sole-command
读取器继续拒绝导入。实际 loader backing、逐模块 grant、隔离和边界拒绝仍需
VM 实际执行。

该快照测试的七次公共运行命令全部非成功。四个 C/C++ component suite 各记录
selected1、attempted0、executed0，原因是公共 VM 准入缺失；WAT 缺固定 library
deployment，JS/TypeScript 拒绝零必需 simulation scenarios。没有 guest 或官方
任务运行。原有旧位宽失败及其精确源码、产物身份继续保留，不能用它们证明当前
修复，也不能整包接受。

先前独立公共入口回归发现名义测试虚假成功：只登记必需测试、没有真实 native
test 时返回零并输出 `nothing to test`。后续精确公共修复已通过同一份未改测试：
未登记及仅名义登记被拒绝，实际进入后失败保持非零，host-only 成功有真实
dispatch 且 official acceptance 为 false。原失败继续保留，不能当作当前源码的
对照结果。

真实 RRBot native callback 执行一次并失败，内部两个场景仍在
`BLOCKED_ACTOR_CAPABILITIES` 处 attempted0/executed0/blocked2，没有 VM
或 actor 启动。Go2 普通 `xmake test` 拒绝零必需场景，没有 native-dispatch 或
场景报告。CRC relocatable member 导入无 runtime maximum 的 wasm32 内存，
链接 binary 拥有有限非共享内存；这不是 dynamic/independent 库或 consumer ABI
执行证明。typed source facade 现有 owning SharedPtr callback、显式连续 spin/
WASI wait 模式；native local-backend 测试不构成完整 rclcpp/RMW 源码移植或
公共 production deployment。按[场景验收说明](simulation-validation.zh_CN.md)分别保留这些层次。

公共示例和 Linux CI 目录可能分别变化。源文件缺失或哈希过期是待解决的验收
失败，不能借此移除工程。必需仿真清点及型号、发行版、ABI 适用性明确尚未
穷尽。冷缓存恢复、只读安装、迁移路径、离线复用、部署、回滚及升级后旧客户
兼容均为独立必需检查；这些安装检查尚未在此验收。

真实官方场景PASS后，可移植source/patch、精确版本、Xmake/test及权限应进入既有
platform/language/ROS示例层级，附稳定证据index，不依赖本机campaign/.tmp入口路径。
当前没有完整官方PASS，不给任何示例该标签。

## 文档与物理系统

中英文文件需要语义一致，包含命令、失败条件及验收范围；文件名成对并不充分。
历史审查日期和测试计数不能描述当前 boot。

许可证、账号、厂商下载条件或缺失的官方型号可能阻塞某项仿真。记录精确前提，
不要改用 mock 代替。即使官方仿真运行成功，也只证明固定型号、控制器及场景。
仿真不能为物理机器人、现场安全或真机背书；本轮验收不操作物理设备。

## 新增限定组件与原任务边界

冻结native v3观察候选已完成独立原始全流审查：22,000次真实DDS LaserScan回调、
66,006包、1,531,093,053字节文件。44,000条inline记录逐条比对完整8368字节canonical
与实际8376字节RMW CDR，另22,000条发布接受metadata按真实request关联；相同payload
仍保留不同callback ordinal。全部loss和精确footer通过，原256 slots、32MiB queue
payload不变，peak7。真实DDS配额、pre-copy、queue loss均poison完整性。这是native
DDS fixture，不是原机器人应用。私有FD collector的framing通过仍必须完成JournalJoin
完整body/occurrence验证；strict source-approved factory/guardian正向、原Wasm callback
关联及完整任务仍未验收。公共legacy v2边界与显式v3候选分别记账。

冻结native Action control候选使用真实Humble FollowJointTrajectory handle、完整
UUID/status和全部CancelGoal列表。原完整Goal/Feedback/Result codec保留2038/1322/296
字节，data decoder提供真实array-backed UUID。goal-handle stamp与CancelGoal GoalInfo
stamp保留各自实际值；pending owner ID不是UUID，cancel ACK不是terminal或quota release，
deadline/close后仍保留未解决native goal直到实际终态。新增六个ROS2 VM transport入口
复用现有精确send/own-cancel grant。实际LLVM-AOT Wasm32/64回归使用ELF
0b1996ce379384a74fe877c3ec86c6ef62142800e6953dea53d78da690c7c77a
与checked synthetic peer通过，覆盖坏frame、memory、revoke和短output仅写length、
不自动重放；前两次FAIL保留。这与native Action interop及较早818容量证明分开。
匹配SDK gateway/CPython transport、真实ActionClient/Future及原UR任务仍需完成。

共享callback-trace候选已有真实native Python DDS dispatch/return/error、容量loss及
精确runtime-code身份支撑。本地registration/callback ordinal与builtin MONOTONIC
功能clock不证明native-capture/checked-IPC/VM-copy/原算法因果链或正式性能时钟。
platform007现已实现Robotis任务hook、approved-FD启动次序、原native-reference管理及
物理fault/独立zero策略；zero actor两位宽构建、真实最小进程role deadline检查通过。
原任务/native-reference/物理zero执行仍NOT_RUN，公共generic Context仍缺11个所需
方法。generic SDK/collector由SDK owner实现，platform策略由platform owner实现，
authority审阅不代替实现。

native023在自身执行后独立保留30秒RAW及MONOTONIC环境稳定。native024/025证明实际原
gzserver seed参数，包括省略seed与uint32最大值；native026保留实际只读model pose/info。
seed选择保留model/noise参数，不保证noise realization或跨臂完整隐藏状态相等；
这些不是原W/RW或guest feedback。当前native声明3320s/arm、13280s/fourarms超过
固定3600s block，这是reservation而非实测时长或通用下界。130项source phase cap、
完整cold-W/cache/reset/stop/drain/退场账目及实际因果primary仍缺；所有workset共用
64GiB/零swap。原Wasm任务及正式VTune仍0，不重复未就绪的相同测试。


## 冷host Python与当前UR构造路线

公共Linux x86_64 supervisor分发已有限定冷证据：隔离视图缺Python、安装缓存为空、
PATH仅Xmake时，从分发的固定XMZ恢复。安装3475个regular文件包括3474个不改字节的
上游payload及SOURCE.json，保留1048个原别名；warm复用及显式选择拒绝已有测试。
隔离harness本身使用既有bwrap，不证明可信OS bwrap的获取/安装；冷视图缺bwrap时，
native构造在产生环境前拒绝。network-only Xmake获取、全语言冷部署、四种guest
CPython engine均不能由host-supervisor证明推导。

旧029 native链实际使用staged016 native_scene.py b91dc433...d95285，当前019为
5a245368...f921d；原prerequisites/launcher/scene/binding四个历史版本及030冷测的
pre029 native_ros.py仍按各次实际source保留。新027已把精确shared029不可变bundle
真正接到当前019：两份新private准备、公共Xmake启动、另一次native30s hook、已消费
stage拒绝及完整local/outer退场。既有可信host环境中的真实headless driver供电、
reverse连接、controller ready通过；这些运行复用sharedconstructor产物/原archive，
不声称重新下载或构造。这关闭当前019既有先决条件的native链缺口，不关闭缺Python+
缺bwrap冷机器整链、原Wasm Action应用、source权限或正式性能。准备/runtime间隔
完整保留，并发native支撑时长不当独占四臂性能测量。

独立冻结032候选有匹配Ubuntu25.10 x86_64的原始来源及真实cold/warm四包staging，
包括3份签名APT index及完整payload/control/policy inventory；错OS在建立cache前拒绝。
四包是相对固定原始镜像的增量，不是任意host升级方案。未执行包/maintainer script、
未验收可信OS安装或live policy加载，也未重测Python恢复。新冻结028 metadata和033 owner README现已声明一致的目标source闭包，保留027实际
验证的029 bundle-producer身份。新目标constructor未与当前019重新运行，不增加native/
Wasm PASS或可信安装资格。审阅/合入必须保持六个shared/scene候选文件一致；native
README仍由共享native工具owner维护。


[English](known-limitations.en_US.md)
