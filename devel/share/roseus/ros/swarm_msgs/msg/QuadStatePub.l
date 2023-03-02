;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::QuadStatePub)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'QuadStatePub (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::QUADSTATEPUB")
  (make-package "SWARM_MSGS::QUADSTATEPUB"))

(in-package "ROS")
;;//! \htmlinclude QuadStatePub.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::QuadStatePub
  :super ros::object
  :slots (_header _child_frame_id _drone_id _pose _gyr _vel _teammate ))

(defmethod swarm_msgs::QuadStatePub
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:child_frame_id __child_frame_id) "")
    ((:drone_id __drone_id) 0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:gyr __gyr) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:vel __vel) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:teammate __teammate) (let (r) (dotimes (i 0) (push (instance swarm_msgs::ObserveTeammate :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _child_frame_id (string __child_frame_id))
   (setq _drone_id (round __drone_id))
   (setq _pose __pose)
   (setq _gyr __gyr)
   (setq _vel __vel)
   (setq _teammate __teammate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:child_frame_id
   (&optional __child_frame_id)
   (if __child_frame_id (setq _child_frame_id __child_frame_id)) _child_frame_id)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:gyr
   (&optional __gyr)
   (if __gyr (setq _gyr __gyr)) _gyr)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:teammate
   (&rest __teammate)
   (if (keywordp (car __teammate))
       (send* _teammate __teammate)
     (progn
       (if __teammate (setq _teammate (car __teammate)))
       _teammate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _child_frame_id
    4 (length _child_frame_id)
    ;; uint8 _drone_id
    1
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; float64[3] _gyr
    (* 8    3)
    ;; float64[3] _vel
    (* 8    3)
    ;; swarm_msgs/ObserveTeammate[] _teammate
    (apply #'+ (send-all _teammate :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _child_frame_id
       (write-long (length _child_frame_id) s) (princ _child_frame_id s)
     ;; uint8 _drone_id
       (write-byte _drone_id s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; float64[3] _gyr
     (dotimes (i 3)
       (sys::poke (elt _gyr i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _vel
     (dotimes (i 3)
       (sys::poke (elt _vel i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; swarm_msgs/ObserveTeammate[] _teammate
     (write-long (length _teammate) s)
     (dolist (elem _teammate)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _child_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _child_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _drone_id
     (setq _drone_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[3] _gyr
   (dotimes (i (length _gyr))
     (setf (elt _gyr i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _vel
   (dotimes (i (length _vel))
     (setf (elt _vel i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; swarm_msgs/ObserveTeammate[] _teammate
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _teammate (let (r) (dotimes (i n) (push (instance swarm_msgs::ObserveTeammate :init) r)) r))
     (dolist (elem- _teammate)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarm_msgs::QuadStatePub :md5sum-) "65d59f5da6457206c68b9bc124d5df51")
(setf (get swarm_msgs::QuadStatePub :datatype-) "swarm_msgs/QuadStatePub")
(setf (get swarm_msgs::QuadStatePub :definition-)
      "# QuadStatePub.msg

Header header
string child_frame_id
uint8 drone_id                        # My drone id
geometry_msgs/PoseWithCovariance pose # My pose and corresponding covariance in my world frame
float64[3] gyr                        # the unbiased angular velocity (body frame) of the body origin
float64[3] vel                        # the estimated velocity (global frame) of the body origin
ObserveTeammate[] teammate            # Teammates' states observed by me




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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: swarm_msgs/ObserveTeammate
# ObserveTeammate.msg
bool is_observe # Observe teammate?
uint8 teammate_id # The drone_id of observed teammate
float64[3] observed_pos  # The position of the observed teammate in my body frame

")



(provide :swarm_msgs/QuadStatePub "65d59f5da6457206c68b9bc124d5df51")


