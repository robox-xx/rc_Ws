;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::ActionData)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'ActionData (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::ACTIONDATA")
  (make-package "RC_MSGS::ACTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude ActionData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rc_msgs::ActionData
  :super ros::object
  :slots (_header _yaw_angle _pitch_angle _roll_angle _pose_x _pose_y _yaw_acc ))

(defmethod rc_msgs::ActionData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:yaw_angle __yaw_angle) 0.0)
    ((:pitch_angle __pitch_angle) 0.0)
    ((:roll_angle __roll_angle) 0.0)
    ((:pose_x __pose_x) 0.0)
    ((:pose_y __pose_y) 0.0)
    ((:yaw_acc __yaw_acc) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _yaw_angle (float __yaw_angle))
   (setq _pitch_angle (float __pitch_angle))
   (setq _roll_angle (float __roll_angle))
   (setq _pose_x (float __pose_x))
   (setq _pose_y (float __pose_y))
   (setq _yaw_acc (float __yaw_acc))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:yaw_angle
   (&optional __yaw_angle)
   (if __yaw_angle (setq _yaw_angle __yaw_angle)) _yaw_angle)
  (:pitch_angle
   (&optional __pitch_angle)
   (if __pitch_angle (setq _pitch_angle __pitch_angle)) _pitch_angle)
  (:roll_angle
   (&optional __roll_angle)
   (if __roll_angle (setq _roll_angle __roll_angle)) _roll_angle)
  (:pose_x
   (&optional __pose_x)
   (if __pose_x (setq _pose_x __pose_x)) _pose_x)
  (:pose_y
   (&optional __pose_y)
   (if __pose_y (setq _pose_y __pose_y)) _pose_y)
  (:yaw_acc
   (&optional __yaw_acc)
   (if __yaw_acc (setq _yaw_acc __yaw_acc)) _yaw_acc)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _yaw_angle
    8
    ;; float64 _pitch_angle
    8
    ;; float64 _roll_angle
    8
    ;; float64 _pose_x
    8
    ;; float64 _pose_y
    8
    ;; float64 _yaw_acc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _yaw_angle
       (sys::poke _yaw_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_angle
       (sys::poke _pitch_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_angle
       (sys::poke _roll_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_x
       (sys::poke _pose_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pose_y
       (sys::poke _pose_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_acc
       (sys::poke _yaw_acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _yaw_angle
     (setq _yaw_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_angle
     (setq _pitch_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_angle
     (setq _roll_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_x
     (setq _pose_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pose_y
     (setq _pose_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_acc
     (setq _yaw_acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rc_msgs::ActionData :md5sum-) "32fe7d4a9580b9893db65b426aac33e3")
(setf (get rc_msgs::ActionData :datatype-) "rc_msgs/ActionData")
(setf (get rc_msgs::ActionData :definition-)
      "std_msgs/Header header
float64 yaw_angle
float64 pitch_angle
float64 roll_angle
float64 pose_x
float64 pose_y
float64 yaw_acc
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rc_msgs/ActionData "32fe7d4a9580b9893db65b426aac33e3")


