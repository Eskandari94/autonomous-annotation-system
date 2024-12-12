;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::Transcription)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'Transcription (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::TRANSCRIPTION")
  (make-package "MH_HAZARD::TRANSCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude Transcription.msg.html


(defclass mh_hazard::Transcription
  :super ros::object
  :slots (_transcription _audio_recieved _duration ))

(defmethod mh_hazard::Transcription
  (:init
   (&key
    ((:transcription __transcription) "")
    ((:audio_recieved __audio_recieved) (instance ros::time :init))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _transcription (string __transcription))
   (setq _audio_recieved __audio_recieved)
   (setq _duration (float __duration))
   self)
  (:transcription
   (&optional __transcription)
   (if __transcription (setq _transcription __transcription)) _transcription)
  (:audio_recieved
   (&optional __audio_recieved)
   (if __audio_recieved (setq _audio_recieved __audio_recieved)) _audio_recieved)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _transcription
    4 (length _transcription)
    ;; time _audio_recieved
    8
    ;; float32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _transcription
       (write-long (length _transcription) s) (princ _transcription s)
     ;; time _audio_recieved
       (write-long (send _audio_recieved :sec) s) (write-long (send _audio_recieved :nsec) s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _transcription
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transcription (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _audio_recieved
     (send _audio_recieved :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _audio_recieved :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mh_hazard::Transcription :md5sum-) "61ce3dbd8bc5a4089981ece3499c2e36")
(setf (get mh_hazard::Transcription :datatype-) "mh_hazard/Transcription")
(setf (get mh_hazard::Transcription :definition-)
      "string transcription
time audio_recieved
float32 duration
")



(provide :mh_hazard/Transcription "61ce3dbd8bc5a4089981ece3499c2e36")


