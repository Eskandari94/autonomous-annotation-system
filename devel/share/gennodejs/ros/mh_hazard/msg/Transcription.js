// Auto-generated. Do not edit!

// (in-package mh_hazard.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Transcription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.transcription = null;
      this.audio_recieved = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('transcription')) {
        this.transcription = initObj.transcription
      }
      else {
        this.transcription = '';
      }
      if (initObj.hasOwnProperty('audio_recieved')) {
        this.audio_recieved = initObj.audio_recieved
      }
      else {
        this.audio_recieved = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Transcription
    // Serialize message field [transcription]
    bufferOffset = _serializer.string(obj.transcription, buffer, bufferOffset);
    // Serialize message field [audio_recieved]
    bufferOffset = _serializer.time(obj.audio_recieved, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.float32(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Transcription
    let len;
    let data = new Transcription(null);
    // Deserialize message field [transcription]
    data.transcription = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [audio_recieved]
    data.audio_recieved = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.transcription);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mh_hazard/Transcription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61ce3dbd8bc5a4089981ece3499c2e36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string transcription
    time audio_recieved
    float32 duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Transcription(null);
    if (msg.transcription !== undefined) {
      resolved.transcription = msg.transcription;
    }
    else {
      resolved.transcription = ''
    }

    if (msg.audio_recieved !== undefined) {
      resolved.audio_recieved = msg.audio_recieved;
    }
    else {
      resolved.audio_recieved = {secs: 0, nsecs: 0}
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

module.exports = Transcription;
