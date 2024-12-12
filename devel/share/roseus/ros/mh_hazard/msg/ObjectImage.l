;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::ObjectImage)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'ObjectImage (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::OBJECTIMAGE")
  (make-package "MH_HAZARD::OBJECTIMAGE"))

(in-package "ROS")
;;//! \htmlinclude ObjectImage.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mh_hazard::ObjectImage
  :super ros::object
  :slots (_header _image _object_positions ))

(defmethod mh_hazard::ObjectImage
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:object_positions __object_positions) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _image __image)
   (setq _object_positions __object_positions)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:object_positions
   (&rest __object_positions)
   (if (keywordp (car __object_positions))
       (send* _object_positions __object_positions)
     (progn
       (if __object_positions (setq _object_positions (car __object_positions)))
       _object_positions)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; geometry_msgs/Point[] _object_positions
    (apply #'+ (send-all _object_positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; geometry_msgs/Point[] _object_positions
     (write-long (length _object_positions) s)
     (dolist (elem _object_positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; geometry_msgs/Point[] _object_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_positions (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _object_positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mh_hazard::ObjectImage :md5sum-) "534258c07e4a1a1800266e633173bfd7")
(setf (get mh_hazard::ObjectImage :datatype-) "mh_hazard/ObjectImage")
(setf (get mh_hazard::ObjectImage :definition-)
      "std_msgs/Header header
sensor_msgs/Image image
geometry_msgs/Point[] object_positions
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
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :mh_hazard/ObjectImage "534258c07e4a1a1800266e633173bfd7")


