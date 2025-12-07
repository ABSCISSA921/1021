
(cl:in-package :asdf)

(defsystem "rm_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CameraStatus" :depends-on ("_package_CameraStatus"))
    (:file "_package_CameraStatus" :depends-on ("_package"))
    (:file "ContinousDetectorSwitch" :depends-on ("_package_ContinousDetectorSwitch"))
    (:file "_package_ContinousDetectorSwitch" :depends-on ("_package"))
    (:file "EnableGyro" :depends-on ("_package_EnableGyro"))
    (:file "_package_EnableGyro" :depends-on ("_package"))
    (:file "EnableImuTrigger" :depends-on ("_package_EnableImuTrigger"))
    (:file "_package_EnableImuTrigger" :depends-on ("_package"))
    (:file "SetLimitVel" :depends-on ("_package_SetLimitVel"))
    (:file "_package_SetLimitVel" :depends-on ("_package"))
    (:file "StatusChange" :depends-on ("_package_StatusChange"))
    (:file "_package_StatusChange" :depends-on ("_package"))
  ))