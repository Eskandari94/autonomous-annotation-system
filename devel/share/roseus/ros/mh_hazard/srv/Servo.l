;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::Servo)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'Servo (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::SERVO")
  (make-package "MH_HAZARD::SERVO"))
(unless (find-package "MH_HAZARD::SERVOREQUEST")
  (make-package "MH_HAZARD::SERVOREQUEST"))
(unless (find-package "MH_HAZARD::SERVORESPONSE")
  (make-package "MH_HAZARD::SERVORESPONSE"))

(in-package "ROS")





(defclass mh_hazard::ServoRequest
  :super ros::object
  :slots ())

(defmethod mh_hazard::ServoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mh_hazard::ServoResponse
  :super ros::object
  :slots (_resp ))

(defmethod mh_hazard::ServoResponse
  (:init
   (&key
    ((:resp __resp) nil)
    )
   (send-super :init)
   (setq _resp __resp)
   self)
  (:resp
   (&optional (__resp :null))
   (if (not (eq __resp :null)) (setq _resp __resp)) _resp)
  (:serialization-length
   ()
   (+
    ;; bool _resp
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _resp
       (if _resp (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _resp
     (setq _resp (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass mh_hazard::Servo
  :super ros::object
  :slots ())

(setf (get mh_hazard::Servo :md5sum-) "e3a98d806e1c4fee01a17d597e27ea8e")
(setf (get mh_hazard::Servo :datatype-) "mh_hazard/Servo")
(setf (get mh_hazard::Servo :request) mh_hazard::ServoRequest)
(setf (get mh_hazard::Servo :response) mh_hazard::ServoResponse)

(defmethod mh_hazard::ServoRequest
  (:response () (instance mh_hazard::ServoResponse :init)))

(setf (get mh_hazard::ServoRequest :md5sum-) "e3a98d806e1c4fee01a17d597e27ea8e")
(setf (get mh_hazard::ServoRequest :datatype-) "mh_hazard/ServoRequest")
(setf (get mh_hazard::ServoRequest :definition-)
      "
---
bool resp

")

(setf (get mh_hazard::ServoResponse :md5sum-) "e3a98d806e1c4fee01a17d597e27ea8e")
(setf (get mh_hazard::ServoResponse :datatype-) "mh_hazard/ServoResponse")
(setf (get mh_hazard::ServoResponse :definition-)
      "
---
bool resp

")



(provide :mh_hazard/Servo "e3a98d806e1c4fee01a17d597e27ea8e")


