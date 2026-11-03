// Explicit trusted native serialized-observation selection. APL-2.0.
#pragma once
#include "../common/native_observation.h"
#include <set>

namespace uwvm2::ros_gateway::native_observation
{
    inline std::uint64_t profile_integer(std::string_view text,std::uint64_t maximum)
    {
        std::uint64_t value{};auto parsed=std::from_chars(text.data(),text.data()+text.size(),value);
        if(text.empty()||parsed.ec!=std::errc{}||parsed.ptr!=text.data()+text.size()||value>maximum)
            throw std::runtime_error("native observation profile integer");
        return value;
    }
    inline digest profile_digest(std::string_view text)
    {
        if(text.size()!=64)throw std::runtime_error("native observation profile digest extent");
        digest value{};
        for(std::size_t i{};i<32;++i)
        {
            auto part=text.substr(i*2,2);unsigned parsed{};
            for(char c:part)if(!((c>='0'&&c<='9')||(c>='a'&&c<='f')))throw std::runtime_error("native observation profile lowercase digest");
            auto result=std::from_chars(part.data(),part.data()+part.size(),parsed,16);
            if(result.ec!=std::errc{}||result.ptr!=part.data()+part.size())throw std::runtime_error("native observation profile digest");
            value[i]=std::uint8_t(parsed);
        }
        if(value==digest{})throw std::runtime_error("native observation missing real source digest");
        return value;
    }
    inline settings load_profile(std::string const& path)
    {
        native_io::config_lines input{path};settings output;std::set<std::string> seen;std::string_view line;
        while(input.next(line))
        {
            if(line.empty()||line.front()=='#')continue;
            std::array<std::string_view,7> parts;auto count=native_io::split(line,parts);
            if(count==4&&parts[0]=="type-support")
            {
                if(parts[1].empty()||parts[1].size()>255||parts[2].empty()||parts[2].front()!='/'||output.type_support.size()>=64)
                    throw std::runtime_error("native observation explicit type support selection");
                for(char c:parts[1])if(!((c>='a'&&c<='z')||(c>='A'&&c<='Z')||(c>='0'&&c<='9')||c=='/'||c=='_'))
                    throw std::runtime_error("native observation native type spelling");
                if(!output.type_support.emplace(std::string{parts[1]},library{std::string{parts[2]},profile_digest(parts[3])}).second)
                    throw std::runtime_error("native observation duplicate selected type support");
                continue;
            }
            if(count!=2||!seen.insert(std::string{parts[0]}).second)throw std::runtime_error("native observation duplicate/invalid profile field");
            auto key=parts[0],value=parts[1];
            if(key=="format"){if(value!="uwvm-sdk-native-buffer-observation-profile-v2")throw std::runtime_error("native observation profile version");}
            else if(key=="run-id")output.run_id=value;
            else if(key=="collector-socket")output.socket=value;
            else if(key=="collector-pid")output.collector_pid=std::uint32_t(profile_integer(value,UINT32_MAX));
            else if(key=="collector-uid")output.collector_uid=std::uint32_t(profile_integer(value,UINT32_MAX));
            else if(key=="collector-birth")output.collector_birth=profile_integer(value,UINT64_MAX);
            else if(key=="collector-executable-sha256")output.collector_executable=profile_digest(value);
            else if(key=="native-source-sha256")output.native_source=profile_digest(value);
            else if(key=="maximum-records")output.maximum_records=profile_integer(value,65536);
            else if(key=="maximum-bytes")output.maximum_bytes=profile_integer(value,67108864);
            else if(key=="maximum-live-captures")output.maximum_captures=profile_integer(value,2048);
            else throw std::runtime_error("unknown native observation profile field");
        }
        for(auto key:{"format","run-id","collector-socket","collector-pid","collector-uid","collector-birth",
            "collector-executable-sha256","native-source-sha256","maximum-records","maximum-bytes","maximum-live-captures"})
            if(!seen.count(key))throw std::runtime_error("missing explicit native observation profile field");
        if(output.type_support.empty())throw std::runtime_error("native observation requires exact selected type support sources");
        return output;
    }
}
