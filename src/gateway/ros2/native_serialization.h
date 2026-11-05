// SPDX-License-Identifier: Apache-2.0
#pragma once
#include <rmw/rmw.h>
#include <rmw/serialized_message.h>
#include <rosidl_typesupport_cpp/message_type_support.hpp>
#include <cstdint>
#include <new>
namespace uwvm2::ros_gateway
{
    // Prove that THIS native backend can serialize the complete original
    // object before entering its publisher/history pool. Some native string
    // serializers cannot represent embedded NUL bytes accepted by a canonical
    // byte field. Never strip or rewrite those bytes, or send a partial value.
    // This private buffer has no endpoint or network effect and no quota cap.
    template<class Native>std::uint32_t native_serialization_check(Native const& value) noexcept
    {
        auto allocator=rcutils_get_default_allocator();
        auto buffer=rmw_get_zero_initialized_serialized_message();
        auto initialized=rmw_serialized_message_init(&buffer,0,&allocator);
        if(initialized!=RMW_RET_OK)return initialized==RMW_RET_BAD_ALLOC?12u:5u;
        struct owner
        {
            rmw_serialized_message_t* buffer;
            ~owner(){(void)rmw_serialized_message_fini(buffer);}
        } lifetime{&buffer};
        try
        {
            auto result=rmw_serialize(&value,rosidl_typesupport_cpp::get_message_type_support_handle<Native>(),&buffer);
            if(result==RMW_RET_OK)return 0;
            if(result==RMW_RET_BAD_ALLOC)return 12;
            return 95;
        }
        catch(std::bad_alloc const&){return 12;}
        catch(...){return 95;}
    }
}
