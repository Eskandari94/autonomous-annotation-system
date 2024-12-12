// Generated by gencpp from file mh_hazard/CLIPResponse.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_CLIPRESPONSE_H
#define MH_HAZARD_MESSAGE_CLIPRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Float32MultiArray.h>

namespace mh_hazard
{
template <class ContainerAllocator>
struct CLIPResponse_
{
  typedef CLIPResponse_<ContainerAllocator> Type;

  CLIPResponse_()
    : probs()  {
    }
  CLIPResponse_(const ContainerAllocator& _alloc)
    : probs(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Float32MultiArray_<ContainerAllocator>  _probs_type;
  _probs_type probs;





  typedef boost::shared_ptr< ::mh_hazard::CLIPResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::CLIPResponse_<ContainerAllocator> const> ConstPtr;

}; // struct CLIPResponse_

typedef ::mh_hazard::CLIPResponse_<std::allocator<void> > CLIPResponse;

typedef boost::shared_ptr< ::mh_hazard::CLIPResponse > CLIPResponsePtr;
typedef boost::shared_ptr< ::mh_hazard::CLIPResponse const> CLIPResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::CLIPResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::CLIPResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::CLIPResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::CLIPResponse_<ContainerAllocator2> & rhs)
{
  return lhs.probs == rhs.probs;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::CLIPResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::CLIPResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::CLIPResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::CLIPResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::CLIPResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ae2de7dfc35a6d61e0b763361a63719c";
  }

  static const char* value(const ::mh_hazard::CLIPResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xae2de7dfc35a6d61ULL;
  static const uint64_t static_value2 = 0xe0b763361a63719cULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/CLIPResponse";
  }

  static const char* value(const ::mh_hazard::CLIPResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Float32MultiArray probs\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Float32MultiArray\n"
"# Please look at the MultiArrayLayout message definition for\n"
"# documentation on all multiarrays.\n"
"\n"
"MultiArrayLayout  layout        # specification of data layout\n"
"float32[]         data          # array of data\n"
"\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayLayout\n"
"# The multiarray declares a generic multi-dimensional array of a\n"
"# particular data type.  Dimensions are ordered from outer most\n"
"# to inner most.\n"
"\n"
"MultiArrayDimension[] dim # Array of dimension properties\n"
"uint32 data_offset        # padding elements at front of data\n"
"\n"
"# Accessors should ALWAYS be written in terms of dimension stride\n"
"# and specified outer-most dimension first.\n"
"# \n"
"# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]\n"
"#\n"
"# A standard, 3-channel 640x480 image with interleaved color channels\n"
"# would be specified as:\n"
"#\n"
"# dim[0].label  = \"height\"\n"
"# dim[0].size   = 480\n"
"# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)\n"
"# dim[1].label  = \"width\"\n"
"# dim[1].size   = 640\n"
"# dim[1].stride = 3*640 = 1920\n"
"# dim[2].label  = \"channel\"\n"
"# dim[2].size   = 3\n"
"# dim[2].stride = 3\n"
"#\n"
"# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/MultiArrayDimension\n"
"string label   # label of given dimension\n"
"uint32 size    # size of given dimension (in type units)\n"
"uint32 stride  # stride of given dimension\n"
;
  }

  static const char* value(const ::mh_hazard::CLIPResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.probs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CLIPResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::CLIPResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::CLIPResponse_<ContainerAllocator>& v)
  {
    s << indent << "probs: ";
    s << std::endl;
    Printer< ::std_msgs::Float32MultiArray_<ContainerAllocator> >::stream(s, indent + "  ", v.probs);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_CLIPRESPONSE_H