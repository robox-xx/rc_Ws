;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::ChassisCmd)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'ChassisCmd (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::CHASSISCMD")
  (make-package "RC_MSGS::CHASSISCMD"))

(in-package "ROS")
;;//! \htmlinclude ChassisCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rc_msgs::ChassisCmd
  :super ros::object
  :slots (_accel _command_source_frame _stamp ))

(defmethod rc_msgs::ChassisCmd
  (:init
   (&key
    ((:accel __accel) (instance geometry_msgs::Accel :init))
    ((:command_source_frame __command_source_frame) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _accel __accel)
   (setq _command_source_frame (string __command_source_frame))
   (setq _stamp __stamp)
   self)
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:command_source_frame
   (&optional __command_source_frame)
   (if __command_source_frame (setq _command_source_frame __command_source_frame)) _command_source_frame)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Accel _accel
    (send _accel :serialization-length)
    ;; string _command_source_frame
    4 (length _command_source_frame)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Accel _accel
       (send _accel :serialize s)
     ;; string _command_source_frame
       (write-long (length _command_source_frame) s) (princ _command_source_frame s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Accel _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;; string _command_source_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command_source_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rc_msgs::ChassisCmd :md5sum-) "7a4c3ac2c507077f490fac95897a32c5")
(setf (get rc_msgs::ChassisCmd :datatype-) "rc_msgs/ChassisCmd")
(setf (get rc_msgs::ChassisCmd :definition-)
      "geometry_msgs/Accel accel
string command_source_frame
time stamp

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rc_msgs/ChassisCmd "7a4c3ac2c507077f490fac95897a32c5")


