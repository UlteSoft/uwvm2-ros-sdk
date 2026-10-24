package uwvm.ros;

/**
 * @brief Own independent action roles and a bounded exact-goal ownership table.
 * @details All access is caller-serialized. Idle/timeout/capacity failures keep
 * local goals. Only a fully decoded terminal result commits removal. Cancellation
 * acknowledgements and closing capabilities never imply that motion stopped.
 */
public final class ActionSet
{
    private final Owner[] roles;
    private final long[] goals;
    private int count;
    private boolean active = true;

    /** @brief Adopt already acquired roles. @param roles Owned roles. @param capacity Goal bound. */
    private ActionSet(Owner[] roles, int capacity)
    {
        this.roles = roles;
        goals = new long[capacity];
    }

    /** @brief Own acquisition status and every independent rollback-close fact. */
    public static final class Acquisition
    {
        /** @brief Original validation/open error; never replaced by cleanup. */
        public int status;
        /** @brief Owned complete set only after every required acquisition succeeds. */
        public ActionSet value;
        /** @brief Rollback close statuses, indexed by role; meaningful with cleanupPresent. */
        public int[] cleanup = new int[5];
        /** @brief Whether each role received its single rollback-close attempt. */
        public boolean[] cleanupPresent = new boolean[5];
    }

    /**
     * @brief Acquire four distinct required action aliases and optional cancel-any.
     * @param aliases Owned by caller: send, cancel-own, feedback, result, optional cancel-any.
     * @param capacity Explicit local goal-table bound in 8..1024.
     * @return Owned complete set or original error plus independent rollback facts.
     * @details Validate all aliases before acquisition. No role supplies another
     * role's permission, and failure never triggers action replay or cancellation.
     */
    public static Acquisition acquire(String[] aliases, int capacity)
    {
        Acquisition result = new Acquisition();
        if(aliases == null || aliases.length < 4 || aliases.length > 5 || capacity < 8 || capacity > 1024)
        {
            result.status = 22;
            return result;
        }
        String[] names = aliases.clone();
        try
        {
            for(int index = 0; index < names.length; index++)
            {
                Wire.string(names[index], 255);
                for(int earlier = 0; earlier < index; earlier++)
                {
                    if(names[index].equals(names[earlier]))
                    {
                        throw new IllegalArgumentException("Action role aliases must be distinct");
                    }
                }
            }
        }
        catch(IllegalArgumentException invalid)
        {
            result.status = 22;
            return result;
        }
        Owner[] roles = new Owner[5];
        ActionSet next = new ActionSet(roles, capacity);
        int acquiredCount = 0;
        try
        {
            for(int index = 0; index < names.length; index++)
            {
                Owner.Acquisition acquired = Owner.acquire(names[index]);
                if(acquired.status != 0)
                {
                    result.status = acquired.status;
                    return result;
                }
                roles[index] = acquired.owner;
                acquiredCount++;
            }
            result.value = next;
            return result;
        }
        finally
        {
            if(result.value == null)
            {
                for(int index = acquiredCount - 1; index >= 0; index--)
                {
                    result.cleanupPresent[index] = true;
                    result.cleanup[index] = roles[index].closeChecked();
                }
            }
        }
    }

    /** @brief Check exact local goal ownership. @param goal Full i64 ID. @return True only for live tracked ID. */
    public boolean owns(long goal)
    {
        if(!active || goal == 0)
        {
            return false;
        }
        for(int index = 0; index < count; index++)
        {
            if(goals[index] == goal)
            {
                return true;
            }
        }
        return false;
    }

    /**
     * @brief Send one complete encoded goal and track its validated nonzero ID.
     * @param bytes Borrowed complete typed goal body.
     * @return Owned original transport report; full table yields 90 before import.
     * @details Duplicate or malformed IDs yield 22 without inventing ownership.
     */
    public Owner.Reply send(byte[] bytes)
    {
        if(!active)
        {
            return Owner.Reply.failure(9);
        }
        if(count == goals.length)
        {
            return Owner.Reply.failure(90);
        }
        Owner.Reply reply = roles[0].request(Operations.ACTION_SEND_GOAL, bytes, 8);
        if(reply.status == 0)
        {
            long goal = reply.bytes.length == 8 ? Wire.get64(reply.bytes, 0) : 0;
            if(goal == 0 || owns(goal))
            {
                reply.status = 22;
            }
            else
            {
                goals[count++] = goal;
            }
        }
        return reply;
    }

