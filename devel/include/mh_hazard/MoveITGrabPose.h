// Generated by gencpp from file mh_hazard/MoveITGrabPose.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_MOVEITGRABPOSE_H
#define MH_HAZARD_MESSAGE_MOVEITGRABPOSE_H

#include <ros/service_traits.h>


#include <mh_hazard/MoveITGrabPoseRequest.h>
#include <mh_hazard/MoveITGrabPoseResponse.h>


namespace mh_hazard
{

struct MoveITGrabPose
{

typedef MoveITGrabPoseRequest Request;
typedef MoveITGrabPoseResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct MoveITGrabPose
} // namespace mh_hazard


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mh_hazard::MoveITGrabPose > {
  static const char* value()
  {
    return "1d4e3f01f751b136dce2bc699f1d7748";
  }

  static const char* value(const ::mh_hazard::MoveITGrabPose&) { return value(); }
};

template<>
struct DataType< ::mh_hazard::MoveITGrabPose > {
  static const char* value()
  {
    return "mh_hazard/MoveITGrabPose";
  }

  static const char* value(const ::mh_hazard::MoveITGrabPose&) { return value(); }
};


// service_traits::MD5Sum< ::mh_hazard::MoveITGrabPoseRequest> should match
// service_traits::MD5Sum< ::mh_hazard::MoveITGrabPose >
template<>
struct MD5Sum< ::mh_hazard::MoveITGrabPoseRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::MoveITGrabPose >::value();
  }
  static const char* value(const ::mh_hazard::MoveITGrabPoseRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::MoveITGrabPoseRequest> should match
// service_traits::DataType< ::mh_hazard::MoveITGrabPose >
template<>
struct DataType< ::mh_hazard::MoveITGrabPoseRequest>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::MoveITGrabPose >::value();
  }
  static const char* value(const ::mh_hazard::MoveITGrabPoseRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mh_hazard::MoveITGrabPoseResponse> should match
// service_traits::MD5Sum< ::mh_hazard::MoveITGrabPose >
template<>
struct MD5Sum< ::mh_hazard::MoveITGrabPoseResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mh_hazard::MoveITGrabPose >::value();
  }
  static const char* value(const ::mh_hazard::MoveITGrabPoseResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mh_hazard::MoveITGrabPoseResponse> should match
// service_traits::DataType< ::mh_hazard::MoveITGrabPose >
template<>
struct DataType< ::mh_hazard::MoveITGrabPoseResponse>
{
  static const char* value()
  {
    return DataType< ::mh_hazard::MoveITGrabPose >::value();
  }
  static const char* value(const ::mh_hazard::MoveITGrabPoseResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MH_HAZARD_MESSAGE_MOVEITGRABPOSE_H
