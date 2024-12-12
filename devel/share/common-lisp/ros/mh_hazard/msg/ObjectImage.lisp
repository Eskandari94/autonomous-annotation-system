; Auto-generated. Do not edit!


(cl:in-package mh_hazard-msg)


;//! \htmlinclude ObjectImage.msg.html

(cl:defclass <ObjectImage> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (object_positions
    :reader object_positions
    :initarg :object_positions
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass ObjectImage (<ObjectImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-msg:<ObjectImage> is deprecated: use mh_hazard-msg:ObjectImage instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:header-val is deprecated.  Use mh_hazard-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ObjectImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:image-val is deprecated.  Use mh_hazard-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'object_positions-val :lambda-list '(m))
(cl:defmethod object_positions-val ((m <ObjectImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:object_positions-val is deprecated.  Use mh_hazard-msg:object_positions instead.")
  (object_positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectImage>) ostream)
  "Serializes a message object of type '<ObjectImage>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectImage>) istream)
  "Deserializes a message object of type '<ObjectImage>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectImage>)))
  "Returns string type for a message object of type '<ObjectImage>"
  "mh_hazard/ObjectImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectImage)))
  "Returns string type for a message object of type 'ObjectImage"
  "mh_hazard/ObjectImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectImage>)))
  "Returns md5sum for a message object of type '<ObjectImage>"
  "534258c07e4a1a1800266e633173bfd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectImage)))
  "Returns md5sum for a message object of type 'ObjectImage"
  "534258c07e4a1a1800266e633173bfd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectImage>)))
  "Returns full string definition for message of type '<ObjectImage>"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/Image image~%geometry_msgs/Point[] object_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectImage)))
  "Returns full string definition for message of type 'ObjectImage"
  (cl:format cl:nil "std_msgs/Header header~%sensor_msgs/Image image~%geometry_msgs/Point[] object_positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectImage>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectImage>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectImage
    (cl:cons ':header (header msg))
    (cl:cons ':image (image msg))
    (cl:cons ':object_positions (object_positions msg))
))