    /**
     * @brief Read one feedback or result envelope for an owned goal, without removal.
     * @param goal Exact locally owned nonzero goal ID.
     * @param terminal True selects result; false selects feedback.
     * @param capacity Exact typed-body bound plus its 9/8 byte envelope.
     * @return Owned report; unknown/stale IDs yield 9 before any import.
     * @details The typed endpoint must validate the entire body before calling
     * commitTerminal. Idle11/timeout110/capacity90 never forget a goal.
     */
    public Owner.Reply receive(long goal, boolean terminal, int capacity)
    {
        if(!owns(goal))
        {
            return Owner.Reply.failure(9);
        }
        byte[] request = new byte[8];
        Wire.put64(request, 0, goal);
        Owner.Reply reply =
            roles[terminal ? 3 : 2].request(terminal ? Operations.ACTION_RECEIVE_RESULT : Operations.ACTION_RECEIVE_FEEDBACK, request, capacity);
        if(reply.status == 0 &&
           (reply.bytes.length < (terminal ? 9 : 8) || Wire.get64(reply.bytes, 0) != goal || (terminal && (reply.bytes[8] < 2 || reply.bytes[8] > 4))))
        {
            reply.status = 22;
        }
        return reply;
    }

    /**
     * @brief Commit removal after the complete typed terminal body decoded successfully.
     * @param goal Exact ID whose complete terminal envelope was validated.
     * @return Zero on removal or 9 for closed/unknown; performs no import.
     * @details This explicit local commit never runs for cancellation or idle.
     */
    public int commitTerminal(long goal)
    {
        if(!owns(goal))
        {
            return 9;
        }
        for(int index = 0; index < count; index++)
        {
            if(goals[index] == goal)
            {
                goals[index] = goals[--count];
                goals[count] = 0;
                return 0;
            }
        }
        return 9;
    }

    /**
     * @brief Cancel an owned goal, an explicit external goal, or deliberately all goals.
     * @param goal Full goal bits; zero is admitted only with all=true.
     * @param any True selects the independently granted optional cancel-any role.
     * @param all True explicitly selects all goals and requires any=true, goal=0.
     * @return Owned canonical Bool reply; no goal is removed by acknowledgement.
     * @details Missing optional authority returns95. Unknown own-goal returns9.
     */
    public Owner.Value<Boolean> cancel(long goal, boolean any, boolean all)
    {
        int invalid = !active ? 9 : (all ? (!any || goal != 0 ? 22 : 0) : (goal == 0 ? 22 : 0));
        if(invalid == 0 && !any && !owns(goal))
        {
            invalid = 9;
        }
        if(invalid == 0 && any && roles[4] == null)
        {
            invalid = 95;
        }
        Owner.Reply reply;
        if(invalid != 0)
        {
            reply = Owner.Reply.failure(invalid);
        }
        else
        {
            byte[] request = new byte[8];
            Wire.put64(request, 0, goal);
            reply = roles[any ? 4 : 1].request(any ? Operations.ACTION_CANCEL_ANY_GOAL : Operations.ACTION_CANCEL_OWN_GOAL, request, 1);
        }
        Owner.Value<Boolean> result = new Owner.Value<>(reply);
        if(reply.status == 0)
        {
            if(reply.bytes.length != 1 || (reply.bytes[0] != 0 && reply.bytes[0] != 1))
            {
                reply.status = 22;
            }
            else
            {
                result.value = reply.bytes[0] != 0;
            }
        }
        return result;
    }

    /**
     * @brief Retire every acquired role once and forget local correlation state.
     * @return Five independent cleanup statuses; absent optional role yields zero.
     * @details Calling again yields9 for all required roles. No action cancellation
     * or motion-stop operation is implied, and every close is attempted independently.
     */
    public int[] closeChecked()
    {
        int[] cleanup = new int[5];
        active = false;
        count = 0;
        for(int index = roles.length - 1; index >= 0; index--)
        {
            if(roles[index] != null)
            {
                cleanup[index] = roles[index].closeChecked();
            }
        }
        return cleanup;
    }
}
