; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude LLMText-request.msg.html

(cl:defclass <LLMText-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass LLMText-request (<LLMText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LLMText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LLMText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<LLMText-request> is deprecated: use mh_hazard-srv:LLMText-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <LLMText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:text-val is deprecated.  Use mh_hazard-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LLMText-request>) ostream)
  "Serializes a message object of type '<LLMText-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LLMText-request>) istream)
  "Deserializes a message object of type '<LLMText-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LLMText-request>)))
  "Returns string type for a service object of type '<LLMText-request>"
  "mh_hazard/LLMTextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLMText-request)))
  "Returns string type for a service object of type 'LLMText-request"
  "mh_hazard/LLMTextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LLMText-request>)))
  "Returns md5sum for a message object of type '<LLMText-request>"
  "7aeb82e24cd9ab4590c8feef6925aefe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LLMText-request)))
  "Returns md5sum for a message object of type 'LLMText-request"
  "7aeb82e24cd9ab4590c8feef6925aefe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LLMText-request>)))
  "Returns full string definition for message of type '<LLMText-request>"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LLMText-request)))
  "Returns full string definition for message of type 'LLMText-request"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LLMText-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LLMText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LLMText-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude LLMText-response.msg.html

(cl:defclass <LLMText-response> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass LLMText-response (<LLMText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LLMText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LLMText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<LLMText-response> is deprecated: use mh_hazard-srv:LLMText-response instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <LLMText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:text-val is deprecated.  Use mh_hazard-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LLMText-response>) ostream)
  "Serializes a message object of type '<LLMText-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LLMText-response>) istream)
  "Deserializes a message object of type '<LLMText-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LLMText-response>)))
  "Returns string type for a service object of type '<LLMText-response>"
  "mh_hazard/LLMTextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLMText-response)))
  "Returns string type for a service object of type 'LLMText-response"
  "mh_hazard/LLMTextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LLMText-response>)))
  "Returns md5sum for a message object of type '<LLMText-response>"
  "7aeb82e24cd9ab4590c8feef6925aefe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LLMText-response)))
  "Returns md5sum for a message object of type 'LLMText-response"
  "7aeb82e24cd9ab4590c8feef6925aefe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LLMText-response>)))
  "Returns full string definition for message of type '<LLMText-response>"
  (cl:format cl:nil "string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LLMText-response)))
  "Returns full string definition for message of type 'LLMText-response"
  (cl:format cl:nil "string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LLMText-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LLMText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LLMText-response
    (cl:cons ':text (text msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LLMText)))
  'LLMText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LLMText)))
  'LLMText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LLMText)))
  "Returns string type for a service object of type '<LLMText>"
  "mh_hazard/LLMText")