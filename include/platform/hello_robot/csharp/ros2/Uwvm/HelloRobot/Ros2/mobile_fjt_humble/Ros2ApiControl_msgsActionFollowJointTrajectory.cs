using System;
using Uwvm.Ros;

namespace Uwvm.HelloRobot.Ros2.mobile_fjt_humble
{
    /**
     * @brief Complete typed ROS 2 control_msgs/action/FollowJointTrajectory action interface.
     * @details Concrete component records preserve the complete original schema.
     * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
     * operation requires its independently granted role and qualified native
     * identity. This facade neither invents identities nor registers endpoints.
     */
    public static class Ros2ApiControl_msgsActionFollowJointTrajectory
    {

        /**
         * @brief Send a complete typed goal and retain its validated exact local ownership.
         * @param actions Borrowed live independently acquired action role set and goal table.
         * @param value Borrowed complete goal record.
         * @return Owned report and nonzero goal ID only after successful validated send.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<ulong> Send(ActionSet actions, Ros2Control_msgsActionFollowJointTrajectory_Goal value)
        {
            if(actions == null)
            {
                return new Owner.Value<ulong>(Owner.Reply.Failure(22));
            }
            byte[] input;
            try
            {
                input = Ros2Control_msgsActionFollowJointTrajectory_Goal.Encode(value);
            }
            catch(ArgumentException invalid)
            {
                return new Owner.Value<ulong>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = actions.Send(input);
            Owner.Value<ulong> result = new Owner.Value<ulong>(reply);
            if(reply.Status == 0)
            {
                result.Correlation = Wire.Get64(reply.Bytes, 0);
                result.Data = result.Correlation;
            }
            return result;
        }

        /**
         * @brief Receive one complete typed feedback for a locally owned exact goal.
         * @param actions Borrowed live independently acquired action role set and goal table.
         * @param goal Full nonzero locally tracked goal ID.
         * @return Owned complete typed value; only validated terminal result removes ownership.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Feedback> Feedback(ActionSet actions, ulong goal)
        {
            if(actions == null)
            {
                return new Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Feedback>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = actions.Receive(goal, false, Ros2Control_msgsActionFollowJointTrajectory_Feedback.MAX_WIRE_BYTES + 8);
            Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Feedback> result =
                new Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Feedback>(reply);
            if(reply.Status == 0)
            {
                try
                {
                    if(reply.Bytes.Length < 8)
                    {
                        throw new ArgumentException("Truncated correlation envelope");
                    }
                    result.Correlation = goal;
                    Ros2Control_msgsActionFollowJointTrajectory_Feedback next =
                        Ros2Control_msgsActionFollowJointTrajectory_Feedback.Decode(Slice(reply.Bytes, 8));
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
         * @brief Receive one complete typed result for a locally owned exact goal.
         * @param actions Borrowed live independently acquired action role set and goal table.
         * @param goal Full nonzero locally tracked goal ID.
         * @return Owned complete typed value; only validated terminal result removes ownership.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Result> Result(ActionSet actions, ulong goal)
        {
            if(actions == null)
            {
                return new Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Result>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = actions.Receive(goal, true, Ros2Control_msgsActionFollowJointTrajectory_Result.MAX_WIRE_BYTES + 9);
            Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Result> result = new Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Result>(reply);
            if(reply.Status == 0)
            {
                try
                {
                    if(reply.Bytes.Length < 9)
                    {
                        throw new ArgumentException("Truncated correlation envelope");
                    }
                    result.Correlation = goal;
                    Ros2Control_msgsActionFollowJointTrajectory_Result next = Ros2Control_msgsActionFollowJointTrajectory_Result.Decode(Slice(reply.Bytes, 9));
                    uint committed = actions.CommitTerminal(goal);
                    if(committed != 0)
                    {
                        reply.Status = committed;
                        return result;
                    }
                    result.Kind = reply.Bytes[8];
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
         * @brief Activate one independently granted action-advertise owner.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @return Owned empty-success report; no action callback or hidden loop is installed.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Reply Advertise(Owner owner)
        {
            if(owner == null)
            {
                return Owner.Reply.Failure(22);
            }
            Owner.Reply reply = owner.Request(Operations.ACTION_ADVERTISE, new byte[0], 0);
            if(reply.Status == 0 && reply.Bytes.Length != 0)
            {
                reply.Status = 22;
            }
            return reply;
        }

        /**
         * @brief Poll one complete advertised goal and its exact native-correlated ID.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @return Owned complete goal and nonzero correlation; idle remains errno11.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Goal> Poll(Owner owner)
        {
            if(owner == null)
            {
                return new Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Goal>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = owner.Poll(Ros2Control_msgsActionFollowJointTrajectory_Goal.MAX_WIRE_BYTES + 8);
            Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Goal> result = new Owner.Value<Ros2Control_msgsActionFollowJointTrajectory_Goal>(reply);
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
                    Ros2Control_msgsActionFollowJointTrajectory_Goal next = Ros2Control_msgsActionFollowJointTrajectory_Goal.Decode(Slice(reply.Bytes, 8));
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
         * @brief Respond once with complete typed action feedback.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @param goal Exact nonzero incoming advertised-goal ID.
         * @param value Borrowed complete typed response body.
         * @return Owned empty-success report or actual host error; terminal authority is host-enforced.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Reply RespondFeedback(Owner owner, ulong goal, Ros2Control_msgsActionFollowJointTrajectory_Feedback value)
        {
            if(owner == null || goal == 0)
            {
                return Owner.Reply.Failure(22);
            }
            byte[] input;
            try
            {
                input = Frame(Ros2Control_msgsActionFollowJointTrajectory_Feedback.Encode(value), goal, 1);
            }
            catch(ArgumentException invalid)
            {
                return Owner.Reply.Failure(22);
            }
            Owner.Reply reply = owner.Request(Operations.ACTION_RESPOND, input, 0);
            if(reply.Status == 0 && reply.Bytes.Length != 0)
            {
                reply.Status = 22;
            }
            return reply;
        }

        /**
         * @brief Respond once with complete typed action terminal result.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @param goal Exact nonzero incoming advertised-goal ID.
         * @param kind Explicit registered terminal-kind value in 2..4.
         * @param value Borrowed complete typed response body.
         * @return Owned empty-success report or actual host error; terminal authority is host-enforced.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Reply RespondResult(Owner owner, ulong goal, byte kind, Ros2Control_msgsActionFollowJointTrajectory_Result value)
        {
            if(owner == null || goal == 0 || kind < 2 || kind > 4)
            {
                return Owner.Reply.Failure(22);
            }
            byte[] input;
            try
            {
                input = Frame(Ros2Control_msgsActionFollowJointTrajectory_Result.Encode(value), goal, kind);
            }
            catch(ArgumentException invalid)
            {
                return Owner.Reply.Failure(22);
            }
            Owner.Reply reply = owner.Request(Operations.ACTION_RESPOND, input, 0);
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
