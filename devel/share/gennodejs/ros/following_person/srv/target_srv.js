// Auto-generated. Do not edit!

// (in-package following_person.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class target_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target_srvRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int64(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target_srvRequest
    let len;
    let data = new target_srvRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'following_person/target_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef7df1d34137d3879d089ad803388efa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new target_srvRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class target_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.new_id = null;
    }
    else {
      if (initObj.hasOwnProperty('new_id')) {
        this.new_id = initObj.new_id
      }
      else {
        this.new_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target_srvResponse
    // Serialize message field [new_id]
    bufferOffset = _serializer.int64(obj.new_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target_srvResponse
    let len;
    let data = new target_srvResponse(null);
    // Deserialize message field [new_id]
    data.new_id = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'following_person/target_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fc26df7bf098a3b1da13ac086e7ec27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 new_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new target_srvResponse(null);
    if (msg.new_id !== undefined) {
      resolved.new_id = msg.new_id;
    }
    else {
      resolved.new_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: target_srvRequest,
  Response: target_srvResponse,
  md5sum() { return 'a98d4a4909f050d0050807f31b37be61'; },
  datatype() { return 'following_person/target_srv'; }
};
