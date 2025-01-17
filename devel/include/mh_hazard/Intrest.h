// Generated by gencpp from file mh_hazard/Intrest.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_INTREST_H
#define MH_HAZARD_MESSAGE_INTREST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Point.h>

namespace mh_hazard
{
template <class ContainerAllocator>
struct Intrest_
{
  typedef Intrest_<ContainerAllocator> Type;

  Intrest_()
    : header()
    , intrest()
    , positions()  {
    }
  Intrest_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , intrest(_alloc)
    , positions(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _intrest_type;
  _intrest_type intrest;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Point_<ContainerAllocator> >> _positions_type;
  _positions_type positions;





  typedef boost::shared_ptr< ::mh_hazard::Intrest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::Intrest_<ContainerAllocator> const> ConstPtr;

}; // struct Intrest_

typedef ::mh_hazard::Intrest_<std::allocator<void> > Intrest;

typedef boost::shared_ptr< ::mh_hazard::Intrest > IntrestPtr;
typedef boost::shared_ptr< ::mh_hazard::Intrest const> IntrestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::Intrest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::Intrest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::Intrest_<ContainerAllocator1> & lhs, const ::mh_hazard::Intrest_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.intrest == rhs.intrest &&
    lhs.positions == rhs.positions;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::Intrest_<ContainerAllocator1> & lhs, const ::mh_hazard::Intrest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::Intrest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::Intrest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::Intrest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::Intrest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::Intrest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::Intrest_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::Intrest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cbddb386d5a5e7010ff2de32d3a54a41";
  }

  static const char* value(const ::mh_hazard::Intrest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcbddb386d5a5e701ULL;
  static const uint64_t static_value2 = 0x0ff2de32d3a54a41ULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::Intrest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/Intrest";
  }

  static const char* value(const ::mh_hazard::Intrest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::Intrest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float32[] intrest\n"
"geometry_msgs/Point[] positions\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mh_hazard::Intrest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::Intrest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.intrest);
      stream.next(m.positions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Intrest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::Intrest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::Intrest_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "intrest[]" << std::endl;
    for (size_t i = 0; i < v.intrest.size(); ++i)
    {
      s << indent << "  intrest[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.intrest[i]);
    }
    s << indent << "positions[]" << std::endl;
    for (size_t i = 0; i < v.positions.size(); ++i)
    {
      s << indent << "  positions[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.positions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_INTREST_H
