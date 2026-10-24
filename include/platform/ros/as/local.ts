/**
 * Caller-driven local Context, Future, Timer and CallbackGroup.
 * These classes import no ROS or clock and create no native resource/authority.
 * A deferred Client call remains synchronous during that later scheduling step.
 * Copy results/events before retaining them. All functions run on the Guest
 * execution thread; an unrecoverable Wasm trap terminates the application and
 * is not translated to a successful callback or guaranteed cleanup.
 */
import {Status} from './api';
import {Reply} from './roswasm';
import {MAX_WIRE} from './codecs';

/**
 * @brief Guard synchronous callbacks against reentry through the same group.
 * @details The guard is local to one Guest execution thread and registers no
 * native callback. Use the same object for callbacks that must not reenter one
 * another. A Wasm trap terminates execution and is not translated to a status.
 * @see CallbackGroup.run
 */
export class CallbackGroup
{
    private busy: bool = false;

    /**
     * @brief Invoke one synchronous callback unless this group is already busy.
     * @details Reentry returns Status.Conflict (17) before invoking the nested
     * function. A normal return clears the busy flag and preserves the exact
     * callback status; no retry, queue, thread or native resource is created.
     * @param callback [in] Function reference borrowed for this invocation.
     * @return u32 Exact callback result, or 17 on same-group reentry.
     * @see Context.timer
     */
    run(callback: () => u32): u32
    {
        if(this.busy)
            return Status.Conflict;
        this.busy = true;
        const status = callback();
        this.busy = false;
        return status;
    }
}

/**
 * @brief Retain one deferred local result for a single successful take.
 * @details States progress from pending to running to ready to consumed.
 * Cancellation of pending work produces a ready Status.Revoked (125) result.
 * The deferred function remains synchronous when run; this object cannot
 * interrupt a native call, revoke an alias or undo admitted external effects.
 * @see Context.defer
 */
export class Future
{
    private stage: u8 = 0;
    private result: Reply = new Reply(Status.Again);

    /**
     * @brief Test whether a result is currently available for one take.
     * @details This local query does not schedule work, block, poll a native
     * request or change state. It returns false after the result is consumed.
     * @return bool True only in the ready state, including cancelled work.
     * @see Future.take
     */
    isReady(): bool
    {
        return this.stage == 2;
    }

    /**
     * @brief Consume the ready Reply exactly once.
     * @details Pending/running returns a new Status.Again (11) Reply without
     * consuming state. A ready take transfers this Future's retained Reply and
     * retires its slot; later takes return Status.BadHandle (9). Returned byte
     * storage is local and no longer retained by this Future.
     * @return Reply Stored result, or an empty local refusal Reply.
     * @see Future.isReady
     */
    take(): Reply
    {
        if(this.stage == 3)
            return new Reply(Status.BadHandle);
        if(this.stage != 2)
            return new Reply(Status.Again);
        this.stage = 3;
        const result = this.result;
        this.result = new Reply(Status.BadHandle);
        return result;
    }

    /**
     * @brief Replace pending local work with one ready cancellation result.
     * @details Only the pending state changes. Cancellation stores an empty
     * Status.Revoked (125) Reply, then returns Success (0). Running, ready and
     * consumed states return BadHandle (9) without modification. No native
     * operation or revoke is issued, and no external effect is undone.
     * @return u32 Zero on the single pending-to-ready transition; otherwise 9.
     * @see Future.take
     */
    cancel(): u32
    {
        if(this.stage)
            return Status.BadHandle;
        this.result = new Reply(Status.Revoked);
        this.stage = 2;
        return Status.Success;
    }

