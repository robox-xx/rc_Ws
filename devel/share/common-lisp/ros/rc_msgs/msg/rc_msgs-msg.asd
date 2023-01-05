
(cl:in-package :asdf)

(defsystem "rc_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ActionData" :depends-on ("_package_ActionData"))
    (:file "_package_ActionData" :depends-on ("_package"))
    (:file "ActuatorState" :depends-on ("_package_ActuatorState"))
    (:file "_package_ActuatorState" :depends-on ("_package"))
    (:file "ChassisCmd" :depends-on ("_package_ChassisCmd"))
    (:file "_package_ChassisCmd" :depends-on ("_package"))
    (:file "GpioData" :depends-on ("_package_GpioData"))
    (:file "_package_GpioData" :depends-on ("_package"))
    (:file "IbusData" :depends-on ("_package_IbusData"))
    (:file "_package_IbusData" :depends-on ("_package"))
    (:file "LpData" :depends-on ("_package_LpData"))
    (:file "_package_LpData" :depends-on ("_package"))
  ))