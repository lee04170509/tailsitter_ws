; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude TeamStatus.msg.html

(cl:defclass <TeamStatus> (roslisp-msg-protocol:ros-message)
  ((my_drone_id
    :reader my_drone_id
    :initarg :my_drone_id
    :type cl:fixnum
    :initform 0)
   (teammate_info
    :reader teammate_info
    :initarg :teammate_info
    :type (cl:vector swarm_msgs-msg:TeammateInfo)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:TeammateInfo :initial-element (cl:make-instance 'swarm_msgs-msg:TeammateInfo))))
)

(cl:defclass TeamStatus (<TeamStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeamStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeamStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<TeamStatus> is deprecated: use swarm_msgs-msg:TeamStatus instead.")))

(cl:ensure-generic-function 'my_drone_id-val :lambda-list '(m))
(cl:defmethod my_drone_id-val ((m <TeamStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:my_drone_id-val is deprecated.  Use swarm_msgs-msg:my_drone_id instead.")
  (my_drone_id m))

(cl:ensure-generic-function 'teammate_info-val :lambda-list '(m))
(cl:defmethod teammate_info-val ((m <TeamStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:teammate_info-val is deprecated.  Use swarm_msgs-msg:teammate_info instead.")
  (teammate_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeamStatus>) ostream)
  "Serializes a message object of type '<TeamStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'my_drone_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'teammate_info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'teammate_info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeamStatus>) istream)
  "Deserializes a message object of type '<TeamStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'my_drone_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'teammate_info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'teammate_info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:TeammateInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeamStatus>)))
  "Returns string type for a message object of type '<TeamStatus>"
  "swarm_msgs/TeamStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeamStatus)))
  "Returns string type for a message object of type 'TeamStatus"
  "swarm_msgs/TeamStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeamStatus>)))
  "Returns md5sum for a message object of type '<TeamStatus>"
  "73da6a2eee2932c533bd709d771dd1f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeamStatus)))
  "Returns md5sum for a message object of type 'TeamStatus"
  "73da6a2eee2932c533bd709d771dd1f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeamStatus>)))
  "Returns full string definition for message of type '<TeamStatus>"
  (cl:format cl:nil "# Team~%uint8 my_drone_id~%TeammateInfo[] teammate_info~%~%================================================================================~%MSG: swarm_msgs/TeammateInfo~%# teammate info~%bool is_connect~%uint8 id~%uint8[4] ip~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeamStatus)))
  "Returns full string definition for message of type 'TeamStatus"
  (cl:format cl:nil "# Team~%uint8 my_drone_id~%TeammateInfo[] teammate_info~%~%================================================================================~%MSG: swarm_msgs/TeammateInfo~%# teammate info~%bool is_connect~%uint8 id~%uint8[4] ip~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeamStatus>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'teammate_info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeamStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TeamStatus
    (cl:cons ':my_drone_id (my_drone_id msg))
    (cl:cons ':teammate_info (teammate_info msg))
))
