package uwvm.robotis.ros1.noetic;

import uwvm.ros.Wire;

/**
 * @brief Complete ROS 1 turtlebot3_example/Turtlebot3Goal value and canonical codec.
 * @details All fields, constants, defaults and nested capacities come from the
 * canonical bounded catalog. Instances own their strings/arrays/nested values.
 * Encode/decode perform no ROS operation and confer no authority. Native type
 * identity must still be independently qualified by the deployment registry.
 */
public final class Ros1Turtlebot3_exampleTurtlebot3Goal
{
    /** @brief Exact registered max wire bytes. */
    public static final int MAX_WIRE_BYTES = 24;
    /** @brief Exact registered min wire bytes. */
    public static final int MIN_WIRE_BYTES = 24;
    /** @brief Original codec identity; empty native identity is unqualified. */
    public static final String CODEC_IDENTITY = "UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5";
    /** @brief Original source type; empty native identity is unqualified. */
    public static final String SOURCE_TYPE = "turtlebot3_example/Turtlebot3Goal";
    /** @brief Original native identity; empty native identity is unqualified. */
    public static final String NATIVE_IDENTITY = "";
    /** @brief Complete native field goal; scalar, text bound 0. */
    public Ros1Geometry_msgsVector3 field_goal = new Ros1Geometry_msgsVector3();

    /**
     * @brief Construct the complete original default value with owned storage.
     * @details Nested fixed arrays initialize every logical element; sequences
     * start empty. No native capability, pointer, or shared buffer is retained.
     */
    public Ros1Turtlebot3_exampleTurtlebot3Goal()
    {
    }

    /**
     * @brief Encode every field of one complete bounded value.
     * @param value Borrowed stable value; all referenced arrays remain caller-owned.
     * @return Newly owned complete canonical bytes, excluding unused capacity.
     * @details Invalid fields/bounds/semantics throw IllegalArgumentException.
     */
    public static byte[] encode(Ros1Turtlebot3_exampleTurtlebot3Goal value)
    {
        Wire.Writer wire = new Wire.Writer(MAX_WIRE_BYTES);
        writeFields(wire, value);
        return wire.finish();
    }

    /**
     * @brief Decode transactionally with exact extent and trailing-byte checks.
     * @param bytes Borrowed immutable complete canonical body.
     * @return Newly owned full value; failed decoding commits no caller storage.
     * @details Invalid wire, text, bounds or semantics throw IllegalArgumentException.
     */
    public static Ros1Turtlebot3_exampleTurtlebot3Goal decode(byte[] bytes)
    {
        if(bytes == null || bytes.length < MIN_WIRE_BYTES || bytes.length > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Invalid complete canonical extent");
        }
        Wire.Reader wire = new Wire.Reader(bytes, bytes.length);
        Ros1Turtlebot3_exampleTurtlebot3Goal value = readFields(wire);
        wire.finish();
        return value;
    }

    /**
     * @brief Write this complete nested value within the enclosing aggregate bound.
     * @param wire Borrowed caller-owned finite writer.
     * @param value Borrowed stable complete value.
     * @return No value; invalid fields or aggregate bounds throw before publication.
     */
    public static void writeFields(Wire.Writer wire, Ros1Turtlebot3_exampleTurtlebot3Goal value)
    {
        if(value == null)
        {
            throw new IllegalArgumentException("Null canonical record");
        }
        int start = wire.position();
        Ros1Geometry_msgsVector3.writeFields(wire, value.field_goal);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
    }

    /**
     * @brief Read one complete nested record without exposing partial values.
     * @param wire Borrowed immutable bounded reader and its private cursor.
     * @return Newly owned complete record; malformed nested input throws.
     * @details The caller separately requires complete top-level consumption.
     */
    public static Ros1Turtlebot3_exampleTurtlebot3Goal readFields(Wire.Reader wire)
    {
        int start = wire.position();
        Ros1Turtlebot3_exampleTurtlebot3Goal value = new Ros1Turtlebot3_exampleTurtlebot3Goal();
        value.field_goal = Ros1Geometry_msgsVector3.readFields(wire);
        if(wire.position() - start > MAX_WIRE_BYTES)
        {
            throw new IllegalArgumentException("Nested aggregate exceeds registered wire bound");
        }
        return value;
    }
}
