; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude Indicate-request.msg.html

(cl:defclass <Indicate-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:PointStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PointStamped)))
)

(cl:defclass Indicate-request (<Indicate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Indicate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Indicate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<Indicate-request> is deprecated: use mh_hazard-srv:Indicate-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Indicate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:point-val is deprecated.  Use mh_hazard-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Indicate-request>) ostream)
  "Serializes a message object of type '<Indicate-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Indicate-request>) istream)
  "Deserializes a message object of type '<Indicate-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Indicate-request>)))
  "Returns string type for a service object of type '<Indicate-request>"
  "mh_hazard/IndicateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Indicate-request)))
  "Returns string type for a service object of type 'Indicate-request"
  "mh_hazard/IndicateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Indicate-request>)))
  "Returns md5sum for a message object of type '<Indicate-request>"
  "1091700a12e6e9539ab6bad6f0ed20bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Indicate-request)))
  "Returns md5sum for a message object of type 'Indicate-request"
  "1091700a12e6e9539ab6bad6f0ed20bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Indicate-request>)))
  "Returns full string definition for message of type '<Indicate-request>"
  (cl:format cl:nil "geometry_msgs/PointStamped point~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Indicate-request)))
  "Returns full string definition for message of type 'Indicate-request"
  (cl:format cl:nil "geometry_msgs/PointStamped point~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Indicate-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Indicate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Indicate-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude Indicate-response.msg.html

(cl:defclass <Indicate-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Indicate-response (<Indicate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Indicate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Indicate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<Indicate-response> is deprecated: use mh_hazard-srv:Indicate-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Indicate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:result-val is deprecated.  Use mh_hazard-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Indicate-response>) ostream)
  "Serializes a message object of type '<Indicate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Indicate-response>) istream)
  "Deserializes a message object of type '<Indicate-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Indicate-response>)))
  "Returns string type for a service object of type '<Indicate-response>"
  "mh_hazard/IndicateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Indicate-response)))
  "Returns string type for a service object of type 'Indicate-response"
  "mh_hazard/IndicateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Indicate-response>)))
  "Returns md5sum for a message object of type '<Indicate-response>"
  "1091700a12e6e9539ab6bad6f0ed20bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Indicate-response)))
  "Returns md5sum for a message object of type 'Indicate-response"
  "1091700a12e6e9539ab6bad6f0ed20bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Indicate-response>)))
  "Returns full string definition for message of type '<Indicate-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Indicate-response)))
  "Returns full string definition for message of type 'Indicate-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Indicate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Indicate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Indicate-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Indicate)))
  'Indicate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Indicate)))
  'Indicate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Indicate)))
  "Returns string type for a service object of type '<Indicate>"
  "mh_hazard/Indicate")