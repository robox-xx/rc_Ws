; Auto-generated. Do not edit!


(cl:in-package rc_msgs-msg)


;//! \htmlinclude ChassisCmd.msg.html

(cl:defclass <ChassisCmd> (roslisp-msg-protocol:ros-message)
  ((accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (command_source_frame
    :reader command_source_frame
    :initarg :command_source_frame
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ChassisCmd (<ChassisCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-msg:<ChassisCmd> is deprecated: use rc_msgs-msg:ChassisCmd instead.")))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:accel-val is deprecated.  Use rc_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'command_source_frame-val :lambda-list '(m))
(cl:defmethod command_source_frame-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:command_source_frame-val is deprecated.  Use rc_msgs-msg:command_source_frame instead.")
  (command_source_frame m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:stamp-val is deprecated.  Use rc_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisCmd>) ostream)
  "Serializes a message object of type '<ChassisCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command_source_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command_source_frame))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisCmd>) istream)
  "Deserializes a message object of type '<ChassisCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_source_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command_source_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisCmd>)))
  "Returns string type for a message object of type '<ChassisCmd>"
  "rc_msgs/ChassisCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisCmd)))
  "Returns string type for a message object of type 'ChassisCmd"
  "rc_msgs/ChassisCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisCmd>)))
  "Returns md5sum for a message object of type '<ChassisCmd>"
  "7a4c3ac2c507077f490fac95897a32c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisCmd)))
  "Returns md5sum for a message object of type 'ChassisCmd"
  "7a4c3ac2c507077f490fac95897a32c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisCmd>)))
  "Returns full string definition for message of type '<ChassisCmd>"
  (cl:format cl:nil "geometry_msgs/Accel accel~%string command_source_frame~%time stamp~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisCmd)))
  "Returns full string definition for message of type 'ChassisCmd"
  (cl:format cl:nil "geometry_msgs/Accel accel~%string command_source_frame~%time stamp~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     4 (cl:length (cl:slot-value msg 'command_source_frame))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisCmd
    (cl:cons ':accel (accel msg))
    (cl:cons ':command_source_frame (command_source_frame msg))
    (cl:cons ':stamp (stamp msg))
))
