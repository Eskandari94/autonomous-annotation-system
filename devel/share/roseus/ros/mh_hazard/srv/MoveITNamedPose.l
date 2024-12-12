;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::MoveITNamedPose)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'MoveITNamedPose (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::MOVEITNAMEDPOSE")
  (make-package "MH_HAZARD::MOVEITNAMEDPOSE"))
(unless (find-package "MH_HAZARD::MOVEITNAMEDPOSEREQUEST")
  (make-package "MH_HAZARD::MOVEITNAMEDPOSEREQUEST"))
(unless (find-package "MH_HAZARD::MOVEITNAMEDPOSERESPONSE")
  (make-package "MH_HAZARD::MOVEITNAMEDPOSERESPONSE"))

(in-package "ROS")





(defclass mh_hazard::MoveITNamedPoseRequest
  :super ros::object
  :slots (_named_pose ))

(defmethod mh_hazard::MoveITNamedPoseRequest
  (:init
   (&key
    ((:named_pose __named_pose) "")
    )
   (send-super :init)
   (setq _named_pose (string __named_pose))
   self)
  (:named_pose
   (&optional __named_pose)
   (if __named_pose (setq _named_pose __named_pose)) _named_pose)
  (:serialization-length
   ()
   (+
    ;; string _named_pose
    4 (length _named_pose)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _named_pose
       (write-long (length _named_pose) s) (princ _named_pose s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _named_pose
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _named_pose (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mh_hazard::MoveITNamedPoseResponse
  :super ros::object
  :slots (_result ))

(defmethod mh_hazard::MoveITNamedPoseResponse
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

(defclass mh_hazard::MoveITNamedPose
  :super ros::object
  :slots ())

(setf (get mh_hazard::MoveITNamedPose :md5sum-) "4472470b43f5627ee4d8a019759b7942")
(setf (get mh_hazard::MoveITNamedPose :datatype-) "mh_hazard/MoveITNamedPose")
(setf (get mh_hazard::MoveITNamedPose :request) mh_hazard::MoveITNamedPoseRequest)
(setf (get mh_hazard::MoveITNamedPose :response) mh_hazard::MoveITNamedPoseResponse)

(defmethod mh_hazard::MoveITNamedPoseRequest
  (:response () (instance mh_hazard::MoveITNamedPoseResponse :init)))

(setf (get mh_hazard::MoveITNamedPoseRequest :md5sum-) "4472470b43f5627ee4d8a019759b7942")
(setf (get mh_hazard::MoveITNamedPoseRequest :datatype-) "mh_hazard/MoveITNamedPoseRequest")
(setf (get mh_hazard::MoveITNamedPoseRequest :definition-)
      "string named_pose
---
bool result

")

(setf (get mh_hazard::MoveITNamedPoseResponse :md5sum-) "4472470b43f5627ee4d8a019759b7942")
(setf (get mh_hazard::MoveITNamedPoseResponse :datatype-) "mh_hazard/MoveITNamedPoseResponse")
(setf (get mh_hazard::MoveITNamedPoseResponse :definition-)
      "string named_pose
---
bool result

")



(provide :mh_hazard/MoveITNamedPose "4472470b43f5627ee4d8a019759b7942")


