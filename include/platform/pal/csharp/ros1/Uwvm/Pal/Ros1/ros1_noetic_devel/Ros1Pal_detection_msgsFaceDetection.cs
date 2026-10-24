using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_noetic_devel
{
    /**
     * @brief Complete ROS 1 pal_detection_msgs/FaceDetection value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_detection_msgsFaceDetection
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 481;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 97;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_detection_msgs/FaceDetection";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Original source constant EXPRESSION_NEUTRAL; consumes no instance wire bytes. */
        public const string CONST_EXPRESSION_NEUTRAL = "neutral";
        /** @brief Original source constant EXPRESSION_SMILE; consumes no instance wire bytes. */
        public const string CONST_EXPRESSION_SMILE = "smile";
        /** @brief Original source constant EXPRESSION_RAISED_BROWS; consumes no instance wire bytes. */
        public const string CONST_EXPRESSION_RAISED_BROWS = "raised brows";
        /** @brief Original source constant EXPRESSION_EYES_AWAY; consumes no instance wire bytes. */
        public const string CONST_EXPRESSION_EYES_AWAY = "eyes away";
        /** @brief Original source constant EXPRESSION_SQUINTING; consumes no instance wire bytes. */
        public const string CONST_EXPRESSION_SQUINTING = "squinting";
        /** @brief Original source constant EXPRESSION_FROWNING; consumes no instance wire bytes. */
        public const string CONST_EXPRESSION_FROWNING = "frowning";
        /** @brief Complete native field x; scalar, text bound 0. */
        public int field_x = 0;
        /** @brief Complete native field y; scalar, text bound 0. */
        public int field_y = 0;
        /** @brief Complete native field width; scalar, text bound 0. */
        public int field_width = 0;
        /** @brief Complete native field height; scalar, text bound 0. */
        public int field_height = 0;
        /** @brief Complete native field eyesLocated; scalar, text bound 0. */
        public bool field_eyesLocated = false;
        /** @brief Complete native field leftEyeX; scalar, text bound 0. */
        public int field_leftEyeX = 0;
        /** @brief Complete native field leftEyeY; scalar, text bound 0. */
        public int field_leftEyeY = 0;
        /** @brief Complete native field rightEyeX; scalar, text bound 0. */
        public int field_rightEyeX = 0;
        /** @brief Complete native field rightEyeY; scalar, text bound 0. */
        public int field_rightEyeY = 0;
        /** @brief Complete native field position; scalar, text bound 0. */
        public Ros1Geometry_msgsPoint32 field_position = new Ros1Geometry_msgsPoint32();
        /** @brief Complete native field name; scalar, text bound 128. */
        public string field_name = "";
        /** @brief Complete native field confidence; scalar, text bound 0. */
        public float field_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field gender; scalar, text bound 128. */
        public string field_gender = "";
        /** @brief Complete native field genderConfidence; scalar, text bound 0. */
        public float field_genderConfidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field expression; scalar, text bound 128. */
        public string field_expression = "";
        /** @brief Complete native field expression_confidence; scalar, text bound 0. */
        public float field_expression_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_anger_confidence; scalar, text bound 0. */
        public float field_emotion_anger_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_disgust_confidence; scalar, text bound 0. */
        public float field_emotion_disgust_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_fear_confidence; scalar, text bound 0. */
        public float field_emotion_fear_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_happiness_confidence; scalar, text bound 0. */
        public float field_emotion_happiness_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_neutral_confidence; scalar, text bound 0. */
        public float field_emotion_neutral_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_sadness_confidence; scalar, text bound 0. */
        public float field_emotion_sadness_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));
        /** @brief Complete native field emotion_surprise_confidence; scalar, text bound 0. */
        public float field_emotion_surprise_confidence = BitConverter.Int32BitsToSingle(unchecked((int)0x00000000u));

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_detection_msgsFaceDetection()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_detection_msgsFaceDetection value)
        {
            CatalogWire.Writer wire = new CatalogWire.Writer(MAX_WIRE_BYTES);
            WriteFields(wire, value);
            return wire.Finish();
        }

        /**
         * @brief Decode transactionally with exact extent and trailing-byte checks.
         * @param bytes Borrowed immutable complete canonical body.
         * @return Newly owned full value; failed decoding commits no caller storage.
         * @details Invalid wire, text, bounds or semantics throw ArgumentException.
         */
        public static Ros1Pal_detection_msgsFaceDetection Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_detection_msgsFaceDetection value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_detection_msgsFaceDetection value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            wire.I32(value.field_x);
            wire.I32(value.field_y);
            wire.I32(value.field_width);
            wire.I32(value.field_height);
            wire.Bool(value.field_eyesLocated);
            wire.I32(value.field_leftEyeX);
            wire.I32(value.field_leftEyeY);
            wire.I32(value.field_rightEyeX);
            wire.I32(value.field_rightEyeY);
            Ros1Geometry_msgsPoint32.WriteFields(wire, value.field_position);
            wire.String(value.field_name, 128);
            if (!float.IsFinite(value.field_confidence))
            {
                throw new ArgumentException("Nonfinite confidence");
            }
            wire.F32(value.field_confidence);
            wire.String(value.field_gender, 128);
            if (!float.IsFinite(value.field_genderConfidence))
            {
                throw new ArgumentException("Nonfinite genderConfidence");
            }
            wire.F32(value.field_genderConfidence);
            wire.String(value.field_expression, 128);
            if (!float.IsFinite(value.field_expression_confidence))
            {
                throw new ArgumentException("Nonfinite expression_confidence");
            }
            wire.F32(value.field_expression_confidence);
            if (!float.IsFinite(value.field_emotion_anger_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_anger_confidence");
            }
            wire.F32(value.field_emotion_anger_confidence);
            if (!float.IsFinite(value.field_emotion_disgust_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_disgust_confidence");
            }
            wire.F32(value.field_emotion_disgust_confidence);
            if (!float.IsFinite(value.field_emotion_fear_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_fear_confidence");
            }
            wire.F32(value.field_emotion_fear_confidence);
            if (!float.IsFinite(value.field_emotion_happiness_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_happiness_confidence");
            }
            wire.F32(value.field_emotion_happiness_confidence);
            if (!float.IsFinite(value.field_emotion_neutral_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_neutral_confidence");
            }
            wire.F32(value.field_emotion_neutral_confidence);
            if (!float.IsFinite(value.field_emotion_sadness_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_sadness_confidence");
            }
            wire.F32(value.field_emotion_sadness_confidence);
            if (!float.IsFinite(value.field_emotion_surprise_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_surprise_confidence");
            }
            wire.F32(value.field_emotion_surprise_confidence);
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
        }

        /**
         * @brief Read one complete nested record without exposing partial values.
         * @param wire Borrowed immutable bounded reader and its private cursor.
         * @return Newly owned complete record; malformed nested input throws.
         * @details The caller separately requires complete top-level consumption.
         */
        internal static Ros1Pal_detection_msgsFaceDetection ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_detection_msgsFaceDetection value = new Ros1Pal_detection_msgsFaceDetection();
            value.field_x = wire.I32();
            value.field_y = wire.I32();
            value.field_width = wire.I32();
            value.field_height = wire.I32();
            value.field_eyesLocated = wire.Bool();
            value.field_leftEyeX = wire.I32();
            value.field_leftEyeY = wire.I32();
            value.field_rightEyeX = wire.I32();
            value.field_rightEyeY = wire.I32();
            value.field_position = Ros1Geometry_msgsPoint32.ReadFields(wire);
            value.field_name = wire.String(128);
            value.field_confidence = wire.F32();
            if (!float.IsFinite(value.field_confidence))
            {
                throw new ArgumentException("Nonfinite confidence");
            }
            value.field_gender = wire.String(128);
            value.field_genderConfidence = wire.F32();
            if (!float.IsFinite(value.field_genderConfidence))
            {
                throw new ArgumentException("Nonfinite genderConfidence");
            }
            value.field_expression = wire.String(128);
            value.field_expression_confidence = wire.F32();
            if (!float.IsFinite(value.field_expression_confidence))
            {
                throw new ArgumentException("Nonfinite expression_confidence");
            }
            value.field_emotion_anger_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_anger_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_anger_confidence");
            }
            value.field_emotion_disgust_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_disgust_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_disgust_confidence");
            }
            value.field_emotion_fear_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_fear_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_fear_confidence");
            }
            value.field_emotion_happiness_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_happiness_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_happiness_confidence");
            }
            value.field_emotion_neutral_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_neutral_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_neutral_confidence");
            }
            value.field_emotion_sadness_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_sadness_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_sadness_confidence");
            }
            value.field_emotion_surprise_confidence = wire.F32();
            if (!float.IsFinite(value.field_emotion_surprise_confidence))
            {
                throw new ArgumentException("Nonfinite emotion_surprise_confidence");
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
