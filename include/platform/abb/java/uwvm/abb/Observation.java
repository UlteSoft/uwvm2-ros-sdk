/**
 * @file Observation.java
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
package uwvm.abb;

import uwvm.ros.Client;
import uwvm.ros.Wire;

/**
 * @brief Read complete bounded ABB observations through the genuine ROS guest ABI.
 * @details The facade uses the pinned complete ABB canonical schema for the selected ROS family. Every
 * response and nested sequence belongs to the returned report. No robot control
 * operation, native ROS implementation, hidden retry, or background executor exists.
 */
public final class Observation
{
    /** @brief Prevent construction of this stateless observation facade. */
    private Observation()
    {
    }

    /**
     * @brief Own an entire decoded response and all independent exchange facts.
     * @param <T> Complete schema response type.
     * @details response is nonnull only after transactional decode. A controller
     * refusal retains the complete typed response while setting primary errno 5.
     */
    public static final class Result<T>
    {
        /** @brief Owned complete operation, length and once-only close facts; no live handle escapes. */
        public final Client.Exchange exchange;
        /** @brief Owned complete response; null before transactional validation commits. */
        public T response;

        /**
         * @brief Adopt one completed exchange report without retaining a handle.
         * @param exchange Owned complete report; already closed exactly once.
         * @details No host operation occurs and ownership is exclusive by convention.
         */
        private Result(Client.Exchange exchange)
        {
            this.exchange = exchange;
        }
    }

    /** @brief Complete GetSpeedRatio response; fields preserve original controller data. */
    public static final class SpeedRatio
    {
        /** @brief Original unsigned speed-ratio byte, retained without narrowing. */
        public int speedRatio;
        /** @brief Original unsigned 16-bit controller result code, including refusal values. */
        public int resultCode;
        /** @brief Owned complete original controller message, bounded to 512 UTF-8 bytes. */
        public String message;
    }

    /** @brief Complete GetIOSignal response; value remains text exactly as supplied. */
    public static final class IOSignal
    {
        /** @brief Owned original IO text value, bounded to 512 UTF-8 bytes without Bool conversion. */
        public String value;
        /** @brief Original unsigned 16-bit controller result code, including refusal values. */
        public int resultCode;
        /** @brief Owned complete original controller message, bounded to 512 UTF-8 bytes. */
        public String message;
    }

    /** @brief Complete RAPID task state, including its original execution-state byte. */
    public static final class RapidTask
    {
        /** @brief Owned complete original name, bounded to 64 UTF-8 bytes. */
        public String name;
        /** @brief Original activation flag; it grants no controller or transport authority. */
        public boolean activated;
        /** @brief Original unsigned execution-state byte; unknown values remain observable. */
        public int executionState;
        /** @brief Original indication that this task owns a mechanical motion role. */
        public boolean motionTask;
    }

    /** @brief Complete mechanical-unit state; its name is bounded to 64 UTF-8 bytes. */
    public static final class MechanicalUnit
    {
        /** @brief Owned complete original name, bounded to 64 UTF-8 bytes. */
        public String name;
        /** @brief Original activation flag; it grants no controller or transport authority. */
        public boolean activated;
    }

    /** @brief Complete SystemState, including header and all nested task/unit records. */
    public static final class SystemState
    {
        /** @brief ROS1 sequence counter; zero for the ROS2 Header schema. */
        public long sequence;
        /** @brief Signed ROS2 or unsigned ROS1 complete seconds without narrowing. */
        public long seconds;
        /** @brief Original normalized fractional second, validated below one billion. */
        public long nanoseconds;
        /** @brief Owned complete original frame identifier, bounded to 64 UTF-8 bytes. */
        public String frameId;
        /** @brief Original whole-system motors-on observation, without a control operation. */
        public boolean motorsOn;
        /** @brief Original whole-system automatic-mode observation, without inference. */
        public boolean autoMode;
        /** @brief Original whole-system RAPID-running observation, without a hidden state update. */
        public boolean rapidRunning;
        /** @brief Owned complete bounded RAPID-task array, retaining every original nested field. */
        public RapidTask[] rapidTasks;
        /** @brief Owned complete bounded mechanical-unit array, retaining every original nested field. */
        public MechanicalUnit[] mechanicalUnits;
    }

