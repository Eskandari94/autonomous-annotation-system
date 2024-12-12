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

class MoveITNamedPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.named_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('named_pose')) {
        this.named_pose = initObj.named_pose
      }
      else {
        this.named_pose = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveITNamedPoseRequest
    // Serialize message field [named_pose]
    bufferOffset = _serializer.string(obj.named_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveITNamedPoseRequest
    let len;
    let data = new MoveITNamedPoseRequest(null);
    // Deserialize message field [named_pose]
    data.named_pose = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.named_pose);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/MoveITNamedPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1d8df4ffcc1d667593f4814a7cca462';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string named_pose
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveITNamedPoseRequest(null);
    if (msg.named_pose !== undefined) {
      resolved.named_pose = msg.named_pose;
    }
    else {
      resolved.named_pose = ''
    }

    return resolved;
    }
};

class MoveITNamedPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveITNamedPoseResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveITNamedPoseResponse
    let len;
    let data = new MoveITNamedPoseResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/MoveITNamedPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveITNamedPoseResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MoveITNamedPoseRequest,
  Response: MoveITNamedPoseResponse,
  md5sum() { return '4472470b43f5627ee4d8a019759b7942'; },
  datatype() { return 'mh_hazard/MoveITNamedPose'; }
};
