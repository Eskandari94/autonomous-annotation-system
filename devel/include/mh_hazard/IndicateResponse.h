// Generated by gencpp from file mh_hazard/IndicateResponse.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_INDICATERESPONSE_H
#define MH_HAZARD_MESSAGE_INDICATERESPONSE_H


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
struct IndicateResponse_
{
  typedef IndicateResponse_<ContainerAllocator> Type;

  IndicateResponse_()
    : result(false)  {
    }
  IndicateResponse_(const ContainerAllocator& _alloc)
    : result(false)  {
  (void)_alloc;
    }



   typedef uint8_t _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::mh_hazard::IndicateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::IndicateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct IndicateResponse_

typedef ::mh_hazard::IndicateResponse_<std::allocator<void> > IndicateResponse;

typedef boost::shared_ptr< ::mh_hazard::IndicateResponse > IndicateResponsePtr;
typedef boost::shared_ptr< ::mh_hazard::IndicateResponse const> IndicateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::IndicateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::IndicateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::IndicateResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::IndicateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::IndicateResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::IndicateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::IndicateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::IndicateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::IndicateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::mh_hazard::IndicateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xeb13ac1f1354ccecULL;
  static const uint64_t static_value2 = 0xb7941ee8fa2192e8ULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/IndicateResponse";
  }

  static const char* value(const ::mh_hazard::IndicateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool result\n"
"\n"
;
  }

  static const char* value(const ::mh_hazard::IndicateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct IndicateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::IndicateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::IndicateResponse_<ContainerAllocator>& v)
  {
    s << indent << "result: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_INDICATERESPONSE_H
