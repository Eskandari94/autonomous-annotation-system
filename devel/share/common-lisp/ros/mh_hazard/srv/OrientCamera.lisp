; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude OrientCamera-request.msg.html

(cl:defclass <OrientCamera-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass OrientCamera-request (<OrientCamera-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrientCamera-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrientCamera-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<OrientCamera-request> is deprecated: use mh_hazard-srv:OrientCamera-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <OrientCamera-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:text-val is deprecated.  Use mh_hazard-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrientCamera-request>) ostream)
  "Serializes a message object of type '<OrientCamera-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrientCamera-request>) istream)
  "Deserializes a message object of type '<OrientCamera-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrientCamera-request>)))
  "Returns string type for a service object of type '<OrientCamera-request>"
  "mh_hazard/OrientCameraRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrientCamera-request)))
  "Returns string type for a service object of type 'OrientCamera-request"
  "mh_hazard/OrientCameraRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrientCamera-request>)))
  "Returns md5sum for a message object of type '<OrientCamera-request>"
  "af7bedf12e890f6394e93b01ad2de69e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrientCamera-request)))
  "Returns md5sum for a message object of type 'OrientCamera-request"
  "af7bedf12e890f6394e93b01ad2de69e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrientCamera-request>)))
  "Returns full string definition for message of type '<OrientCamera-request>"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrientCamera-request)))
  "Returns full string definition for message of type 'OrientCamera-request"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrientCamera-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrientCamera-request>))
  "Converts a ROS message object to a list"
  (cl:list 'OrientCamera-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude OrientCamera-response.msg.html

(cl:defclass <OrientCamera-response> (roslisp-msg-protocol:ros-message)
  ((resp
    :reader resp
    :initarg :resp
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass OrientCamera-response (<OrientCamera-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OrientCamera-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OrientCamera-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<OrientCamera-response> is deprecated: use mh_hazard-srv:OrientCamera-response instead.")))

(cl:ensure-generic-function 'resp-val :lambda-list '(m))
(cl:defmethod resp-val ((m <OrientCamera-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:resp-val is deprecated.  Use mh_hazard-srv:resp instead.")
  (resp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OrientCamera-response>) ostream)
  "Serializes a message object of type '<OrientCamera-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'resp) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OrientCamera-response>) istream)
  "Deserializes a message object of type '<OrientCamera-response>"
    (cl:setf (cl:slot-value msg 'resp) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OrientCamera-response>)))
  "Returns string type for a service object of type '<OrientCamera-response>"
  "mh_hazard/OrientCameraResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrientCamera-response)))
  "Returns string type for a service object of type 'OrientCamera-response"
  "mh_hazard/OrientCameraResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OrientCamera-response>)))
  "Returns md5sum for a message object of type '<OrientCamera-response>"
  "af7bedf12e890f6394e93b01ad2de69e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OrientCamera-response)))
  "Returns md5sum for a message object of type 'OrientCamera-response"
  "af7bedf12e890f6394e93b01ad2de69e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OrientCamera-response>)))
  "Returns full string definition for message of type '<OrientCamera-response>"
  (cl:format cl:nil "bool resp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OrientCamera-response)))
  "Returns full string definition for message of type 'OrientCamera-response"
  (cl:format cl:nil "bool resp~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OrientCamera-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OrientCamera-response>))
  "Converts a ROS message object to a list"
  (cl:list 'OrientCamera-response
    (cl:cons ':resp (resp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'OrientCamera)))
  'OrientCamera-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'OrientCamera)))
  'OrientCamera-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OrientCamera)))
  "Returns string type for a service object of type '<OrientCamera>"
  "mh_hazard/OrientCamera")