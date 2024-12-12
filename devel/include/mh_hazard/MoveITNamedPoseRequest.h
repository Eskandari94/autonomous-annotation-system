// Generated by gencpp from file mh_hazard/MoveITNamedPoseRequest.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_MOVEITNAMEDPOSEREQUEST_H
#define MH_HAZARD_MESSAGE_MOVEITNAMEDPOSEREQUEST_H


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
struct MoveITNamedPoseRequest_
{
  typedef MoveITNamedPoseRequest_<ContainerAllocator> Type;

  MoveITNamedPoseRequest_()
    : named_pose()  {
    }
  MoveITNamedPoseRequest_(const ContainerAllocator& _alloc)
    : named_pose(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _named_pose_type;
  _named_pose_type named_pose;





  typedef boost::shared_ptr< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MoveITNamedPoseRequest_

typedef ::mh_hazard::MoveITNamedPoseRequest_<std::allocator<void> > MoveITNamedPoseRequest;

typedef boost::shared_ptr< ::mh_hazard::MoveITNamedPoseRequest > MoveITNamedPoseRequestPtr;
typedef boost::shared_ptr< ::mh_hazard::MoveITNamedPoseRequest const> MoveITNamedPoseRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator1> & lhs, const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator2> & rhs)
{
  return lhs.named_pose == rhs.named_pose;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator1> & lhs, const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f1d8df4ffcc1d667593f4814a7cca462";
  }

  static const char* value(const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf1d8df4ffcc1d667ULL;
  static const uint64_t static_value2 = 0x593f4814a7cca462ULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/MoveITNamedPoseRequest";
  }

  static const char* value(const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string named_pose\n"
;
  }

  static const char* value(const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.named_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MoveITNamedPoseRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::MoveITNamedPoseRequest_<ContainerAllocator>& v)
  {
    s << indent << "named_pose: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.named_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_MOVEITNAMEDPOSEREQUEST_H
