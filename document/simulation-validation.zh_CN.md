# 五个真实仿真案例的验收

uwvm2-ros 执行应用/ROS 层。官方原生驱动、虚拟控制器、仿真器、物理/渲染引擎及
基础依赖可作外部端点，固定真实职责、版本、模型、许可和接口，无须先移植为
Wasm。应用 ROS 调用、控制/规划决策、回调及状态/反馈处理必须在真实 Wasm 中
经过精确 VM 权限执行，不能借环境名称由宿主代跑。

下列是必需案例，不是场景已完成的声明。原应用移植与自开发完整真实 SDK 案例
分别标注；自开发真实案例是有效工作，但不能倒算为原项目移植证据。

完整type、事件/阶段及磁盘预算见[联合观察容量合同](performance/observation-capacity.zh_CN.md)，
其中最终有限VM容量实现与逐instance/全阶段规划分层，参数JSON不授予运行准入。

## Go2

使用原四阶段站立应用和匹配官方Go2环境。生产target的两宽字节仍与r23一致；
独立命名的observed target仅增加三处条件编译的真实回调入口/结束观测，去掉这些
块可逐字节还原旧移植控制源码。两宽CRC/archive、生产版、观测版、取消模块已
真实构建，但运行及官方场景仍NOT RUN。

观测原始前499次回调无LowCmd、tick500首发、实际2ms timer、精确float增量、20个
motor槽、CRC、一次完成log及最终无限保持。guest事件含真实回调序号、WASI
MONOTONIC时间、done和float位。clock/output失败会终止诊断版；取时和flush增加
开销，性能比较前须校准到共同RAW时钟。事件本身不证明native送达/apply或成功
写入caller memory。观测版新hash须显式纳入consumer/profile，旧消费者只认生产版。

独立取消Wasm只接受`request-stop`，尝试一次Bool true发布后独立close。模板仅授予
`/uwvmros/go2_stand/cancel`的一个publisher，无LowCmd/LowState、额外WASI、preload
或跨module权限。domain占位符不是已准入配置。实际任务/hold oracle允许后才启动
取消，不能用固定host sleep代替任务进度。publisher成功不等于目标收件、安全保持、
shutdown或退场；transient-local true不得跨新run/domain/generation泄漏。

原生Go2模型/驱动已就绪，有限generic VM拷贝journal已实现并有实际Wasm32证据；真实String DDS回归已关联native capture/queue、checked IPC及VM copy journal，
其collector有实际身份认证；生产准入、Go2 consumer及原任务仍未验收。
更新的完整原Unitree native registration运行r22已有20次真实DDS发布、2次LowState
capture/dequeue和23次checkedVM关联；canonical749/1050、实际native serialized812/1180。
匹配selector的VM ELF5450232e...96f90未改root VM源码。这是native测试数据，不是原四阶段
Go2任务或生产准入。旧r15 FAIL保留，根因是原native registration缺失，非已证VMbug，
既不改为PASS也不继续当当前阻塞。后续公共Go2 template已按不变QoS depth10/10/1修正burst，配置准备不等于native部署
或任务执行。Unitree selector证据用ELF5450232e...96f90，下述最终容量证据用
ELF81838249...5e05的String/log；Go2启动前仍须同一选定产物及source准入把两者闭合。逐次sample身份须穿过全部队列
转换，取消前须有finalhold后的新鲜物理state。固定厂家兼容停止策略，不假定零力矩
安全；真实拒绝、quota、撤权、断连/恢复、隔离和全树退场仍必需。不重复无法启动
的旧场景测试。Python原生bridge5ms步长须与应用2ms回调及另一个推荐C++环境区分。

公共Go2 native020五文件已保护startup、原bridge部分constructor及cleanup异常，
有真实EACCES/method failure、owner-loss和fresh-restart退场证据。这是native基础设施，
不是Wasm stand任务、guest取消或任务恢复。trace明确为msg.serialize()产生的native
object reserialization，received RMW CDR、RTPS capture及guest-memory proof均false。
历史object trace字节保留，仅按纠正范围解释；独立r22有限native RMW/VM fixture是另一次
证明，不是机器人任务。

