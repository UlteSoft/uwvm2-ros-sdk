/**
 * @file Ros1ApiAbb_robot_msgsMechanicalUnitState.cs
 * @brief Represent the complete original ABB ROS 1 canonical value catalog.
 * @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
 * fields, original constants and native defaults; field units and frames follow the retained
 * definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
 * native ROS objects; importing them grants no transport alias.
 */
using System;
using Uwvm.Ros;

namespace Uwvm.Abb.Ros1
{
    /**
     * @brief Complete typed ROS 1 abb_robot_msgs/MechanicalUnitState message interface.
     * @details Concrete component records preserve the complete original schema.
     * An Owner/ActionSet is explicitly acquired and closed by the caller. Each
     * operation requires its independently granted role and qualified native
     * identity. This facade neither invents identities nor registers endpoints.
     */
    public static class Ros1ApiAbb_robot_msgsMechanicalUnitState
    {

        /**
         * @brief Publish one complete typed topic value exactly once.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @param value Borrowed stable complete record.
         * @return Owned primary-status report; no publish is replayed.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Reply Publish(Owner owner, Ros1Abb_robot_msgsMechanicalUnitState value)
        {
            if(owner == null)
            {
                return Owner.Reply.Failure(22);
            }
            try
            {
                return Owner.Reply.Failure(owner.Publish(Ros1Abb_robot_msgsMechanicalUnitState.Encode(value)));
            }
            catch(ArgumentException invalid)
            {
                return Owner.Reply.Failure(22);
            }
        }

        /**
         * @brief Activate the caller's retained subscription owner.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @return Actual activation errno; owner remains caller-owned.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static uint Subscribe(Owner owner)
        {
            return owner == null ? 22 : owner.Activate(false);
        }

        /**
         * @brief Read one complete typed topic sample without a hidden polling loop.
         * @param owner Borrowed live capability with this exact operation's independent grant.
         * @return Owned typed sample on success, or original error/length observations.
         * @details All inputs are borrowed for this synchronous call. Returned
         * values/bytes are owned. Serialize retained owners; no hidden acquisition,
         * retry, resize, callback or permission expansion occurs. Local invalid
         * values/wire yield22 while original transport errno/length facts remain.
         */
        public static Owner.Value<Ros1Abb_robot_msgsMechanicalUnitState> Read(Owner owner)
        {
            if(owner == null)
            {
                return new Owner.Value<Ros1Abb_robot_msgsMechanicalUnitState>(Owner.Reply.Failure(22));
            }
            Owner.Reply reply = owner.Poll(Ros1Abb_robot_msgsMechanicalUnitState.MAX_WIRE_BYTES);
            Owner.Value<Ros1Abb_robot_msgsMechanicalUnitState> result = new Owner.Value<Ros1Abb_robot_msgsMechanicalUnitState>(reply);
            if(reply.Status == 0)
            {
                try
                {
                    Ros1Abb_robot_msgsMechanicalUnitState next = Ros1Abb_robot_msgsMechanicalUnitState.Decode(reply.Bytes);
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
