;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::OrientCamera)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'OrientCamera (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::ORIENTCAMERA")
  (make-package "MH_HAZARD::ORIENTCAMERA"))
(unless (find-package "MH_HAZARD::ORIENTCAMERAREQUEST")
  (make-package "MH_HAZARD::ORIENTCAMERAREQUEST"))
(unless (find-package "MH_HAZARD::ORIENTCAMERARESPONSE")
  (make-package "MH_HAZARD::ORIENTCAMERARESPONSE"))

(in-package "ROS")





(defclass mh_hazard::OrientCameraRequest
  :super ros::object
  :slots (_text ))

(defmethod mh_hazard::OrientCameraRequest
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

(defclass mh_hazard::OrientCameraResponse
  :super ros::object
  :slots (_resp ))

(defmethod mh_hazard::OrientCameraResponse
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

(defclass mh_hazard::OrientCamera
  :super ros::object
  :slots ())

(setf (get mh_hazard::OrientCamera :md5sum-) "af7bedf12e890f6394e93b01ad2de69e")
(setf (get mh_hazard::OrientCamera :datatype-) "mh_hazard/OrientCamera")
(setf (get mh_hazard::OrientCamera :request) mh_hazard::OrientCameraRequest)
(setf (get mh_hazard::OrientCamera :response) mh_hazard::OrientCameraResponse)

(defmethod mh_hazard::OrientCameraRequest
  (:response () (instance mh_hazard::OrientCameraResponse :init)))

(setf (get mh_hazard::OrientCameraRequest :md5sum-) "af7bedf12e890f6394e93b01ad2de69e")
(setf (get mh_hazard::OrientCameraRequest :datatype-) "mh_hazard/OrientCameraRequest")
(setf (get mh_hazard::OrientCameraRequest :definition-)
      "string text
---
bool resp

")

(setf (get mh_hazard::OrientCameraResponse :md5sum-) "af7bedf12e890f6394e93b01ad2de69e")
(setf (get mh_hazard::OrientCameraResponse :datatype-) "mh_hazard/OrientCameraResponse")
(setf (get mh_hazard::OrientCameraResponse :definition-)
      "string text
---
bool resp

")



(provide :mh_hazard/OrientCamera "af7bedf12e890f6394e93b01ad2de69e")


