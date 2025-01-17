// Generated by gencpp from file mh_hazard/CLIP.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_CLIP_H
#define MH_HAZARD_MESSAGE_CLIP_H

#include <ros/service_traits.h>


#include <mh_hazard/CLIPRequest.h>
#include <mh_hazard/CLIPResponse.h>


namespace mh_hazard
{

struct CLIP
{

typedef CLIPRequest Request;
typedef CLIPResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct CLIP
} // namespace mh_hazard


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mh_hazard::CLIP > {
  static const char* value()
  {
    return "58e84db9bec5be131d8cf3473f760ab1";
  }

  static const char* value(const ::mh_hazard::CLIP&) { return value(); }
};

template<>
struct DataType< ::mh_hazard::CLIP > {
  static const char* value()
  {
    return "mh_hazard/CLIP";
  }

  static const char* value(const ::mh_hazard::CLIP&) { return value(); }
};


// service_traits::MD5Sum< ::mh_hazard::CLIPRequest> should match
// service_traits::MD5Sum< ::mh_hazard::CLIP >
template<>
struct MD5Sum< ::mh_hazard::CLIPRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::CLIP >::value();
  }
  static const char* value(const ::mh_hazard::CLIPRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::CLIPRequest> should match
// service_traits::DataType< ::mh_hazard::CLIP >
template<>
struct DataType< ::mh_hazard::CLIPRequest>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::CLIP >::value();
  }
  static const char* value(const ::mh_hazard::CLIPRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mh_hazard::CLIPResponse> should match
// service_traits::MD5Sum< ::mh_hazard::CLIP >
template<>
struct MD5Sum< ::mh_hazard::CLIPResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::CLIP >::value();
  }
  static const char* value(const ::mh_hazard::CLIPResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::CLIPResponse> should match
// service_traits::DataType< ::mh_hazard::CLIP >
template<>
struct DataType< ::mh_hazard::CLIPResponse>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::CLIP >::value();
  }
  static const char* value(const ::mh_hazard::CLIPResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MH_HAZARD_MESSAGE_CLIP_H
