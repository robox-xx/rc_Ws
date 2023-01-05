; Auto-generated. Do not edit!


(cl:in-package rc_msgs-srv)


;//! \htmlinclude ActionCmd-request.msg.html

(cl:defclass <ActionCmd-request> (roslisp-msg-protocol:ros-message)
  ((action_name
    :reader action_name
    :initarg :action_name
    :type cl:string
    :initform "")
   (updateX_enable
    :reader updateX_enable
    :initarg :updateX_enable
    :type cl:boolean
    :initform cl:nil)
   (updateY_enable
    :reader updateY_enable
    :initarg :updateY_enable
    :type cl:boolean
    :initform cl:nil)
   (updateYaw_enable
    :reader updateYaw_enable
    :initarg :updateYaw_enable
    :type cl:boolean
    :initform cl:nil)
   (calibration_enable
    :reader calibration_enable
    :initarg :calibration_enable
    :type cl:boolean
    :initform cl:nil)
   (reset_enable
    :reader reset_enable
    :initarg :reset_enable
    :type cl:boolean
    :initform cl:nil)
   (updateX_data
    :reader updateX_data
    :initarg :updateX_data
    :type cl:float
    :initform 0.0)
   (updateY_data
    :reader updateY_data
    :initarg :updateY_data
    :type cl:float
    :initform 0.0)
   (updateYaw_data
    :reader updateYaw_data
    :initarg :updateYaw_data
    :type cl:float
    :initform 0.0))
)

