/** @file
 * @brief Borrowed views and fixed storage for the selected C++ profile.
 * @details These project types add no definitions to namespace std. None of
 * these operations imports a Host function or grants authority.
 * @see roswasmcpp::StringView
 */
#pragma once
#include <platform/ros/cpp/roswasm/cpp_profile.hpp>
#include <cstddef>
#include <cstring>
#include <string>
#include <vector>
#if !ROSWASM_CPP_LEGACY && ROSWASM_CPP_STANDARD >= 20
# include <span>
# include <string_view>
#endif
namespace roswasmcpp
{
#if ROSWASM_CPP_LEGACY || ROSWASM_CPP_STANDARD < 20
    /**
     * @brief Nonowning counted character storage in C++98 through C++17.
     * @details Counts are bytes, without an implied terminator or UTF-8 validation.
     * The caller keeps the underlying storage alive and unchanged during a read.
     * Const views may share immutable storage; concurrent mutation requires external
     * synchronization. In C++20 and newer StringView aliases std::string_view.
     * @see roswasmcpp::ByteView
     */
    class StringView
    {
        char const* data_;
        size_t size_;

    public:
        /** @brief Construct an empty view.
         * @details Stores a null pointer and zero bytes without allocation.
         * @see StringView::empty
         */
        StringView() : data_(0), size_(0)
        {
        }

        /** @brief Borrow an exact byte range.
         * @details Does not read the range or require a trailing zero.
         * @param[in] data Storage valid for size bytes; may be null only if size is zero.
         * @param[in] size Number of borrowed bytes; must fit the live source allocation.
         * @see StringView::data
         */
        StringView(char const* data, size_t size) : data_(data), size_(size)
        {
        }

        /** @brief Borrow a zero-terminated string.
         * @details Reads through its first zero at construction. A null pointer
         * produces an empty view. Embedded zeros end the selected range.
         * @param[in] text Live terminated storage, or null.
         * @see StringView::StringView(char const*, size_t)
         */
        StringView(char const* text) : data_(text), size_(text ? std::strlen(text) : 0)
        {
        }

        /** @brief Borrow a string's current character range.
         * @details The string owns the bytes; its destruction or invalidating
         * mutation invalidates this view. Binding a temporary does not extend its life.
         * @param[in] text Source string, including any embedded zero bytes.
         * @see StringView::size
         */
        StringView(std::string const& text) : data_(text.data()), size_(text.size())
        {
        }

        /** @brief Return the borrowed pointer.
         * @details Does not guarantee termination; use size() to bound reads.
         * @return Pointer supplied at construction, potentially null for an empty view.
         * @see StringView::size
         */
        char const* data() const
        {
            return data_;
        }

        /** @brief Return the counted byte length.
         * @details Does not scan or validate the borrowed storage.
         * @return Number of bytes selected at construction.
         * @see StringView::data
         */
        size_t size() const
        {
            return size_;
        }

        /** @brief Test whether the byte count is zero.
         * @details Does not inspect the pointer or dereference storage.
         * @return True exactly when size() is zero.
         * @see StringView::size
         */
        bool empty() const
        {
            return size_ == 0;
        }

        /** @brief Compare counted byte ranges.
         * @details Compares bytes rather than Unicode characters or locale collation.
         * Equal zero-length views compare equal without dereferencing their pointers.
         * @param[in] a First live view.
         * @param[in] b Second live view.
         * @return True when sizes and all selected bytes agree; a nonempty null
         * range compares false. Other invalid ranges violate the storage precondition.
         * @see roswasmcpp::operator!=(StringView, StringView)
         */
        friend bool operator== (StringView a, StringView b)
        {
            return a.size_ == b.size_ && (!a.size_ || (a.data_ && b.data_ && !std::memcmp(a.data_, b.data_, a.size_)));
        }

        /** @brief Test counted byte inequality.
         * @details Uses the same lifetime and byte comparison rules as operator==.
         * @param[in] a First live view.
         * @param[in] b Second live view.
         * @return Logical negation of counted byte equality.
         * @see roswasmcpp::operator==(StringView, StringView)
         */
        friend bool operator!= (StringView a, StringView b)
        {
            return !(a == b);
        }
    };
#else
    /** @brief Standard nonowning character view in C++20 and newer.
     * @details Counts bytes and borrows storage under std::string_view's rules.
     * No UTF-8 validation, allocation or Host permission is implied.
     * @see roswasmcpp::ByteView
     */
    using StringView = std::string_view;
#endif
    /** @brief Borrow contiguous mutable vector elements.
     * @details Available in C++98 and newer; excludes proxy-storage specializations
     * such as vector<bool>. Vector reallocation or destruction invalidates the result.
     * @tparam T Actual contiguous element type.
     * @param[in,out] value Owning source vector; this function does not mutate it.
     * @return Null when empty, otherwise the first element's address.
     * @see roswasmcpp::ArrayView
     */
    template <class T>
    T* buffer_data(std::vector<T>& value)
    {
        return value.empty() ? 0 : &value[0];
    }

