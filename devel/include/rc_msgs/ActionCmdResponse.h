// Generated by gencpp from file rc_msgs/ActionCmdResponse.msg
// DO NOT EDIT!


#ifndef RC_MSGS_MESSAGE_ACTIONCMDRESPONSE_H
#define RC_MSGS_MESSAGE_ACTIONCMDRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rc_msgs
{
template <class ContainerAllocator>
struct ActionCmdResponse_
{
  typedef ActionCmdResponse_<ContainerAllocator> Type;

  ActionCmdResponse_()
    : is_success(false)  {
    }
  ActionCmdResponse_(const ContainerAllocator& _alloc)
    : is_success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _is_success_type;
  _is_success_type is_success;





  typedef boost::shared_ptr< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ActionCmdResponse_

typedef ::rc_msgs::ActionCmdResponse_<std::allocator<void> > ActionCmdResponse;

typedef boost::shared_ptr< ::rc_msgs::ActionCmdResponse > ActionCmdResponsePtr;
typedef boost::shared_ptr< ::rc_msgs::ActionCmdResponse const> ActionCmdResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rc_msgs::ActionCmdResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rc_msgs::ActionCmdResponse_<ContainerAllocator1> & lhs, const ::rc_msgs::ActionCmdResponse_<ContainerAllocator2> & rhs)
{
  return lhs.is_success == rhs.is_success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rc_msgs::ActionCmdResponse_<ContainerAllocator1> & lhs, const ::rc_msgs::ActionCmdResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fa3e942e5cfe76a6a46f20a0780b2cf3";
  }

  static const char* value(const ::rc_msgs::ActionCmdResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfa3e942e5cfe76a6ULL;
  static const uint64_t static_value2 = 0xa46f20a0780b2cf3ULL;
};

template<class ContainerAllocator>
struct DataType< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rc_msgs/ActionCmdResponse";
  }

  static const char* value(const ::rc_msgs::ActionCmdResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_success\n"
"\n"
;
  }

  static const char* value(const ::rc_msgs::ActionCmdResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActionCmdResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rc_msgs::ActionCmdResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rc_msgs::ActionCmdResponse_<ContainerAllocator>& v)
  {
    s << indent << "is_success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RC_MSGS_MESSAGE_ACTIONCMDRESPONSE_H
