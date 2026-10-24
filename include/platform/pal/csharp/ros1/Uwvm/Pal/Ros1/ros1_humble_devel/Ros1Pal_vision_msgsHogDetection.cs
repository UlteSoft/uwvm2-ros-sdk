using System;
using Uwvm.RosWasm.Catalog;

namespace Uwvm.Pal.Ros1.ros1_humble_devel
{
    /**
     * @brief Complete ROS 1 pal_vision_msgs/HogDetection value and canonical codec.
     * @details All fields, constants, defaults and nested capacities come from the
     * canonical bounded catalog. Instances own their strings/arrays/nested values.
     * Encode/decode perform no ROS operation and confer no authority. Native type
     * identity must still be independently qualified by the deployment registry.
     */
    public sealed class Ros1Pal_vision_msgsHogDetection
    {
        /** @brief Exact registered max wire bytes. */
        public const int MAX_WIRE_BYTES = 344;
        /** @brief Exact registered min wire bytes. */
        public const int MIN_WIRE_BYTES = 88;
        /** @brief Original codec identity; empty native identity is unqualified. */
        public const string CODEC_IDENTITY =
            "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4";
        /** @brief Original source type; empty native identity is unqualified. */
        public const string SOURCE_TYPE = "pal_vision_msgs/HogDetection";
        /** @brief Original native identity; empty native identity is unqualified. */
        public const string NATIVE_IDENTITY = "";
        /** @brief Complete native field imageBoundingBox; scalar, text bound 0. */
        public Ros1Pal_vision_msgsRectangle field_imageBoundingBox = new Ros1Pal_vision_msgsRectangle();
        /** @brief Complete native field direction; scalar, text bound 0. */
        public Ros1Geometry_msgsVector3 field_direction = new Ros1Geometry_msgsVector3();
        /** @brief Complete native field hog; sequence capacity 16, text bound 0. */
        public float[] field_hog = new float[0];
        /** @brief Complete native field principalEigenVectorRGB; scalar, text bound 0. */
        public Ros1Std_msgsColorRGBA field_principalEigenVectorRGB = new Ros1Std_msgsColorRGBA();
        /** @brief Complete native field rgbClusterCenters; sequence capacity 4, text bound 0. */
        public Ros1Std_msgsColorRGBA[] field_rgbClusterCenters = new Ros1Std_msgsColorRGBA[0];
        /** @brief Complete native field rgbDescriptor1; sequence capacity 16, text bound 0. */
        public uint[] field_rgbDescriptor1 = new uint[0];
        /** @brief Complete native field rgbDescriptor2; sequence capacity 16, text bound 0. */
        public uint[] field_rgbDescriptor2 = new uint[0];

        /**
         * @brief Construct the complete original default value with owned storage.
         * @details Nested fixed arrays initialize every logical element; sequences
         * start empty. No native capability, pointer, or shared buffer is retained.
         */
        public Ros1Pal_vision_msgsHogDetection()
        {
        }

        /**
         * @brief Encode every field of one complete bounded value.
         * @param value Borrowed stable value; all referenced arrays remain caller-owned.
         * @return Newly owned complete canonical bytes, excluding unused capacity.
         * @details Invalid fields/bounds/semantics throw ArgumentException.
         */
        public static byte[] Encode(Ros1Pal_vision_msgsHogDetection value)
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
        public static Ros1Pal_vision_msgsHogDetection Decode(byte[] bytes)
        {
            if (bytes == null || bytes.Length < MIN_WIRE_BYTES || bytes.Length > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Invalid complete canonical extent");
            }
            CatalogWire.Reader wire = new CatalogWire.Reader(bytes);
            Ros1Pal_vision_msgsHogDetection value = ReadFields(wire);
            wire.Finish();
            return value;
        }

