;; Auto-generated. Do not edit!


(when (boundp 'rc_msgs::IbusData)
  (if (not (find-package "RC_MSGS"))
    (make-package "RC_MSGS"))
  (shadow 'IbusData (find-package "RC_MSGS")))
(unless (find-package "RC_MSGS::IBUSDATA")
  (make-package "RC_MSGS::IBUSDATA"))

(in-package "ROS")
;;//! \htmlinclude IbusData.msg.html


(intern "*UP*" (find-package "RC_MSGS::IBUSDATA"))
(shadow '*UP* (find-package "RC_MSGS::IBUSDATA"))
(defconstant rc_msgs::IbusData::*UP* 1)
(intern "*DOWN*" (find-package "RC_MSGS::IBUSDATA"))
(shadow '*DOWN* (find-package "RC_MSGS::IBUSDATA"))
(defconstant rc_msgs::IbusData::*DOWN* 2)
(intern "*MID*" (find-package "RC_MSGS::IBUSDATA"))
(shadow '*MID* (find-package "RC_MSGS::IBUSDATA"))
(defconstant rc_msgs::IbusData::*MID* 3)

(defun rc_msgs::IbusData-to-symbol (const)
  (cond
        ((= const 1) 'rc_msgs::IbusData::*UP*)
        ((= const 2) 'rc_msgs::IbusData::*DOWN*)
        ((= const 3) 'rc_msgs::IbusData::*MID*)
        (t nil)))

(defclass rc_msgs::IbusData
  :super ros::object
  :slots (_sw_a _sw_b _sw_c _sw_d _vr_a _vr_b _ch_l_x _ch_l_y _ch_r_x _ch_r_y _key_l _key_r _stamp ))

(defmethod rc_msgs::IbusData
  (:init
   (&key
    ((:sw_a __sw_a) 0)
    ((:sw_b __sw_b) 0)
    ((:sw_c __sw_c) 0)
    ((:sw_d __sw_d) 0)
    ((:vr_a __vr_a) 0.0)
    ((:vr_b __vr_b) 0.0)
    ((:ch_l_x __ch_l_x) 0.0)
    ((:ch_l_y __ch_l_y) 0.0)
    ((:ch_r_x __ch_r_x) 0.0)
    ((:ch_r_y __ch_r_y) 0.0)
    ((:key_l __key_l) nil)
    ((:key_r __key_r) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _sw_a (round __sw_a))
   (setq _sw_b (round __sw_b))
   (setq _sw_c (round __sw_c))
   (setq _sw_d (round __sw_d))
   (setq _vr_a (float __vr_a))
   (setq _vr_b (float __vr_b))
   (setq _ch_l_x (float __ch_l_x))
   (setq _ch_l_y (float __ch_l_y))
   (setq _ch_r_x (float __ch_r_x))
   (setq _ch_r_y (float __ch_r_y))
   (setq _key_l __key_l)
   (setq _key_r __key_r)
   (setq _stamp __stamp)
   self)
  (:sw_a
   (&optional __sw_a)
   (if __sw_a (setq _sw_a __sw_a)) _sw_a)
  (:sw_b
   (&optional __sw_b)
   (if __sw_b (setq _sw_b __sw_b)) _sw_b)
  (:sw_c
   (&optional __sw_c)
   (if __sw_c (setq _sw_c __sw_c)) _sw_c)
  (:sw_d
   (&optional __sw_d)
   (if __sw_d (setq _sw_d __sw_d)) _sw_d)
  (:vr_a
   (&optional __vr_a)
   (if __vr_a (setq _vr_a __vr_a)) _vr_a)
  (:vr_b
   (&optional __vr_b)
   (if __vr_b (setq _vr_b __vr_b)) _vr_b)
  (:ch_l_x
   (&optional __ch_l_x)
   (if __ch_l_x (setq _ch_l_x __ch_l_x)) _ch_l_x)
  (:ch_l_y
   (&optional __ch_l_y)
   (if __ch_l_y (setq _ch_l_y __ch_l_y)) _ch_l_y)
  (:ch_r_x
   (&optional __ch_r_x)
   (if __ch_r_x (setq _ch_r_x __ch_r_x)) _ch_r_x)
  (:ch_r_y
   (&optional __ch_r_y)
   (if __ch_r_y (setq _ch_r_y __ch_r_y)) _ch_r_y)
  (:key_l
   (&optional (__key_l :null))
   (if (not (eq __key_l :null)) (setq _key_l __key_l)) _key_l)
  (:key_r
   (&optional (__key_r :null))
   (if (not (eq __key_r :null)) (setq _key_r __key_r)) _key_r)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _sw_a
    1
    ;; uint8 _sw_b
    1
    ;; uint8 _sw_c
    1
    ;; uint8 _sw_d
    1
    ;; float64 _vr_a
    8
    ;; float64 _vr_b
    8
    ;; float64 _ch_l_x
    8
    ;; float64 _ch_l_y
    8
    ;; float64 _ch_r_x
    8
    ;; float64 _ch_r_y
    8
    ;; bool _key_l
    1
    ;; bool _key_r
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sw_a
       (write-byte _sw_a s)
     ;; uint8 _sw_b
       (write-byte _sw_b s)
     ;; uint8 _sw_c
       (write-byte _sw_c s)
     ;; uint8 _sw_d
       (write-byte _sw_d s)
     ;; float64 _vr_a
       (sys::poke _vr_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vr_b
       (sys::poke _vr_b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_l_x
       (sys::poke _ch_l_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_l_y
       (sys::poke _ch_l_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_r_x
       (sys::poke _ch_r_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_r_y
       (sys::poke _ch_r_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _key_l
       (if _key_l (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_r
       (if _key_r (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sw_a
     (setq _sw_a (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sw_b
     (setq _sw_b (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sw_c
     (setq _sw_c (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sw_d
     (setq _sw_d (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _vr_a
     (setq _vr_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vr_b
     (setq _vr_b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_l_x
     (setq _ch_l_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_l_y
     (setq _ch_l_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_r_x
     (setq _ch_r_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_r_y
     (setq _ch_r_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _key_l
     (setq _key_l (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_r
     (setq _key_r (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rc_msgs::IbusData :md5sum-) "056b88ab8815d7db8205e833088ee03e")
(setf (get rc_msgs::IbusData :datatype-) "rc_msgs/IbusData")
(setf (get rc_msgs::IbusData :definition-)
      "uint8 UP = 1
uint8 DOWN = 2
uint8 MID = 3

uint8 sw_a
uint8 sw_b
uint8 sw_c
uint8 sw_d

float64 vr_a
float64 vr_b

float64 ch_l_x
float64 ch_l_y
float64 ch_r_x
float64 ch_r_y

bool key_l
bool key_r

time stamp
")



(provide :rc_msgs/IbusData "056b88ab8815d7db8205e833088ee03e")


