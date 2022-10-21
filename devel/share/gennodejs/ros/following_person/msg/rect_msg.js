// Auto-generated. Do not edit!

// (in-package following_person.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class rect_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cx = null;
      this.cy = null;
      this.label = null;
    }
    else {
      if (initObj.hasOwnProperty('cx')) {
        this.cx = initObj.cx
      }
      else {
        this.cx = 0;
      }
      if (initObj.hasOwnProperty('cy')) {
        this.cy = initObj.cy
      }
      else {
        this.cy = 0;
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rect_msg
    // Serialize message field [cx]
    bufferOffset = _serializer.int64(obj.cx, buffer, bufferOffset);
    // Serialize message field [cy]
    bufferOffset = _serializer.int64(obj.cy, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.int64(obj.label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rect_msg
    let len;
    let data = new rect_msg(null);
    // Deserialize message field [cx]
    data.cx = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [cy]
    data.cy = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'following_person/rect_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '048e16c767ef5ede95b8620142d8975c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 cx
    int64 cy
    int64 label
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rect_msg(null);
    if (msg.cx !== undefined) {
      resolved.cx = msg.cx;
    }
    else {
      resolved.cx = 0
    }

    if (msg.cy !== undefined) {
      resolved.cy = msg.cy;
    }
    else {
      resolved.cy = 0
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = 0
    }

    return resolved;
    }
};

module.exports = rect_msg;
