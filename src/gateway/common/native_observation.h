// Explicit native observation profile. APL-2.0. Requires real OpenSSL Crypto.
#pragma once
#include <uwvm2/utils/thread/monotonic_clock.h>
#include "native_observation_types.h"
#include "native_io.h"
#include <openssl/sha.h>
#include <algorithm>
#include <charconv>
#include <chrono>
#include <cerrno>
#include <cstring>
#include <fcntl.h>
#include <map>
#include <mutex>
#include <poll.h>
#include <stdexcept>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/un.h>
#include <unistd.h>

namespace uwvm2::ros_gateway::native_observation
{
    inline digest hash(std::uint8_t const* bytes,std::size_t count)
    {
        static std::uint8_t const empty{};digest result;SHA256_CTX context;
        if(!SHA256_Init(&context)||!SHA256_Update(&context,count?bytes:&empty,count)||!SHA256_Final(result.data(),&context))
            throw std::runtime_error("native observation SHA256 failed");
        return result;
    }
    inline bool run_token(std::string_view run) noexcept
    {
        if(run.empty()||run.size()>128)return false;
        for(char c:run)if(!((c>='a'&&c<='z')||(c>='A'&&c<='Z')||(c>='0'&&c<='9')||c=='.'||c=='_'||c=='-'))return false;
        return true;
    }
    inline digest session_tag(std::string_view run,std::uint8_t backend,std::uint64_t actual_session)
    {
        if(!run_token(run)||backend<1||backend>2||!actual_session)throw std::invalid_argument("native observation session tag input");
        static constexpr char domain[]{"uwvm-sdk-ros-native-session-tag-v1"};
        std::array<std::uint8_t,sizeof(domain)+2+128+1+8> encoded{};
        std::size_t at{};for(char c:domain)encoded[at++]=static_cast<std::uint8_t>(c); // includes one NUL
        encoded[at++]=static_cast<std::uint8_t>(run.size());encoded[at++]=0;
        for(char c:run)encoded[at++]=static_cast<std::uint8_t>(c);
        encoded[at++]=backend;
        for(unsigned i{};i<8;++i)encoded[at++]=static_cast<std::uint8_t>(actual_session>>(i*8));
        return hash(encoded.data(),at);
    }
    inline std::uint64_t birth(std::uint32_t pid)
    {
        auto path=std::string("/proc/")+std::to_string(pid)+"/stat";
        native_io::owned_fd fd{::open(path.c_str(),O_RDONLY|O_CLOEXEC)};
        std::array<char,4096> data{};
        auto n=fd.get()<0 ? -1 : ::read(fd.get(),data.data(),data.size());
        if(n<=0||std::size_t(n)==data.size())throw std::runtime_error("native observation peer birth read");
        std::string_view text{data.data(),std::size_t(n)};auto end=text.rfind(") ");
        if(end==std::string_view::npos)throw std::runtime_error("native observation peer stat extent");
        text.remove_prefix(end+2);
        for(unsigned i{};i<19;++i)
        {auto space=text.find(' ');if(space==std::string_view::npos)throw std::runtime_error("native observation peer stat fields");text.remove_prefix(space+1);}
        auto space=text.find(' ');auto field=text.substr(0,space);std::uint64_t value{};
        auto decoded=std::from_chars(field.data(),field.data()+field.size(),value);
        if(decoded.ec!=std::errc{}||decoded.ptr!=field.data()+field.size()||!value)throw std::runtime_error("native observation peer birth value");
        return value;
    }
    inline digest file_hash(std::string const& path)
    {
        native_io::owned_fd fd{::open(path.c_str(),O_RDONLY|O_CLOEXEC)};struct stat before{},after{};
        if(fd.get()<0||::fstat(fd.get(),&before)<0||!S_ISREG(before.st_mode))throw std::runtime_error("native observation source file");
        SHA256_CTX context;if(!SHA256_Init(&context))throw std::runtime_error("native observation file SHA init");
        std::array<std::uint8_t,65536> bytes{};
        for(;;)
        {
            auto n=::read(fd.get(),bytes.data(),bytes.size());if(n<0&&errno==EINTR)continue;
            if(n<0)throw std::runtime_error("native observation file read");if(!n)break;
            if(!SHA256_Update(&context,bytes.data(),std::size_t(n)))throw std::runtime_error("native observation file SHA update");
        }
        digest result;
        if(!SHA256_Final(result.data(),&context)||::fstat(fd.get(),&after)<0||before.st_dev!=after.st_dev||before.st_ino!=after.st_ino||
            before.st_size!=after.st_size||before.st_mtim.tv_sec!=after.st_mtim.tv_sec||before.st_mtim.tv_nsec!=after.st_mtim.tv_nsec||
            before.st_ctim.tv_sec!=after.st_ctim.tv_sec||before.st_ctim.tv_nsec!=after.st_ctim.tv_nsec)
            throw std::runtime_error("native observation source changed while hashing");
        return result;
    }
    struct library {std::string path;digest sha256{};};
    struct settings
    {
        std::string run_id,socket;
        std::uint32_t collector_pid{},collector_uid{};
        std::uint64_t collector_birth{},maximum_records{},maximum_bytes{},maximum_captures{};
        digest collector_executable{},native_source{};
        std::map<std::string,library,std::less<>> type_support;
    };

