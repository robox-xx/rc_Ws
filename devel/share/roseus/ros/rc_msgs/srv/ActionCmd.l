;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::ActionCmd)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'ActionCmd (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::ACTIONCMD")
  (make-package "RC_MSGS::ACTIONCMD"))
(unless (find-package "RC_MSGS::ACTIONCMDREQUEST")
  (make-package "RC_MSGS::ACTIONCMDREQUEST"))
(unless (find-package "RC_MSGS::ACTIONCMDRESPONSE")
  (make-package "RC_MSGS::ACTIONCMDRESPONSE"))

(in-package "ROS")





(defclass rc_msgs::ActionCmdRequest
  :super ros::object
  :slots (_action_name _updateX_enable _updateY_enable _updateYaw_enable _calibration_enable _reset_enable _updateX_data _updateY_data _updateYaw_data ))

(defmethod rc_msgs::ActionCmdRequest
  (:init
   (&key
    ((:action_name __action_name) "")
    ((:updateX_enable __updateX_enable) nil)
    ((:updateY_enable __updateY_enable) nil)
    ((:updateYaw_enable __updateYaw_enable) nil)
    ((:calibration_enable __calibration_enable) nil)
    ((:reset_enable __reset_enable) nil)
    ((:updateX_data __updateX_data) 0.0)
    ((:updateY_data __updateY_data) 0.0)
    ((:updateYaw_data __updateYaw_data) 0.0)
    )
   (send-super :init)
   (setq _action_name (string __action_name))
   (setq _updateX_enable __updateX_enable)
   (setq _updateY_enable __updateY_enable)
   (setq _updateYaw_enable __updateYaw_enable)
   (setq _calibration_enable __calibration_enable)
   (setq _reset_enable __reset_enable)
   (setq _updateX_data (float __updateX_data))
   (setq _updateY_data (float __updateY_data))
   (setq _updateYaw_data (float __updateYaw_data))
   self)
  (:action_name
   (&optional __action_name)
   (if __action_name (setq _action_name __action_name)) _action_name)
  (:updateX_enable
   (&optional (__updateX_enable :null))
   (if (not (eq __updateX_enable :null)) (setq _updateX_enable __updateX_enable)) _updateX_enable)
  (:updateY_enable
   (&optional (__updateY_enable :null))
   (if (not (eq __updateY_enable :null)) (setq _updateY_enable __updateY_enable)) _updateY_enable)
  (:updateYaw_enable
   (&optional (__updateYaw_enable :null))
   (if (not (eq __updateYaw_enable :null)) (setq _updateYaw_enable __updateYaw_enable)) _updateYaw_enable)
  (:calibration_enable
   (&optional (__calibration_enable :null))
   (if (not (eq __calibration_enable :null)) (setq _calibration_enable __calibration_enable)) _calibration_enable)
  (:reset_enable
   (&optional (__reset_enable :null))
   (if (not (eq __reset_enable :null)) (setq _reset_enable __reset_enable)) _reset_enable)
  (:updateX_data
   (&optional __updateX_data)
   (if __updateX_data (setq _updateX_data __updateX_data)) _updateX_data)
  (:updateY_data
   (&optional __updateY_data)
   (if __updateY_data (setq _updateY_data __updateY_data)) _updateY_data)
  (:updateYaw_data
   (&optional __updateYaw_data)
   (if __updateYaw_data (setq _updateYaw_data __updateYaw_data)) _updateYaw_data)
  (:serialization-length
   ()
   (+
    ;; string _action_name
    4 (length _action_name)
    ;; bool _updateX_enable
    1
    ;; bool _updateY_enable
    1
    ;; bool _updateYaw_enable
    1
    ;; bool _calibration_enable
    1
    ;; bool _reset_enable
    1
    ;; float64 _updateX_data
    8
    ;; float64 _updateY_data
    8
    ;; float64 _updateYaw_data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_name
       (write-long (length _action_name) s) (princ _action_name s)
     ;; bool _updateX_enable
       (if _updateX_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _updateY_enable
       (if _updateY_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _updateYaw_enable
       (if _updateYaw_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _calibration_enable
       (if _calibration_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset_enable
       (if _reset_enable (write-byte -1 s) (write-byte 0 s))
     ;; float64 _updateX_data
       (sys::poke _updateX_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _updateY_data
       (sys::poke _updateY_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _updateYaw_data
       (sys::poke _updateYaw_data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _updateX_enable
     (setq _updateX_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _updateY_enable
     (setq _updateY_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _updateYaw_enable
     (setq _updateYaw_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _calibration_enable
     (setq _calibration_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset_enable
     (setq _reset_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _updateX_data
     (setq _updateX_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _updateY_data
     (setq _updateY_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _updateYaw_data
     (setq _updateYaw_data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass rc_msgs::ActionCmdResponse
  :super ros::object
  :slots (_is_success ))

(defmethod rc_msgs::ActionCmdResponse
  (:init
   (&key
    ((:is_success __is_success) nil)
    )
   (send-super :init)
   (setq _is_success __is_success)
   self)
  (:is_success
   (&optional (__is_success :null))
   (if (not (eq __is_success :null)) (setq _is_success __is_success)) _is_success)
  (:serialization-length
   ()
   (+
    ;; bool _is_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_success
       (if _is_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_success
     (setq _is_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rc_msgs::ActionCmd
  :super ros::object
  :slots ())

(setf (get rc_msgs::ActionCmd :md5sum-) "903779543030b66caa508cdbd86af033")
(setf (get rc_msgs::ActionCmd :datatype-) "rc_msgs/ActionCmd")
(setf (get rc_msgs::ActionCmd :request) rc_msgs::ActionCmdRequest)
(setf (get rc_msgs::ActionCmd :response) rc_msgs::ActionCmdResponse)

(defmethod rc_msgs::ActionCmdRequest
  (:response () (instance rc_msgs::ActionCmdResponse :init)))

(setf (get rc_msgs::ActionCmdRequest :md5sum-) "903779543030b66caa508cdbd86af033")
(setf (get rc_msgs::ActionCmdRequest :datatype-) "rc_msgs/ActionCmdRequest")
(setf (get rc_msgs::ActionCmdRequest :definition-)
      "string action_name
bool updateX_enable
bool updateY_enable
bool updateYaw_enable
bool calibration_enable
bool reset_enable
float64 updateX_data
float64 updateY_data
float64 updateYaw_data
---
bool is_success

")

(setf (get rc_msgs::ActionCmdResponse :md5sum-) "903779543030b66caa508cdbd86af033")
(setf (get rc_msgs::ActionCmdResponse :datatype-) "rc_msgs/ActionCmdResponse")
(setf (get rc_msgs::ActionCmdResponse :definition-)
      "string action_name
bool updateX_enable
bool updateY_enable
bool updateYaw_enable
bool calibration_enable
bool reset_enable
float64 updateX_data
float64 updateY_data
float64 updateYaw_data
---
bool is_success

")



(provide :rc_msgs/ActionCmd "903779543030b66caa508cdbd86af033")


