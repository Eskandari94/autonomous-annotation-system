// Generated by gencpp from file mh_hazard/OrientCameraResponse.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_ORIENTCAMERARESPONSE_H
#define MH_HAZARD_MESSAGE_ORIENTCAMERARESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mh_hazard
{
template <class ContainerAllocator>
struct OrientCameraResponse_
{
  typedef OrientCameraResponse_<ContainerAllocator> Type;

  OrientCameraResponse_()
    : resp(false)  {
    }
  OrientCameraResponse_(const ContainerAllocator& _alloc)
    : resp(false)  {
  (void)_alloc;
    }



   typedef uint8_t _resp_type;
  _resp_type resp;





  typedef boost::shared_ptr< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> const> ConstPtr;

}; // struct OrientCameraResponse_

typedef ::mh_hazard::OrientCameraResponse_<std::allocator<void> > OrientCameraResponse;

typedef boost::shared_ptr< ::mh_hazard::OrientCameraResponse > OrientCameraResponsePtr;
typedef boost::shared_ptr< ::mh_hazard::OrientCameraResponse const> OrientCameraResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::OrientCameraResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::OrientCameraResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::OrientCameraResponse_<ContainerAllocator2> & rhs)
{
  return lhs.resp == rhs.resp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::OrientCameraResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::OrientCameraResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e3a98d806e1c4fee01a17d597e27ea8e";
  }

  static const char* value(const ::mh_hazard::OrientCameraResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe3a98d806e1c4feeULL;
  static const uint64_t static_value2 = 0x01a17d597e27ea8eULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/OrientCameraResponse";
  }

  static const char* value(const ::mh_hazard::OrientCameraResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool resp\n"
"\n"
;
  }

  static const char* value(const ::mh_hazard::OrientCameraResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.resp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OrientCameraResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::OrientCameraResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::OrientCameraResponse_<ContainerAllocator>& v)
  {
    s << indent << "resp: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.resp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_ORIENTCAMERARESPONSE_H