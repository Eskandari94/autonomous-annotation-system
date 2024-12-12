; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude SAM-request.msg.html

(cl:defclass <SAM-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (target_x
    :reader target_x
    :initarg :target_x
    :type cl:integer
    :initform 0)
   (target_y
    :reader target_y
    :initarg :target_y
    :type cl:integer
    :initform 0))
)

(cl:defclass SAM-request (<SAM-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SAM-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SAM-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<SAM-request> is deprecated: use mh_hazard-srv:SAM-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <SAM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:image-val is deprecated.  Use mh_hazard-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'target_x-val :lambda-list '(m))
(cl:defmethod target_x-val ((m <SAM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:target_x-val is deprecated.  Use mh_hazard-srv:target_x instead.")
  (target_x m))

(cl:ensure-generic-function 'target_y-val :lambda-list '(m))
(cl:defmethod target_y-val ((m <SAM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:target_y-val is deprecated.  Use mh_hazard-srv:target_y instead.")
  (target_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SAM-request>) ostream)
  "Serializes a message object of type '<SAM-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let* ((signed (cl:slot-value msg 'target_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SAM-request>) istream)
  "Deserializes a message object of type '<SAM-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SAM-request>)))
  "Returns string type for a service object of type '<SAM-request>"
  "mh_hazard/SAMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SAM-request)))
  "Returns string type for a service object of type 'SAM-request"
  "mh_hazard/SAMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SAM-request>)))
  "Returns md5sum for a message object of type '<SAM-request>"
  "91a25104efa47a7b7732744e46f4e2e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SAM-request)))
  "Returns md5sum for a message object of type 'SAM-request"
  "91a25104efa47a7b7732744e46f4e2e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SAM-request>)))
  "Returns full string definition for message of type '<SAM-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%int32 target_x~%int32 target_y~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SAM-request)))
  "Returns full string definition for message of type 'SAM-request"
  (cl:format cl:nil "sensor_msgs/Image image~%int32 target_x~%int32 target_y~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SAM-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SAM-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SAM-request
    (cl:cons ':image (image msg))
    (cl:cons ':target_x (target_x msg))
    (cl:cons ':target_y (target_y msg))
))
;//! \htmlinclude SAM-response.msg.html

(cl:defclass <SAM-response> (roslisp-msg-protocol:ros-message)
  ((masks
    :reader masks
    :initarg :masks
    :type (cl:vector sensor_msgs-msg:Image)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Image :initial-element (cl:make-instance 'sensor_msgs-msg:Image))))
)

(cl:defclass SAM-response (<SAM-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SAM-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SAM-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<SAM-response> is deprecated: use mh_hazard-srv:SAM-response instead.")))

(cl:ensure-generic-function 'masks-val :lambda-list '(m))
(cl:defmethod masks-val ((m <SAM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:masks-val is deprecated.  Use mh_hazard-srv:masks instead.")
  (masks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SAM-response>) ostream)
  "Serializes a message object of type '<SAM-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'masks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'masks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SAM-response>) istream)
  "Deserializes a message object of type '<SAM-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'masks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'masks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Image))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SAM-response>)))
  "Returns string type for a service object of type '<SAM-response>"
  "mh_hazard/SAMResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SAM-response)))
  "Returns string type for a service object of type 'SAM-response"
  "mh_hazard/SAMResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SAM-response>)))
  "Returns md5sum for a message object of type '<SAM-response>"
  "91a25104efa47a7b7732744e46f4e2e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SAM-response)))
  "Returns md5sum for a message object of type 'SAM-response"
  "91a25104efa47a7b7732744e46f4e2e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SAM-response>)))
  "Returns full string definition for message of type '<SAM-response>"
  (cl:format cl:nil "sensor_msgs/Image[]  masks~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SAM-response)))
  "Returns full string definition for message of type 'SAM-response"
  (cl:format cl:nil "sensor_msgs/Image[]  masks~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SAM-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'masks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SAM-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SAM-response
    (cl:cons ':masks (masks msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SAM)))
  'SAM-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SAM)))
  'SAM-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SAM)))
  "Returns string type for a service object of type '<SAM>"
  "mh_hazard/SAM")