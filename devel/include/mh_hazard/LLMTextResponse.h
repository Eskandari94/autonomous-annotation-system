// Generated by gencpp from file mh_hazard/LLMTextResponse.msg
// DO NOT EDIT!


#ifndef MH_HAZARD_MESSAGE_LLMTEXTRESPONSE_H
#define MH_HAZARD_MESSAGE_LLMTEXTRESPONSE_H


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
struct LLMTextResponse_
{
  typedef LLMTextResponse_<ContainerAllocator> Type;

  LLMTextResponse_()
    : text()  {
    }
  LLMTextResponse_(const ContainerAllocator& _alloc)
    : text(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _text_type;
  _text_type text;





  typedef boost::shared_ptr< ::mh_hazard::LLMTextResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mh_hazard::LLMTextResponse_<ContainerAllocator> const> ConstPtr;

}; // struct LLMTextResponse_

typedef ::mh_hazard::LLMTextResponse_<std::allocator<void> > LLMTextResponse;

typedef boost::shared_ptr< ::mh_hazard::LLMTextResponse > LLMTextResponsePtr;
typedef boost::shared_ptr< ::mh_hazard::LLMTextResponse const> LLMTextResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mh_hazard::LLMTextResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mh_hazard::LLMTextResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::LLMTextResponse_<ContainerAllocator2> & rhs)
{
  return lhs.text == rhs.text;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mh_hazard::LLMTextResponse_<ContainerAllocator1> & lhs, const ::mh_hazard::LLMTextResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mh_hazard

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mh_hazard::LLMTextResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mh_hazard::LLMTextResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mh_hazard::LLMTextResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "74697ed3d931f6eede8bf3a8dfeca160";
  }

  static const char* value(const ::mh_hazard::LLMTextResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x74697ed3d931f6eeULL;
  static const uint64_t static_value2 = 0xde8bf3a8dfeca160ULL;
};

template<class ContainerAllocator>
struct DataType< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mh_hazard/LLMTextResponse";
  }

  static const char* value(const ::mh_hazard::LLMTextResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string text\n"
"\n"
;
  }

  static const char* value(const ::mh_hazard::LLMTextResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LLMTextResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mh_hazard::LLMTextResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mh_hazard::LLMTextResponse_<ContainerAllocator>& v)
  {
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MH_HAZARD_MESSAGE_LLMTEXTRESPONSE_H
