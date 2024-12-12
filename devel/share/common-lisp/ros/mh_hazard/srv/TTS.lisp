; Auto-generated. Do not edit!


(cl:in-package mh_hazard-srv)


;//! \htmlinclude TTS-request.msg.html

(cl:defclass <TTS-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass TTS-request (<TTS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TTS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TTS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<TTS-request> is deprecated: use mh_hazard-srv:TTS-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <TTS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:text-val is deprecated.  Use mh_hazard-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TTS-request>) ostream)
  "Serializes a message object of type '<TTS-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TTS-request>) istream)
  "Deserializes a message object of type '<TTS-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TTS-request>)))
  "Returns string type for a service object of type '<TTS-request>"
  "mh_hazard/TTSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TTS-request)))
  "Returns string type for a service object of type 'TTS-request"
  "mh_hazard/TTSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TTS-request>)))
  "Returns md5sum for a message object of type '<TTS-request>"
  "f5c89d7cae48feffa3fe6f3e251992a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TTS-request)))
  "Returns md5sum for a message object of type 'TTS-request"
  "f5c89d7cae48feffa3fe6f3e251992a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TTS-request>)))
  "Returns full string definition for message of type '<TTS-request>"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TTS-request)))
  "Returns full string definition for message of type 'TTS-request"
  (cl:format cl:nil "string text~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TTS-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TTS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TTS-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude TTS-response.msg.html

(cl:defclass <TTS-response> (roslisp-msg-protocol:ros-message)
  ((audio
    :reader audio
    :initarg :audio
    :type std_msgs-msg:Float32MultiArray
    :initform (cl:make-instance 'std_msgs-msg:Float32MultiArray)))
)

(cl:defclass TTS-response (<TTS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TTS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TTS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mh_hazard-srv:<TTS-response> is deprecated: use mh_hazard-srv:TTS-response instead.")))

(cl:ensure-generic-function 'audio-val :lambda-list '(m))
(cl:defmethod audio-val ((m <TTS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mh_hazard-srv:audio-val is deprecated.  Use mh_hazard-srv:audio instead.")
  (audio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TTS-response>) ostream)
  "Serializes a message object of type '<TTS-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'audio) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TTS-response>) istream)
  "Deserializes a message object of type '<TTS-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'audio) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TTS-response>)))
  "Returns string type for a service object of type '<TTS-response>"
  "mh_hazard/TTSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TTS-response)))
  "Returns string type for a service object of type 'TTS-response"
  "mh_hazard/TTSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TTS-response>)))
  "Returns md5sum for a message object of type '<TTS-response>"
  "f5c89d7cae48feffa3fe6f3e251992a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TTS-response)))
  "Returns md5sum for a message object of type 'TTS-response"
  "f5c89d7cae48feffa3fe6f3e251992a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TTS-response>)))
  "Returns full string definition for message of type '<TTS-response>"
  (cl:format cl:nil "std_msgs/Float32MultiArray audio~%~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TTS-response)))
  "Returns full string definition for message of type 'TTS-response"
  (cl:format cl:nil "std_msgs/Float32MultiArray audio~%~%~%================================================================================~%MSG: std_msgs/Float32MultiArray~%# Please look at the MultiArrayLayout message definition for~%# documentation on all multiarrays.~%~%MultiArrayLayout  layout        # specification of data layout~%float32[]         data          # array of data~%~%~%================================================================================~%MSG: std_msgs/MultiArrayLayout~%# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TTS-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'audio))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TTS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TTS-response
    (cl:cons ':audio (audio msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TTS)))
  'TTS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TTS)))
  'TTS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TTS)))
  "Returns string type for a service object of type '<TTS>"
  "mh_hazard/TTS")