    /**
     * @brief Execute pending local work and retain a copied bounded Reply.
     * @details Context uses this public scheduler transition. Nonpending
     * states are unchanged and the callback is not invoked. Mark running
     * before invocation, then copy reply bytes on normal return. More than
     * MAX_WIRE bytes becomes an empty TooLarge (90) Reply; required-size
     * metadata and callback status otherwise survive. Allocation or callback
     * traps are not recovered; this method does not fabricate a native reply.
     * @param callback [in] Synchronous function reference, invoked at most once.
     * @see Context.spinOnce
     */
    run(callback: () => Reply): void
    {
        if(this.stage)
            return;
        this.stage = 1;
        const reply = callback();
        this.result =
            reply.bytes.length > MAX_WIRE ? new Reply(Status.TooLarge) : new Reply(reply.status, reply.bytes.slice(0), reply.required, reply.requiredValid);
        this.stage = 2;
    }
}

class DeferredTask
{
    constructor(public future: Future, public callback: () => Reply)
    {
    }
}

/**
 * @brief Retain one local timer registration in caller-supplied nanoseconds.
 * @details No clock import, thread or native timer is created. Context validates
 * a positive period on registration; direct construction only stores values.
 * Keep timing and callback fields consistent while registered, and cancel
 * through cancel. Public mutation can bypass scheduling invariants.
 * @see Context.timer
 */
export class Timer
{
    /**
     * @brief Indicate whether this local registration remains active.
     * @details Context and cancel set this flag false on retirement. Liveness
     * is bookkeeping and conveys no native readiness or operation permission.
     * @see Timer.cancel
     */
    live: bool = true;

    /**
     * @brief Store the local timer fields without reading a clock.
     * @details Direct construction performs no validation or Context
     * registration. Supply one monotonic time domain consistently. Context
     * retains references to this timer, group and callback until retirement;
     * no native cleanup accompanies object collection.
     * @param deadline [in] Absolute first deadline in caller-domain nanoseconds.
     * @param period [in] Positive interval in nanoseconds for Context use.
     * @param group [in] Local guard shared with related timer callbacks.
     * @param callback [in] Synchronous function reference returning a status.
     * @see Context.timer
     */
    constructor(
        /**
         * @brief Store the next absolute deadline in nanoseconds.
         * @details Context advances this to now plus period before dispatch;
         * overdue ticks are not replayed. Use the same domain as spinOnce.
         * @see Context.spinOnce
         */
        public deadline: u64,
        /**
         * @brief Store the positive repeat interval in nanoseconds.
         * @details Context.timer rejects zero. Changing this public value
         * after registration bypasses that check and is outside the contract.
         * @see Context.timer
         */
        public period: u64,
        /**
         * @brief Retain the guard used for synchronous timer dispatch.
         * @details This shared local reference prevents reentry through the
         * same CallbackGroup; it adds no native callback or authority.
         * @see CallbackGroup.run
         */
        public group: CallbackGroup,
        /**
         * @brief Retain the callback invoked when this timer is due.
         * @details Context borrows the function during synchronous dispatch
         * and retains its returned u32 in spinOnce's outcome list.
         * @see Context.spinOnce
         */
        public callback: () => u32)
    {
    }

    /**
     * @brief Retire this timer once without invoking native cleanup.
     * @details Set live=false and return Success (0) on the first call.
     * An already retired timer returns BadHandle (9) without effects. This
     * cannot interrupt a callback or undo previously admitted native work.
     * @return u32 Zero on retirement, or 9 if already inactive.
     * @see Context.shutdown
     */
    cancel(): u32
    {
        if(!this.live)
            return Status.BadHandle;
        this.live = false;
        return Status.Success;
    }
}

/**
 * @brief Retain local deferred-registration status and an optional Future.
 * @details Context.defer returns a Future only for a successful registration.
 * Direct construction stores values without enforcing that relationship.
 * Inspect status before using future; neither value is a native identifier.
 * @see Context.defer
 */
export class FutureReply
{
    /**
     * @brief Store a deferred-registration outcome without scheduling work.
     * @details References are retained directly; no copy, validation, import
     * or ownership acquisition occurs. Allocation may trap.
     * @param status [in] Registration status; zero denotes success.
     * @param future [in] Registered local Future, or null on refusal.
     * @see Context.defer
     */
    constructor(
        /**
         * @brief Retain the deferred-registration status code.
         * @details Context uses 0 for success and a nonzero local refusal
         * otherwise. This is distinct from the future callback's Reply status.
         * @see Future.take
         */
        public status: u32,
        /**
         * @brief Retain the registered Future when registration succeeded.
         * @details Null means no Future was returned. Context owns a queued
         * reference until its scheduling pass or shutdown; inspect status first.
         * @see Context.defer
         */
        public future: Future|null = null)
    {
    }
}

