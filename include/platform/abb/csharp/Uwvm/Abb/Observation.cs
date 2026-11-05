/**
 * @file Observation.cs
 * @brief Represent the complete original ABB ROS 2 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using System.IO;
using System.Text;
using System.Threading;
using Uwvm.RosWasm;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Abb
{
    /**
     * @brief Read complete ABB values through one real selected ROS capability ABI.
     * @details Every report and nested sequence is guest-owned. Calls are
     * synchronous and close exactly once; no robot-control command is issued.
     */
    public static class Observation
    {
        /// <summary>Completed data and independent cleanup facts; never a live capability.</summary>
        public sealed class Exchange
        {
            public uint Primary, Cleanup, RpcStatus;
            public bool CleanupPresent, RpcPresent, RequiredPresent;
            public ulong Required;
            public byte[] Bytes = Array.Empty<byte>();
            public Exception? CleanupException;
            public RetirementDiagnostic? CleanupRetirement;
            public uint Status => Primary != 0 ? Primary : Cleanup;
        }

        /// <summary>Observe once through the maintained Session/Capability API.
        /// Only an idle event poll may be repeated; an acquired owner is closed exactly once.</summary>
        public static Exchange ReadSample(string alias, int capacity, int attempts) =>
            ExchangeResource(alias, true, attempts, Array.Empty<byte>(), capacity);

        private static Exchange ExchangeResource(string alias, bool subscription, int attempts,
                                                  byte[] request, int capacity)
        {
            var report = new Exchange();
            if (attempts <= 0 || capacity < 0)
            {
                report.Primary = 22;
                return report;
            }
            var session = new Session(new NativeTransport(), 1);
            Capability? owner = null;
            try
            {
                session.CheckAbi();
                owner = session.Open(alias);
                if (subscription)
                {
                    var activation = owner.Invoke("topic_subscribe");
                    report.RpcPresent = true;
                    report.Primary = report.RpcStatus = activation.Error;
                    if (report.Primary != 0) return report;
                }
                for (int attempt = 0; attempt < attempts; ++attempt)
                {
                    var result = owner.Invoke(subscription ? "event_poll" : "service_call", request, capacity);
                    report.RpcPresent = true;
                    report.Primary = report.RpcStatus = result.Error;
                    report.RequiredPresent = result.Required.HasValue;
                    report.Required = result.Required.GetValueOrDefault();
                    report.Bytes = result.Data;
                    if (!subscription || result.Error != 11 || attempt == attempts - 1) break;
                    Thread.Sleep(20);
                }
            }
            catch (RosException error) { report.Primary = error.Result.Error; }
            catch (ArgumentException) { report.Primary = 22; }
            catch (FormatException) { report.Primary = 22; }
            finally
            {
                if (owner != null)
                {
                    report.CleanupPresent = true;
                    try
                    {
                        report.Cleanup = owner.CloseChecked().Error;
                        report.CleanupRetirement = owner.LastRetirement;
                    }
                    catch (Exception error)
                    {
                        report.CleanupException = error;
                        report.Cleanup = error is RosException failure ? failure.Result.Error : 5u;
                        report.CleanupRetirement = owner.LastRetirement;
                    }
                }
            }
            return report;
        }

        /** @brief Own a complete typed response and independent transport/cleanup facts. */
        public sealed class Result<T>
            where T : class
        {
            /** @brief Owned complete operation, length and once-only close facts; no live handle escapes. */
            public readonly Exchange Exchange;
            /** @brief Owned complete response; null before transactional validation commits. */
            public T Response;

            /**
             * @brief Adopt a completed exchange without retaining a capability handle.
             * @param exchange Owned completed report with its close result.
             * @details Response stays null until a complete transactional decode succeeds.
             */
            internal Result(Exchange exchange)
            {
                Exchange = exchange;
            }
        }

        /** @brief Complete GetSpeedRatio response, including controller refusal text. */
        public sealed class SpeedRatio
        {
            /** @brief Original unsigned speed-ratio byte, retained without narrowing. */
            public byte Speed;
            /** @brief Original unsigned 16-bit controller result code, including refusal values. */
            public ushort ResultCode;
            /** @brief Owned complete original controller message, bounded to 512 UTF-8 bytes. */
            public string Message;
        }

        /** @brief Complete GetIOSignal response; value remains the original controller string. */
        public sealed class IOSignal
        {
            /** @brief Owned original IO text value, bounded to 512 UTF-8 bytes without Bool conversion. */
            public string Value;
            /** @brief Original unsigned 16-bit controller result code, including refusal values. */
            public ushort ResultCode;
            /** @brief Owned complete original controller message, bounded to 512 UTF-8 bytes. */
            public string Message;
        }

        /** @brief Entire RAPID task state, retaining its original execution-state byte. */
        public sealed class RapidTask
        {
            /** @brief Owned complete original name, bounded to 64 UTF-8 bytes. */
            public string Name;
            /** @brief Original activation flag; it grants no controller or transport authority. */
            public bool Activated;
            /** @brief Original unsigned execution-state byte; unknown values remain observable. */
            public byte ExecutionState;
            /** @brief Original indication that this task owns a mechanical motion role. */
            public bool MotionTask;
        }

        /** @brief Entire mechanical-unit state with its original bounded name. */
        public sealed class MechanicalUnit
        {
            /** @brief Owned complete original name, bounded to 64 UTF-8 bytes. */
            public string Name;
            /** @brief Original activation flag; it grants no controller or transport authority. */
            public bool Activated;
        }

        /** @brief Complete SystemState header, flags and nested task/unit sequences. */
        public sealed class SystemState
        {
            /** @brief True only when this compiled backend has the original ROS1 Header sequence field. */
            public bool HasSequence;
            /** @brief Complete original ROS1 sequence counter; absent in the ROS2 Header schema. */
            public uint Sequence;
            /** @brief Complete signed ROS2 or unsigned ROS1 seconds retained without narrowing. */
            public long Seconds;
            /** @brief Original normalized fractional second, validated below one billion. */
            public uint Nanoseconds;
            /** @brief Owned complete original frame identifier, bounded to 64 UTF-8 bytes. */
            public string FrameId;
            /** @brief Original whole-system motors-on observation, without a control operation. */
            public bool MotorsOn;
            /** @brief Original whole-system automatic-mode observation, without inference. */
            public bool AutoMode;
            /** @brief Original whole-system RAPID-running observation, without a hidden state update. */
            public bool RapidRunning;
            /** @brief Owned complete bounded RAPID-task array, retaining every original nested field. */
            public RapidTask[] RapidTasks;
            /** @brief Owned complete bounded mechanical-unit array, retaining every original nested field. */
            public MechanicalUnit[] MechanicalUnits;
        }

        /**
         * @brief Read speed once without changing the controller override.
         * @param alias Borrowed exact GetSpeedRatio service-call alias.
         * @return Owned complete response/report; controller refusal retains Response.
         * @details Success requires result_code 1 and speed in 0..100. Transport,
         * decode, controller and cleanup facts remain independently observable.
         */
        public static Result<SpeedRatio> ReadSpeed(string alias)
        {
            Result<SpeedRatio> result = new Result<SpeedRatio>(ExchangeResource(alias, false, 1, Array.Empty<byte>(), 519));
            if(result.Exchange.Primary != 0)
            {
                return result;
            }
            try
            {
                CatalogWire.Reader wire = new CatalogWire.Reader(result.Exchange.Bytes);
                SpeedRatio response = new SpeedRatio { Speed = wire.U8(), ResultCode = wire.U16(), Message = wire.String(512) };
                wire.Finish();
                result.Response = response;
                if(response.ResultCode != 1 || response.Speed > 100)
                {
                    result.Exchange.Primary = 5;
                }
            }
            catch(Exception error) when (error is ArgumentException || error is FormatException)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }

        /**
         * @brief Read one complete IO signal value without changing it.
         * @param alias Borrowed exact GetIOSignal service-call alias.
         * @param signal Nonempty Unicode signal name bounded to 512 UTF-8 bytes.
         * @return Owned complete response/report; invalid local inputs yield primary 22.
         * @details The complete canonical request is attempted once. Every acquired
         * handle is already closed before the typed response is returned.
         */
        public static Result<IOSignal> ReadIO(string alias, string signal)
        {
            byte[] request;
            try
            {
                var writer = new CatalogWire.Writer(516);
                writer.String(signal, 512);
                request = writer.Finish();
            }
            catch(Exception error) when (error is ArgumentException || error is FormatException)
            {
                return new Result<IOSignal>(new Exchange { Primary = 22 });
            }
            Result<IOSignal> result = new Result<IOSignal>(ExchangeResource(alias, false, 1, request, 1034));
            if(result.Exchange.Primary != 0)
            {
                return result;
            }
            try
            {
                CatalogWire.Reader wire = new CatalogWire.Reader(result.Exchange.Bytes);
                IOSignal response = new IOSignal { Value = wire.String(512), ResultCode = wire.U16(), Message = wire.String(512) };
                wire.Finish();
                result.Response = response;
                if(response.ResultCode != 1)
                {
                    result.Exchange.Primary = 5;
                }
            }
            catch(Exception error) when (error is ArgumentException || error is FormatException)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }

        /**
         * @brief Await a whole SystemState with one retained subscription owner.
         * @param alias Borrowed exact SystemState topic-subscribe alias.
         * @param attempts Caller-supplied poll credits in 1..250.
         * @return Owned complete nested state/report or the actual operation failure.
         * @details Header layout follows the compiled ROS backend. Every boolean,
         * UTF-8 string, nested count, timestamp and trailing byte is validated.
         */
        public static Result<SystemState> ReadSystemState(string alias, int attempts)
        {
            bool ros1 = new NativeTransport().Backend == 1;
            Result<SystemState> result = new Result<SystemState>(ReadSample(alias, ros1 ? 2331 : 2327, attempts));
            if(result.Exchange.Primary != 0)
            {
                return result;
            }
            try
            {
                CatalogWire.Reader wire = new CatalogWire.Reader(result.Exchange.Bytes);
                SystemState response = new SystemState();
                response.HasSequence = ros1;
                if(ros1)
                {
                    response.Sequence = wire.U32();
                }
                uint seconds = wire.U32();
                response.Seconds = ros1 ? seconds : (long)unchecked((int)seconds);
                response.Nanoseconds = wire.U32();
                if(response.Nanoseconds >= 1000000000)
                {
                    throw new ArgumentException("Invalid ROS nanoseconds");
                }
                response.FrameId = wire.String(64);
                response.MotorsOn = wire.Bool();
                response.AutoMode = wire.Bool();
                response.RapidRunning = wire.Bool();
                response.RapidTasks = new RapidTask[wire.Count(16)];
                for(int index = 0; index < response.RapidTasks.Length; ++index)
                {
                    response.RapidTasks[index] =
                        new RapidTask { Name = wire.String(64), Activated = wire.Bool(), ExecutionState = wire.U8(), MotionTask = wire.Bool() };
                }
                response.MechanicalUnits = new MechanicalUnit[wire.Count(16)];
                for(int index = 0; index < response.MechanicalUnits.Length; ++index)
                {
                    response.MechanicalUnits[index] = new MechanicalUnit { Name = wire.String(64), Activated = wire.Bool() };
                }
                wire.Finish();
                result.Response = response;
            }
            catch(Exception error) when (error is ArgumentException || error is FormatException)
            {
                result.Exchange.Primary = 22;
            }
            return result;
        }

        /**
         * @brief Print complete status facts and every canonical response byte.
         * @param result Borrowed completed typed report.
         * @return Operation, cleanup or output errno clamped to 125.
         * @details Controller refusal still retains the complete wire body.
         * Output failure becomes errno 5 only when no earlier failure exists.
         */
        public static int Write<T>(Result<T> result)
            where T : class
        {
            Exchange facts = result.Exchange;
            uint status = facts.Status;
            StringBuilder output = new StringBuilder();
            output.Append("{\"primary\":")
                .Append(facts.Primary)
                .Append(",\"cleanup\":")
                .Append(facts.Cleanup)
                .Append(",\"cleanup_present\":")
                .Append(facts.CleanupPresent ? 1 : 0)
                .Append(",\"response_present\":")
                .Append(result.Response != null ? 1 : 0)
                .Append(",\"rpc_present\":")
                .Append(facts.RpcPresent ? 1 : 0)
                .Append(",\"rpc_status\":")
                .Append(facts.RpcStatus)
                .Append(",\"required_present\":")
                .Append(facts.RequiredPresent ? 1 : 0)
                .Append(",\"required\":")
                .Append(facts.Required)
                .Append(",\"encoding\":0,\"wire_hex\":\"");
            if(result.Response != null)
            {
                const string digits = "0123456789abcdef";
                foreach(byte value in facts.Bytes)
                {
                    output.Append(digits[value >> 4]).Append(digits[value & 15]);
                }
            }
            output.Append("\"}");
            try
            {
                Console.WriteLine(output.ToString());
                Console.Out.Flush();
            }
            catch(IOException)
            {
                if(status == 0)
                {
                    status = 5;
                }
            }
            return (int)Math.Min(status, 125u);
        }
    }
}