        /**
         * @brief Write this complete nested value within the enclosing aggregate bound.
         * @param wire Borrowed caller-owned finite writer.
         * @param value Borrowed stable complete value.
         * @return No value; invalid fields or aggregate bounds throw before publication.
         */
        internal static void WriteFields(CatalogWire.Writer wire, Ros1Pal_vision_msgsHogDetection value)
        {
            if (value == null)
            {
                throw new ArgumentException("Null canonical record");
            }
            int start = wire.Position;
            Ros1Pal_vision_msgsRectangle.WriteFields(wire, value.field_imageBoundingBox);
            Ros1Geometry_msgsVector3.WriteFields(wire, value.field_direction);
            if (value.field_hog == null || value.field_hog.Length > 16)
            {
                throw new ArgumentException("Invalid hog extent");
            }
            wire.U32((uint)value.field_hog.Length);
            for (int index = 0; index < value.field_hog.Length; ++index)
            {
                if (!float.IsFinite(value.field_hog[index]))
                {
                    throw new ArgumentException("Nonfinite hog");
                }
                wire.F32(value.field_hog[index]);
            }
            Ros1Std_msgsColorRGBA.WriteFields(wire, value.field_principalEigenVectorRGB);
            if (value.field_rgbClusterCenters == null || value.field_rgbClusterCenters.Length > 4)
            {
                throw new ArgumentException("Invalid rgbClusterCenters extent");
            }
            wire.U32((uint)value.field_rgbClusterCenters.Length);
            for (int index = 0; index < value.field_rgbClusterCenters.Length; ++index)
            {
                Ros1Std_msgsColorRGBA.WriteFields(wire, value.field_rgbClusterCenters[index]);
            }
            if (value.field_rgbDescriptor1 == null || value.field_rgbDescriptor1.Length > 16)
            {
                throw new ArgumentException("Invalid rgbDescriptor1 extent");
            }
            wire.U32((uint)value.field_rgbDescriptor1.Length);
            for (int index = 0; index < value.field_rgbDescriptor1.Length; ++index)
            {
                wire.U32(value.field_rgbDescriptor1[index]);
            }
            if (value.field_rgbDescriptor2 == null || value.field_rgbDescriptor2.Length > 16)
            {
                throw new ArgumentException("Invalid rgbDescriptor2 extent");
            }
            wire.U32((uint)value.field_rgbDescriptor2.Length);
            for (int index = 0; index < value.field_rgbDescriptor2.Length; ++index)
            {
                wire.U32(value.field_rgbDescriptor2[index]);
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
        internal static Ros1Pal_vision_msgsHogDetection ReadFields(CatalogWire.Reader wire)
        {
            int start = wire.Position;
            Ros1Pal_vision_msgsHogDetection value = new Ros1Pal_vision_msgsHogDetection();
            value.field_imageBoundingBox = Ros1Pal_vision_msgsRectangle.ReadFields(wire);
            value.field_direction = Ros1Geometry_msgsVector3.ReadFields(wire);
            value.field_hog = new float[wire.Count(16)];
            for (int index = 0; index < value.field_hog.Length; ++index)
            {
                value.field_hog[index] = wire.F32();
                if (!float.IsFinite(value.field_hog[index]))
                {
                    throw new ArgumentException("Nonfinite hog");
                }
            }
            value.field_principalEigenVectorRGB = Ros1Std_msgsColorRGBA.ReadFields(wire);
            value.field_rgbClusterCenters = new Ros1Std_msgsColorRGBA[wire.Count(4)];
            for (int index = 0; index < value.field_rgbClusterCenters.Length; ++index)
            {
                value.field_rgbClusterCenters[index] = Ros1Std_msgsColorRGBA.ReadFields(wire);
            }
            value.field_rgbDescriptor1 = new uint[wire.Count(16)];
            for (int index = 0; index < value.field_rgbDescriptor1.Length; ++index)
            {
                value.field_rgbDescriptor1[index] = wire.U32();
            }
            value.field_rgbDescriptor2 = new uint[wire.Count(16)];
            for (int index = 0; index < value.field_rgbDescriptor2.Length; ++index)
            {
                value.field_rgbDescriptor2[index] = wire.U32();
            }
            if (wire.Position - start > MAX_WIRE_BYTES)
            {
                throw new ArgumentException("Nested aggregate exceeds registered wire bound");
            }
            return value;
        }
    }
}
