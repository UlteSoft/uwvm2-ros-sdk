using System;
using System.Threading;
using Uwvm.RosWasm;

namespace Uwvm.Yaskawa
{
    /// <summary>One guest subscription with independent operation and retirement facts.</summary>
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

    }
}
