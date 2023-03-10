// Generated by gencpp from file rc_msgs/LpData.msg
// DO NOT EDIT!


#ifndef RC_MSGS_MESSAGE_LPDATA_H
#define RC_MSGS_MESSAGE_LPDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace rc_msgs
{
template <class ContainerAllocator>
struct LpData_
{
  typedef LpData_<ContainerAllocator> Type;

  LpData_()
    : header()
    , real(0.0)
    , filtered(0.0)  {
    }
  LpData_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , real(0.0)
    , filtered(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _real_type;
  _real_type real;

   typedef double _filtered_type;
  _filtered_type filtered;





  typedef boost::shared_ptr< ::rc_msgs::LpData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rc_msgs::LpData_<ContainerAllocator> const> ConstPtr;

}; // struct LpData_

typedef ::rc_msgs::LpData_<std::allocator<void> > LpData;

typedef boost::shared_ptr< ::rc_msgs::LpData > LpDataPtr;
typedef boost::shared_ptr< ::rc_msgs::LpData const> LpDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rc_msgs::LpData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rc_msgs::LpData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rc_msgs::LpData_<ContainerAllocator1> & lhs, const ::rc_msgs::LpData_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.real == rhs.real &&
    lhs.filtered == rhs.filtered;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rc_msgs::LpData_<ContainerAllocator1> & lhs, const ::rc_msgs::LpData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::LpData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::LpData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::LpData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::LpData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::LpData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::LpData_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rc_msgs::LpData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "15bf1676ae28702eed3b9b7f8b20c577";
  }

  static const char* value(const ::rc_msgs::LpData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x15bf1676ae28702eULL;
  static const uint64_t static_value2 = 0xed3b9b7f8b20c577ULL;
};

template<class ContainerAllocator>
struct DataType< ::rc_msgs::LpData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rc_msgs/LpData";
  }

  static const char* value(const ::rc_msgs::LpData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rc_msgs::LpData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float64 real\n"
"float64 filtered\n"
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
;
  }

  static const char* value(const ::rc_msgs::LpData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rc_msgs::LpData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.real);
      stream.next(m.filtered);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LpData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rc_msgs::LpData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rc_msgs::LpData_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "real: ";
    Printer<double>::stream(s, indent + "  ", v.real);
    s << indent << "filtered: ";
    Printer<double>::stream(s, indent + "  ", v.filtered);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RC_MSGS_MESSAGE_LPDATA_H
