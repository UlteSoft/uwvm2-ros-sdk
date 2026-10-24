using System;
using System.Text;
using System.Threading;

namespace Uwvm.RosWasm;

/// @brief Execute finite complete String/Trigger operations in a genuine CLR guest.
/// @details This source is shared by C#, F# and VB.NET callers. Each application
/// is compiled by its real frontend. NativeTransport is the real selected ABI
/// bridge; no host CLR, replacement evaluator or automatic grant is involved.
public static class NativeCommand
{
    /// @brief Preserve the original response and independent operation/cleanup facts.
    /// @details All data belongs to ordinary CLR objects. An original false Trigger
    /// response remains present with its entire diagnostic string.
    public sealed class Outcome
    {
        /// @brief First operation, validation or application error; never a cleanup error.
        public uint Primary;
        /// @brief Original last transport error, retained after later local validation.
        public uint RpcStatus;
        /// @brief Whether an original transport operation was attempted.
        public bool RpcPresent;
        /// @brief Original checked response requirement, when the ABI overwrote its sentinel.
        public ulong? Required;
        /// @brief Independent once-only acquired-owner retirement result.
        public uint Cleanup;
        /// @brief Original cleanup exception, retained independently of the primary operation.
        public Exception? CleanupException;
        /// @brief Original native retirement phase and call boundary after the sole API attempt.
        public RetirementDiagnostic? CleanupRetirement;
        /// @brief Whether cleanup was attempted after successful acquisition.
        public bool CleanupPresent;
        /// @brief Whole validated original response; never unused capacity or clipped data.
        public byte[] Wire = Array.Empty<byte>();
        /// @brief Entire validated String data or Trigger diagnostic text.
        public string Text = "";
        /// @brief Original Trigger application success, independent of transport status.
        public bool Success;
        /// @brief Whether every original response field passed strict decoding.
        public bool ResponsePresent;
    }

    /// @brief Perform one finite operation while retaining the acquired owner exactly once.
    /// @param operation One for String publication, two for subscription, three for Trigger.
    /// @return Owned complete outcome, including independent cleanup and original transport.
    /// @details Only idle status 11 admits another poll, at most 250 times with
    /// 20 ms pauses. Service calls and failed publications are never replayed.
    public static Outcome Observe(uint operation)
    {
        var result = new Outcome();
        if(operation < 1 || operation > 3)
        {
            result.Primary = 22;
            return result;
        }
        var session = new Session(new NativeTransport(), 1);
        Capability? owner = null;
        try
        {
            session.CheckAbi();
            owner = session.Open("sample");
            Result exchange;
            if(operation == 1)
            {
                result.Text = "hello native ROS";
                byte[] payload = Codecs.String.Encode(result.Text);
                for(int sample = 0; sample != 2; ++sample)
                {
                    exchange = owner.Invoke("topic_publish", payload);
                    result.RpcPresent = true;
                    result.Primary = result.RpcStatus = exchange.Error;
                    if(result.Primary != 0)
                        return result;
                    Thread.Sleep(sample == 0 ? 1000 : 200);
                }
                return result;
            }
            if(operation == 2)
            {
                result.Primary = owner.Invoke("topic_subscribe").Error;
                if(result.Primary != 0)
                    return result;
                exchange = new Result(11);
                for(int attempt = 0; attempt != 250; ++attempt)
                {
                    exchange = owner.Invoke("event_poll", Array.Empty<byte>(), 256);
                    result.RpcPresent = true;
                    result.Primary = result.RpcStatus = exchange.Error;
                    result.Required = exchange.Required;
                    if(exchange.Error != 11 || attempt == 249)
                        break;
                    Thread.Sleep(20);
                }
            }
            else
            {
                exchange = owner.Invoke("service_call", Array.Empty<byte>(), 256);
                result.RpcPresent = true;
                result.Primary = result.RpcStatus = exchange.Error;
                result.Required = exchange.Required;
            }
            if(result.Primary != 0)
                return result;
            result.Wire = exchange.Data;
            if(operation == 2)
            {
                string next = Codecs.String.Decode(result.Wire);
                if(Encoding.UTF8.GetByteCount(next) > 252 || next.IndexOf('\0') >= 0)
                    throw new FormatException("String quota or NUL");
                result.Text = next;
            }
            else
            {
                Codecs.Response response = Codecs.ServiceResponse.Decode(result.Wire);
                if(Encoding.UTF8.GetByteCount(response.Message) > 251 || response.Message.IndexOf('\0') >= 0)
                    throw new FormatException("Trigger message quota or NUL");
                result.Text = response.Message;
                result.Success = response.Success;
            }
            result.ResponsePresent = true;
            if(operation == 3 && !result.Success)
                result.Primary = 5;
        }
        catch(RosException error)
        {
            result.Primary = error.Result.Error;
        }
        catch(ArgumentException)
        {
            result.Primary = 22;
        }
        catch(FormatException)
        {
            result.Primary = 22;
        }
        finally
        {
            if(owner != null)
            {
                result.CleanupPresent = true;
                try
                {
                    result.Cleanup = owner.CloseChecked().Error;
                }
                catch(Exception error)
                {
                    result.CleanupException = error;
                    result.Cleanup = 5;
                }
                result.CleanupRetirement = owner.LastRetirement;
            }
        }
        return result;
    }

    /// @brief Report complete response bytes and independent statuses before command return.
    /// @param operation Original finite operation selector.
    /// @return Primary status before independent cleanup status, as application exit code.
    /// @details A trap or unrecoverable runtime failure can prevent ordinary cleanup.
    public static int Run(uint operation)
    {
        Outcome result = Observe(operation);
        Console.WriteLine("primary=" + result.Primary + " rpc=" + result.RpcStatus + " rpc_present=" + result.RpcPresent);
        Console.WriteLine("cleanup=" + result.Cleanup + " cleanup_present=" + result.CleanupPresent);
        Console.WriteLine("cleanup_exception=" + (result.CleanupException?.Message ?? "none"));
        Console.WriteLine("response_present=" + result.ResponsePresent + " success=" + result.Success);
        Console.WriteLine("wire=" + Convert.ToHexString(result.Wire));
        Console.WriteLine(result.Text);
        return unchecked((int)(result.Primary != 0 ? result.Primary : result.Cleanup));
    }
}
