; Auto-generated. Do not edit!


(cl:in-package mh_hazard-msg)


;//! \htmlinclude Intrest.msg.html

(cl:defclass <Intrest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (intrest
    :reader intrest
    :initarg :intrest
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (positions
    :reader positions
    :initarg :positions
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Intrest (<Intrest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Intrest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Intrest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-msg:<Intrest> is deprecated: use mh_hazard-msg:Intrest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Intrest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:header-val is deprecated.  Use mh_hazard-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'intrest-val :lambda-list '(m))
(cl:defmethod intrest-val ((m <Intrest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:intrest-val is deprecated.  Use mh_hazard-msg:intrest instead.")
  (intrest m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <Intrest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:positions-val is deprecated.  Use mh_hazard-msg:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Intrest>) ostream)
  "Serializes a message object of type '<Intrest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intrest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'intrest))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Intrest>) istream)
  "Deserializes a message object of type '<Intrest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intrest) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intrest)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Intrest>)))
  "Returns string type for a message object of type '<Intrest>"
  "mh_hazard/Intrest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Intrest)))
  "Returns string type for a message object of type 'Intrest"
  "mh_hazard/Intrest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Intrest>)))
  "Returns md5sum for a message object of type '<Intrest>"
  "cbddb386d5a5e7010ff2de32d3a54a41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Intrest)))
  "Returns md5sum for a message object of type 'Intrest"
  "cbddb386d5a5e7010ff2de32d3a54a41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Intrest>)))
  "Returns full string definition for message of type '<Intrest>"
  (cl:format cl:nil "std_msgs/Header header~%float32[] intrest~%geometry_msgs/Point[] positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Intrest)))
  "Returns full string definition for message of type 'Intrest"
  (cl:format cl:nil "std_msgs/Header header~%float32[] intrest~%geometry_msgs/Point[] positions~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Intrest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intrest) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Intrest>))
  "Converts a ROS message object to a list"
  (cl:list 'Intrest
    (cl:cons ':header (header msg))
    (cl:cons ':intrest (intrest msg))
    (cl:cons ':positions (positions msg))
))
