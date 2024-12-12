; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude MoveITPose-request.msg.html

(cl:defclass <MoveITPose-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass MoveITPose-request (<MoveITPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveITPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveITPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<MoveITPose-request> is deprecated: use mh_hazard-srv:MoveITPose-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveITPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:pose-val is deprecated.  Use mh_hazard-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveITPose-request>) ostream)
  "Serializes a message object of type '<MoveITPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveITPose-request>) istream)
  "Deserializes a message object of type '<MoveITPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveITPose-request>)))
  "Returns string type for a service object of type '<MoveITPose-request>"
  "mh_hazard/MoveITPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveITPose-request)))
  "Returns string type for a service object of type 'MoveITPose-request"
  "mh_hazard/MoveITPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveITPose-request>)))
  "Returns md5sum for a message object of type '<MoveITPose-request>"
  "1d4e3f01f751b136dce2bc699f1d7748")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveITPose-request)))
  "Returns md5sum for a message object of type 'MoveITPose-request"
  "1d4e3f01f751b136dce2bc699f1d7748")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveITPose-request>)))
  "Returns full string definition for message of type '<MoveITPose-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveITPose-request)))
  "Returns full string definition for message of type 'MoveITPose-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveITPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveITPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveITPose-request
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude MoveITPose-response.msg.html

(cl:defclass <MoveITPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveITPose-response (<MoveITPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveITPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveITPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<MoveITPose-response> is deprecated: use mh_hazard-srv:MoveITPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveITPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:result-val is deprecated.  Use mh_hazard-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveITPose-response>) ostream)
  "Serializes a message object of type '<MoveITPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveITPose-response>) istream)
  "Deserializes a message object of type '<MoveITPose-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveITPose-response>)))
  "Returns string type for a service object of type '<MoveITPose-response>"
  "mh_hazard/MoveITPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveITPose-response)))
  "Returns string type for a service object of type 'MoveITPose-response"
  "mh_hazard/MoveITPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveITPose-response>)))
  "Returns md5sum for a message object of type '<MoveITPose-response>"
  "1d4e3f01f751b136dce2bc699f1d7748")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveITPose-response)))
  "Returns md5sum for a message object of type 'MoveITPose-response"
  "1d4e3f01f751b136dce2bc699f1d7748")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveITPose-response>)))
  "Returns full string definition for message of type '<MoveITPose-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveITPose-response)))
  "Returns full string definition for message of type 'MoveITPose-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveITPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveITPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveITPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveITPose)))
  'MoveITPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveITPose)))
  'MoveITPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveITPose)))
  "Returns string type for a service object of type '<MoveITPose>"
  "mh_hazard/MoveITPose")