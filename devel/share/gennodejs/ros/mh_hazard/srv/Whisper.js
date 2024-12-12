// Auto-generated. Do not edit!

// (in-package mh_hazard.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class WhisperRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.string = null;
      this.context = null;
    }
    else {
      if (initObj.hasOwnProperty('string')) {
        this.string = initObj.string
      }
      else {
        this.string = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('context')) {
        this.context = initObj.context
      }
      else {
        this.context = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhisperRequest
    // Serialize message field [string]
    bufferOffset = std_msgs.msg.String.serialize(obj.string, buffer, bufferOffset);
    // Serialize message field [context]
    bufferOffset = std_msgs.msg.String.serialize(obj.context, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhisperRequest
    let len;
    let data = new WhisperRequest(null);
    // Deserialize message field [string]
    data.string = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [context]
    data.context = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.string);
    length += std_msgs.msg.String.getMessageSize(object.context);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/WhisperRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56ff655a55063e10ba79099d30d2e47c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String string
    std_msgs/String context
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhisperRequest(null);
    if (msg.string !== undefined) {
      resolved.string = std_msgs.msg.String.Resolve(msg.string)
    }
    else {
      resolved.string = new std_msgs.msg.String()
    }

    if (msg.context !== undefined) {
      resolved.context = std_msgs.msg.String.Resolve(msg.context)
    }
    else {
      resolved.context = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class WhisperResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transcription = null;
    }
    else {
      if (initObj.hasOwnProperty('transcription')) {
        this.transcription = initObj.transcription
      }
      else {
        this.transcription = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WhisperResponse
    // Serialize message field [transcription]
    bufferOffset = _serializer.string(obj.transcription, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WhisperResponse
    let len;
    let data = new WhisperResponse(null);
    // Deserialize message field [transcription]
    data.transcription = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.transcription);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/WhisperResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd87ceb831c5fd1ff2239ff1c5b3dfc96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string transcription
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WhisperResponse(null);
    if (msg.transcription !== undefined) {
      resolved.transcription = msg.transcription;
    }
    else {
      resolved.transcription = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: WhisperRequest,
  Response: WhisperResponse,
  md5sum() { return '43e291543d576a3f606f1f97c2f7e821'; },
  datatype() { return 'mh_hazard/Whisper'; }
};
