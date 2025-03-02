// Auto-generated. Do not edit!

// (in-package student_info_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StudentInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nameStudent = null;
      this.studentCode = null;
      this.GPA = null;
    }
    else {
      if (initObj.hasOwnProperty('nameStudent')) {
        this.nameStudent = initObj.nameStudent
      }
      else {
        this.nameStudent = '';
      }
      if (initObj.hasOwnProperty('studentCode')) {
        this.studentCode = initObj.studentCode
      }
      else {
        this.studentCode = 0;
      }
      if (initObj.hasOwnProperty('GPA')) {
        this.GPA = initObj.GPA
      }
      else {
        this.GPA = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StudentInfo
    // Serialize message field [nameStudent]
    bufferOffset = _serializer.string(obj.nameStudent, buffer, bufferOffset);
    // Serialize message field [studentCode]
    bufferOffset = _serializer.int32(obj.studentCode, buffer, bufferOffset);
    // Serialize message field [GPA]
    bufferOffset = _serializer.float32(obj.GPA, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StudentInfo
    let len;
    let data = new StudentInfo(null);
    // Deserialize message field [nameStudent]
    data.nameStudent = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [studentCode]
    data.studentCode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GPA]
    data.GPA = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.nameStudent);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'student_info_pkg/StudentInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1af1065b00224406cc47ede40cb331d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string nameStudent
    int32 studentCode
    float32 GPA
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StudentInfo(null);
    if (msg.nameStudent !== undefined) {
      resolved.nameStudent = msg.nameStudent;
    }
    else {
      resolved.nameStudent = ''
    }

    if (msg.studentCode !== undefined) {
      resolved.studentCode = msg.studentCode;
    }
    else {
      resolved.studentCode = 0
    }

    if (msg.GPA !== undefined) {
      resolved.GPA = msg.GPA;
    }
    else {
      resolved.GPA = 0.0
    }

    return resolved;
    }
};

module.exports = StudentInfo;
