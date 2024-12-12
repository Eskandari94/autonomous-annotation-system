;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::Intrest)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'Intrest (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::INTREST")
  (make-package "MH_HAZARD::INTREST"))

(in-package "ROS")
;;//! \htmlinclude Intrest.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mh_hazard::Intrest
  :super ros::object
  :slots (_header _intrest _positions ))

(defmethod mh_hazard::Intrest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:intrest __intrest) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:positions __positions) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _intrest __intrest)
   (setq _positions __positions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:intrest
   (&optional __intrest)
   (if __intrest (setq _intrest __intrest)) _intrest)
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _intrest
    (* 4    (length _intrest)) 4
    ;; geometry_msgs/Point[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _intrest
     (write-long (length _intrest) s)
     (dotimes (i (length _intrest))
       (sys::poke (elt _intrest i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Point[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _intrest
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intrest (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intrest i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mh_hazard::Intrest :md5sum-) "cbddb386d5a5e7010ff2de32d3a54a41")
(setf (get mh_hazard::Intrest :datatype-) "mh_hazard/Intrest")
(setf (get mh_hazard::Intrest :definition-)
      "std_msgs/Header header
float32[] intrest
geometry_msgs/Point[] positions
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

")



(provide :mh_hazard/Intrest "cbddb386d5a5e7010ff2de32d3a54a41")


