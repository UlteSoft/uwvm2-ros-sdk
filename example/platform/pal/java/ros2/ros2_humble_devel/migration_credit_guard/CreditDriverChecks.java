package uwvm.pal.migration;

import org.ros2.rcljava.migration.Deployment;
import org.ros2.rcljava.migration.MigrationContext;
import org.uwvm.roswasm.Result;
import org.uwvm.roswasm.RosException;
import org.uwvm.roswasm.Transport;

/** Guest-only migration scheduling checks; no ROS request or native client. */
public final class CreditDriverChecks
{
    private static int checks;
    private interface Action { void run(); }

    private static void expect(boolean value)
    {
        if(!value) throw new IllegalStateException("credit-driver check " + checks);
        ++checks;
    }

    private static void refused(Action action)
    {
        boolean blocked = false;
        try { action.run(); }
        catch(RosException failure) { blocked = failure.result.error == 17; }
        expect(blocked);
    }

    private static final class AbiOnly implements Transport
    {
        int abiCalls, otherCalls;
        public int backend() { return 2; }
        public Result invoke(String operation, long handle, byte[] input, int capacity, long other, long correlation)
        {
            if(operation.equals("abi_version")) { ++abiCalls; return Result.value(1); }
            ++otherCalls;
            throw new IllegalStateException("this guest fixture may perform no ROS operation");
        }
    }

    private static final class Driver implements Deployment.Driver
    {
        MigrationContext context;
        int calls;
        boolean fail;
        final Error primary = new Error("explicit guest credit failure");
        public boolean nextCredit()
        {
            ++calls;
            expect(context.isDispatching());
            refused(new Action() { public void run() { context.nextCredit(); } });
            refused(new Action() { public void run() { context.createNode("forbidden", "/"); } });
            refused(new Action() { public void run() { context.shutdown(); } });
            if(fail) throw primary;
            return calls == 1;
        }
    }

    public static void main(String[] args)
    {
        expect(args.length == 0);
        AbiOnly transport = new AbiOnly();
        Driver driver = new Driver();
        MigrationContext context = new MigrationContext(new Deployment.Profile(
            transport, new Deployment.Binding[0], driver, 4, 0, 1, 3));
        driver.context = context;
        context.init();
        expect(context.isValid());
        expect(context.createNode("initial", "/").getName().equals("initial"));
        expect(context.nextCredit());
        expect(driver.calls == 1);
        expect(!context.isDispatching());
        expect(context.createNode("after_success", "/").getName().equals("after_success"));
        driver.fail = true;
        boolean samePrimary = false;
        try { context.nextCredit(); }
        catch(Error failure) { samePrimary = failure == driver.primary; }
        expect(samePrimary);
        expect(!context.isDispatching());
        expect(context.isValid());
        expect(context.createNode("after_failure", "/").getName().equals("after_failure"));
        driver.fail = false;
        expect(!context.nextCredit());
        expect(driver.calls == 3);
        expect(!context.nextCredit());
        expect(driver.calls == 3);
        expect(!context.isDispatching());
        context.shutdown();
        expect(!context.isValid());
        expect(transport.abiCalls == 1 && transport.otherCalls == 0);
        System.out.println("{\"sdk09_rcljava_credit_checks\":" + checks
            + ",\"scope\":\"guest-migration-scheduling-only-no-ROS\"}");
    }
}