    /** @brief Borrow contiguous immutable vector elements.
     * @details Does not copy or extend the vector's lifetime. Concurrent readers
     * require that no thread mutate or invalidate the underlying vector.
     * @tparam T Actual contiguous element type, excluding vector<bool>.
     * @param[in] value Owning source vector.
     * @return Null when empty, otherwise a pointer to the first const element.
     * @see roswasmcpp::ArrayView
     */
    template <class T>
    T const* buffer_data(std::vector<T> const& value)
    {
        return value.empty() ? 0 : &value[0];
    }

    /** @brief Nonowning contiguous element range in C++98 and newer.
     * @details Lengths and indices count elements, not bytes. Storage remains owned
     * by the caller; mutation is permitted only when T is nonconst. There are no
     * bounds checks, allocation, imports or internal synchronization.
     * @tparam T Element type, optionally const.
     * @see roswasmcpp::FixedArray
     */
    template <class T>
    class ArrayView
    {
        T* data_;
        size_t size_;

    public:
        /** @brief Construct an empty element range.
         * @details Stores null and zero without accessing any storage.
         * @see ArrayView::empty
         */
        ArrayView() : data_(0), size_(0)
        {
        }

        /** @brief Borrow a counted element range.
         * @details Keeps the pointer without copying or validating elements.
         * @param[in] data Storage valid for size elements; null is permitted for zero size.
         * @param[in] size Element count within the live source allocation.
         * @see ArrayView::operator[]
         */
        ArrayView(T* data, size_t size) : data_(data), size_(size)
        {
        }

        /** @brief Borrow every element of a built-in array.
         * @details The array must outlive all accesses through the view.
         * @tparam N Array extent in elements.
         * @param[in] data Source array; constness follows T.
         * @see ArrayView::size
         */
        template <size_t N>
        ArrayView(T (&data)[N]) : data_(data), size_(N)
        {
        }

        /** @brief Borrow a vector's immutable contiguous storage.
         * @details Instantiates only when the vector's const element pointer converts
         * to T*. Reallocation/destruction invalidates the view; temporaries are not retained.
         * @tparam U Vector element type, excluding proxy-storage specializations.
         * @param[in] value Owning source vector.
         * @see roswasmcpp::buffer_data
         */
        template <class U>
        ArrayView(std::vector<U> const& value) : data_(buffer_data(value)), size_(value.size())
        {
        }

        /** @brief Return the borrowed element pointer.
         * @details Constness of the view object does not add constness to T.
         * @return Original pointer, potentially null for an empty range.
         * @see ArrayView::size
         */
        T* data() const
        {
            return data_;
        }

        /** @brief Return the selected element count.
         * @details No bytes are read and the source allocation is not queried.
         * @return Count supplied or inferred at construction.
         * @see ArrayView::data
         */
        size_t size() const
        {
            return size_;
        }

        /** @brief Test for a zero element count.
         * @details Does not dereference the borrowed pointer.
         * @return True when size() is zero.
         * @see ArrayView::size
         */
        bool empty() const
        {
            return size_ == 0;
        }

        /** @brief Access one borrowed element without a bounds check.
         * @details An invalid index or expired source lifetime causes undefined
         * behavior; no error code or Host request is generated.
         * @param[in] i Zero-based element index, strictly less than size().
         * @return Reference into caller-owned storage, valid while that storage remains live.
         * @see ArrayView::data
         */
        T& operator[] (size_t i) const
        {
            return data_[i];
        }
    };
#if ROSWASM_CPP_LEGACY || ROSWASM_CPP_STANDARD < 20
    /** @brief Immutable borrowed wire bytes in C++98 through C++17.
     * @details Does not validate a wire schema. The caller owns storage and must
     * keep it live and unchanged for each synchronous consumer. In C++20 and newer
     * this name aliases std::span<unsigned char const>.
     * @see roswasmcpp::ArrayView
     */
    class ByteView
    {
        unsigned char const* data_;
        size_t size_;

    public:
        /** @brief Construct an empty wire view.
         * @details Stores a null pointer and zero length without allocation.
         * @see ByteView::empty
         */
        ByteView() : data_(0), size_(0)
        {
        }

        /** @brief Borrow an exact wire byte range.
         * @details No terminator, ownership transfer or schema check is implied.
         * @param[in] data Live bytes; may be null only when size is zero.
         * @param[in] size Number of accessible bytes.
         * @see ByteView::data
         */
        ByteView(unsigned char const* data, size_t size) : data_(data), size_(size)
        {
        }

        /** @brief Borrow all bytes in an owning vector.
         * @details Vector invalidation or destruction invalidates the view.
         * A temporary vector's lifetime is not extended.
         * @param[in] bytes Owning source vector.
         * @see roswasmcpp::buffer_data
         */
        ByteView(std::vector<unsigned char> const& bytes) : data_(buffer_data(bytes)), size_(bytes.size())
        {
        }

