// Generated by gencpp from file request/jokeRequest.msg
// DO NOT EDIT!


#ifndef REQUEST_MESSAGE_JOKEREQUEST_H
#define REQUEST_MESSAGE_JOKEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace request
{
template <class ContainerAllocator>
struct jokeRequest_
{
  typedef jokeRequest_<ContainerAllocator> Type;

  jokeRequest_()
    : joke_type()  {
    }
  jokeRequest_(const ContainerAllocator& _alloc)
    : joke_type(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _joke_type_type;
  _joke_type_type joke_type;





  typedef boost::shared_ptr< ::request::jokeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::request::jokeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct jokeRequest_

typedef ::request::jokeRequest_<std::allocator<void> > jokeRequest;

typedef boost::shared_ptr< ::request::jokeRequest > jokeRequestPtr;
typedef boost::shared_ptr< ::request::jokeRequest const> jokeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::request::jokeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::request::jokeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace request

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::request::jokeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::request::jokeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::request::jokeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::request::jokeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::request::jokeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::request::jokeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::request::jokeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c026122424ce2b00a3d6d2a9e5f3a84";
  }

  static const char* value(const ::request::jokeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c026122424ce2b0ULL;
  static const uint64_t static_value2 = 0x0a3d6d2a9e5f3a84ULL;
};

template<class ContainerAllocator>
struct DataType< ::request::jokeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "request/jokeRequest";
  }

  static const char* value(const ::request::jokeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::request::jokeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string joke_type\n"
;
  }

  static const char* value(const ::request::jokeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::request::jokeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joke_type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct jokeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::request::jokeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::request::jokeRequest_<ContainerAllocator>& v)
  {
    s << indent << "joke_type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.joke_type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // REQUEST_MESSAGE_JOKEREQUEST_H