## SCOUT

已冻结的自开发完整SCOUT应用执行两轮forward/yaw运动：Wasm要求精确frame、
新鲜完整Odometry及六轴速度，同时达到真实最短时长和观测平面位移，再发布零
Twist并等待更新的六轴零速反馈后恢复。速度、位移、时长、frame及tolerance参数
须在采集前按真实官方model/controller固定；取代先前未绑定的1m正方形提议，后者
不是用户要求。健康停止/恢复不等于故障恢复；driver/odom丢失、原生watchdog、
新会话恢复及VM负例仍必需。不能从Odometry编造ScoutStatus，也不能把新应用称为
原项目移植。官方Humble SCOUT2.0模型/plugin已启动，但公开的wheel diameter与
model radius差异及真实物理运动oracle仍须绑定。双位宽archive/consumer构建不等于
guest运行。后续SCOUT长载体保留原motion/stable-zero判据，增加warmup后120s循环；
已有build/config证据不是runtime证据。

## RRBot

在适用官方ros2_control仿真器/控制器上运行新的真实Wasm ROS示例，区分software
mockhardware与实际仿真。观测两个关节状态，发送固定command/trajectory，检查
真实guest处理的反馈、时序和误差，执行取消/保持、controller丢失/重启及新会话
恢复。历史native callback执行一次，但内部两个scene在VM启动前阻塞，不能计作
真实场景完成。更新的原生Jazzy RRBot Gazebo/DART+GazeboSimSystem已启动
并退场；其原始forward_position_controller接收Float64MultiArray位置命令，
不是FollowJointTrajectory action。须明确绑定应用、controller、type及反馈profile，
旧mock轨迹profile不能验收这个场景。

## TurtleBot3

未改的3197字节原Humble任务和独立Wasm input/scenario已公共，两宽共6个真实产物。
完整runtime和官方任务仍NOT RUN。原Python/Wasm拥有scan/min/command/stop决策；
独立C/Wasm只观察真实scan/command/完整Odometry并发声明的raw Twist/Bool输入，不能
发布`/cmd_vel`。有限credit耗尽是失败，正常完成须有真实Bool cancel。

两文件共享INFO filter/system-clock实现现已公共，支持原`throttle_duration_sec=2`
调用；其精确构建源码已通过真实CPython/Wasm/native DDS中的未改原方法定点测试：
4次timer发布、3次零前进且保留yaw0.3、1次raw-clear，2条实际原生日志的guest clock
间隔2.606569446s。完整原constructor/subscriptions/spin及物理任务未运行。SYSTEM_TIME binding/grant、
两个callback prepare flag、coherent bundle及depth一致的TB3限额已在10项修订中公共。
6个application/input/scenario构建图完成，但r40整job仍在额外deployment assertion处
FAIL，原结果不改；r41仅配置PASS，原FAIL保留。
公共whole-lifetime002已关闭bootstrap/source缺口：8文件、7项精确grant、唯一Context
300001 failurebudget、until_shutdown及一致26module bundle/source lock已合入；4模板
亦匹配真实native RMW（TB3/SCOUT为Cyclone），仅配置不是interop。原3197字节Python任务
不变。真实exact002/final818 wasm64在4GiB/1CPU、120s于AOT object emission超时；
同资源300s在135.7158s完成46项真实configuration/import检查。preflight与原app产物
不同，未运行原constructor/ROSinit/task。旧001/r52无phase失败不改写，不指认其唯一
原因、不称VMbug或ROS性能结论。

没有删keyword、no-op日志、native应用替身或隐式扩权。

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

