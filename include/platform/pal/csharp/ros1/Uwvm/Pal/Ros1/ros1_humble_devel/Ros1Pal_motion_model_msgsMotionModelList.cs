using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_motion_model_msgs/MotionModelList value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_motion_model_msgsMotionModelList
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 100;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 4;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_motion_model_msgs/MotionModelList";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field models; sequence capacity 4, text bound 0. */
        public Ros1Pal_motion_model_msgsMotionModel[] field_models = new Ros1Pal_motion_model_msgsMotionModel[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_motion_model_msgsMotionModelList()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_motion_model_msgsMotionModelList value)
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
        public static Ros1Pal_motion_model_msgsMotionModelList Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_motion_model_msgsMotionModelList value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_motion_model_msgsMotionModelList value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            if (value.field_models == null || value.field_models.Length > 4)
            {
                throw new ArgumentException("Invalid models extent");
            }
            wire.U32((uint)value.field_models.Length);
            for (int index = 0; index < value.field_models.Length; ++index)
            {
                Ros1Pal_motion_model_msgsMotionModel.WriteFields(wire, value.field_models[index]);
            }
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
        internal static Ros1Pal_motion_model_msgsMotionModelList ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_motion_model_msgsMotionModelList value = new Ros1Pal_motion_model_msgsMotionModelList();
            value.field_models = new Ros1Pal_motion_model_msgsMotionModel[wire.Count(4)];
            for (int index = 0; index < value.field_models.Length; ++index)
            {
                value.field_models[index] = Ros1Pal_motion_model_msgsMotionModel.ReadFields(wire);
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
