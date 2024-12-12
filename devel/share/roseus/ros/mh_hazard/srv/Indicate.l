;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::Indicate)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'Indicate (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::INDICATE")
  (make-package "MH_HAZARD::INDICATE"))
(unless (find-package "MH_HAZARD::INDICATEREQUEST")
  (make-package "MH_HAZARD::INDICATEREQUEST"))
(unless (find-package "MH_HAZARD::INDICATERESPONSE")
  (make-package "MH_HAZARD::INDICATERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass mh_hazard::IndicateRequest
  :super ros::object
  :slots (_point ))

(defmethod mh_hazard::IndicateRequest
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::PointStamped :init))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass mh_hazard::IndicateResponse
  :super ros::object
  :slots (_result ))

(defmethod mh_hazard::IndicateResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mh_hazard::Indicate
  :super ros::object
  :slots ())

(setf (get mh_hazard::Indicate :md5sum-) "1091700a12e6e9539ab6bad6f0ed20bf")
(setf (get mh_hazard::Indicate :datatype-) "mh_hazard/Indicate")
(setf (get mh_hazard::Indicate :request) mh_hazard::IndicateRequest)
(setf (get mh_hazard::Indicate :response) mh_hazard::IndicateResponse)

(defmethod mh_hazard::IndicateRequest
  (:response () (instance mh_hazard::IndicateResponse :init)))

(setf (get mh_hazard::IndicateRequest :md5sum-) "1091700a12e6e9539ab6bad6f0ed20bf")
(setf (get mh_hazard::IndicateRequest :datatype-) "mh_hazard/IndicateRequest")
(setf (get mh_hazard::IndicateRequest :definition-)
      "geometry_msgs/PointStamped point

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool result

")

(setf (get mh_hazard::IndicateResponse :md5sum-) "1091700a12e6e9539ab6bad6f0ed20bf")
(setf (get mh_hazard::IndicateResponse :datatype-) "mh_hazard/IndicateResponse")
(setf (get mh_hazard::IndicateResponse :definition-)
      "geometry_msgs/PointStamped point

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
bool result

")



(provide :mh_hazard/Indicate "1091700a12e6e9539ab6bad6f0ed20bf")