    class packet_writer final:public writer
    {
        settings config_;
        int socket_{-1},peer_pidfd_{-1};
        std::mutex mutex_;
        std::uint64_t sequence_{},bytes_{};
        std::atomic<std::uint64_t> lost_{},endpoint_{},captures_{};
        std::atomic<bool> finished_{};
        static_assert(std::atomic<std::uint64_t>::is_always_lock_free,"native observation counters must be lock-free");
        void lose() noexcept
        {auto value=lost_.load(std::memory_order_relaxed);while(value!=UINT64_MAX&&!lost_.compare_exchange_weak(value,value+1,std::memory_order_relaxed)){};}
        bool peer_alive() const noexcept
        {pollfd p{peer_pidfd_,POLLIN,0};return peer_pidfd_>=0&&::poll(&p,1,0)==0;}
        static bool text(native_io::fixed_text<8192>& out,std::string_view field,std::string_view value) noexcept
        {
            if(!out.append(",\"")||!out.append(field)||!out.append("\":\""))return false;
            for(unsigned char c:value)
            {if(c<' '||c>126)return false;if((c=='"'||c=='\\')&&!out.append("\\"))return false;char b=char(c);if(!out.append({&b,1}))return false;}
            return out.append("\"");
        }
        template<class T>static bool number(native_io::fixed_text<8192>& out,std::string_view field,T value) noexcept
        {return out.append(",\"")&&out.append(field)&&out.append("\":")&&out.number(value);}
        static bool boolean(native_io::fixed_text<8192>& out,std::string_view field,bool value) noexcept
        {return out.append(",\"")&&out.append(field)&&out.append("\":")&&out.append(value?"true":"false");}
        static bool hexadecimal(native_io::fixed_text<8192>& out,std::string_view field,std::uint8_t const* data,std::size_t count) noexcept
        {
            static constexpr char digits[]{"0123456789abcdef"};
            if(!out.append(",\"")||!out.append(field)||!out.append("\":\"")||(count&&!data))return false;
            for(std::size_t i{};i<count;++i){char pair[2]{digits[data[i]>>4],digits[data[i]&15]};if(!out.append({pair,2}))return false;}
            return out.append("\"");
        }
        bool send(std::string_view bytes) noexcept
        {
            if(finished_.load(std::memory_order_relaxed)||!peer_alive()||sequence_>=config_.maximum_records||bytes.size()>config_.maximum_bytes-std::min(bytes_,config_.maximum_bytes))return false;
            auto n=::send(socket_,bytes.data(),bytes.size(),MSG_DONTWAIT|MSG_NOSIGNAL);
            if(n<0||std::size_t(n)!=bytes.size())return false;
            ++sequence_;bytes_+=bytes.size();return true;
        }
    public:
        explicit packet_writer(settings config):config_(std::move(config))
        {
            if(!run_token(config_.run_id)||config_.socket.empty()||config_.socket.front()!='/'||config_.socket.size()>=sizeof(sockaddr_un::sun_path)||
                !config_.collector_pid||!config_.collector_birth||!config_.maximum_records||config_.maximum_records>65536||
                !config_.maximum_bytes||config_.maximum_bytes>67108864||!config_.maximum_captures||config_.maximum_captures>2048)
                throw std::invalid_argument("native observation collector limits");
            try
            {
                for(auto const& item:config_.type_support)
                    if(item.second.path.empty()||item.second.path.front()!='/'||file_hash(item.second.path)!=item.second.sha256)
                        throw std::runtime_error("native observation type support source mismatch");
                struct stat st{};
                if(::lstat(config_.socket.c_str(),&st)<0||!S_ISSOCK(st.st_mode)||st.st_uid!=config_.collector_uid||(st.st_mode&0077))
                    throw std::runtime_error("native observation collector socket identity");
                peer_pidfd_=int(::syscall(SYS_pidfd_open,config_.collector_pid,0));
                if(peer_pidfd_<0||!peer_alive()||birth(config_.collector_pid)!=config_.collector_birth)
                    throw std::runtime_error("native observation collector lifetime");
                socket_=::socket(AF_UNIX,SOCK_SEQPACKET|SOCK_CLOEXEC|SOCK_NONBLOCK,0);
                sockaddr_un address{};address.sun_family=AF_UNIX;std::memcpy(address.sun_path,config_.socket.c_str(),config_.socket.size()+1);
                if(socket_<0||::connect(socket_,reinterpret_cast<sockaddr*>(&address),sizeof address)<0)
                    throw std::runtime_error("native observation collector connect");
                ucred credentials{};socklen_t extent=sizeof credentials;
                if(::getsockopt(socket_,SOL_SOCKET,SO_PEERCRED,&credentials,&extent)<0||extent!=sizeof credentials||
                    credentials.pid!=int(config_.collector_pid)||credentials.uid!=config_.collector_uid||
                    birth(config_.collector_pid)!=config_.collector_birth||
                    file_hash(std::string("/proc/")+std::to_string(config_.collector_pid)+"/exe")!=config_.collector_executable||!peer_alive())
                    throw std::runtime_error("native observation collector peer proof");
                // Collector authenticates this source PID/birth/executable using
                // SO_PEERCRED and the independently enrolled actual actor roster.
                // This greeting is a run association, never a self-minted seal.
                native_io::fixed_text<8192> hello;
                if(!hello.append("{\"format\":\"uwvm-sdk-native-observer-hello-v2\"")||!text(hello,"run_id",config_.run_id)||
                    !number(hello,"pid",::getpid())||!number(hello,"birth",birth(::getpid()))||
                    !hexadecimal(hello,"native_source_sha256",config_.native_source.data(),32)||!hello.append("}")||!send(hello.view()))
                    throw std::runtime_error("native observation collector greeting");
                // Only startup waits. The collector must authenticate the
                // actual source actor before it acknowledges this run. Native
                // callback record emission below always remains nonblocking.
                pollfd waiting[2]{{socket_,POLLIN,0},{peer_pidfd_,POLLIN,0}};
                if(::poll(waiting,2,2000)<=0||waiting[1].revents||!(waiting[0].revents&POLLIN))
                    throw std::runtime_error("native observation collector enrollment timeout");
                static constexpr char prefix[]{"UWNO2-ACK"};
                std::array<char,sizeof(prefix)+128> acknowledgement{};
                iovec buffer{acknowledgement.data(),acknowledgement.size()};msghdr message{};message.msg_iov=&buffer;message.msg_iovlen=1;
                auto received=::recvmsg(socket_,&message,MSG_DONTWAIT|MSG_CMSG_CLOEXEC);
                if(received<0||message.msg_flags&(MSG_TRUNC|MSG_CTRUNC)||std::size_t(received)!=sizeof(prefix)+config_.run_id.size()||
                    std::memcmp(acknowledgement.data(),prefix,sizeof(prefix))||
                    std::memcmp(acknowledgement.data()+sizeof(prefix),config_.run_id.data(),config_.run_id.size())||!peer_alive())
                    throw std::runtime_error("native observation collector enrollment refused");
            }
            catch(...){if(socket_>=0)::close(socket_);if(peer_pidfd_>=0)::close(peer_pidfd_);socket_=peer_pidfd_=-1;throw;}
        }
        ~packet_writer() override
        {
            record final;final.event=phase::end;(void)emit(final);
            if(socket_>=0)::close(socket_);if(peer_pidfd_>=0)::close(peer_pidfd_);
        }
        void lost() noexcept override{lose();}
        bool reserve_capture() noexcept override
        {
            if(finished_.load(std::memory_order_relaxed))return false;
            auto value=captures_.load(std::memory_order_relaxed);
            do{if(value>=config_.maximum_captures)return false;}while(!captures_.compare_exchange_weak(value,value+1,std::memory_order_relaxed));
            return true;
        }
        void release_capture() noexcept override
        {
            auto value=captures_.load(std::memory_order_relaxed);
            do{if(!value){lose();return;}}while(!captures_.compare_exchange_weak(value,value-1,std::memory_order_relaxed));
        }
        std::uint64_t next_endpoint() noexcept override
        {
            auto value=endpoint_.load(std::memory_order_relaxed);
            do{if(value==UINT64_MAX){lose();return 0;}}while(!endpoint_.compare_exchange_weak(value,value+1,std::memory_order_relaxed));
            return value+1;
        }
        std::string type_support_path(std::string_view type) const override
        {auto found=config_.type_support.find(type);return found==config_.type_support.end()?std::string{}:found->second.path;}
        std::shared_ptr<session const> begin_session(std::uint32_t backend,std::uint64_t actual_session,
            std::uint32_t actual_pid,std::uint32_t actual_uid,std::vector<std::uint8_t> const& manifest) override
        {
            auto value=std::make_shared<session>();value->run_id=config_.run_id;
            value->session_tag=session_tag(config_.run_id,std::uint8_t(backend),actual_session);
            value->binding_manifest_sha256=hash(manifest.data(),manifest.size());value->backend=backend;
            value->worker_pid=actual_pid;value->worker_uid=actual_uid;value->worker_birth=birth(actual_pid);
            record bound;bound.event=phase::session_bound;bound.connection=value.get();(void)emit(bound);return value;
        }
        bool emit(record const& value) noexcept override
        {
            std::unique_lock<std::mutex> guard{mutex_,std::try_to_lock};
            if(!guard.owns_lock()){lose();return false;}
            try
            {
                native_io::fixed_text<8192> out;
                bool ok=out.append("{\"format\":\"uwvm-sdk-native-buffer-observation-v2\"")&&text(out,"run_id",config_.run_id)&&
                    text(out,"phase",name(value.event))&&number(out,"sequence",sequence_+1)&&number(out,"pid",::getpid())&&
                    number(out,"monotonic_ns",std::chrono::duration_cast<std::chrono::nanoseconds>(::uwvm2::utils::host_clock::now().time_since_epoch()).count())&&
                    number(out,"request_id",value.request_id)&&number(out,"capture_ordinal",value.capture_ordinal)&&number(out,"error",value.error)&&
                    boolean(out,"native_invoked",value.native_invoked)&&boolean(out,"native_accepted",value.native_accepted)&&
                    boolean(out,"effects_uncertain",value.effects_uncertain);
                auto connection=value.connection?value.connection:value.source?value.source->owner.get():nullptr;
                if(connection)
                {
                    ok=ok&&hexadecimal(out,"session_tag",connection->session_tag.data(),32);
                    if(value.event==phase::session_bound)ok=ok&&
                        hexadecimal(out,"binding_manifest_sha256",connection->binding_manifest_sha256.data(),32)&&
                        number(out,"backend",connection->backend)&&number(out,"worker_pid",connection->worker_pid)&&
                        number(out,"worker_uid",connection->worker_uid)&&number(out,"worker_birth",connection->worker_birth);
                }
                if(value.source)
                {
                    ok=ok&&text(out,"alias",value.source->alias)&&number(out,"endpoint_incarnation",value.source->incarnation);
                    if(value.event==phase::endpoint_open)ok=ok&&text(out,"operation",value.source->operation)&&
                        text(out,"resource",value.source->resource)&&text(out,"type",value.source->type)&&text(out,"identity",value.source->identity)&&
                        text(out,"codec_identity",value.source->codec_identity)&&number(out,"activation_request_id",value.source->activation_request_id)&&
                        boolean(out,"actual_qos_verified",value.actual_qos_verified);
                }
                if(value.canonical||value.canonical_bytes)
                {auto digest=hash(value.canonical,value.canonical_bytes);ok=ok&&number(out,"canonical_bytes",value.canonical_bytes)&&hexadecimal(out,"canonical_sha256",digest.data(),32);if(value.payloads_inline)ok=ok&&hexadecimal(out,"canonical_hex",value.canonical,value.canonical_bytes);}
                if(value.serialized||value.serialized_bytes)
                {auto digest=hash(value.serialized,value.serialized_bytes);ok=ok&&number(out,"serialized_bytes",value.serialized_bytes)&&hexadecimal(out,"serialized_sha256",digest.data(),32);if(value.payloads_inline)ok=ok&&hexadecimal(out,"serialized_hex",value.serialized,value.serialized_bytes);}
                if(!value.serialization_format.empty())ok=ok&&text(out,"serialization_format",value.serialization_format);
                if(!value.buffer_origin.empty())ok=ok&&text(out,"buffer_origin",value.buffer_origin);
                if(value.info)
                {
                    auto const& info=*value.info;
                    ok=ok&&number(out,"publication_sequence",info.publication_sequence)&&number(out,"reception_sequence",info.reception_sequence)&&
                        boolean(out,"publication_sequence_supported",info.publication_sequence_supported)&&boolean(out,"reception_sequence_supported",info.reception_sequence_supported)&&
                        number(out,"source_timestamp",info.source_timestamp)&&number(out,"received_timestamp",info.received_timestamp)&&
                        text(out,"rmw_identifier",info.rmw_identifier)&&info.publisher_gid_bytes<=info.publisher_gid.size()&&
                        hexadecimal(out,"publisher_gid",info.publisher_gid.data(),info.publisher_gid_bytes);
                }
                if(value.event==phase::endpoint_closed)ok=ok&&text(out,"retirement_scope","ingress-disabled-local-entity-released")&&boolean(out,"callback_quiescence_proven",false);
                if(value.event==phase::end)ok=ok&&number(out,"lost_records",lost_.load(std::memory_order_relaxed))&&number(out,"live_captures",captures_.load(std::memory_order_relaxed));
                ok=ok&&out.append("}")&&send(out.view());
                if(!ok)lose();if(value.event==phase::end)finished_.store(true,std::memory_order_relaxed);return ok;
            }
            catch(...){lose();return false;}
        }
    };
}
