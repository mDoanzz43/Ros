// Generated by gencpp from file student_info_pkg/StudentInfo.msg
// DO NOT EDIT!


#ifndef STUDENT_INFO_PKG_MESSAGE_STUDENTINFO_H
#define STUDENT_INFO_PKG_MESSAGE_STUDENTINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace student_info_pkg
{
template <class ContainerAllocator>
struct StudentInfo_
{
  typedef StudentInfo_<ContainerAllocator> Type;

  StudentInfo_()
    : nameStudent()
    , studentCode(0)
    , GPA(0.0)  {
    }
  StudentInfo_(const ContainerAllocator& _alloc)
    : nameStudent(_alloc)
    , studentCode(0)
    , GPA(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _nameStudent_type;
  _nameStudent_type nameStudent;

   typedef int32_t _studentCode_type;
  _studentCode_type studentCode;

   typedef float _GPA_type;
  _GPA_type GPA;





  typedef boost::shared_ptr< ::student_info_pkg::StudentInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::student_info_pkg::StudentInfo_<ContainerAllocator> const> ConstPtr;

}; // struct StudentInfo_

typedef ::student_info_pkg::StudentInfo_<std::allocator<void> > StudentInfo;

typedef boost::shared_ptr< ::student_info_pkg::StudentInfo > StudentInfoPtr;
typedef boost::shared_ptr< ::student_info_pkg::StudentInfo const> StudentInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::student_info_pkg::StudentInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::student_info_pkg::StudentInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::student_info_pkg::StudentInfo_<ContainerAllocator1> & lhs, const ::student_info_pkg::StudentInfo_<ContainerAllocator2> & rhs)
{
  return lhs.nameStudent == rhs.nameStudent &&
    lhs.studentCode == rhs.studentCode &&
    lhs.GPA == rhs.GPA;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::student_info_pkg::StudentInfo_<ContainerAllocator1> & lhs, const ::student_info_pkg::StudentInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace student_info_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::student_info_pkg::StudentInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::student_info_pkg::StudentInfo_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::student_info_pkg::StudentInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1af1065b00224406cc47ede40cb331d8";
  }

  static const char* value(const ::student_info_pkg::StudentInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1af1065b00224406ULL;
  static const uint64_t static_value2 = 0xcc47ede40cb331d8ULL;
};

template<class ContainerAllocator>
struct DataType< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "student_info_pkg/StudentInfo";
  }

  static const char* value(const ::student_info_pkg::StudentInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string nameStudent\n"
"int32 studentCode\n"
"float32 GPA\n"
;
  }

  static const char* value(const ::student_info_pkg::StudentInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.nameStudent);
      stream.next(m.studentCode);
      stream.next(m.GPA);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct StudentInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::student_info_pkg::StudentInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::student_info_pkg::StudentInfo_<ContainerAllocator>& v)
  {
    s << indent << "nameStudent: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.nameStudent);
    s << indent << "studentCode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.studentCode);
    s << indent << "GPA: ";
    Printer<float>::stream(s, indent + "  ", v.GPA);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STUDENT_INFO_PKG_MESSAGE_STUDENTINFO_H