    /**
     * @brief Read the motion-speed ratio without changing the controller override.
     * @param alias Borrowed exact GetSpeedRatio service-call alias.
     * @return Newly owned report with the full response, transport and close facts.
     * @details The empty request is issued once. Success requires result_code 1
     * and speed_ratio in 0..100. Decode failure preserves original RPC status.
     */
    public static Result<SpeedRatio> readSpeed(String alias)
    {
        Result<SpeedRatio> result = new Result<>(Client.call(alias, new byte[0], 519));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Wire.Reader wire = new Wire.Reader(result.exchange.wire, result.exchange.wire.length);
            SpeedRatio response = new SpeedRatio();
            response.speedRatio = wire.u8();
            response.resultCode = wire.u16();
            response.message = wire.string(512);
            wire.finish();
            result.response = response;
            if(response.resultCode != 1 || response.speedRatio > 100)
            {
                result.exchange.primary = 5;
            }
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }

    /**
     * @brief Read one controller IO signal without changing its value.
     * @param alias Borrowed exact GetIOSignal service-call alias.
     * @param signal Nonempty Unicode signal name bounded to 512 UTF-8 bytes.
     * @return Newly owned report retaining every response field, including refusal.
     * @details Local validation returns errno 22 before acquisition. The complete
     * canonical request is issued once and every acquired handle is closed once.
     */
    public static Result<IOSignal> readIO(String alias, String signal)
    {
        byte[] request;
        try
        {
            request = Wire.string(signal, 512);
        }
        catch(IllegalArgumentException invalid)
        {
            Client.Exchange exchange = new Client.Exchange();
            exchange.primary = 22;
            return new Result<>(exchange);
        }
        Result<IOSignal> result = new Result<>(Client.call(alias, request, 1034));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Wire.Reader wire = new Wire.Reader(result.exchange.wire, result.exchange.wire.length);
            IOSignal response = new IOSignal();
            response.value = wire.string(512);
            response.resultCode = wire.u16();
            response.message = wire.string(512);
            wire.finish();
            result.response = response;
            if(response.resultCode != 1)
            {
                result.exchange.primary = 5;
            }
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }

    /**
     * @brief Await a complete SystemState with one retained subscription owner.
     * @param alias Borrowed exact SystemState topic-subscribe alias.
     * @param attempts Explicit poll credits in 1..250.
     * @return Newly owned report containing the whole state or the actual failure.
     * @details Only queue-empty errno 11 permits another poll after a WASI pause.
     * Header, booleans, UTF-8, sequence bounds and trailing bytes are validated
     * before response is committed. This method never starts a background task.
     */
    public static Result<SystemState> systemState(String alias, int attempts)
    {
        Result<SystemState> result = new Result<>(Client.waitSample(alias, Client.backend() == 1 ? 2331 : 2327, attempts));
        if(result.exchange.primary != 0)
        {
            return result;
        }
        try
        {
            Wire.Reader wire = new Wire.Reader(result.exchange.wire, result.exchange.wire.length);
            SystemState response = new SystemState();
            if(Client.backend() == 1)
            {
                response.sequence = wire.u32();
                response.seconds = wire.u32();
            }
            else
            {
                response.seconds = wire.i32();
            }
            response.nanoseconds = wire.i32() & 0xffffffffL;
            if(response.nanoseconds >= 1_000_000_000L)
            {
                throw new IllegalArgumentException("Invalid ROS timestamp nanoseconds");
            }
            response.frameId = wire.string(64);
            response.motorsOn = wire.bool();
            response.autoMode = wire.bool();
            response.rapidRunning = wire.bool();
            response.rapidTasks = new RapidTask[wire.count(16)];
            for(int index = 0; index < response.rapidTasks.length; index++)
            {
                RapidTask task = new RapidTask();
                task.name = wire.string(64);
                task.activated = wire.bool();
                task.executionState = wire.u8();
                task.motionTask = wire.bool();
                response.rapidTasks[index] = task;
            }
            response.mechanicalUnits = new MechanicalUnit[wire.count(16)];
            for(int index = 0; index < response.mechanicalUnits.length; index++)
            {
                MechanicalUnit unit = new MechanicalUnit();
                unit.name = wire.string(64);
                unit.activated = wire.bool();
                response.mechanicalUnits[index] = unit;
            }
            wire.finish();
            result.response = response;
        }
        catch(IllegalArgumentException invalid)
        {
            result.exchange.primary = 22;
        }
        return result;
    }
}
