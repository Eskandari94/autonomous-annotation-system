// Generated by gencpp from file mh_hazard/LLMText.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_LLMTEXT_H
#define MH_HAZARD_MESSAGE_LLMTEXT_H

#include <ros/service_traits.h>


#include <mh_hazard/LLMTextRequest.h>
#include <mh_hazard/LLMTextResponse.h>


namespace mh_hazard
{

struct LLMText
{

typedef LLMTextRequest Request;
typedef LLMTextResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LLMText
} // namespace mh_hazard


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mh_hazard::LLMText > {
  static const char* value()
  {
    return "7aeb82e24cd9ab4590c8feef6925aefe";
  }

  static const char* value(const ::mh_hazard::LLMText&) { return value(); }
};

template<>
struct DataType< ::mh_hazard::LLMText > {
  static const char* value()
  {
    return "mh_hazard/LLMText";
  }

  static const char* value(const ::mh_hazard::LLMText&) { return value(); }
};


// service_traits::MD5Sum< ::mh_hazard::LLMTextRequest> should match
// service_traits::MD5Sum< ::mh_hazard::LLMText >
template<>
struct MD5Sum< ::mh_hazard::LLMTextRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::LLMText >::value();
  }
  static const char* value(const ::mh_hazard::LLMTextRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::LLMTextRequest> should match
// service_traits::DataType< ::mh_hazard::LLMText >
template<>
struct DataType< ::mh_hazard::LLMTextRequest>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::LLMText >::value();
  }
  static const char* value(const ::mh_hazard::LLMTextRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mh_hazard::LLMTextResponse> should match
// service_traits::MD5Sum< ::mh_hazard::LLMText >
template<>
struct MD5Sum< ::mh_hazard::LLMTextResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::LLMText >::value();
  }
  static const char* value(const ::mh_hazard::LLMTextResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::LLMTextResponse> should match
// service_traits::DataType< ::mh_hazard::LLMText >
template<>
struct DataType< ::mh_hazard::LLMTextResponse>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::LLMText >::value();
  }
  static const char* value(const ::mh_hazard::LLMTextResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MH_HAZARD_MESSAGE_LLMTEXT_H