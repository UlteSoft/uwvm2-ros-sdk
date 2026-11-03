package uwvm.pal.example;

import org.ros2.rcljava.RCLJava;
import org.ros2.rcljava.consumers.Consumer;
import org.ros2.rcljava.migration.Deployment;
import org.ros2.rcljava.node.Node;
import org.ros2.rcljava.publisher.Publisher;
import org.uwvm.roswasm.Codecs;
import org.uwvm.roswasm.Ros2Transport;
import org.uwvm.roswasm.RosException;
import uwvm.ros.Wasi;

/**
 * @brief Publish once and process a separately bound response inside Wasm.
 * @details This is the maintained rcljava source-API subset, not an unmodified
 * upstream client. Every ROS operation uses Ros2Transport's controlled Wasm
 * imports. The public test remains blocked pending a frozen artifact and real
 * official-provider feedback/audit qualification.
 */
public final class LegacyFeedback
{
    private LegacyFeedback()
    {
    }

    /**
     * @brief Use three existing grants and independent command/feedback resources.
     * @param args Publish alias, subscribe alias, observer alias, command FQN, feedback FQN,
     * command text and the exact expected response.
     * @details R-newline stdin credits pace at most 256 guest polling passes.
     * They supply no ROS payload, clock, grant, operation ID or callback result.
     */
    public static void main(java.lang.String[] args)
    {
        if(args.length != 7 || args[0].equals(args[1]) || args[0].equals(args[2]) || args[1].equals(args[2]) || args[3].equals(args[4]))
            throw new IllegalArgumentException("three distinct grants and two distinct resources required");
        if(Codecs.utf8(args[5]).length > 128 || Codecs.utf8(args[6]).length > 128)
            throw new IllegalArgumentException("bounded String payload required");

        final boolean[] received = new boolean[1];
        final java.lang.String expected = args[6];
        Deployment.install(new Deployment.Profile(
            new Ros2Transport(),
            new Deployment.Binding[] {
                new Deployment.Binding("/uwvm_legacy_feedback", args[3], "std_msgs/msg/String",
                    "official-default-profile", "topic_publish", args[0], 0),
                new Deployment.Binding("/uwvm_legacy_feedback", args[4], "std_msgs/msg/String",
                    "official-default-profile", "topic_subscribe", args[1], args[2], 196)
            },
            new Deployment.StdinCredits(System.in, 256), 1, 3, 2, 256));

        int status = 0;
        Throwable primary = null;
        try
        {
            RCLJava.rclJavaInit();
            Node node = RCLJava.createNode("uwvm_legacy_feedback");
            node.createSubscription(std_msgs.msg.String.class, args[4],
                new Consumer<std_msgs.msg.String>() {
                    public void accept(std_msgs.msg.String response)
                    {
                        if(!expected.equals(response.getData()))
                            throw new IllegalStateException("unexpected response");
                        received[0] = true;
                    }
                });
            Publisher<std_msgs.msg.String> publisher =
                node.createPublisher(std_msgs.msg.String.class, args[3]);
            std_msgs.msg.String command = new std_msgs.msg.String();
            command.setData(args[5]);
            publisher.publish(command);
            while(!received[0] && Deployment.context().nextCredit())
                RCLJava.spinSome(node);
            if(!received[0])
                throw new IllegalStateException("required guest callback was not observed");
        }
        catch(RosException failure)
        {
            primary = failure;
            status = failure.result.error;
        }
        catch(RuntimeException | Error failure)
        {
            primary = failure;
            throw failure;
        }
        finally
        {
            try
            {
                RCLJava.shutdown();
            }
            catch(RuntimeException | Error cleanup)
            {
                if(primary != null && primary != cleanup)
                    cleanup.addSuppressed(primary);
                throw cleanup;
            }
        }
        System.out.println("legacy-java-result status=" + status + " callbacks=" + (received[0] ? 1 : 0));
        Wasi.exit(status);
    }
}
