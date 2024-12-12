// Generated by gencpp from file mh_hazard/Whisper.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_WHISPER_H
#define MH_HAZARD_MESSAGE_WHISPER_H

#include <ros/service_traits.h>


#include <mh_hazard/WhisperRequest.h>
#include <mh_hazard/WhisperResponse.h>


namespace mh_hazard
{

struct Whisper
{

typedef WhisperRequest Request;
typedef WhisperResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Whisper
} // namespace mh_hazard


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mh_hazard::Whisper > {
  static const char* value()
  {
    return "43e291543d576a3f606f1f97c2f7e821";
  }

  static const char* value(const ::mh_hazard::Whisper&) { return value(); }
};

template<>
struct DataType< ::mh_hazard::Whisper > {
  static const char* value()
  {
    return "mh_hazard/Whisper";
  }

  static const char* value(const ::mh_hazard::Whisper&) { return value(); }
};


// service_traits::MD5Sum< ::mh_hazard::WhisperRequest> should match
// service_traits::MD5Sum< ::mh_hazard::Whisper >
template<>
struct MD5Sum< ::mh_hazard::WhisperRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::Whisper >::value();
  }
  static const char* value(const ::mh_hazard::WhisperRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::WhisperRequest> should match
// service_traits::DataType< ::mh_hazard::Whisper >
template<>
struct DataType< ::mh_hazard::WhisperRequest>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::Whisper >::value();
  }
  static const char* value(const ::mh_hazard::WhisperRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mh_hazard::WhisperResponse> should match
// service_traits::MD5Sum< ::mh_hazard::Whisper >
template<>
struct MD5Sum< ::mh_hazard::WhisperResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::Whisper >::value();
  }
  static const char* value(const ::mh_hazard::WhisperResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::WhisperResponse> should match
// service_traits::DataType< ::mh_hazard::Whisper >
template<>
struct DataType< ::mh_hazard::WhisperResponse>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::Whisper >::value();
  }
  static const char* value(const ::mh_hazard::WhisperResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MH_HAZARD_MESSAGE_WHISPER_H