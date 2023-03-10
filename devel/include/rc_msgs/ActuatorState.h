// Generated by gencpp from file rc_msgs/ActuatorState.msg
// DO NOT EDIT!


#ifndef RC_MSGS_MESSAGE_ACTUATORSTATE_H
#define RC_MSGS_MESSAGE_ACTUATORSTATE_H


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
struct ActuatorState_
{
  typedef ActuatorState_<ContainerAllocator> Type;

  ActuatorState_()
    : stamp()
    , name()
    , type()
    , bus()
    , id()
    , halted()
    , need_calibration()
    , calibrated()
    , calibration_reading()
    , position_raw()
    , velocity_raw()
    , temperature()
    , circle()
    , last_position_raw()
    , frequency()
    , position()
    , velocity()
    , effort()
    , commanded_effort()
    , executed_effort()
    , offset()  {
    }
  ActuatorState_(const ContainerAllocator& _alloc)
    : stamp(_alloc)
    , name(_alloc)
    , type(_alloc)
    , bus(_alloc)
    , id(_alloc)
    , halted(_alloc)
    , need_calibration(_alloc)
    , calibrated(_alloc)
    , calibration_reading(_alloc)
    , position_raw(_alloc)
    , velocity_raw(_alloc)
    , temperature(_alloc)
    , circle(_alloc)
    , last_position_raw(_alloc)
    , frequency(_alloc)
    , position(_alloc)
    , velocity(_alloc)
    , effort(_alloc)
    , commanded_effort(_alloc)
    , executed_effort(_alloc)
    , offset(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<ros::Time, typename ContainerAllocator::template rebind<ros::Time>::other >  _stamp_type;
  _stamp_type stamp;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _name_type;
  _name_type name;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _type_type;
  _type_type type;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _bus_type;
  _bus_type bus;

   typedef std::vector<int32_t, typename ContainerAllocator::template rebind<int32_t>::other >  _id_type;
  _id_type id;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _halted_type;
  _halted_type halted;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _need_calibration_type;
  _need_calibration_type need_calibration;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _calibrated_type;
  _calibrated_type calibrated;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _calibration_reading_type;
  _calibration_reading_type calibration_reading;

   typedef std::vector<uint16_t, typename ContainerAllocator::template rebind<uint16_t>::other >  _position_raw_type;
  _position_raw_type position_raw;

   typedef std::vector<int16_t, typename ContainerAllocator::template rebind<int16_t>::other >  _velocity_raw_type;
  _velocity_raw_type velocity_raw;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _temperature_type;
  _temperature_type temperature;

   typedef std::vector<int64_t, typename ContainerAllocator::template rebind<int64_t>::other >  _circle_type;
  _circle_type circle;

   typedef std::vector<uint16_t, typename ContainerAllocator::template rebind<uint16_t>::other >  _last_position_raw_type;
  _last_position_raw_type last_position_raw;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _frequency_type;
  _frequency_type frequency;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _position_type;
  _position_type position;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _velocity_type;
  _velocity_type velocity;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _effort_type;
  _effort_type effort;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _commanded_effort_type;
  _commanded_effort_type commanded_effort;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _executed_effort_type;
  _executed_effort_type executed_effort;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _offset_type;
  _offset_type offset;





  typedef boost::shared_ptr< ::rc_msgs::ActuatorState_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rc_msgs::ActuatorState_<ContainerAllocator> const> ConstPtr;

}; // struct ActuatorState_

typedef ::rc_msgs::ActuatorState_<std::allocator<void> > ActuatorState;

typedef boost::shared_ptr< ::rc_msgs::ActuatorState > ActuatorStatePtr;
typedef boost::shared_ptr< ::rc_msgs::ActuatorState const> ActuatorStateConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rc_msgs::ActuatorState_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rc_msgs::ActuatorState_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rc_msgs::ActuatorState_<ContainerAllocator1> & lhs, const ::rc_msgs::ActuatorState_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.name == rhs.name &&
    lhs.type == rhs.type &&
    lhs.bus == rhs.bus &&
    lhs.id == rhs.id &&
    lhs.halted == rhs.halted &&
    lhs.need_calibration == rhs.need_calibration &&
    lhs.calibrated == rhs.calibrated &&
    lhs.calibration_reading == rhs.calibration_reading &&
    lhs.position_raw == rhs.position_raw &&
    lhs.velocity_raw == rhs.velocity_raw &&
    lhs.temperature == rhs.temperature &&
    lhs.circle == rhs.circle &&
    lhs.last_position_raw == rhs.last_position_raw &&
    lhs.frequency == rhs.frequency &&
    lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity &&
    lhs.effort == rhs.effort &&
    lhs.commanded_effort == rhs.commanded_effort &&
    lhs.executed_effort == rhs.executed_effort &&
    lhs.offset == rhs.offset;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rc_msgs::ActuatorState_<ContainerAllocator1> & lhs, const ::rc_msgs::ActuatorState_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rc_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::ActuatorState_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rc_msgs::ActuatorState_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::ActuatorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rc_msgs::ActuatorState_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::ActuatorState_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rc_msgs::ActuatorState_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rc_msgs::ActuatorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f82106ab641e97268a9e8e29a4b47321";
  }

  static const char* value(const ::rc_msgs::ActuatorState_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf82106ab641e9726ULL;
  static const uint64_t static_value2 = 0x8a9e8e29a4b47321ULL;
};

