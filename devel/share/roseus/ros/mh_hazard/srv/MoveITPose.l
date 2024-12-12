;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::MoveITPose)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'MoveITPose (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::MOVEITPOSE")
  (make-package "MH_HAZARD::MOVEITPOSE"))
(unless (find-package "MH_HAZARD::MOVEITPOSEREQUEST")
  (make-package "MH_HAZARD::MOVEITPOSEREQUEST"))
(unless (find-package "MH_HAZARD::MOVEITPOSERESPONSE")
  (make-package "MH_HAZARD::MOVEITPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass mh_hazard::MoveITPoseRequest
  :super ros::object
  :slots (_pose ))

(defmethod mh_hazard::MoveITPoseRequest
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass mh_hazard::MoveITPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod mh_hazard::MoveITPoseResponse
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

(defclass mh_hazard::MoveITPose
  :super ros::object
  :slots ())

(setf (get mh_hazard::MoveITPose :md5sum-) "1d4e3f01f751b136dce2bc699f1d7748")
(setf (get mh_hazard::MoveITPose :datatype-) "mh_hazard/MoveITPose")
(setf (get mh_hazard::MoveITPose :request) mh_hazard::MoveITPoseRequest)
(setf (get mh_hazard::MoveITPose :response) mh_hazard::MoveITPoseResponse)

(defmethod mh_hazard::MoveITPoseRequest
  (:response () (instance mh_hazard::MoveITPoseResponse :init)))

(setf (get mh_hazard::MoveITPoseRequest :md5sum-) "1d4e3f01f751b136dce2bc699f1d7748")
(setf (get mh_hazard::MoveITPoseRequest :datatype-) "mh_hazard/MoveITPoseRequest")
(setf (get mh_hazard::MoveITPoseRequest :definition-)
      "geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result

")

(setf (get mh_hazard::MoveITPoseResponse :md5sum-) "1d4e3f01f751b136dce2bc699f1d7748")
(setf (get mh_hazard::MoveITPoseResponse :datatype-) "mh_hazard/MoveITPoseResponse")
(setf (get mh_hazard::MoveITPoseResponse :definition-)
      "geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
bool result

")



(provide :mh_hazard/MoveITPose "1d4e3f01f751b136dce2bc699f1d7748")


