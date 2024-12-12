;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::Whisper)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'Whisper (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::WHISPER")
  (make-package "MH_HAZARD::WHISPER"))
(unless (find-package "MH_HAZARD::WHISPERREQUEST")
  (make-package "MH_HAZARD::WHISPERREQUEST"))
(unless (find-package "MH_HAZARD::WHISPERRESPONSE")
  (make-package "MH_HAZARD::WHISPERRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass mh_hazard::WhisperRequest
  :super ros::object
  :slots (_string _context ))

(defmethod mh_hazard::WhisperRequest
  (:init
   (&key
    ((:string __string) (instance std_msgs::String :init))
    ((:context __context) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _string __string)
   (setq _context __context)
   self)
  (:string
   (&rest __string)
   (if (keywordp (car __string))
       (send* _string __string)
     (progn
       (if __string (setq _string (car __string)))
       _string)))
  (:context
   (&rest __context)
   (if (keywordp (car __context))
       (send* _context __context)
     (progn
       (if __context (setq _context (car __context)))
       _context)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _string
    (send _string :serialization-length)
    ;; std_msgs/String _context
    (send _context :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _string
       (send _string :serialize s)
     ;; std_msgs/String _context
       (send _context :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _string
     (send _string :deserialize buf ptr-) (incf ptr- (send _string :serialization-length))
   ;; std_msgs/String _context
     (send _context :deserialize buf ptr-) (incf ptr- (send _context :serialization-length))
   ;;
   self)
  )

(defclass mh_hazard::WhisperResponse
  :super ros::object
  :slots (_transcription ))

(defmethod mh_hazard::WhisperResponse
  (:init
   (&key
    ((:transcription __transcription) "")
    )
   (send-super :init)
   (setq _transcription (string __transcription))
   self)
  (:transcription
   (&optional __transcription)
   (if __transcription (setq _transcription __transcription)) _transcription)
  (:serialization-length
   ()
   (+
    ;; string _transcription
    4 (length _transcription)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _transcription
       (write-long (length _transcription) s) (princ _transcription s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _transcription
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transcription (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mh_hazard::Whisper
  :super ros::object
  :slots ())

(setf (get mh_hazard::Whisper :md5sum-) "43e291543d576a3f606f1f97c2f7e821")
(setf (get mh_hazard::Whisper :datatype-) "mh_hazard/Whisper")
(setf (get mh_hazard::Whisper :request) mh_hazard::WhisperRequest)
(setf (get mh_hazard::Whisper :response) mh_hazard::WhisperResponse)

(defmethod mh_hazard::WhisperRequest
  (:response () (instance mh_hazard::WhisperResponse :init)))

(setf (get mh_hazard::WhisperRequest :md5sum-) "43e291543d576a3f606f1f97c2f7e821")
(setf (get mh_hazard::WhisperRequest :datatype-) "mh_hazard/WhisperRequest")
(setf (get mh_hazard::WhisperRequest :definition-)
      "std_msgs/String string
std_msgs/String context

================================================================================
MSG: std_msgs/String
string data
---
string transcription

")

(setf (get mh_hazard::WhisperResponse :md5sum-) "43e291543d576a3f606f1f97c2f7e821")
(setf (get mh_hazard::WhisperResponse :datatype-) "mh_hazard/WhisperResponse")
(setf (get mh_hazard::WhisperResponse :definition-)
      "std_msgs/String string
std_msgs/String context

================================================================================
MSG: std_msgs/String
string data
---
string transcription

")



(provide :mh_hazard/Whisper "43e291543d576a3f606f1f97c2f7e821")