        /** @brief Borrow all bytes in a built-in array.
         * @details The array remains caller-owned and must outlive accesses.
         * @tparam N Array extent in bytes.
         * @param[in] bytes Source array.
         * @see ByteView::size
         */
        template <size_t N>
        ByteView(unsigned char const (&bytes)[N]) : data_(bytes), size_(N)
        {
        }

        /** @brief Return the borrowed byte pointer.
         * @details Does not guarantee a terminator or a decodable payload.
         * @return Source pointer, potentially null for an empty range.
         * @see ByteView::size
         */
        unsigned char const* data() const
        {
            return data_;
        }

        /** @brief Return the selected byte count.
         * @details The range is neither read nor validated.
         * @return Number of bytes selected at construction.
         * @see ByteView::data
         */
        size_t size() const
        {
            return size_;
        }

        /** @brief Test whether the wire range is empty.
         * @details Does not access storage.
         * @return True exactly when size() is zero.
         * @see ByteView::size
         */
        bool empty() const
        {
            return size_ == 0;
        }
    };
#else
    /** @brief Standard immutable wire-byte span in C++20 and newer.
     * @details Follows std::span borrowing and indexing rules; construction does
     * not validate wire contents or extend source storage lifetime.
     * @see roswasmcpp::ArrayView
     */
    using ByteView = std::span<unsigned char const>;
#endif
    /** @brief Value-initialized fixed owning storage in C++98 and newer.
     * @details Stores N logical elements inline. The zero-size specialization keeps
     * one private-to-the-contract padding slot but exposes an empty null range.
     * Methods perform no allocation or Host imports; element construction may have
     * the behavior of T. Concurrent element mutation requires external synchronization.
     * @tparam T Value-initializable element type.
     * @tparam N Logical extent in elements.
     * @see roswasmcpp::ArrayView
     */
    template <class T, size_t N>
    struct FixedArray
    {
        /** @brief Inline element storage.
         * @details Only indices strictly below N belong to the logical range.
         * @see FixedArray::size
         */
        T values[N ? N : 1];

        /** @brief Value-initialize every logical element.
         * @details Assigns T() to indices below N. For N == 0 the padding slot is
         * not part of the public logical range. Element exceptions follow T.
         * @see FixedArray::values
         */
        FixedArray()
        {
            for(size_t i = 0; i < N; ++i)
            {
                values[i] = T();
            }
        }

        /** @brief Borrow mutable inline storage.
         * @details Pointer validity is bounded by this object's lifetime.
         * @return First element address, or null when N is zero.
         * @see FixedArray::size
         */
        T* data()
        {
            return N ? values : 0;
        }

        /** @brief Borrow immutable inline storage.
         * @details Pointer validity is bounded by this object's lifetime.
         * @return First const element address, or null when N is zero.
         * @see FixedArray::size
         */
        T const* data() const
        {
            return N ? values : 0;
        }

        /** @brief Return the compile-time logical extent.
         * @details Counts elements rather than bytes or padding slots.
         * @return N.
         * @see FixedArray::values
         */
        size_t size() const
        {
            return N;
        }

        /** @brief Access a mutable logical element.
         * @details Out-of-range indexing causes undefined behavior.
         * @param[in] i Zero-based index strictly less than N.
         * @return Reference valid during this object's lifetime.
         * @see FixedArray::data
         */
        T& operator[] (size_t i)
        {
            return values[i];
        }

        /** @brief Access an immutable logical element.
         * @details Out-of-range indexing causes undefined behavior.
         * @param[in] i Zero-based index strictly less than N.
         * @return Const reference valid during this object's lifetime.
         * @see FixedArray::data
         */
        T const& operator[] (size_t i) const
        {
            return values[i];
        }

        /** @brief Return the mutable range beginning.
         * @details Does not start iteration or perform any Host operation.
         * @return data(), null for the empty range.
         * @see FixedArray::end
         */
        T* begin()
        {
            return data();
        }

        /** @brief Return the immutable range beginning.
         * @details Does not start iteration or extend storage lifetime.
         * @return data(), null for the empty range.
         * @see FixedArray::end
         */
        T const* begin() const
        {
            return data();
        }

        /** @brief Return the mutable range end.
         * @details A nonnull result is one-past-last and must not be dereferenced.
         * @return values + N for a nonempty range, otherwise null.
         * @see FixedArray::begin
         */
        T* end()
        {
            return N ? values + N : 0;
        }

        /** @brief Return the immutable range end.
         * @details A nonnull result is one-past-last and must not be dereferenced.
         * @return values + N for a nonempty range, otherwise null.
         * @see FixedArray::begin
         */
        T const* end() const
        {
            return N ? values + N : 0;
        }
    };
}  // namespace roswasmcpp
