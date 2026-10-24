using System;
using Uwvm.Ros;

namespace Uwvm.Trossen.Ros1.ros1_main
{
    /**
     * @brief Complete typed ROS 1 xarm_msgs/TCPOffset service interface.
     * @details Concrete component records preserve the complete original schema.
     * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
     * operation requires its independently granted role and qualified native
     * identity. This facade neither invents identities nor registers endpoints.
     */
    public static class Ros1ApiXarm_msgsTCPOffset
    {

        /**
         * @brief Call one complete typed service exactly once.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @param value Borrowed stable complete request.
         * @return Owned complete typed response or actual transport/codec failure.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<Ros1Xarm_msgsTCPOffsetResponse> Call(Owner owner, Ros1Xarm_msgsTCPOffsetRequest value)
        {
            if(owner == null)
            {
                return new Owner.Value<Ros1Xarm_msgsTCPOffsetResponse>(Owner.Reply.Failure(22));
            }
            byte[] input;
            try
            {
                input = Ros1Xarm_msgsTCPOffsetRequest.Encode(value);
            }
            catch(ArgumentException invalid)
            {
                return new Owner.Value<Ros1Xarm_msgsTCPOffsetResponse>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = owner.Request(Operations.SERVICE_CALL, input, Ros1Xarm_msgsTCPOffsetResponse.MAX_WIRE_BYTES);
            Owner.Value<Ros1Xarm_msgsTCPOffsetResponse> result = new Owner.Value<Ros1Xarm_msgsTCPOffsetResponse>(reply);
            if(reply.Status == 0)
            {
                try
                {
                    Ros1Xarm_msgsTCPOffsetResponse next = Ros1Xarm_msgsTCPOffsetResponse.Decode(reply.Bytes);
                    result.Data = next;
                }
                catch(ArgumentException invalid)
                {
                    reply.Status = 22;
                }
            }
            return result;
        }

        /**
         * @brief Activate the caller's retained service-advertise owner.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @return Actual activation errno; activation supplies no response grant.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static uint Advertise(Owner owner)
        {
            return owner == null ? 22 : owner.Activate(true);
        }

        /**
         * @brief Poll one complete service request with its exact nonzero response ticket.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @return Owned complete request and correlation ticket; idle remains errno11.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<Ros1Xarm_msgsTCPOffsetRequest> Poll(Owner owner)
        {
            if(owner == null)
            {
                return new Owner.Value<Ros1Xarm_msgsTCPOffsetRequest>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = owner.Poll(Ros1Xarm_msgsTCPOffsetRequest.MAX_WIRE_BYTES + 8);
            Owner.Value<Ros1Xarm_msgsTCPOffsetRequest> result = new Owner.Value<Ros1Xarm_msgsTCPOffsetRequest>(reply);
            if(reply.Status == 0)
            {
                try
                {
                    if(reply.Bytes.Length < 8)
                    {
                        throw new ArgumentException("Truncated correlation envelope");
                    }
                    result.Correlation = Wire.Get64(reply.Bytes, 0);
                    if(result.Correlation == 0)
                    {
                        throw new ArgumentException("Zero correlation ID");
                    }
                    Ros1Xarm_msgsTCPOffsetRequest next = Ros1Xarm_msgsTCPOffsetRequest.Decode(Slice(reply.Bytes, 8));
                    result.Data = next;
                }
                catch(ArgumentException invalid)
                {
                    reply.Status = 22;
                }
            }
            return result;
        }

        /**
         * @brief Respond once to one exact native-correlated service ticket.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @param ticket Nonzero ticket returned by this service's poll.
         * @param value Borrowed complete response record.
         * @return Owned empty-success report or actual response error; no replay.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Reply Respond(Owner owner, ulong ticket, Ros1Xarm_msgsTCPOffsetResponse value)
        {
            if(owner == null || ticket == 0)
            {
                return Owner.Reply.Failure(22);
            }
            byte[] input;
            try
            {
                input = Frame(Ros1Xarm_msgsTCPOffsetResponse.Encode(value), ticket, 0);
            }
            catch(ArgumentException invalid)
            {
                return Owner.Reply.Failure(22);
            }
            Owner.Reply reply = owner.Request(Operations.SERVICE_RESPOND, input, 0);
            if(reply.Status == 0 && reply.Bytes.Length != 0)
            {
                reply.Status = 22;
            }
            return reply;
        }

        /**
         * @brief Own an exact correlation envelope around a complete typed body.
         * @param body Borrowed complete already-validated canonical bytes.
         * @param id Exact nonzero ticket/goal ID.
         * @param kind Zero for service envelope, 1..4 for action response.
         * @return Newly owned exact envelope; no host operation occurs.
         */
        private static byte[] Frame(byte[] body, ulong id, int kind)
        {
            int prefix = kind == 0 ? 8 : 9;
            byte[] bytes = new byte[body.Length + prefix];
            Wire.Put64(bytes, 0, id);
            if(kind != 0)
            {
                bytes[8] = (byte)kind;
            }
            Array.Copy(body, 0, bytes, prefix, body.Length);
            return bytes;
        }

        /**
         * @brief Own a complete payload suffix after a checked correlation prefix.
         * @param bytes Borrowed complete response bytes.
         * @param prefix Validated prefix byte count.
         * @return Newly owned exact typed-body bytes; invalid extents throw.
         */
        private static byte[] Slice(byte[] bytes, int prefix)
        {
            byte[] body = new byte[bytes.Length - prefix];
            Array.Copy(bytes, prefix, body, 0, body.Length);
            return body;
        }
    }
}