/**
 * @brief Retain local timer-registration status and an optional Timer.
 * @details Context.timer returns no timer on a refused registration. Direct
 * construction only stores values; inspect status before accessing timer.
 * No native timer or handle is represented by this wrapper.
 * @see Context.timer
 */
export class TimerReply
{
    /**
     * @brief Store a timer-registration outcome without creating a timer.
     * @details Retain the optional reference without validation or import.
     * Context enforces successful registration; this constructor does not.
     * @param status [in] Registration status; zero denotes success.
     * @param timer [in] Registered local Timer, or null on refusal.
     * @see Context.timer
     */
    constructor(
        /**
         * @brief Retain the timer-registration status code.
         * @details Context reports 0 on success and a nonzero local refusal
         * otherwise. Callback statuses are returned separately by spinOnce.
         * @see Context.spinOnce
         */
        public status: u32,
        /**
         * @brief Retain the registered local timer on success.
         * @details Context keeps its own reference until retirement cleanup
         * or shutdown. Null represents a registration without a timer result.
         * @see Context.timer
         */
        public timer: Timer|null = null)
    {
    }
}

/**
 * @brief Schedule bounded caller-driven local jobs and timers.
 * @details Context reads no clock and imports no ROS operation itself. Callers
 * supply monotonic nanoseconds to spinOnce. Queued functions may synchronously
 * call native APIs under their own grants; close their Session separately.
 * Context guards reentry and has no background work, wait or trap recovery.
 * @see Context.spinOnce
 */
export class Context
{
    private jobs: Array<DeferredTask> = new Array<DeferredTask>();
    private timers: Array<Timer> = new Array<Timer>();
    private closed: bool = false;
    private spinning: bool = false;
    private hasTime: bool = false;
    private lastTime: u64 = 0;
    /**
     * @brief Retain the initial local capacity validation status.
     * @details Constructor sets Invalid (22) for a budget outside 1..1024.
     * Other than zero initialization success, this is not a native readiness
     * or authority result. Public mutation is outside the construction contract.
     * @see Context.constructor
     */
    status: u32 = Status.Success;

    /**
     * @brief Create local scheduling state with one shared registration bound.
     * @details Store no native resource and execute no work. An invalid
     * maximum sets status=Invalid (22), which later operations report.
     * Allocation failure may trap; no native cleanup is required.
     * @param maximum [in] Total queued-job plus live-timer limit, 1..1024.
     * @see Context.status
     */
    constructor(private maximum: i32 = 1024)
    {
        if(maximum < 1 || maximum > 1024)
            this.status = Status.Invalid;
    }

    private room(): u32
    {
        if(this.closed)
            return Status.BadHandle;
        if(this.status)
            return this.status;
        if(this.spinning)
            return Status.Conflict;
        for(let i = this.timers.length - 1; i >= 0; --i)
            if(!this.timers[i].live)
                this.timers.splice(i, 1);
        return this.jobs.length + this.timers.length >= this.maximum ? Status.TooLarge : Status.Success;
    }

    /**
     * @brief Queue one synchronous function for a later scheduling pass.
     * @details Do not invoke it inline. Retain the function reference until
     * spinOnce or shutdown, and copy its normal Reply bytes through Future.run.
     * Closed Context returns 9, invalid initialization its status, reentry 17,
     * and full shared capacity 90; refusals queue nothing. Use application
     * objects/globals for callback state because this compiler uses function
     * references and does not provide general JavaScript closures.
     * @param callback [in] Function returning one local or native-call Reply.
     * @return FutureReply Registration status and Future only on success.
     * @see Future.run
     */
    defer(callback: () => Reply): FutureReply
    {
        const status = this.room();
        if(status)
            return new FutureReply(status);
        const future = new Future();
        this.jobs.push(new DeferredTask(future, callback));
        return new FutureReply(Status.Success, future);
    }

