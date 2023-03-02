// Generated by gencpp from file quadrotor_msgs/aec.msg
// DO NOT EDIT!


#ifndef QUADROTOR_MSGS_MESSAGE_AEC_H
#define QUADROTOR_MSGS_MESSAGE_AEC_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace quadrotor_msgs
{
template <class ContainerAllocator>
struct aec_
{
  typedef aec_<ContainerAllocator> Type;

  aec_()
    : header()
    , sensor_pos(0)
    , shutter_val(0)
    , dgain_val(0)
    , dgain_a(0)
    , again_val(0)
    , again_a(0)  {
    }
  aec_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , sensor_pos(0)
    , shutter_val(0)
    , dgain_val(0)
    , dgain_a(0)
    , again_val(0)
    , again_a(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int16_t _sensor_pos_type;
  _sensor_pos_type sensor_pos;

   typedef int16_t _shutter_val_type;
  _shutter_val_type shutter_val;

   typedef int16_t _dgain_val_type;
  _dgain_val_type dgain_val;

   typedef int16_t _dgain_a_type;
  _dgain_a_type dgain_a;

   typedef int16_t _again_val_type;
  _again_val_type again_val;

   typedef int16_t _again_a_type;
  _again_a_type again_a;





  typedef boost::shared_ptr< ::quadrotor_msgs::aec_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quadrotor_msgs::aec_<ContainerAllocator> const> ConstPtr;

}; // struct aec_

typedef ::quadrotor_msgs::aec_<std::allocator<void> > aec;

typedef boost::shared_ptr< ::quadrotor_msgs::aec > aecPtr;
typedef boost::shared_ptr< ::quadrotor_msgs::aec const> aecConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quadrotor_msgs::aec_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quadrotor_msgs::aec_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::quadrotor_msgs::aec_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::aec_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.sensor_pos == rhs.sensor_pos &&
    lhs.shutter_val == rhs.shutter_val &&
    lhs.dgain_val == rhs.dgain_val &&
    lhs.dgain_a == rhs.dgain_a &&
    lhs.again_val == rhs.again_val &&
    lhs.again_a == rhs.again_a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::quadrotor_msgs::aec_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::aec_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace quadrotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::aec_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::aec_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::aec_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::aec_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::aec_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::aec_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quadrotor_msgs::aec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bb5f8b724b61c9413d80e9b092077813";
  }

  static const char* value(const ::quadrotor_msgs::aec_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbb5f8b724b61c941ULL;
  static const uint64_t static_value2 = 0x3d80e9b092077813ULL;
};

template<class ContainerAllocator>
struct DataType< ::quadrotor_msgs::aec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quadrotor_msgs/aec";
  }

  static const char* value(const ::quadrotor_msgs::aec_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quadrotor_msgs::aec_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"int16 sensor_pos\n"
"int16 shutter_val\n"
"int16 dgain_val\n"
"int16 dgain_a\n"
"int16 again_val\n"
"int16 again_a\n"
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

  static const char* value(const ::quadrotor_msgs::aec_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quadrotor_msgs::aec_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.sensor_pos);
      stream.next(m.shutter_val);
      stream.next(m.dgain_val);
      stream.next(m.dgain_a);
      stream.next(m.again_val);
      stream.next(m.again_a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct aec_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quadrotor_msgs::aec_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quadrotor_msgs::aec_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "sensor_pos: ";
    Printer<int16_t>::stream(s, indent + "  ", v.sensor_pos);
    s << indent << "shutter_val: ";
    Printer<int16_t>::stream(s, indent + "  ", v.shutter_val);
    s << indent << "dgain_val: ";
    Printer<int16_t>::stream(s, indent + "  ", v.dgain_val);
    s << indent << "dgain_a: ";
    Printer<int16_t>::stream(s, indent + "  ", v.dgain_a);
    s << indent << "again_val: ";
    Printer<int16_t>::stream(s, indent + "  ", v.again_val);
    s << indent << "again_a: ";
    Printer<int16_t>::stream(s, indent + "  ", v.again_a);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUADROTOR_MSGS_MESSAGE_AEC_H
