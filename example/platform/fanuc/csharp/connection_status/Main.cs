/**
 * @file Main.cs
 * @brief Run one explicit FANUC ROS 2 observation with checked cleanup.
 * @details The actual source-language application validates argument arity before acquisition, retains
 * the whole typed canonical value and reports independent operation/cleanup statuses. The operator
 * supplies an existing alias and its matching native type binding. A source-backed compiler or VM is
 * required; no grant, replay or controller admission is implicit.
 */
using System;
using System.Threading;
using Uwvm.RosWasm;
using Uwvm.Fanuc.Ros2;

namespace Fanuc.Examples
{
    /// <summary>Run the actual CLR application inside Wasm using the public typed ROS binding.</summary>
    public static class MainProgram
    {
        /// <summary>Preserve independent operation and cleanup statuses without automatic reacquisition.</summary>
        public static int Main(string[] args)
        {
            if(args.Length != 1)
                return 22;
            uint primary = 0, cleanup = 0;
            byte[] wire = Array.Empty<byte>();
            var session = new Session(new NativeTransport(), 1);
            try
            {
                session.CheckAbi();
                var subscription = Ros2ApiFanuc_msgsMsgConnectionStatus.CreateSubscription(new Node(session), args[0],
                    value => wire = Ros2Fanuc_msgsMsgConnectionStatus.Encode(value));
                for(int attempt = 0; attempt < 250; ++attempt)
                {
                    primary = subscription.PollOnce().Error;
                    if(primary != 11 || attempt == 249)
                        break;
                    Thread.Sleep(20);
                }
            }
            catch(RosException error)
            {
                primary = error.Result.Error;
            }
            catch(Exception error) when(error is ArgumentException || error is FormatException)
            {
                primary = 22;
            }
            finally
            {
                // Setup rollback and normal close have independent evidence.
                // CloseChecked retires retained owners once; no close retry occurs.
                foreach(var item in session.LastSetupCleanup)
                    if(cleanup == 0)
                        cleanup = item.Exception is RosException failure ? failure.Result.Error :
                            item.Exception != null ? 5u : item.Result?.Error ?? 0u;
                try
                {
                    var report = session.CloseChecked();
                    for(int index = 0; index < report.Count; ++index)
                    {
                        var item = report.Items[index];
                        if(cleanup == 0)
                            cleanup = item.Exception is RosException failure ? failure.Result.Error :
                                item.Exception != null ? 5u : item.Result?.Error ?? 0u;
                    }
                }
                catch(Exception error)
                {
                    if(cleanup == 0)
                        cleanup = error is RosException failure ? failure.Result.Error : 5u;
                }
            }
            Console.WriteLine("{\"primary\":" + primary + ",\"cleanup\":" + cleanup + ",\"wire_hex\":\"" +
                              Convert.ToHexString(wire).ToLowerInvariant() + "\"}");
            return (int)Math.Min(primary != 0 ? primary : cleanup, 125u);
        }
    }
}
