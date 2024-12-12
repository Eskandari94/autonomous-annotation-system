// Auto-generated. Do not edit!

// (in-package mh_hazard.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CLIPRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.images = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('images')) {
        this.images = initObj.images
      }
      else {
        this.images = [];
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CLIPRequest
    // Serialize message field [images]
    // Serialize the length for message field [images]
    bufferOffset = _serializer.uint32(obj.images.length, buffer, bufferOffset);
    obj.images.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Image.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [text]
    bufferOffset = _arraySerializer.string(obj.text, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CLIPRequest
    let len;
    let data = new CLIPRequest(null);
    // Deserialize message field [images]
    // Deserialize array length for message field [images]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.images = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.images[i] = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [text]
    data.text = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.images.forEach((val) => {
      length += sensor_msgs.msg.Image.getMessageSize(val);
    });
    object.text.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/CLIPRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '425dd409481b97841948e5ddfafde695';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image[] images
    string[] text
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CLIPRequest(null);
    if (msg.images !== undefined) {
      resolved.images = new Array(msg.images.length);
      for (let i = 0; i < resolved.images.length; ++i) {
        resolved.images[i] = sensor_msgs.msg.Image.Resolve(msg.images[i]);
      }
    }
    else {
      resolved.images = []
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = []
    }

    return resolved;
    }
};

class CLIPResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.probs = null;
    }
    else {
      if (initObj.hasOwnProperty('probs')) {
        this.probs = initObj.probs
      }
      else {
        this.probs = new std_msgs.msg.Float32MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CLIPResponse
    // Serialize message field [probs]
    bufferOffset = std_msgs.msg.Float32MultiArray.serialize(obj.probs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CLIPResponse
    let len;
    let data = new CLIPResponse(null);
    // Deserialize message field [probs]
    data.probs = std_msgs.msg.Float32MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float32MultiArray.getMessageSize(object.probs);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mh_hazard/CLIPResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae2de7dfc35a6d61e0b763361a63719c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Float32MultiArray probs
    
    
    ================================================================================
    MSG: std_msgs/Float32MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    float32[]         data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CLIPResponse(null);
    if (msg.probs !== undefined) {
      resolved.probs = std_msgs.msg.Float32MultiArray.Resolve(msg.probs)
    }
    else {
      resolved.probs = new std_msgs.msg.Float32MultiArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: CLIPRequest,
  Response: CLIPResponse,
  md5sum() { return '58e84db9bec5be131d8cf3473f760ab1'; },
  datatype() { return 'mh_hazard/CLIP'; }
};
