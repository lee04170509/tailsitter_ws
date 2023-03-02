; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude GlobalExtrinsicStatus.msg.html

(cl:defclass <GlobalExtrinsicStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:fixnum
    :initform 0)
   (extrinsic
    :reader extrinsic
    :initarg :extrinsic
    :type (cl:vector swarm_msgs-msg:GlobalExtrinsic)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:GlobalExtrinsic :initial-element (cl:make-instance 'swarm_msgs-msg:GlobalExtrinsic))))
)

(cl:defclass GlobalExtrinsicStatus (<GlobalExtrinsicStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalExtrinsicStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalExtrinsicStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<GlobalExtrinsicStatus> is deprecated: use swarm_msgs-msg:GlobalExtrinsicStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GlobalExtrinsicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <GlobalExtrinsicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:drone_id-val is deprecated.  Use swarm_msgs-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'extrinsic-val :lambda-list '(m))
(cl:defmethod extrinsic-val ((m <GlobalExtrinsicStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:extrinsic-val is deprecated.  Use swarm_msgs-msg:extrinsic instead.")
  (extrinsic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalExtrinsicStatus>) ostream)
  "Serializes a message object of type '<GlobalExtrinsicStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'extrinsic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'extrinsic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalExtrinsicStatus>) istream)
  "Deserializes a message object of type '<GlobalExtrinsicStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'extrinsic) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'extrinsic)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:GlobalExtrinsic))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalExtrinsicStatus>)))
  "Returns string type for a message object of type '<GlobalExtrinsicStatus>"
  "swarm_msgs/GlobalExtrinsicStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalExtrinsicStatus)))
  "Returns string type for a message object of type 'GlobalExtrinsicStatus"
  "swarm_msgs/GlobalExtrinsicStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalExtrinsicStatus>)))
  "Returns md5sum for a message object of type '<GlobalExtrinsicStatus>"
  "d0b0c9dc59b0fab5523a56f1f276faa9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalExtrinsicStatus)))
  "Returns md5sum for a message object of type 'GlobalExtrinsicStatus"
  "d0b0c9dc59b0fab5523a56f1f276faa9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalExtrinsicStatus>)))
  "Returns full string definition for message of type '<GlobalExtrinsicStatus>"
  (cl:format cl:nil "Header header~%uint8 drone_id~%GlobalExtrinsic[] extrinsic    # global extrinsic with other drones~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/GlobalExtrinsic~%# GlobalExtrinsic.msg~%uint8 teammate_id # The drone_id of teammates~%float32[3] rot_deg~%float32[3] trans~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalExtrinsicStatus)))
  "Returns full string definition for message of type 'GlobalExtrinsicStatus"
  (cl:format cl:nil "Header header~%uint8 drone_id~%GlobalExtrinsic[] extrinsic    # global extrinsic with other drones~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/GlobalExtrinsic~%# GlobalExtrinsic.msg~%uint8 teammate_id # The drone_id of teammates~%float32[3] rot_deg~%float32[3] trans~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalExtrinsicStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'extrinsic) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalExtrinsicStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalExtrinsicStatus
    (cl:cons ':header (header msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':extrinsic (extrinsic msg))
))
