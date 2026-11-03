# 准入前明确完整观察边界

[v5参数](observation-capacity.v5.json)把最终已实现有限VM容量与逐instance/完整阶段规划
分层。旧v1 normal-only、v2完整阶段及v3预审历史保留，早期65536/512KiB技术上限及
固定512KiB buffer已被取代；性能门槛、合法type、source rate和完整任务阶段不变。

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

默认值仍为每payload8192字节、20000次operation、文件总67108864字节、record32768
字节。`--ros2-buffer-audit-limits`及其五个参数（四个十进制配额和profile SHA256）
必须紧挨在`--ros2-buffer-audit`之前；后者再带run ID和继承FD。完整同一行参数顺序为：
`--ros2-buffer-audit-limits <payload-bytes> <operation-records> <total-file-bytes> <record-bytes> <profile-sha256> --ros2-buffer-audit <fresh-run-id> <inherited-fd>`
begin前只配置一次。
最终技术上限依次4194304/4294967295/4398046511104/33554432，即4MiB/UINT32_MAX/
4TiB/32MiB。非零64位小写hex profile digest只是caller声明，不是source认证、ROS
权限、磁盘预约或生产准入。同进程全部module/preload/library共享配额；逐instance
分配仍是source/consumer规划，不是运行时自动隔离，不能按module复制进程额度。

configure仅分配选定record buffer，最大32MiB；关闭journal时既不分配record存储也
不分离input snapshot。active generic input copy以所选payload为界，nothrow分配失败
增加`capture_dropped`，不替换ROS结果、不重试不确定副作用。count/file上限不会分配
同量RAM。request/reply、native queue、runtime/language buffer、reference/collector/
guardian/VTune/import及file cache/dirty/writeback/reaped charge均共用64GiB/零swap。
仍需source上界及kernel memory.current/stat/peak/events；RSS求和及disk quota不能
证明RAM峰值。

record必须容纳完整metadata和两向hex payload；双向各65536字节仅hex就262144字节，
预留4096 metadata需266240，因此256KiB并非通用双向上限。双向各4MiB组件记录大于
16MiB，保存在选定32MiB buffer。保留合法完整type和计划中的拒绝诊断；升观察配额
绝不增加API grant。

begin/footer不占operation，footer预留4096字节。footer含attempted/emitted、总drop/
suppression、source/payload/count suppression、record/byte/IO/capture loss及footer
前/含footer精确bytes。任意loss或缺footer均使完整观察INVALID。open/close、unknown
handle及IO关闭channel后的调用不在generic attempted完整性范围；完整footer本身
也不证明任务成功或全树退场。

旧默认ELF75f6观察仍INVALID：8193/8368 suppressed、超过20000的5次suppressed、5000次
中1198次在67088364字节处drop。源码及raw FAIL冻结保留。首次diagnostic bandwidth
拒绝和自己的close计数错误仍FAIL，重分析没有重跑已完成payload/count；close不属于
generic operation journal。

规划逐source/module-instance/generation/memory/role分配，再汇总每VM process全部
module。begin/footer各4096、control/failure128，按每operation完整input/output/
metadata推导record，按加权事件推导总bytes。当前例Go2 app749/1050、record8192，
Bool cancel1/0；TB3 app合法log65536/完整IEEE scan8368、record262144，独立scenario
48/8368、record32768。这些选定shape不授权任意双向65536；log拒绝诊断可能需观察
65537而ROS log grant仍65536。不裁type或phase。

所选完整8368字节canonical LaserScan形状已有独立native loopback实际8376字节
publish/take CDR，但不关闭真实VM LaserScan copy/IEEE验收或完整逐次armed window。
native源码仍拒绝topic>1536，record formatter8192字节，65536 records、64MiB总量及
2048 live capture。按不变Go2 nominal command500Hz/state200Hz、CDR812/1180计算，
120s仅raw就84000 packet/77040000字节，未计metadata、canonical和lifecycle倍数，
已超过native count/file界；配置rate不是source强制wall-time界，也没有实测完整
120s native任务。原r22真实Unitree用
ELF5450232e...96f90，与最终818...5e05不同；Go2前须同一source/type/artifact准入，
不能假设两次不同执行合成一次证明。其他ABI/memory/library及生产准入仍未验收。

独立审查8份更新的unmaterialized长载体profile，已匹配真实Wasm字节、最终818 VM/
source/interface、CLI顺序及技术上限；分别为TB3/SCOUT载体、UR state observer和Bool
cancel两宽。长进程所选record分配128KiB，cancel为8KiB，32MiB collector提案另算；
这些位宽/角色是备选，不暗示并发分配。没有启动VM/native。旧r43默认cap快照是历史，
其source加权count/byte算术一致，但仍依赖未证明的ingress/earlywake/CDR假设。后续
源码已实现先前缺失长载体，公共002已关闭原TB3 bootstrap/bundle源码绑定缺口；真实
ROSinit/task及原UR ActionClient仍未验收。

每240s source plan及独立clean/fault/recovered generation仍须完整warmup和实测normal，
缺native/reference/phase/workset证明时不能替换下述完整四臂分配。TB3的120s载体在
5Hz下不满足固定1000sample门槛，至少需200s normal active。独立UR state observer
不证明原ActionClient或等价native ROS应用对照。

公共whole-lifetime002已关闭bootstrap/source缺口：8文件、7项精确grant、唯一Context
300001 failurebudget、until_shutdown及一致26module bundle/source lock已合入；4模板
亦匹配真实native RMW（TB3/SCOUT为Cyclone），仅配置不是interop。原3197字节Python任务
不变。真实exact002/final818 wasm64在4GiB/1CPU、120s于AOT object emission超时；
同资源300s在135.7158s完成46项真实configuration/import检查。preflight与原app产物
不同，未运行原constructor/ROSinit/task。旧001/r52无phase失败不改写，不指认其唯一
原因、不称VMbug或ROS性能结论。

