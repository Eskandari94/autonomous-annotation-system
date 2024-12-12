// Generated by gencpp from file mh_hazard/ObjectImage.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_OBJECTIMAGE_H
#define MH_HAZARD_MESSAGE_OBJECTIMAGE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <sensor_msgs/Image.h>
#include <geometry_msgs/Point.h>

namespace mh_hazard
{
template <class ContainerAllocator>
struct ObjectImage_
{
  typedef ObjectImage_<ContainerAllocator> Type;

  ObjectImage_()
    : header()
    , image()
    , object_positions()  {
    }
  ObjectImage_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , image(_alloc)
    , object_positions(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _image_type;
  _image_type image;

   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::geometry_msgs::Point_<ContainerAllocator> >> _object_positions_type;
  _object_positions_type object_positions;





  typedef boost::shared_ptr< ::mh_hazard::ObjectImage_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::ObjectImage_<ContainerAllocator> const> ConstPtr;

}; // struct ObjectImage_

typedef ::mh_hazard::ObjectImage_<std::allocator<void> > ObjectImage;

typedef boost::shared_ptr< ::mh_hazard::ObjectImage > ObjectImagePtr;
typedef boost::shared_ptr< ::mh_hazard::ObjectImage const> ObjectImageConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::ObjectImage_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::ObjectImage_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::ObjectImage_<ContainerAllocator1> & lhs, const ::mh_hazard::ObjectImage_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.image == rhs.image &&
    lhs.object_positions == rhs.object_positions;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::ObjectImage_<ContainerAllocator1> & lhs, const ::mh_hazard::ObjectImage_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::ObjectImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::ObjectImage_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::ObjectImage_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::ObjectImage_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::ObjectImage_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::ObjectImage_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::ObjectImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "534258c07e4a1a1800266e633173bfd7";
  }

  static const char* value(const ::mh_hazard::ObjectImage_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x534258c07e4a1a18ULL;
  static const uint64_t static_value2 = 0x00266e633173bfd7ULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::ObjectImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/ObjectImage";
  }

  static const char* value(const ::mh_hazard::ObjectImage_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::ObjectImage_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"sensor_msgs/Image image\n"
"geometry_msgs/Point[] object_positions\n"
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
"MSG: sensor_msgs/Image\n"
"# This message contains an uncompressed image\n"
"# (0, 0) is at top-left corner of image\n"
"#\n"
"\n"
"Header header        # Header timestamp should be acquisition time of image\n"
"                     # Header frame_id should be optical frame of camera\n"
"                     # origin of frame should be optical center of camera\n"
"                     # +x should point to the right in the image\n"
"                     # +y should point down in the image\n"
"                     # +z should point into to plane of the image\n"
"                     # If the frame_id here and the frame_id of the CameraInfo\n"
"                     # message associated with the image conflict\n"
"                     # the behavior is undefined\n"
"\n"
"uint32 height         # image height, that is, number of rows\n"
"uint32 width          # image width, that is, number of columns\n"
"\n"
"# The legal values for encoding are in file src/image_encodings.cpp\n"
"# If you want to standardize a new string format, join\n"
"# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n"
"\n"
"string encoding       # Encoding of pixels -- channel meaning, ordering, size\n"
"                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n"
"\n"
"uint8 is_bigendian    # is this data bigendian?\n"
"uint32 step           # Full row length in bytes\n"
"uint8[] data          # actual matrix data, size is (step * rows)\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::mh_hazard::ObjectImage_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::ObjectImage_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.image);
      stream.next(m.object_positions);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObjectImage_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::ObjectImage_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::ObjectImage_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "image: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.image);
    s << indent << "object_positions[]" << std::endl;
    for (size_t i = 0; i < v.object_positions.size(); ++i)
    {
      s << indent << "  object_positions[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.object_positions[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_OBJECTIMAGE_H