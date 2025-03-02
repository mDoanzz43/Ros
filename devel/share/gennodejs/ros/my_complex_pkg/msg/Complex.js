// Auto-generated. Do not edit!

// (in-package my_complex_pkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Complex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.re = null;
      this.im = null;
    }
    else {
      if (initObj.hasOwnProperty('re')) {
        this.re = initObj.re
      }
      else {
        this.re = 0.0;
      }
      if (initObj.hasOwnProperty('im')) {
        this.im = initObj.im
      }
      else {
        this.im = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Complex
    // Serialize message field [re]
    bufferOffset = _serializer.float32(obj.re, buffer, bufferOffset);
    // Serialize message field [im]
    bufferOffset = _serializer.float32(obj.im, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Complex
    let len;
    let data = new Complex(null);
    // Deserialize message field [re]
    data.re = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [im]
    data.im = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'my_complex_pkg/Complex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '912f775e9b7f1ccab5a7496314643393';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 re
    float32 im
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Complex(null);
    if (msg.re !== undefined) {
      resolved.re = msg.re;
    }
    else {
      resolved.re = 0.0
    }

    if (msg.im !== undefined) {
      resolved.im = msg.im;
    }
    else {
      resolved.im = 0.0
    }

    return resolved;
    }
};

module.exports = Complex;
