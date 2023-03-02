;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::GlobalExtrinsicStatus)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'GlobalExtrinsicStatus (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::GLOBALEXTRINSICSTATUS")
  (make-package "SWARM_MSGS::GLOBALEXTRINSICSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GlobalExtrinsicStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::GlobalExtrinsicStatus
  :super ros::object
  :slots (_header _drone_id _extrinsic ))

(defmethod swarm_msgs::GlobalExtrinsicStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:extrinsic __extrinsic) (let (r) (dotimes (i 0) (push (instance swarm_msgs::GlobalExtrinsic :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _extrinsic __extrinsic)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:extrinsic
   (&rest __extrinsic)
   (if (keywordp (car __extrinsic))
       (send* _extrinsic __extrinsic)
     (progn
       (if __extrinsic (setq _extrinsic (car __extrinsic)))
       _extrinsic)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _drone_id
    1
    ;; swarm_msgs/GlobalExtrinsic[] _extrinsic
    (apply #'+ (send-all _extrinsic :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _drone_id
       (write-byte _drone_id s)
     ;; swarm_msgs/GlobalExtrinsic[] _extrinsic
     (write-long (length _extrinsic) s)
     (dolist (elem _extrinsic)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _drone_id
     (setq _drone_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; swarm_msgs/GlobalExtrinsic[] _extrinsic
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _extrinsic (let (r) (dotimes (i n) (push (instance swarm_msgs::GlobalExtrinsic :init) r)) r))
     (dolist (elem- _extrinsic)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarm_msgs::GlobalExtrinsicStatus :md5sum-) "d0b0c9dc59b0fab5523a56f1f276faa9")
(setf (get swarm_msgs::GlobalExtrinsicStatus :datatype-) "swarm_msgs/GlobalExtrinsicStatus")
(setf (get swarm_msgs::GlobalExtrinsicStatus :definition-)
      "Header header
uint8 drone_id
GlobalExtrinsic[] extrinsic    # global extrinsic with other drones
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

================================================================================
MSG: swarm_msgs/GlobalExtrinsic
# GlobalExtrinsic.msg
uint8 teammate_id # The drone_id of teammates
float32[3] rot_deg
float32[3] trans
")



(provide :swarm_msgs/GlobalExtrinsicStatus "d0b0c9dc59b0fab5523a56f1f276faa9")