    /**
     * @brief Register one repeating timer in the caller's time domain.
     * @details Read no clock or Clock grant. Apply the same closed, invalid,
     * reentry and capacity gates as defer, then reject period zero with
     * Invalid (22). Refusals register nothing. A due pass invokes at most
     * once and advances from now; missed ticks are not replayed.
     * @param first [in] Absolute first deadline in monotonic nanoseconds.
     * @param period [in] Positive repeat interval in nanoseconds.
     * @param group [in] Retained local reentry guard for callback dispatch.
     * @param callback [in] Retained synchronous function returning a status.
     * @return TimerReply Registration status and Timer only on success.
     * @see Context.spinOnce
     */
    timer(first: u64, period: u64, group: CallbackGroup, callback: () => u32): TimerReply
    {
        const status = this.room();
        if(status)
            return new TimerReply(status);
        if(!period)
            return new TimerReply(Status.Invalid);
        const timer = new Timer(first, period, group, callback);
        this.timers.push(timer);
        return new TimerReply(Status.Success, timer);
    }

    /**
     * @brief Run queued local jobs and each due timer at most once.
     * @details Reject closed state (9), invalid initialization, reentry (17)
     * or backwards time (22) before callbacks. Commit the time and process
     * entry-time jobs first, then entry-time timers in registration order.
     * Each queued job contributes Success for the scheduling step; obtain its
     * actual result through Future.take, including a prior cancellation.
     * Due timers advance to now+period before invoking their group. Overflow
     * retires the timer, records Invalid and skips its callback. Callbacks
     * run synchronously with no retry; a Wasm trap is not recovered.
     * @param now [in] Monotonic caller-domain nanoseconds, nondecreasing.
     * @return Array<u32> Owning ordered local scheduling/timer statuses.
     * @see Future.take
     */
    spinOnce(now: u64): Array<u32>
    {
        if(this.closed)
            return [ Status.BadHandle ];
        if(this.status)
            return [ this.status ];
        if(this.spinning)
            return [ Status.Conflict ];
        if(this.hasTime && now < this.lastTime)
            return [ Status.Invalid ];
        this.hasTime = true;
        this.lastTime = now;
        this.spinning = true;
        const jobs = this.jobs;
        this.jobs = new Array<DeferredTask>();
        const out = new Array<u32>();
        for(let i = 0; i < jobs.length; ++i)
        {
            jobs[i].future.run(jobs[i].callback);
            out.push(Status.Success);
        }
        const count = this.timers.length;
        for(let i = 0; i < count; ++i)
        {
            const timer = this.timers[i];
            if(!timer.live || now < timer.deadline)
                continue;
            if(now > u64.MAX_VALUE - timer.period)
            {
                timer.live = false;
                out.push(Status.Invalid);
                continue;
            }
            timer.deadline = now + timer.period;
            out.push(timer.group.run(timer.callback));
        }
        this.spinning = false;
        return out;
    }

    /**
     * @brief Close local scheduling and cancel pending jobs and timers.
     * @details Reentry during spinOnce returns Conflict (17); an already
     * closed Context returns BadHandle (9). Otherwise mark closed, cancel
     * queued Futures, retire timers and release registration references.
     * Previously completed Future results remain available. No ROS close or
     * revoke is imported, and started synchronous work cannot be interrupted;
     * retire native resources through their owning Session separately.
     * @return u32 Zero on first shutdown, 9 if closed, or 17 during dispatch.
     * @see Future.cancel
     */
    shutdown(): u32
    {
        if(this.closed)
            return Status.BadHandle;
        if(this.spinning)
            return Status.Conflict;
        this.closed = true;
        for(let i = 0; i < this.jobs.length; ++i)
            this.jobs[i].future.cancel();
        this.jobs.length = 0;
        for(let i = 0; i < this.timers.length; ++i)
            this.timers[i].live = false;
        this.timers.length = 0;
        return Status.Success;
    }
}