新原生运行已匹配冻结DQN stage1 world2910e093...17816fc及(1.1,0,0.01)、yaw0，
产生5400个真实range值，首帧360点、front有限最小值1.2640365290658253m，并经公共
shared subreaper/pidfd生命周期退场。出生点是所选测试合同，不声称上游默认值。
旧turtlebot3_world(-2,-0.5,0.01)及empty-world结果独立保留；world对齐不再是当前
原生阻塞。三个native入口/binding和TB3requirements共7文件现已公共。实际SIGKILL模拟器丢失
使endpoint按预期failure1退出并退场其他owned actor；旧SIGTERM-loss timeout仍FAIL，
这是native失效清理，不是guest/VM故障测试。匹配世界还未运行原Wasm靠近、障碍停止、
转向、恢复及取消。

保留原0.1s timer、默认0.2m/s、有序front slice、严格<0.5m阈值及360索引行为。
障碍处理归零linear.x并保留raw angular.z。固定测试要求实际靠近/零前进停止、独立
raw yaw0.5、观测转2.3rad、恢复运动、六轴稳定零，再cancel及全树退场。这些任务
结果仍未测得；native5Hz scan和应用10Hz callback分记。旧Jazzy/EGL拒绝不外推为
hardware pointer或VM隔离通过。

native serialized observation gateway仍拒绝topic bound>1536字节，完整scan profile
允许8368。最终VM可显式选择大于8368的payload，但String extent测试不验证完整
LaserScan IEEE/type copy或native CDR窗口。须有完整有界观察支持，不能缩SDK profile或漏
记录适配。精确typed factory/IEEE codec/QoS/RMW、生产producer/collector及module
grant、物理callback因果、guardian/故障停止、负例、库及多实例仍未验收。

## UR

URSim原生就绪已有29999/30001–30004及真实IPv4/IPv6 Dashboard greeting。更新的
真实原生UR5e driver运行完成原RTDE/model/calibration校验、hardware配置/激活，
以及joint_state_broadcaster和scaled_joint_trajectory_controller初始化。使用精确
私有native driver2.15.0/description2.14.0/client2.15.2包闭包，并经公共shared生命周期
退场22个actor。旧“driver未运行”结论已被取代，原FAIL结果继续保留。

更新的native运行已实际power模拟器、使用headless driver并连接原reverse-control
program，controller activation及owned退场PASS；未发Wasm action goal或应用轨迹。
原ActionClient/任务/反馈/停止和精确生产权限仍缺，不能用旧remote=false或未power
观测覆盖新headless路径；镜像mock cybersecurity backend不构成
物理安全资格。保留六关节数组、首轨迹4/8s和次轨迹0/8s point time、容差及顺序。
实际guest ActionClient须处理acceptance/status/完整result及同client的next-goal
callback，包含两次guest2s成功等待以及SystemExit前最后等待。SUCCEEDED status与
SUCCESSFUL error_code不同。params/logger/clock、所有权、运动反馈、拒绝/取消goal、
停止与恢复须真实执行。peer须共namespace或验证canonical映射，保留精确PID/UID授权。native016的15文件prepare/model/launcher/asset/binding闭包现已公共并匹配冻结源码。
实际common54 model-r5到chain-r2已证明native power/headless reverse/controller及
owned退场，没有Wasm goal。原共享ActionClient/type API及strict生产producer准入仍缺，
native入口合入不授予这些权限。

后续UR019的7文件cleanup/lifecycle修订已公共；实际native driver-loss及4项EACCES
cleanup故障有23个local actor退场证据，另8项filesystem错误覆盖16个真实进程。限定
native结果保留旧FAIL，未运行Wasm Action goal或原任务。

## 隔离与VM边界证据

各案例通过当前协调器租用两个独立实例身份、ROS domain/namespace、端口及仿真
partition，不能猜第二个domain偏移。证明各自获准路径及跨实例观测、命令、取消
被拒绝。沿真实VM/任务路径测试越界/错误memory、未授予/跨模块调用、配额、
stale/foreign handle和取消/断连回收，绑定拒绝阶段、精确错误与端点apply日志。
自然物理漂移不能证明拒绝命令产生了未授权效果。

所有driver、simulator、VM、collector及后代均须从出生进入实际同一64GiB/零swap
预算，并完整退场。支持时优先CPU/headless；现有系统Docker及未准入GPU路径仍
排除。缺许可、权限或受预算约束的环境runtime应明确BLOCKED，不能用fixture替代。

