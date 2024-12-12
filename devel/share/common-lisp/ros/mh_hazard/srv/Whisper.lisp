; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude Whisper-request.msg.html

(cl:defclass <Whisper-request> (roslisp-msg-protocol:ros-message)
  ((string
    :reader string
    :initarg :string
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (context
    :reader context
    :initarg :context
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Whisper-request (<Whisper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Whisper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Whisper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<Whisper-request> is deprecated: use mh_hazard-srv:Whisper-request instead.")))

(cl:ensure-generic-function 'string-val :lambda-list '(m))
(cl:defmethod string-val ((m <Whisper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:string-val is deprecated.  Use mh_hazard-srv:string instead.")
  (string m))

(cl:ensure-generic-function 'context-val :lambda-list '(m))
(cl:defmethod context-val ((m <Whisper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:context-val is deprecated.  Use mh_hazard-srv:context instead.")
  (context m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Whisper-request>) ostream)
  "Serializes a message object of type '<Whisper-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'string) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'context) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Whisper-request>) istream)
  "Deserializes a message object of type '<Whisper-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'string) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'context) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Whisper-request>)))
  "Returns string type for a service object of type '<Whisper-request>"
  "mh_hazard/WhisperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Whisper-request)))
  "Returns string type for a service object of type 'Whisper-request"
  "mh_hazard/WhisperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Whisper-request>)))
  "Returns md5sum for a message object of type '<Whisper-request>"
  "43e291543d576a3f606f1f97c2f7e821")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Whisper-request)))
  "Returns md5sum for a message object of type 'Whisper-request"
  "43e291543d576a3f606f1f97c2f7e821")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Whisper-request>)))
  "Returns full string definition for message of type '<Whisper-request>"
  (cl:format cl:nil "std_msgs/String string~%std_msgs/String context~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Whisper-request)))
  "Returns full string definition for message of type 'Whisper-request"
  (cl:format cl:nil "std_msgs/String string~%std_msgs/String context~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Whisper-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'string))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'context))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Whisper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Whisper-request
    (cl:cons ':string (string msg))
    (cl:cons ':context (context msg))
))
;//! \htmlinclude Whisper-response.msg.html

(cl:defclass <Whisper-response> (roslisp-msg-protocol:ros-message)
  ((transcription
    :reader transcription
    :initarg :transcription
    :type cl:string
    :initform ""))
)

(cl:defclass Whisper-response (<Whisper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Whisper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Whisper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<Whisper-response> is deprecated: use mh_hazard-srv:Whisper-response instead.")))

(cl:ensure-generic-function 'transcription-val :lambda-list '(m))
(cl:defmethod transcription-val ((m <Whisper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:transcription-val is deprecated.  Use mh_hazard-srv:transcription instead.")
  (transcription m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Whisper-response>) ostream)
  "Serializes a message object of type '<Whisper-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transcription))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transcription))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Whisper-response>) istream)
  "Deserializes a message object of type '<Whisper-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transcription) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transcription) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Whisper-response>)))
  "Returns string type for a service object of type '<Whisper-response>"
  "mh_hazard/WhisperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Whisper-response)))
  "Returns string type for a service object of type 'Whisper-response"
  "mh_hazard/WhisperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Whisper-response>)))
  "Returns md5sum for a message object of type '<Whisper-response>"
  "43e291543d576a3f606f1f97c2f7e821")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Whisper-response)))
  "Returns md5sum for a message object of type 'Whisper-response"
  "43e291543d576a3f606f1f97c2f7e821")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Whisper-response>)))
  "Returns full string definition for message of type '<Whisper-response>"
  (cl:format cl:nil "string transcription~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Whisper-response)))
  "Returns full string definition for message of type 'Whisper-response"
  (cl:format cl:nil "string transcription~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Whisper-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'transcription))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Whisper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Whisper-response
    (cl:cons ':transcription (transcription msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Whisper)))
  'Whisper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Whisper)))
  'Whisper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Whisper)))
  "Returns string type for a service object of type '<Whisper>"
  "mh_hazard/Whisper")