// Generated by gencpp from file quadrotor_msgs/ctrl.msg
// DO NOT EDIT!


#ifndef QUADROTOR_MSGS_MESSAGE_CTRL_H
#define QUADROTOR_MSGS_MESSAGE_CTRL_H


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
struct ctrl_
{
  typedef ctrl_<ContainerAllocator> Type;

  ctrl_()
    : header()
    , x_axis_ctrl(0.0)
    , y_axis_ctrl(0.0)
    , z_axis_ctrl(0.0)
    , vertical_ctrl(0.0)
    , x_feed_forward(0.0)
    , y_feed_forward(0.0)
    , flag(0)  {
    }
  ctrl_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , x_axis_ctrl(0.0)
    , y_axis_ctrl(0.0)
    , z_axis_ctrl(0.0)
    , vertical_ctrl(0.0)
    , x_feed_forward(0.0)
    , y_feed_forward(0.0)
    , flag(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _x_axis_ctrl_type;
  _x_axis_ctrl_type x_axis_ctrl;

   typedef float _y_axis_ctrl_type;
  _y_axis_ctrl_type y_axis_ctrl;

   typedef float _z_axis_ctrl_type;
  _z_axis_ctrl_type z_axis_ctrl;

   typedef float _vertical_ctrl_type;
  _vertical_ctrl_type vertical_ctrl;

   typedef float _x_feed_forward_type;
  _x_feed_forward_type x_feed_forward;

   typedef float _y_feed_forward_type;
  _y_feed_forward_type y_feed_forward;

   typedef uint8_t _flag_type;
  _flag_type flag;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(FLAG_TYPE_ATTI_VERT_POS)
  #undef FLAG_TYPE_ATTI_VERT_POS
#endif
#if defined(_WIN32) && defined(FLAG_TYPE_VELO_YAW_RATE)
  #undef FLAG_TYPE_VELO_YAW_RATE
#endif
#if defined(_WIN32) && defined(FLAG_TYPE_HORIZ_ANG_VERT_VEL_YAW_ANG)
  #undef FLAG_TYPE_HORIZ_ANG_VERT_VEL_YAW_ANG
#endif
#if defined(_WIN32) && defined(FLAG_VERTICAL_THRUST_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY)
  #undef FLAG_VERTICAL_THRUST_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY
#endif
#if defined(_WIN32) && defined(FLAG_VERTICAL_POSITION_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY)
  #undef FLAG_VERTICAL_POSITION_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY
#endif

  enum {
    FLAG_TYPE_ATTI_VERT_POS = 18u,
    FLAG_TYPE_VELO_YAW_RATE = 72u,
    FLAG_TYPE_HORIZ_ANG_VERT_VEL_YAW_ANG = 1u,
    FLAG_VERTICAL_THRUST_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY = 42u,
    FLAG_VERTICAL_POSITION_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY = 26u,
  };


  typedef boost::shared_ptr< ::quadrotor_msgs::ctrl_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::quadrotor_msgs::ctrl_<ContainerAllocator> const> ConstPtr;

}; // struct ctrl_

typedef ::quadrotor_msgs::ctrl_<std::allocator<void> > ctrl;

typedef boost::shared_ptr< ::quadrotor_msgs::ctrl > ctrlPtr;
typedef boost::shared_ptr< ::quadrotor_msgs::ctrl const> ctrlConstPtr;

// constants requiring out of line definition

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::quadrotor_msgs::ctrl_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::quadrotor_msgs::ctrl_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::quadrotor_msgs::ctrl_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::ctrl_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.x_axis_ctrl == rhs.x_axis_ctrl &&
    lhs.y_axis_ctrl == rhs.y_axis_ctrl &&
    lhs.z_axis_ctrl == rhs.z_axis_ctrl &&
    lhs.vertical_ctrl == rhs.vertical_ctrl &&
    lhs.x_feed_forward == rhs.x_feed_forward &&
    lhs.y_feed_forward == rhs.y_feed_forward &&
    lhs.flag == rhs.flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::quadrotor_msgs::ctrl_<ContainerAllocator1> & lhs, const ::quadrotor_msgs::ctrl_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace quadrotor_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::quadrotor_msgs::ctrl_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::quadrotor_msgs::ctrl_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::quadrotor_msgs::ctrl_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0f530cfce16387cbbfb41657d4d60cbc";
  }

  static const char* value(const ::quadrotor_msgs::ctrl_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0f530cfce16387cbULL;
  static const uint64_t static_value2 = 0xbfb41657d4d60cbcULL;
};

template<class ContainerAllocator>
struct DataType< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "quadrotor_msgs/ctrl";
  }

  static const char* value(const ::quadrotor_msgs::ctrl_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/Header header\n"
"float32 x_axis_ctrl\n"
"float32 y_axis_ctrl\n"
"float32 z_axis_ctrl\n"
"float32 vertical_ctrl\n"
"float32 x_feed_forward\n"
"float32 y_feed_forward\n"
"uint8   flag\n"
"uint8 FLAG_TYPE_ATTI_VERT_POS = 18   # atti control\n"
"uint8 FLAG_TYPE_VELO_YAW_RATE = 72   # velocity control\n"
"uint8 FLAG_TYPE_HORIZ_ANG_VERT_VEL_YAW_ANG = 1\n"
"uint8 FLAG_VERTICAL_THRUST_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY = 42\n"
"uint8 FLAG_VERTICAL_POSITION_HORIZONTAL_ANGLE_YAW_RATE_HORIZONTAL_BODY = 26\n"
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

  static const char* value(const ::quadrotor_msgs::ctrl_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.x_axis_ctrl);
      stream.next(m.y_axis_ctrl);
      stream.next(m.z_axis_ctrl);
      stream.next(m.vertical_ctrl);
      stream.next(m.x_feed_forward);
      stream.next(m.y_feed_forward);
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ctrl_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::quadrotor_msgs::ctrl_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::quadrotor_msgs::ctrl_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x_axis_ctrl: ";
    Printer<float>::stream(s, indent + "  ", v.x_axis_ctrl);
    s << indent << "y_axis_ctrl: ";
    Printer<float>::stream(s, indent + "  ", v.y_axis_ctrl);
    s << indent << "z_axis_ctrl: ";
    Printer<float>::stream(s, indent + "  ", v.z_axis_ctrl);
    s << indent << "vertical_ctrl: ";
    Printer<float>::stream(s, indent + "  ", v.vertical_ctrl);
    s << indent << "x_feed_forward: ";
    Printer<float>::stream(s, indent + "  ", v.x_feed_forward);
    s << indent << "y_feed_forward: ";
    Printer<float>::stream(s, indent + "  ", v.y_feed_forward);
    s << indent << "flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // QUADROTOR_MSGS_MESSAGE_CTRL_H
