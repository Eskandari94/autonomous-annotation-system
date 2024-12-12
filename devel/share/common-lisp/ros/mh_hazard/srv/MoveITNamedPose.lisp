; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude MoveITNamedPose-request.msg.html

(cl:defclass <MoveITNamedPose-request> (roslisp-msg-protocol:ros-message)
  ((named_pose
    :reader named_pose
    :initarg :named_pose
    :type cl:string
    :initform ""))
)

(cl:defclass MoveITNamedPose-request (<MoveITNamedPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveITNamedPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveITNamedPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<MoveITNamedPose-request> is deprecated: use mh_hazard-srv:MoveITNamedPose-request instead.")))

(cl:ensure-generic-function 'named_pose-val :lambda-list '(m))
(cl:defmethod named_pose-val ((m <MoveITNamedPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:named_pose-val is deprecated.  Use mh_hazard-srv:named_pose instead.")
  (named_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveITNamedPose-request>) ostream)
  "Serializes a message object of type '<MoveITNamedPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'named_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'named_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveITNamedPose-request>) istream)
  "Deserializes a message object of type '<MoveITNamedPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'named_pose) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'named_pose) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveITNamedPose-request>)))
  "Returns string type for a service object of type '<MoveITNamedPose-request>"
  "mh_hazard/MoveITNamedPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveITNamedPose-request)))
  "Returns string type for a service object of type 'MoveITNamedPose-request"
  "mh_hazard/MoveITNamedPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveITNamedPose-request>)))
  "Returns md5sum for a message object of type '<MoveITNamedPose-request>"
  "4472470b43f5627ee4d8a019759b7942")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveITNamedPose-request)))
  "Returns md5sum for a message object of type 'MoveITNamedPose-request"
  "4472470b43f5627ee4d8a019759b7942")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveITNamedPose-request>)))
  "Returns full string definition for message of type '<MoveITNamedPose-request>"
  (cl:format cl:nil "string named_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveITNamedPose-request)))
  "Returns full string definition for message of type 'MoveITNamedPose-request"
  (cl:format cl:nil "string named_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveITNamedPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'named_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveITNamedPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveITNamedPose-request
    (cl:cons ':named_pose (named_pose msg))
))
;//! \htmlinclude MoveITNamedPose-response.msg.html

(cl:defclass <MoveITNamedPose-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MoveITNamedPose-response (<MoveITNamedPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveITNamedPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveITNamedPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<MoveITNamedPose-response> is deprecated: use mh_hazard-srv:MoveITNamedPose-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MoveITNamedPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:result-val is deprecated.  Use mh_hazard-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveITNamedPose-response>) ostream)
  "Serializes a message object of type '<MoveITNamedPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveITNamedPose-response>) istream)
  "Deserializes a message object of type '<MoveITNamedPose-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveITNamedPose-response>)))
  "Returns string type for a service object of type '<MoveITNamedPose-response>"
  "mh_hazard/MoveITNamedPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveITNamedPose-response)))
  "Returns string type for a service object of type 'MoveITNamedPose-response"
  "mh_hazard/MoveITNamedPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveITNamedPose-response>)))
  "Returns md5sum for a message object of type '<MoveITNamedPose-response>"
  "4472470b43f5627ee4d8a019759b7942")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveITNamedPose-response)))
  "Returns md5sum for a message object of type 'MoveITNamedPose-response"
  "4472470b43f5627ee4d8a019759b7942")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveITNamedPose-response>)))
  "Returns full string definition for message of type '<MoveITNamedPose-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveITNamedPose-response)))
  "Returns full string definition for message of type 'MoveITNamedPose-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveITNamedPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveITNamedPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveITNamedPose-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveITNamedPose)))
  'MoveITNamedPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveITNamedPose)))
  'MoveITNamedPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveITNamedPose)))
  "Returns string type for a service object of type '<MoveITNamedPose>"
  "mh_hazard/MoveITNamedPose")