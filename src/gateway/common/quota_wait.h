#pragma once
#include <uwvm2/utils/thread/monotonic_clock.h>
#include "config.h"
#include <uwvm2/imported/ros/common/synchronous_wait.h>
#include <atomic>
#include <csignal>
#include <mutex>
#include <optional>
#include <sys/epoll.h>
#include <sys/eventfd.h>

namespace uwvm2::ros_gateway
{
    inline std::atomic<std::sig_atomic_t> stopping{0};
    inline int const quota_stop_event{::eventfd(0,EFD_NONBLOCK|EFD_CLOEXEC)};
    inline void stop(int) noexcept
    {
        auto saved{errno};stopping.store(1,std::memory_order_relaxed);
        if(quota_stop_event>=0) { std::uint64_t one{1};(void)::write(quota_stop_event,&one,sizeof(one)); }
        errno=saved;
    }
    struct quota_connection
    {
        int cancellation{-1};
        quota_connection(int peer,int worker)
        {
            cancellation=::epoll_create1(EPOLL_CLOEXEC);
            if(cancellation<0) { return; }
            auto add=[&](int fd,std::uint32_t events) {
                if(fd<0) { return false; }
                epoll_event event{};event.events=events;event.data.fd=fd;
                return ::epoll_ctl(cancellation,EPOLL_CTL_ADD,fd,&event)==0;
            };
            if(!add(peer,EPOLLRDHUP)||!add(worker,EPOLLIN)||!add(quota_stop_event,EPOLLIN))
            { ::close(cancellation);cancellation=-1; }
        }
        quota_connection(quota_connection const&)=delete;
        ~quota_connection(){if(cancellation>=0)::close(cancellation);}
    };
    struct quota_scope;
    inline thread_local quota_scope* current_quota_scope{};
    struct quota_scope
    {
        std::shared_ptr<quota_connection> connection;
        std::chrono::steady_clock::time_point deadline;
        std::uint32_t error{11};quota_scope* previous{};
        ros::synchronous_wait_context lifetime{[](void*) noexcept {return stopping.load(std::memory_order_relaxed)!=0;},nullptr,connection?connection->cancellation:-1};
        quota_scope(std::shared_ptr<quota_connection> c,std::chrono::steady_clock::time_point d):
            connection{std::move(c)},deadline{d},previous{current_quota_scope} {current_quota_scope=this;}
        ~quota_scope(){current_quota_scope=previous;}
    };
    inline std::uint32_t quota_failure() noexcept
    { return current_quota_scope?current_quota_scope->error:11; }
    inline std::shared_ptr<quota_connection> quota_owner()
    { return current_quota_scope?current_quota_scope->connection:nullptr; }

