; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude LLMImage-request.msg.html

(cl:defclass <LLMImage-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass LLMImage-request (<LLMImage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LLMImage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LLMImage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<LLMImage-request> is deprecated: use mh_hazard-srv:LLMImage-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <LLMImage-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:image-val is deprecated.  Use mh_hazard-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LLMImage-request>) ostream)
  "Serializes a message object of type '<LLMImage-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LLMImage-request>) istream)
  "Deserializes a message object of type '<LLMImage-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LLMImage-request>)))
  "Returns string type for a service object of type '<LLMImage-request>"
  "mh_hazard/LLMImageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLMImage-request)))
  "Returns string type for a service object of type 'LLMImage-request"
  "mh_hazard/LLMImageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LLMImage-request>)))
  "Returns md5sum for a message object of type '<LLMImage-request>"
  "9a1bc7ba89df6c5148b89de056b79bbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LLMImage-request)))
  "Returns md5sum for a message object of type 'LLMImage-request"
  "9a1bc7ba89df6c5148b89de056b79bbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LLMImage-request>)))
  "Returns full string definition for message of type '<LLMImage-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LLMImage-request)))
  "Returns full string definition for message of type 'LLMImage-request"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LLMImage-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LLMImage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LLMImage-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude LLMImage-response.msg.html

(cl:defclass <LLMImage-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LLMImage-response (<LLMImage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LLMImage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LLMImage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<LLMImage-response> is deprecated: use mh_hazard-srv:LLMImage-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LLMImage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:result-val is deprecated.  Use mh_hazard-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LLMImage-response>) ostream)
  "Serializes a message object of type '<LLMImage-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LLMImage-response>) istream)
  "Deserializes a message object of type '<LLMImage-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LLMImage-response>)))
  "Returns string type for a service object of type '<LLMImage-response>"
  "mh_hazard/LLMImageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLMImage-response)))
  "Returns string type for a service object of type 'LLMImage-response"
  "mh_hazard/LLMImageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LLMImage-response>)))
  "Returns md5sum for a message object of type '<LLMImage-response>"
  "9a1bc7ba89df6c5148b89de056b79bbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LLMImage-response)))
  "Returns md5sum for a message object of type 'LLMImage-response"
  "9a1bc7ba89df6c5148b89de056b79bbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LLMImage-response>)))
  "Returns full string definition for message of type '<LLMImage-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LLMImage-response)))
  "Returns full string definition for message of type 'LLMImage-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LLMImage-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LLMImage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LLMImage-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LLMImage)))
  'LLMImage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LLMImage)))
  'LLMImage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLMImage)))
  "Returns string type for a service object of type '<LLMImage>"
  "mh_hazard/LLMImage")