LONG-only003载体新增stationary WAIT_APPLICATION，等实际原0.2/0新鲜command后
才开始完整approach，application-start失败界150s；两宽macro0短模式产物逐字节不变。
normal两时钟满120s即进入原turn/resume/zero/cancel，normal失败界130s。现有source-backed
primary选择是唯一5Hz scan从native capture/ready到实际原scan_callback完成，匹配
nativeROS；因果callback collector仍未准入。固定协议需至少200s normal和1000个实际
唯一sample；10Hz timer会复用scan，独立30Hz Odometry或observer计数不能替代原app事件。

C侧whole300s从guest owner open/subscribe之后计时，只有已准入外部launcher才能覆盖
加载/AOT/init直到最终退场。135.7158s preflight诊断使300s仅余164.2842s，尚未计其他
phase已低于200s primary要求；它只是反证预约不能保证fit，不是原app AOT上界。各
phase失败界合计364s且未含AOT/最终cleanup，不能当成功耗时。300s VM/600s native
journal预约都不证明完整case。每个fresh generation须完整startup/warmup/locked normal/
stop/drain，不默默延长当前native postready300s。若用多个完整未改epoch累计trial，
须事前固定配对设计并计全部startup/reset/drain，不授权midnormal重启、扩权或降样本门槛。

完整Go2示例每臂分配：环境warmup30s、startup30s、完整未改warmup epoch90s、normal120s、
fault/disconnect120s、stop60s、reconnect/recovery180s、drain/retirement90s、interepoch
reset120s，共840s；application active阶段共570s，其余阶段仍保留control/native/
resource/drain账。四臂3360s加setup/export/退场240s，达到既有3600s deadline。这些是
待来源批准的失败上限，不是已批准phase oracle，更不允许截断任务成功；准入前须
解决全部owner/source bound。

此完整包络app预留5131408条operation和24290072480B，独立cancel进程129条/536578B；
每candidate臂两个进程共5131537条/24290609058B。每native/reference流11910210条/
19452207392B，20ms resource账每臂5505155072B。每profiled臂另分raw perf8GiB、VTune
import8GiB、symbol/source workingcopy2GiB、report512MiB、collectorlog128MiB。完整四臂
加10%余量208965469016B，向上195GiB；十block2089654690160B，向上1947GiB。它们是
保守guard，非实测需求或硬下限。32GiB不能准入此包络；须完整source证明更紧预算或
预留足够磁盘和保留空间，不删除raw失败。

TB3 primary5Hz满足1000sample至少200s normal active，还预留45s完成整个epoch；若
原封沿用其他Go2示例phase bound，block需4100s，preflight必须拒绝。owner须绑定
实际更紧phase/epoch界而不截断。UR稀疏goal不构成有效primary stream/rate，不能凭空
制造1000 streaming callback；SCOUT/RRBot/UR最终instance/type/phase profile仍缺。

出生前缺source身份、native-reference对应stage、type/CDR/完整metadata bound、checked
arithmetic、count/bytes/footer/ring预算、deadline总和或磁盘均应拒绝。实际reference及
collector增长须被来源证明落在明确guard内。writer阻塞/死亡、shortwrite、ownedENOSPC、
耗尽、sequence/identity错、loss或缺footer须保留INVALID及全树退场；不能默默轮换、
重试不确定ROS副作用或由observer改ROS结果。native bounded securityaudit独立记账，
不能代替缺失逐次记录。

resource producer已有实测r7 primitive和后续r8一次SSH wrapper，但特权安装/严格正向
资格仍未执行；本次不重复催SSH或执行管理员操作。批41组件及native019 cleanup不
验收strict正向producer或native大观察窗口。05-VM-001继续BLOCKED。公共002/RMW
源码缺口已关闭，完整TB3/SCOUT/UR app及fault/recovery仍未运行。

仅既有VTune2026.4 strict preowned PID在source/role/argv/FD/guardian准入后可采；本轮
无新profiler运行。旧systemwide采集仍FAIL_TARGET_SCOPE，不消费无关raw。完整native
ROS应用对照及因果stage对应仍缺。完整官方任务、正式对照0PASS。仅实际官方场景
通过的范围可经可移植既有示例层级和稳定原证据index交付，入口不得依赖本机campaign/
.tmp路径。36平台/29语言/static/dynamic/独立multimemory要求继续保留。

## 新native与callback组件仍须分别准入

显式冻结native v3候选现已独立核对原始22,000次DDS回调、66,006包、1,531,093,053
字节文件，完整8368字节canonical及实际8376字节RMW CDR、逐次顺序和零loss footer。
原256 slots分配32MiB queue payload；peak7是实测占用，不是source界。九类loss、
overflow、live capture、short write或缺footer均使完整性INVALID。仅framing仍须完整
JournalJoin验证；strict生产factory/guardian、原Wasm callback因果及全窗口任务证明
仍缺。legacy v2默认/边界不变。native Action/decoder与功能Python callback-trace组件
不提供上述完整资格。

platform007 hook和native023-026环境/seed/model观察已实现，但不证明原W/E0/E1/V/RW/RN
或完整四臂fit。当前native声明3320s/arm、13280s/fourarms超过固定3600s block；
这不是实测用量或通用最低值。130项source phase cap仍缺。完整阶段、固定numeric
gate及全部spool/index/pagecache/runtime/reference/collector/VTune/退场charge必须
保留在共享64GiB/零swap预算内。


[English](observation-capacity.en_US.md)
