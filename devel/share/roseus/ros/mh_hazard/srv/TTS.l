;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::TTS)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'TTS (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::TTS")
  (make-package "MH_HAZARD::TTS"))
(unless (find-package "MH_HAZARD::TTSREQUEST")
  (make-package "MH_HAZARD::TTSREQUEST"))
(unless (find-package "MH_HAZARD::TTSRESPONSE")
  (make-package "MH_HAZARD::TTSRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mh_hazard::TTSRequest
  :super ros::object
  :slots (_text ))

(defmethod mh_hazard::TTSRequest
  (:init
   (&key
    ((:text __text) "")
    )
   (send-super :init)
   (setq _text (string __text))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mh_hazard::TTSResponse
  :super ros::object
  :slots (_audio ))

(defmethod mh_hazard::TTSResponse
  (:init
   (&key
    ((:audio __audio) (instance std_msgs::Float32MultiArray :init))
    )
   (send-super :init)
   (setq _audio __audio)
   self)
  (:audio
   (&rest __audio)
   (if (keywordp (car __audio))
       (send* _audio __audio)
     (progn
       (if __audio (setq _audio (car __audio)))
       _audio)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32MultiArray _audio
    (send _audio :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32MultiArray _audio
       (send _audio :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32MultiArray _audio
     (send _audio :deserialize buf ptr-) (incf ptr- (send _audio :serialization-length))
   ;;
   self)
  )

(defclass mh_hazard::TTS
  :super ros::object
  :slots ())

(setf (get mh_hazard::TTS :md5sum-) "f5c89d7cae48feffa3fe6f3e251992a4")
(setf (get mh_hazard::TTS :datatype-) "mh_hazard/TTS")
(setf (get mh_hazard::TTS :request) mh_hazard::TTSRequest)
(setf (get mh_hazard::TTS :response) mh_hazard::TTSResponse)

(defmethod mh_hazard::TTSRequest
  (:response () (instance mh_hazard::TTSResponse :init)))

(setf (get mh_hazard::TTSRequest :md5sum-) "f5c89d7cae48feffa3fe6f3e251992a4")
(setf (get mh_hazard::TTSRequest :datatype-) "mh_hazard/TTSRequest")
(setf (get mh_hazard::TTSRequest :definition-)
      "string text
---
std_msgs/Float32MultiArray audio


================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")

(setf (get mh_hazard::TTSResponse :md5sum-) "f5c89d7cae48feffa3fe6f3e251992a4")
(setf (get mh_hazard::TTSResponse :datatype-) "mh_hazard/TTSResponse")
(setf (get mh_hazard::TTSResponse :definition-)
      "string text
---
std_msgs/Float32MultiArray audio


================================================================================
MSG: std_msgs/Float32MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float32[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
")



(provide :mh_hazard/TTS "f5c89d7cae48feffa3fe6f3e251992a4")


