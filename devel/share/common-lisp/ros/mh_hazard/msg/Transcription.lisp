; Auto-generated. Do not edit!


(cl:in-package mh_hazard-msg)


;//! \htmlinclude Transcription.msg.html

(cl:defclass <Transcription> (roslisp-msg-protocol:ros-message)
  ((transcription
    :reader transcription
    :initarg :transcription
    :type cl:string
    :initform "")
   (audio_recieved
    :reader audio_recieved
    :initarg :audio_recieved
    :type cl:real
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass Transcription (<Transcription>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Transcription>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Transcription)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-msg:<Transcription> is deprecated: use mh_hazard-msg:Transcription instead.")))

(cl:ensure-generic-function 'transcription-val :lambda-list '(m))
(cl:defmethod transcription-val ((m <Transcription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:transcription-val is deprecated.  Use mh_hazard-msg:transcription instead.")
  (transcription m))

(cl:ensure-generic-function 'audio_recieved-val :lambda-list '(m))
(cl:defmethod audio_recieved-val ((m <Transcription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:audio_recieved-val is deprecated.  Use mh_hazard-msg:audio_recieved instead.")
  (audio_recieved m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <Transcription>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-msg:duration-val is deprecated.  Use mh_hazard-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Transcription>) ostream)
  "Serializes a message object of type '<Transcription>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transcription))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transcription))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'audio_recieved)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'audio_recieved) (cl:floor (cl:slot-value msg 'audio_recieved)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Transcription>) istream)
  "Deserializes a message object of type '<Transcription>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transcription) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transcription) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'audio_recieved) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Transcription>)))
  "Returns string type for a message object of type '<Transcription>"
  "mh_hazard/Transcription")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Transcription)))
  "Returns string type for a message object of type 'Transcription"
  "mh_hazard/Transcription")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Transcription>)))
  "Returns md5sum for a message object of type '<Transcription>"
  "61ce3dbd8bc5a4089981ece3499c2e36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Transcription)))
  "Returns md5sum for a message object of type 'Transcription"
  "61ce3dbd8bc5a4089981ece3499c2e36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Transcription>)))
  "Returns full string definition for message of type '<Transcription>"
  (cl:format cl:nil "string transcription~%time audio_recieved~%float32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Transcription)))
  "Returns full string definition for message of type 'Transcription"
  (cl:format cl:nil "string transcription~%time audio_recieved~%float32 duration~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Transcription>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'transcription))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Transcription>))
  "Converts a ROS message object to a list"
  (cl:list 'Transcription
    (cl:cons ':transcription (transcription msg))
    (cl:cons ':audio_recieved (audio_recieved msg))
    (cl:cons ':duration (duration msg))
))
