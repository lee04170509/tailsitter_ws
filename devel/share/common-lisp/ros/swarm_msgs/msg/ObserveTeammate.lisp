; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude ObserveTeammate.msg.html

(cl:defclass <ObserveTeammate> (roslisp-msg-protocol:ros-message)
  ((is_observe
    :reader is_observe
    :initarg :is_observe
    :type cl:boolean
    :initform cl:nil)
   (teammate_id
    :reader teammate_id
    :initarg :teammate_id
    :type cl:fixnum
    :initform 0)
   (observed_pos
    :reader observed_pos
    :initarg :observed_pos
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ObserveTeammate (<ObserveTeammate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObserveTeammate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObserveTeammate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<ObserveTeammate> is deprecated: use swarm_msgs-msg:ObserveTeammate instead.")))

(cl:ensure-generic-function 'is_observe-val :lambda-list '(m))
(cl:defmethod is_observe-val ((m <ObserveTeammate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_observe-val is deprecated.  Use swarm_msgs-msg:is_observe instead.")
  (is_observe m))

(cl:ensure-generic-function 'teammate_id-val :lambda-list '(m))
(cl:defmethod teammate_id-val ((m <ObserveTeammate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:teammate_id-val is deprecated.  Use swarm_msgs-msg:teammate_id instead.")
  (teammate_id m))

(cl:ensure-generic-function 'observed_pos-val :lambda-list '(m))
(cl:defmethod observed_pos-val ((m <ObserveTeammate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:observed_pos-val is deprecated.  Use swarm_msgs-msg:observed_pos instead.")
  (observed_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObserveTeammate>) ostream)
  "Serializes a message object of type '<ObserveTeammate>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_observe) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'teammate_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'observed_pos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObserveTeammate>) istream)
  "Deserializes a message object of type '<ObserveTeammate>"
    (cl:setf (cl:slot-value msg 'is_observe) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'teammate_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'observed_pos) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'observed_pos)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObserveTeammate>)))
  "Returns string type for a message object of type '<ObserveTeammate>"
  "swarm_msgs/ObserveTeammate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObserveTeammate)))
  "Returns string type for a message object of type 'ObserveTeammate"
  "swarm_msgs/ObserveTeammate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObserveTeammate>)))
  "Returns md5sum for a message object of type '<ObserveTeammate>"
  "ee10052e28e277b9de819f4024962672")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObserveTeammate)))
  "Returns md5sum for a message object of type 'ObserveTeammate"
  "ee10052e28e277b9de819f4024962672")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObserveTeammate>)))
  "Returns full string definition for message of type '<ObserveTeammate>"
  (cl:format cl:nil "# ObserveTeammate.msg~%bool is_observe # Observe teammate?~%uint8 teammate_id # The drone_id of observed teammate~%float64[3] observed_pos  # The position of the observed teammate in my body frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObserveTeammate)))
  "Returns full string definition for message of type 'ObserveTeammate"
  (cl:format cl:nil "# ObserveTeammate.msg~%bool is_observe # Observe teammate?~%uint8 teammate_id # The drone_id of observed teammate~%float64[3] observed_pos  # The position of the observed teammate in my body frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObserveTeammate>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'observed_pos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObserveTeammate>))
  "Converts a ROS message object to a list"
  (cl:list 'ObserveTeammate
    (cl:cons ':is_observe (is_observe msg))
    (cl:cons ':teammate_id (teammate_id msg))
    (cl:cons ':observed_pos (observed_pos msg))
))