template<class ContainerAllocator>
struct DataType< ::rc_msgs::ActuatorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rc_msgs/ActuatorState";
  }

  static const char* value(const ::rc_msgs::ActuatorState_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rc_msgs::ActuatorState_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains the state of an actuator\n"
"# An actuator contains a motor and an encoder, and is connected\n"
"# to a joint by a transmission\n"
"\n"
"# The time at which this actuator state was measured\n"
"time[] stamp\n"
"\n"
"# The name of the actuator\n"
"string[] name\n"
"\n"
"# The type of the actuator\n"
"string[] type\n"
"\n"
"# The CAN bus\n"
"string[] bus\n"
"\n"
"# The CAN id\n"
"int32[] id\n"
"\n"
"# Indicates if the motor is halted. A motor can be halted because of a voltage or temperature problem\n"
"bool[] halted\n"
"\n"
"# Need calibration\n"
"bool[] need_calibration\n"
"\n"
"# Indicates if the motor is calibrated. A motor will be not calibrated when recover from halted\n"
"bool[] calibrated\n"
"\n"
"# The value of the calibration reading: low (false) or high (true)\n"
"bool[] calibration_reading\n"
"\n"
"# The encoder raw position, represented by the number of encoder ticks\n"
"uint16[] position_raw\n"
"\n"
"# The encoder velocity, represented by rpm\n"
"int16[] velocity_raw\n"
"\n"
"# The temperature of the motor, represented by c1elsius\n"
"uint8[] temperature\n"
"\n"
"# The circle of absolute encoder\n"
"int64[]  circle\n"
"\n"
"# The last encoder raw position, represented by the number of encoder ticks\n"
"uint16[] last_position_raw\n"
"\n"
"float64[]  frequency\n"
"\n"
"# The encoder position in radians\n"
"float64[] position\n"
"\n"
"# The encoder velocity in radians per second\n"
"float64[] velocity\n"
"\n"
"# The last effort that was measured by the actuator\n"
"float64[] effort\n"
"\n"
"# The last effort command that was requested without limit\n"
"float64[] commanded_effort\n"
"\n"
"# The last effort command that was requested with limit\n"
"float64[] executed_effort\n"
"\n"
"# The angular offset (in radians) that is added to the encoder reading,\n"
"# to get to the position of the actuator. This number is computed when the referece\n"
"# sensor is triggered during the calibration phase\n"
"float64[] offset\n"
;
  }

  static const char* value(const ::rc_msgs::ActuatorState_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rc_msgs::ActuatorState_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.name);
      stream.next(m.type);
      stream.next(m.bus);
      stream.next(m.id);
      stream.next(m.halted);
      stream.next(m.need_calibration);
      stream.next(m.calibrated);
      stream.next(m.calibration_reading);
      stream.next(m.position_raw);
      stream.next(m.velocity_raw);
      stream.next(m.temperature);
      stream.next(m.circle);
      stream.next(m.last_position_raw);
      stream.next(m.frequency);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.effort);
      stream.next(m.commanded_effort);
      stream.next(m.executed_effort);
      stream.next(m.offset);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ActuatorState_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rc_msgs::ActuatorState_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rc_msgs::ActuatorState_<ContainerAllocator>& v)
  {
    s << indent << "stamp[]" << std::endl;
    for (size_t i = 0; i < v.stamp.size(); ++i)
    {
      s << indent << "  stamp[" << i << "]: ";
      Printer<ros::Time>::stream(s, indent + "  ", v.stamp[i]);
    }
    s << indent << "name[]" << std::endl;
    for (size_t i = 0; i < v.name.size(); ++i)
    {
      s << indent << "  name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name[i]);
    }
    s << indent << "type[]" << std::endl;
    for (size_t i = 0; i < v.type.size(); ++i)
    {
      s << indent << "  type[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.type[i]);
    }
    s << indent << "bus[]" << std::endl;
    for (size_t i = 0; i < v.bus.size(); ++i)
    {
      s << indent << "  bus[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.bus[i]);
    }
    s << indent << "id[]" << std::endl;
    for (size_t i = 0; i < v.id.size(); ++i)
    {
      s << indent << "  id[" << i << "]: ";
      Printer<int32_t>::stream(s, indent + "  ", v.id[i]);
    }
    s << indent << "halted[]" << std::endl;
    for (size_t i = 0; i < v.halted.size(); ++i)
    {
      s << indent << "  halted[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.halted[i]);
    }
    s << indent << "need_calibration[]" << std::endl;
    for (size_t i = 0; i < v.need_calibration.size(); ++i)
    {
      s << indent << "  need_calibration[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.need_calibration[i]);
    }
    s << indent << "calibrated[]" << std::endl;
    for (size_t i = 0; i < v.calibrated.size(); ++i)
    {
      s << indent << "  calibrated[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.calibrated[i]);
    }
    s << indent << "calibration_reading[]" << std::endl;
    for (size_t i = 0; i < v.calibration_reading.size(); ++i)
    {
      s << indent << "  calibration_reading[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.calibration_reading[i]);
    }
    s << indent << "position_raw[]" << std::endl;
    for (size_t i = 0; i < v.position_raw.size(); ++i)
    {
      s << indent << "  position_raw[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.position_raw[i]);
    }
    s << indent << "velocity_raw[]" << std::endl;
    for (size_t i = 0; i < v.velocity_raw.size(); ++i)
    {
      s << indent << "  velocity_raw[" << i << "]: ";
      Printer<int16_t>::stream(s, indent + "  ", v.velocity_raw[i]);
    }
    s << indent << "temperature[]" << std::endl;
    for (size_t i = 0; i < v.temperature.size(); ++i)
    {
      s << indent << "  temperature[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.temperature[i]);
    }
    s << indent << "circle[]" << std::endl;
    for (size_t i = 0; i < v.circle.size(); ++i)
    {
      s << indent << "  circle[" << i << "]: ";
      Printer<int64_t>::stream(s, indent + "  ", v.circle[i]);
    }
    s << indent << "last_position_raw[]" << std::endl;
    for (size_t i = 0; i < v.last_position_raw.size(); ++i)
    {
      s << indent << "  last_position_raw[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.last_position_raw[i]);
    }
    s << indent << "frequency[]" << std::endl;
    for (size_t i = 0; i < v.frequency.size(); ++i)
    {
      s << indent << "  frequency[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.frequency[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "effort[]" << std::endl;
    for (size_t i = 0; i < v.effort.size(); ++i)
    {
      s << indent << "  effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.effort[i]);
    }
    s << indent << "commanded_effort[]" << std::endl;
    for (size_t i = 0; i < v.commanded_effort.size(); ++i)
    {
      s << indent << "  commanded_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.commanded_effort[i]);
    }
    s << indent << "executed_effort[]" << std::endl;
    for (size_t i = 0; i < v.executed_effort.size(); ++i)
    {
      s << indent << "  executed_effort[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.executed_effort[i]);
    }
    s << indent << "offset[]" << std::endl;
    for (size_t i = 0; i < v.offset.size(); ++i)
    {
      s << indent << "  offset[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.offset[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RC_MSGS_MESSAGE_ACTUATORSTATE_H
