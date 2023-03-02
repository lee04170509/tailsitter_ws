; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude GlobalExtrinsic.msg.html

(cl:defclass <GlobalExtrinsic> (roslisp-msg-protocol:ros-message)
  ((teammate_id
    :reader teammate_id
    :initarg :teammate_id
    :type cl:fixnum
    :initform 0)
   (rot_deg
    :reader rot_deg
    :initarg :rot_deg
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (trans
    :reader trans
    :initarg :trans
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GlobalExtrinsic (<GlobalExtrinsic>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalExtrinsic>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalExtrinsic)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<GlobalExtrinsic> is deprecated: use swarm_msgs-msg:GlobalExtrinsic instead.")))

(cl:ensure-generic-function 'teammate_id-val :lambda-list '(m))
(cl:defmethod teammate_id-val ((m <GlobalExtrinsic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:teammate_id-val is deprecated.  Use swarm_msgs-msg:teammate_id instead.")
  (teammate_id m))

(cl:ensure-generic-function 'rot_deg-val :lambda-list '(m))
(cl:defmethod rot_deg-val ((m <GlobalExtrinsic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:rot_deg-val is deprecated.  Use swarm_msgs-msg:rot_deg instead.")
  (rot_deg m))

(cl:ensure-generic-function 'trans-val :lambda-list '(m))
(cl:defmethod trans-val ((m <GlobalExtrinsic>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:trans-val is deprecated.  Use swarm_msgs-msg:trans instead.")
  (trans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalExtrinsic>) ostream)
  "Serializes a message object of type '<GlobalExtrinsic>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'teammate_id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rot_deg))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'trans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalExtrinsic>) istream)
  "Deserializes a message object of type '<GlobalExtrinsic>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'teammate_id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rot_deg) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'rot_deg)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'trans) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'trans)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalExtrinsic>)))
  "Returns string type for a message object of type '<GlobalExtrinsic>"
  "swarm_msgs/GlobalExtrinsic")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalExtrinsic)))
  "Returns string type for a message object of type 'GlobalExtrinsic"
  "swarm_msgs/GlobalExtrinsic")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalExtrinsic>)))
  "Returns md5sum for a message object of type '<GlobalExtrinsic>"
  "1a76ac5934d5f766451f12a662f47943")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalExtrinsic)))
  "Returns md5sum for a message object of type 'GlobalExtrinsic"
  "1a76ac5934d5f766451f12a662f47943")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalExtrinsic>)))
  "Returns full string definition for message of type '<GlobalExtrinsic>"
  (cl:format cl:nil "# GlobalExtrinsic.msg~%uint8 teammate_id # The drone_id of teammates~%float32[3] rot_deg~%float32[3] trans~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalExtrinsic)))
  "Returns full string definition for message of type 'GlobalExtrinsic"
  (cl:format cl:nil "# GlobalExtrinsic.msg~%uint8 teammate_id # The drone_id of teammates~%float32[3] rot_deg~%float32[3] trans~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalExtrinsic>))
  (cl:+ 0
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rot_deg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'trans) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalExtrinsic>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalExtrinsic
    (cl:cons ':teammate_id (teammate_id msg))
    (cl:cons ':rot_deg (rot_deg msg))
    (cl:cons ':trans (trans msg))
))