(cl:defclass ActionCmd-request (<ActionCmd-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionCmd-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionCmd-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-srv:<ActionCmd-request> is deprecated: use rc_msgs-srv:ActionCmd-request instead.")))

(cl:ensure-generic-function 'action_name-val :lambda-list '(m))
(cl:defmethod action_name-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:action_name-val is deprecated.  Use rc_msgs-srv:action_name instead.")
  (action_name m))

(cl:ensure-generic-function 'updateX_enable-val :lambda-list '(m))
(cl:defmethod updateX_enable-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:updateX_enable-val is deprecated.  Use rc_msgs-srv:updateX_enable instead.")
  (updateX_enable m))

(cl:ensure-generic-function 'updateY_enable-val :lambda-list '(m))
(cl:defmethod updateY_enable-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:updateY_enable-val is deprecated.  Use rc_msgs-srv:updateY_enable instead.")
  (updateY_enable m))

(cl:ensure-generic-function 'updateYaw_enable-val :lambda-list '(m))
(cl:defmethod updateYaw_enable-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:updateYaw_enable-val is deprecated.  Use rc_msgs-srv:updateYaw_enable instead.")
  (updateYaw_enable m))

(cl:ensure-generic-function 'calibration_enable-val :lambda-list '(m))
(cl:defmethod calibration_enable-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:calibration_enable-val is deprecated.  Use rc_msgs-srv:calibration_enable instead.")
  (calibration_enable m))

(cl:ensure-generic-function 'reset_enable-val :lambda-list '(m))
(cl:defmethod reset_enable-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:reset_enable-val is deprecated.  Use rc_msgs-srv:reset_enable instead.")
  (reset_enable m))

(cl:ensure-generic-function 'updateX_data-val :lambda-list '(m))
(cl:defmethod updateX_data-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:updateX_data-val is deprecated.  Use rc_msgs-srv:updateX_data instead.")
  (updateX_data m))

(cl:ensure-generic-function 'updateY_data-val :lambda-list '(m))
(cl:defmethod updateY_data-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:updateY_data-val is deprecated.  Use rc_msgs-srv:updateY_data instead.")
  (updateY_data m))

(cl:ensure-generic-function 'updateYaw_data-val :lambda-list '(m))
(cl:defmethod updateYaw_data-val ((m <ActionCmd-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:updateYaw_data-val is deprecated.  Use rc_msgs-srv:updateYaw_data instead.")
  (updateYaw_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionCmd-request>) ostream)
  "Serializes a message object of type '<ActionCmd-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'updateX_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'updateY_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'updateYaw_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'calibration_enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'updateX_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'updateY_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'updateYaw_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionCmd-request>) istream)
  "Deserializes a message object of type '<ActionCmd-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'updateX_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'updateY_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'updateYaw_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'calibration_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset_enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'updateX_data) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'updateY_data) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'updateYaw_data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionCmd-request>)))
  "Returns string type for a service object of type '<ActionCmd-request>"
  "rc_msgs/ActionCmdRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionCmd-request)))
  "Returns string type for a service object of type 'ActionCmd-request"
  "rc_msgs/ActionCmdRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionCmd-request>)))
  "Returns md5sum for a message object of type '<ActionCmd-request>"
  "903779543030b66caa508cdbd86af033")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionCmd-request)))
  "Returns md5sum for a message object of type 'ActionCmd-request"
  "903779543030b66caa508cdbd86af033")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionCmd-request>)))
  "Returns full string definition for message of type '<ActionCmd-request>"
  (cl:format cl:nil "string action_name~%bool updateX_enable~%bool updateY_enable~%bool updateYaw_enable~%bool calibration_enable~%bool reset_enable~%float64 updateX_data~%float64 updateY_data~%float64 updateYaw_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionCmd-request)))
  "Returns full string definition for message of type 'ActionCmd-request"
  (cl:format cl:nil "string action_name~%bool updateX_enable~%bool updateY_enable~%bool updateYaw_enable~%bool calibration_enable~%bool reset_enable~%float64 updateX_data~%float64 updateY_data~%float64 updateYaw_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionCmd-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_name))
     1
     1
     1
     1
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionCmd-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionCmd-request
    (cl:cons ':action_name (action_name msg))
    (cl:cons ':updateX_enable (updateX_enable msg))
    (cl:cons ':updateY_enable (updateY_enable msg))
    (cl:cons ':updateYaw_enable (updateYaw_enable msg))
    (cl:cons ':calibration_enable (calibration_enable msg))
    (cl:cons ':reset_enable (reset_enable msg))
    (cl:cons ':updateX_data (updateX_data msg))
    (cl:cons ':updateY_data (updateY_data msg))
    (cl:cons ':updateYaw_data (updateYaw_data msg))
))
;//! \htmlinclude ActionCmd-response.msg.html

(cl:defclass <ActionCmd-response> (roslisp-msg-protocol:ros-message)
  ((is_success
    :reader is_success
    :initarg :is_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ActionCmd-response (<ActionCmd-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionCmd-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionCmd-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-srv:<ActionCmd-response> is deprecated: use rc_msgs-srv:ActionCmd-response instead.")))

(cl:ensure-generic-function 'is_success-val :lambda-list '(m))
(cl:defmethod is_success-val ((m <ActionCmd-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-srv:is_success-val is deprecated.  Use rc_msgs-srv:is_success instead.")
  (is_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionCmd-response>) ostream)
  "Serializes a message object of type '<ActionCmd-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionCmd-response>) istream)
  "Deserializes a message object of type '<ActionCmd-response>"
    (cl:setf (cl:slot-value msg 'is_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionCmd-response>)))
  "Returns string type for a service object of type '<ActionCmd-response>"
  "rc_msgs/ActionCmdResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionCmd-response)))
  "Returns string type for a service object of type 'ActionCmd-response"
  "rc_msgs/ActionCmdResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionCmd-response>)))
  "Returns md5sum for a message object of type '<ActionCmd-response>"
  "903779543030b66caa508cdbd86af033")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionCmd-response)))
  "Returns md5sum for a message object of type 'ActionCmd-response"
  "903779543030b66caa508cdbd86af033")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionCmd-response>)))
  "Returns full string definition for message of type '<ActionCmd-response>"
  (cl:format cl:nil "bool is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionCmd-response)))
  "Returns full string definition for message of type 'ActionCmd-response"
  (cl:format cl:nil "bool is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionCmd-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionCmd-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionCmd-response
    (cl:cons ':is_success (is_success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ActionCmd)))
  'ActionCmd-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ActionCmd)))
  'ActionCmd-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionCmd)))
  "Returns string type for a service object of type '<ActionCmd>"
  "rc_msgs/ActionCmd")