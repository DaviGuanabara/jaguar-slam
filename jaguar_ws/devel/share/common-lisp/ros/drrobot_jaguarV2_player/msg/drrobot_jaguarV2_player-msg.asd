
(cl:in-package :asdf)

(defsystem "drrobot_jaguarV2_player-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CustomSensor" :depends-on ("_package_CustomSensor"))
    (:file "_package_CustomSensor" :depends-on ("_package"))
    (:file "IMUInfo" :depends-on ("_package_IMUInfo"))
    (:file "_package_IMUInfo" :depends-on ("_package"))
    (:file "MotorInfo" :depends-on ("_package_MotorInfo"))
    (:file "_package_MotorInfo" :depends-on ("_package"))
    (:file "MotorInfoArray" :depends-on ("_package_MotorInfoArray"))
    (:file "_package_MotorInfoArray" :depends-on ("_package"))
    (:file "PowerInfo" :depends-on ("_package_PowerInfo"))
    (:file "_package_PowerInfo" :depends-on ("_package"))
    (:file "Range" :depends-on ("_package_Range"))
    (:file "_package_Range" :depends-on ("_package"))
    (:file "RangeArray" :depends-on ("_package_RangeArray"))
    (:file "_package_RangeArray" :depends-on ("_package"))
    (:file "StandardSensor" :depends-on ("_package_StandardSensor"))
    (:file "_package_StandardSensor" :depends-on ("_package"))
  ))