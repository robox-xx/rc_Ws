; Auto-generated. Do not edit!


(cl:in-package rc_msgs-msg)


;//! \htmlinclude IbusData.msg.html

(cl:defclass <IbusData> (roslisp-msg-protocol:ros-message)
  ((sw_a
    :reader sw_a
    :initarg :sw_a
    :type cl:fixnum
    :initform 0)
   (sw_b
    :reader sw_b
    :initarg :sw_b
    :type cl:fixnum
    :initform 0)
   (sw_c
    :reader sw_c
    :initarg :sw_c
    :type cl:fixnum
    :initform 0)
   (sw_d
    :reader sw_d
    :initarg :sw_d
    :type cl:fixnum
    :initform 0)
   (vr_a
    :reader vr_a
    :initarg :vr_a
    :type cl:float
    :initform 0.0)
   (vr_b
    :reader vr_b
    :initarg :vr_b
    :type cl:float
    :initform 0.0)
   (ch_l_x
    :reader ch_l_x
    :initarg :ch_l_x
    :type cl:float
    :initform 0.0)
   (ch_l_y
    :reader ch_l_y
    :initarg :ch_l_y
    :type cl:float
    :initform 0.0)
   (ch_r_x
    :reader ch_r_x
    :initarg :ch_r_x
    :type cl:float
    :initform 0.0)
   (ch_r_y
    :reader ch_r_y
    :initarg :ch_r_y
    :type cl:float
    :initform 0.0)
   (key_l
    :reader key_l
    :initarg :key_l
    :type cl:boolean
    :initform cl:nil)
   (key_r
    :reader key_r
    :initarg :key_r
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass IbusData (<IbusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IbusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IbusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rc_msgs-msg:<IbusData> is deprecated: use rc_msgs-msg:IbusData instead.")))

(cl:ensure-generic-function 'sw_a-val :lambda-list '(m))
(cl:defmethod sw_a-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:sw_a-val is deprecated.  Use rc_msgs-msg:sw_a instead.")
  (sw_a m))

(cl:ensure-generic-function 'sw_b-val :lambda-list '(m))
(cl:defmethod sw_b-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:sw_b-val is deprecated.  Use rc_msgs-msg:sw_b instead.")
  (sw_b m))

(cl:ensure-generic-function 'sw_c-val :lambda-list '(m))
(cl:defmethod sw_c-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:sw_c-val is deprecated.  Use rc_msgs-msg:sw_c instead.")
  (sw_c m))

(cl:ensure-generic-function 'sw_d-val :lambda-list '(m))
(cl:defmethod sw_d-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:sw_d-val is deprecated.  Use rc_msgs-msg:sw_d instead.")
  (sw_d m))

(cl:ensure-generic-function 'vr_a-val :lambda-list '(m))
(cl:defmethod vr_a-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:vr_a-val is deprecated.  Use rc_msgs-msg:vr_a instead.")
  (vr_a m))

(cl:ensure-generic-function 'vr_b-val :lambda-list '(m))
(cl:defmethod vr_b-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:vr_b-val is deprecated.  Use rc_msgs-msg:vr_b instead.")
  (vr_b m))

(cl:ensure-generic-function 'ch_l_x-val :lambda-list '(m))
(cl:defmethod ch_l_x-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:ch_l_x-val is deprecated.  Use rc_msgs-msg:ch_l_x instead.")
  (ch_l_x m))

(cl:ensure-generic-function 'ch_l_y-val :lambda-list '(m))
(cl:defmethod ch_l_y-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:ch_l_y-val is deprecated.  Use rc_msgs-msg:ch_l_y instead.")
  (ch_l_y m))

(cl:ensure-generic-function 'ch_r_x-val :lambda-list '(m))
(cl:defmethod ch_r_x-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:ch_r_x-val is deprecated.  Use rc_msgs-msg:ch_r_x instead.")
  (ch_r_x m))

(cl:ensure-generic-function 'ch_r_y-val :lambda-list '(m))
(cl:defmethod ch_r_y-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:ch_r_y-val is deprecated.  Use rc_msgs-msg:ch_r_y instead.")
  (ch_r_y m))

(cl:ensure-generic-function 'key_l-val :lambda-list '(m))
(cl:defmethod key_l-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:key_l-val is deprecated.  Use rc_msgs-msg:key_l instead.")
  (key_l m))

(cl:ensure-generic-function 'key_r-val :lambda-list '(m))
(cl:defmethod key_r-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:key_r-val is deprecated.  Use rc_msgs-msg:key_r instead.")
  (key_r m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <IbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rc_msgs-msg:stamp-val is deprecated.  Use rc_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<IbusData>)))
    "Constants for message type '<IbusData>"
  '((:UP . 1)
    (:DOWN . 2)
    (:MID . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'IbusData)))
    "Constants for message type 'IbusData"
  '((:UP . 1)
    (:DOWN . 2)
    (:MID . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IbusData>) ostream)
  "Serializes a message object of type '<IbusData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_c)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_d)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vr_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vr_b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_l_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_l_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_r_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_r_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_l) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_r) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IbusData>) istream)
  "Deserializes a message object of type '<IbusData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_c)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sw_d)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vr_a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vr_b) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_l_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_l_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_r_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_r_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'key_l) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_r) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IbusData>)))
  "Returns string type for a message object of type '<IbusData>"
  "rc_msgs/IbusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IbusData)))
  "Returns string type for a message object of type 'IbusData"
  "rc_msgs/IbusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IbusData>)))
  "Returns md5sum for a message object of type '<IbusData>"
  "056b88ab8815d7db8205e833088ee03e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IbusData)))
  "Returns md5sum for a message object of type 'IbusData"
  "056b88ab8815d7db8205e833088ee03e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IbusData>)))
  "Returns full string definition for message of type '<IbusData>"
  (cl:format cl:nil "uint8 UP = 1~%uint8 DOWN = 2~%uint8 MID = 3~%~%uint8 sw_a~%uint8 sw_b~%uint8 sw_c~%uint8 sw_d~%~%float64 vr_a~%float64 vr_b~%~%float64 ch_l_x~%float64 ch_l_y~%float64 ch_r_x~%float64 ch_r_y~%~%bool key_l~%bool key_r~%~%time stamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IbusData)))
  "Returns full string definition for message of type 'IbusData"
  (cl:format cl:nil "uint8 UP = 1~%uint8 DOWN = 2~%uint8 MID = 3~%~%uint8 sw_a~%uint8 sw_b~%uint8 sw_c~%uint8 sw_d~%~%float64 vr_a~%float64 vr_b~%~%float64 ch_l_x~%float64 ch_l_y~%float64 ch_r_x~%float64 ch_r_y~%~%bool key_l~%bool key_r~%~%time stamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IbusData>))
  (cl:+ 0
     1
     1
     1
     1
     8
     8
     8
     8
     8
     8
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IbusData>))
  "Converts a ROS message object to a list"
  (cl:list 'IbusData
    (cl:cons ':sw_a (sw_a msg))
    (cl:cons ':sw_b (sw_b msg))
    (cl:cons ':sw_c (sw_c msg))
    (cl:cons ':sw_d (sw_d msg))
    (cl:cons ':vr_a (vr_a msg))
    (cl:cons ':vr_b (vr_b msg))
    (cl:cons ':ch_l_x (ch_l_x msg))
    (cl:cons ':ch_l_y (ch_l_y msg))
    (cl:cons ':ch_r_x (ch_r_x msg))
    (cl:cons ':ch_r_y (ch_r_y msg))
    (cl:cons ':key_l (key_l msg))
    (cl:cons ':key_r (key_r msg))
    (cl:cons ':stamp (stamp msg))
))
