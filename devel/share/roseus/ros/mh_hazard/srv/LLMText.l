;; Auto-generated. Do not edit!


(when (boundp 'mh_hazard::LLMText)
  (if (not (find-package "MH_HAZARD"))
    (make-package "MH_HAZARD"))
  (shadow 'LLMText (find-package "MH_HAZARD")))
(unless (find-package "MH_HAZARD::LLMTEXT")
  (make-package "MH_HAZARD::LLMTEXT"))
(unless (find-package "MH_HAZARD::LLMTEXTREQUEST")
  (make-package "MH_HAZARD::LLMTEXTREQUEST"))
(unless (find-package "MH_HAZARD::LLMTEXTRESPONSE")
  (make-package "MH_HAZARD::LLMTEXTRESPONSE"))

(in-package "ROS")





(defclass mh_hazard::LLMTextRequest
  :super ros::object
  :slots (_text ))

(defmethod mh_hazard::LLMTextRequest
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

(defclass mh_hazard::LLMTextResponse
  :super ros::object
  :slots (_text ))

(defmethod mh_hazard::LLMTextResponse
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

(defclass mh_hazard::LLMText
  :super ros::object
  :slots ())

(setf (get mh_hazard::LLMText :md5sum-) "7aeb82e24cd9ab4590c8feef6925aefe")
(setf (get mh_hazard::LLMText :datatype-) "mh_hazard/LLMText")
(setf (get mh_hazard::LLMText :request) mh_hazard::LLMTextRequest)
(setf (get mh_hazard::LLMText :response) mh_hazard::LLMTextResponse)

(defmethod mh_hazard::LLMTextRequest
  (:response () (instance mh_hazard::LLMTextResponse :init)))

(setf (get mh_hazard::LLMTextRequest :md5sum-) "7aeb82e24cd9ab4590c8feef6925aefe")
(setf (get mh_hazard::LLMTextRequest :datatype-) "mh_hazard/LLMTextRequest")
(setf (get mh_hazard::LLMTextRequest :definition-)
      "string text
---
string text

")

(setf (get mh_hazard::LLMTextResponse :md5sum-) "7aeb82e24cd9ab4590c8feef6925aefe")
(setf (get mh_hazard::LLMTextResponse :datatype-) "mh_hazard/LLMTextResponse")
(setf (get mh_hazard::LLMTextResponse :definition-)
      "string text
---
string text

")



(provide :mh_hazard/LLMText "7aeb82e24cd9ab4590c8feef6925aefe")