    struct native_exit_restore
    {
        bool policy{ros::synchronous_wait_context::native_exit_policy()};
        ~native_exit_restore(){(void)ros::synchronous_wait_context::select_native_exit(policy);}
    };
    struct gateway_bucket
    {
        std::uint64_t tokens{},bytes{},burst{},bandwidth{},byte_fraction{};
        double rate{};
        long double token_fraction{};
        bool unlimited_tokens{},unlimited_bytes{};
        bool initialized{};
        std::chrono::steady_clock::time_point last{::uwvm2::utils::host_clock::now()};
        struct notification {ros::synchronous_quota_wait* wait;notification* next;};
        notification* notifications{};
        // Caller serializes credit changes and notifications with its own
        // queue mutex, or owns the bucket on its one request thread.
        void notify_waiters() noexcept {for(auto* n=notifications;n;n=n->next)n->wait->notify();}
        void refresh(ros::capability_spec const& c)
        {
            if(!initialized)
            {
                rate=quota_rate(c,"max-rate-hz");burst=limit(c,"burst");bandwidth=limit(c,"max-bytes-per-second");
                if(c.limits.count("max-log-bytes-per-second"))bandwidth=std::min(bandwidth,limit(c,"max-log-bytes-per-second"));
                unlimited_tokens=burst==UINT64_MAX;unlimited_bytes=bandwidth==UINT64_MAX;
                tokens=burst;bytes=bandwidth;initialized=true;
            }
            auto now=::uwvm2::utils::host_clock::now();
            if(!::uwvm2::utils::host_clock::available())return;
            auto elapsed=std::chrono::duration_cast<std::chrono::nanoseconds>(now-last).count();last=now;
            if(elapsed<=0)return;
            if(!unlimited_tokens&&tokens<burst)
            {
                auto credit=token_fraction+static_cast<long double>(elapsed)*static_cast<long double>(rate)/1000000000.L;
                auto room=burst-tokens;
                if(credit>=static_cast<long double>(room)) { tokens=burst;token_fraction=0; }
                else { auto whole=static_cast<std::uint64_t>(credit);tokens+=whole;token_fraction=credit-whole; }
            }
            else token_fraction=0;
            if(!unlimited_bytes&&bytes<bandwidth)
            {
                // One second fills this one-second byte bucket. Below that,
                // split the rate before multiplying: both products and their
                // exact sum fit u64, including rates above 2^53 on 32-bit hosts.
                if(elapsed>=1000000000) {bytes=bandwidth;byte_fraction=0;}
                else
                {
                    auto const nanos=static_cast<std::uint64_t>(elapsed);
                    auto const partial=(bandwidth%1000000000)*nanos+byte_fraction;
                    auto const whole=(bandwidth/1000000000)*nanos+partial/1000000000;
                    auto const room=bandwidth-bytes;
                    if(whole>=room) {bytes=bandwidth;byte_fraction=0;}
                    else {bytes+=whole;byte_fraction=partial%1000000000;}
                }
            }
            else byte_fraction=0;
        }
        struct decision {std::uint32_t error{};bool wait_exit{};std::chrono::steady_clock::time_point wake{};};
        decision inspect(ros::capability_spec const& c,std::size_t count,bool bytes_only)
        {
            refresh(c);decision d{};long double seconds{};bool blocked{};
            if(!::uwvm2::utils::host_clock::available()){d.error=95;return d;}
            auto deny=[&](std::string_view key,long double missing,long double speed) {
                blocked=true;
                if(!ros::quota_wait_enabled(c,key)) { d.error=11;return; }
                if(speed<=0) { d.error=90;return; }
                seconds=std::max(seconds,missing/speed);d.wait_exit=d.wait_exit||ros::quota_wait_on_exit(c,key);
            };
            if(!bytes_only&&!unlimited_tokens&&tokens<1) {if(burst<1){d.error=90;return d;}deny("max-rate-hz",1-token_fraction,rate);}
            if(!unlimited_bytes&&count>bandwidth) {d.error=90;return d;}
            if(!unlimited_bytes&&bytes<count)
            {
                auto key=c.limits.count("max-log-bytes-per-second")&&limit(c,"max-log-bytes-per-second")<limit(c,"max-bytes-per-second")?
                    "max-log-bytes-per-second":"max-bytes-per-second";
                deny(key,static_cast<long double>(count-bytes)-static_cast<long double>(byte_fraction)/1000000000.L,bandwidth);
                if(c.limits.count("max-log-bytes-per-second")&&limit(c,"max-log-bytes-per-second")==limit(c,"max-bytes-per-second"))
                    deny("max-log-bytes-per-second",static_cast<long double>(count-bytes)-static_cast<long double>(byte_fraction)/1000000000.L,bandwidth);
            }
            if(d.error||!blocked)return d;
            auto now=::uwvm2::utils::host_clock::now();auto remaining=std::chrono::duration<long double>(std::chrono::steady_clock::time_point::max()-now).count();
            if(!::uwvm2::utils::host_clock::available()){d.error=95;return d;}
            d.wake=(!std::isfinite(seconds)||seconds>=remaining)?std::chrono::steady_clock::time_point::max():
                now+std::chrono::ceil<std::chrono::steady_clock::duration>(std::chrono::duration<long double>(seconds));
            return d;
        }
        template<class Active>
        std::uint32_t wait_locked(ros::synchronous_quota_wait& waiting,std::chrono::steady_clock::time_point deadline,
            std::unique_lock<std::mutex>& guard,Active active,bool wait_exit)
        {
            native_exit_restore restore;
            (void)::uwvm2::utils::host_clock::now();
            if(!::uwvm2::utils::host_clock::available())return 95;
            auto* scope=current_quota_scope;
            if(!active())return 125;
            if(!scope||!scope->connection||scope->connection->cancellation<0)return 95;
            if(stopping.load(std::memory_order_relaxed))return 125;
            if(!waiting.select_exit(wait_exit))return 125;
            notification entry{&waiting,notifications};notifications=&entry;
            guard.unlock();auto result=waiting.until(deadline,scope->connection->cancellation);guard.lock();
            auto** link=&notifications;while(*link&&*link!=&entry)link=&(*link)->next;if(*link)*link=entry.next;
            if(!active())return 125;
            if(result!=ros::quota_wait_result::ready)return result==ros::quota_wait_result::cancelled?125:95;
            auto now=::uwvm2::utils::host_clock::now();
            return !::uwvm2::utils::host_clock::available()?95:now>=deadline?110:0;
        }
        template<class Unlock,class Lock,class Active>
        bool acquire(ros::capability_spec const& c,std::size_t count,bool bytes_only,bool consume,Unlock unlock,Lock lock,Active active)
        {
            native_exit_restore restore;
            auto* scope=current_quota_scope;
            if(scope)scope->error=11;
            ros::synchronous_quota_wait* waiting{};
            for(;;)
            {
                if(!active()){if(scope)scope->error=125;return false;}
                auto d=inspect(c,count,bytes_only);
                if(d.error){if(scope)scope->error=d.error;return false;}
                if(d.wake==std::chrono::steady_clock::time_point{})
                {if(consume){if(!bytes_only&&!unlimited_tokens)--tokens;if(!unlimited_bytes)bytes-=count;}return true;}
                if(!scope||!scope->connection){return false;}
                if(scope->connection->cancellation<0){scope->error=95;return false;}
                if(stopping.load(std::memory_order_relaxed)){scope->error=125;return false;}
                if(::uwvm2::utils::host_clock::now()>=scope->deadline){scope->error=110;return false;}
                if(!waiting)waiting=ros::synchronous_wait_context::waiter();
                if(!waiting){scope->error=12;return false;}
                if(!waiting->select_exit(d.wait_exit)){scope->error=125;return false;}
                notification entry{waiting,notifications};notifications=&entry;
                unlock();auto result=waiting->until(std::min(d.wake,scope->deadline),scope->connection->cancellation);lock();
                // Other callback waiters may have registered while unlocked.
                auto** link=&notifications;while(*link&&*link!=&entry)link=&(*link)->next;if(*link)*link=entry.next;
                if(result!=ros::quota_wait_result::ready){scope->error=result==ros::quota_wait_result::cancelled?125:95;return false;}
            }
        }
        bool take(ros::capability_spec const& c,std::size_t n)
        {return acquire(c,n,false,true,[]{},[]{},[]{return true;});}
        bool take_bytes(ros::capability_spec const& c,std::size_t n)
        {return acquire(c,n,true,true,[]{},[]{},[]{return true;});}
        bool available(ros::capability_spec const& c,std::size_t n)
        {return acquire(c,n,false,false,[]{},[]{},[]{return true;});}
        bool available_bytes(ros::capability_spec const& c,std::size_t n)
        {return acquire(c,n,true,false,[]{},[]{},[]{return true;});}
        template<class Active> bool take_locked(ros::capability_spec const& c,std::size_t n,std::unique_lock<std::mutex>& guard,Active active)
        {return acquire(c,n,false,true,[&]{guard.unlock();},[&]{guard.lock();},active);}
    };
}
