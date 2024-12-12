
(cl:in-package :asdf)

(defsystem "mh_hazard-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ImageArray" :depends-on ("_package_ImageArray"))
    (:file "_package_ImageArray" :depends-on ("_package"))
    (:file "Intrest" :depends-on ("_package_Intrest"))
    (:file "_package_Intrest" :depends-on ("_package"))
    (:file "ObjectImage" :depends-on ("_package_ObjectImage"))
    (:file "_package_ObjectImage" :depends-on ("_package"))
    (:file "Transcription" :depends-on ("_package_Transcription"))
    (:file "_package_Transcription" :depends-on ("_package"))
  ))