// Generated by gencpp from file mh_hazard/DetectSlotResponse.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_DETECTSLOTRESPONSE_H
#define MH_HAZARD_MESSAGE_DETECTSLOTRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PointStamped.h>

namespace mh_hazard
{
template <class ContainerAllocator>
struct DetectSlotResponse_
{
  typedef DetectSlotResponse_<ContainerAllocator> Type;

  DetectSlotResponse_()
    : slot_locations()  {
    }
  DetectSlotResponse_(const ContainerAllocator& _alloc)
    : slot_locations(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::PointStamped_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::PointStamped_<ContainerAllocator> >> _slot_locations_type;
  _slot_locations_type slot_locations;





  typedef boost::shared_ptr< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DetectSlotResponse_

typedef ::mh_hazard::DetectSlotResponse_<std::allocator<void> > DetectSlotResponse;

typedef boost::shared_ptr< ::mh_hazard::DetectSlotResponse > DetectSlotResponsePtr;
typedef boost::shared_ptr< ::mh_hazard::DetectSlotResponse const> DetectSlotResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::DetectSlotResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::DetectSlotResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::DetectSlotResponse_<ContainerAllocator2> & rhs)
{
  return lhs.slot_locations == rhs.slot_locations;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::DetectSlotResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::DetectSlotResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "018fdebbf1db2d6b0942a1a4db6ac0a6";
  }

  static const char* value(const ::mh_hazard::DetectSlotResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x018fdebbf1db2d6bULL;
  static const uint64_t static_value2 = 0x0942a1a4db6ac0a6ULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/DetectSlotResponse";
  }

  static const char* value(const ::mh_hazard::DetectSlotResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PointStamped[] slot_locations\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PointStamped\n"
"# This represents a Point with reference coordinate frame and timestamp\n"
"Header header\n"
"Point point\n"
"\n"
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

  static const char* value(const ::mh_hazard::DetectSlotResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.slot_locations);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectSlotResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::DetectSlotResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::DetectSlotResponse_<ContainerAllocator>& v)
  {
    s << indent << "slot_locations[]" << std::endl;
    for (size_t i = 0; i < v.slot_locations.size(); ++i)
    {
      s << indent << "  slot_locations[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::PointStamped_<ContainerAllocator> >::stream(s, indent + "    ", v.slot_locations[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_DETECTSLOTRESPONSE_H