## 已实现的有限VM拷贝journal

`--ros2-buffer-audit <fresh-run-id> <inherited-fd>`现已提供VM侧
`uwvm-ros-buffer-journal-v1`。当前Linux/x86_64 LLVM-AOT Wasm32证据覆盖有效capability
description之后的generic `host::operation`及一个defined/unshared memory source-facts
profile。实际记录绑定整个module bytes/hash、module/instance/generation/function、
checked IPC request/session tag、peer身份、输入copy、response授权及分别的length/
payload写入。短缓冲以error90只写required length18而不写payload，错误reply保留
possible peer effects且不声称response已checked；proc_exit显式收尾产生loss footer。
这些是真实VM配synthetic protocol peer的结果，不是原生ROS/CDR。

使用fresh私有empty0600 regular write-only file及显式继承FD，另行认证实际executable/
source/process birth/output inode/collector。session credential不记录。须消费当前
精确CLI/schema，旧stdout提议及其字段不是此已实现接口。footer、零loss及source/
identity一致必需，但footer不证明exit0或全树退场。

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

unified event/RMW专用路径、未解析caller/open/unknown-handle拒绝、其他module/memory
shape、生产source/collector准入、完整callback处理及官方任务仍未验收。另有真实
native DDS回归已把有限generic journal关联到实际gateway queue记录。有限部分已实现，不关闭生产05-VM-001或性能验收。

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

## 原生序列化数据与因果证据

一次实际Humble String探测发布27字节、take28字节，多一个末尾00，完整canonical
值相同。不能把跨阶段CDR hash相等、RMW sequence必支持、receive time必正值或
跨进程GID相等作为通用成功条件。区分实际serialized publish/take buffer、对象
重序列化、canonical字节和RTPS采集，仍须验证完整原type/value；不能借padding
名义忽略任意损坏。

携带metadata的queue、capture ordinal/endpoint incarnation、checked IPC request/
session及实际成功或失败的guest length/payload写入须组成真实观察链。hashset成员
关系及native对象serialize()不能证明它。真实VM/native gateway/DDS回归已有23次checked occurrence关联、20次native发布及
2次实际callback/queue/dequeue copy，两份journal均有零丢失footer。native relay认证
精确PID/UID、birth及ELF；依据实际uid_map，内部UID0映射到VM观察的1000。这是超出
独立helper的有限真实集成。数据源是测试peer，不是机器人场景或native应用对照。
生产source/collector准入、其余机器人type profile及官方任务验收仍缺。
r22另证完整原native Unitree LowCmd/LowState，不外推其他type或任务。

## 命令及完成条件

固定最终公共示例目录及实际安装源码/依赖/runtime/环境锁后，普通`xmake`和
`xmake test`应构建、部署并完成真实场景。保留required/selected/attempted/
executed/blocked/failed、实际guest/actor身份和全部原始输出。native-test dispatch
与内部scene dispatch分别计数。producer或实现未具备则BLOCKED，不重复同一
无法启动且源码未变化的test。

实际官方场景PASS后，在既有`example/platform/<platform>/<language>/...`及对应ROS/
rcl/rclcpp/rclpy/rcljava层级交付可复现source/移植patch、精确版本、Xmake build/test、
精确Wasm权限、usage和稳定原证据index。公开入口不得依赖本机campaign或.tmp绝对
路径；大raw log保留于稳定可审index之后。仅标明真实测试过的language/library-kind/
width/version，不把readiness、fixture或其他语言外推为场景通过。

真实路径及source/collector/reference准入就绪后，才执行固定VTune/原生ROS对照协议。
已公共的[观察及时间要求](performance/observation-capacity.zh_CN.md)说明当前阻塞，
不声称比较已完成，也不替代完整冻结协议。其他
平台、29语言及static/dynamic/独立multi-memory要求继续保留。本文不授予运行
权限，也不报告官方场景完成或性能等效。

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


[English](simulation-validation.en_US.md)
