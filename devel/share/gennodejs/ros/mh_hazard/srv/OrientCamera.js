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

class OrientCameraRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OrientCameraRequest
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrientCameraRequest
    let len;
    let data = new OrientCameraRequest(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.text);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/OrientCameraRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '74697ed3d931f6eede8bf3a8dfeca160';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OrientCameraRequest(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

class OrientCameraResponse {
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
    // Serializes a message object of type OrientCameraResponse
    // Serialize message field [resp]
    bufferOffset = _serializer.bool(obj.resp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OrientCameraResponse
    let len;
    let data = new OrientCameraResponse(null);
    // Deserialize message field [resp]
    data.resp = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/OrientCameraResponse';
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
    const resolved = new OrientCameraResponse(null);
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
  Request: OrientCameraRequest,
  Response: OrientCameraResponse,
  md5sum() { return 'af7bedf12e890f6394e93b01ad2de69e'; },
  datatype() { return 'mh_hazard/OrientCamera'; }
};
