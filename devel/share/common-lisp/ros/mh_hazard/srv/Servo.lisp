; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude Servo-request.msg.html

(cl:defclass <Servo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Servo-request (<Servo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Servo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Servo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<Servo-request> is deprecated: use mh_hazard-srv:Servo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Servo-request>) ostream)
  "Serializes a message object of type '<Servo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Servo-request>) istream)
  "Deserializes a message object of type '<Servo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Servo-request>)))
  "Returns string type for a service object of type '<Servo-request>"
  "mh_hazard/ServoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo-request)))
  "Returns string type for a service object of type 'Servo-request"
  "mh_hazard/ServoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Servo-request>)))
  "Returns md5sum for a message object of type '<Servo-request>"
  "e3a98d806e1c4fee01a17d597e27ea8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Servo-request)))
  "Returns md5sum for a message object of type 'Servo-request"
  "e3a98d806e1c4fee01a17d597e27ea8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Servo-request>)))
  "Returns full string definition for message of type '<Servo-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Servo-request)))
  "Returns full string definition for message of type 'Servo-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Servo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Servo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Servo-request
))
;//! \htmlinclude Servo-response.msg.html

(cl:defclass <Servo-response> (roslisp-msg-protocol:ros-message)
  ((resp
    :reader resp
    :initarg :resp
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Servo-response (<Servo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Servo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Servo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<Servo-response> is deprecated: use mh_hazard-srv:Servo-response instead.")))

(cl:ensure-generic-function 'resp-val :lambda-list '(m))
(cl:defmethod resp-val ((m <Servo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:resp-val is deprecated.  Use mh_hazard-srv:resp instead.")
  (resp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Servo-response>) ostream)
  "Serializes a message object of type '<Servo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resp) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Servo-response>) istream)
  "Deserializes a message object of type '<Servo-response>"
    (cl:setf (cl:slot-value msg 'resp) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Servo-response>)))
  "Returns string type for a service object of type '<Servo-response>"
  "mh_hazard/ServoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo-response)))
  "Returns string type for a service object of type 'Servo-response"
  "mh_hazard/ServoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Servo-response>)))
  "Returns md5sum for a message object of type '<Servo-response>"
  "e3a98d806e1c4fee01a17d597e27ea8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Servo-response)))
  "Returns md5sum for a message object of type 'Servo-response"
  "e3a98d806e1c4fee01a17d597e27ea8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Servo-response>)))
  "Returns full string definition for message of type '<Servo-response>"
  (cl:format cl:nil "bool resp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Servo-response)))
  "Returns full string definition for message of type 'Servo-response"
  (cl:format cl:nil "bool resp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Servo-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Servo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Servo-response
    (cl:cons ':resp (resp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Servo)))
  'Servo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Servo)))
  'Servo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Servo)))
  "Returns string type for a service object of type '<Servo>"
  "mh_hazard/Servo")