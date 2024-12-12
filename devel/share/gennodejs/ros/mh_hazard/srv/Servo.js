// Auto-generated. Do not edit!

// (in-package mh_hazard.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ServoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoRequest
    let len;
    let data = new ServoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/ServoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoRequest(null);
    return resolved;
    }
};

class ServoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resp = null;
    }
    else {
      if (initObj.hasOwnProperty('resp')) {
        this.resp = initObj.resp
      }
      else {
        this.resp = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoResponse
    // Serialize message field [resp]
    bufferOffset = _serializer.bool(obj.resp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoResponse
    let len;
    let data = new ServoResponse(null);
    // Deserialize message field [resp]
    data.resp = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/ServoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3a98d806e1c4fee01a17d597e27ea8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool resp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoResponse(null);
    if (msg.resp !== undefined) {
      resolved.resp = msg.resp;
    }
    else {
      resolved.resp = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ServoRequest,
  Response: ServoResponse,
  md5sum() { return 'e3a98d806e1c4fee01a17d597e27ea8e'; },
  datatype() { return 'mh_hazard/Servo'; }
};
