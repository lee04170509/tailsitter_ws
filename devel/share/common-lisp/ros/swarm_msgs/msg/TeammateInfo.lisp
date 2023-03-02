; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude TeammateInfo.msg.html

(cl:defclass <TeammateInfo> (roslisp-msg-protocol:ros-message)
  ((is_connect
    :reader is_connect
    :initarg :is_connect
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (ip
    :reader ip
    :initarg :ip
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 4 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TeammateInfo (<TeammateInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TeammateInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TeammateInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<TeammateInfo> is deprecated: use swarm_msgs-msg:TeammateInfo instead.")))

(cl:ensure-generic-function 'is_connect-val :lambda-list '(m))
(cl:defmethod is_connect-val ((m <TeammateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_connect-val is deprecated.  Use swarm_msgs-msg:is_connect instead.")
  (is_connect m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TeammateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:id-val is deprecated.  Use swarm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'ip-val :lambda-list '(m))
(cl:defmethod ip-val ((m <TeammateInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:ip-val is deprecated.  Use swarm_msgs-msg:ip instead.")
  (ip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TeammateInfo>) ostream)
  "Serializes a message object of type '<TeammateInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_connect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ip))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TeammateInfo>) istream)
  "Deserializes a message object of type '<TeammateInfo>"
    (cl:setf (cl:slot-value msg 'is_connect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ip) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'ip)))
    (cl:dotimes (i 4)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TeammateInfo>)))
  "Returns string type for a message object of type '<TeammateInfo>"
  "swarm_msgs/TeammateInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TeammateInfo)))
  "Returns string type for a message object of type 'TeammateInfo"
  "swarm_msgs/TeammateInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TeammateInfo>)))
  "Returns md5sum for a message object of type '<TeammateInfo>"
  "56988bb506b9d5644a48ab398ffc0930")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TeammateInfo)))
  "Returns md5sum for a message object of type 'TeammateInfo"
  "56988bb506b9d5644a48ab398ffc0930")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TeammateInfo>)))
  "Returns full string definition for message of type '<TeammateInfo>"
  (cl:format cl:nil "# teammate info~%bool is_connect~%uint8 id~%uint8[4] ip~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TeammateInfo)))
  "Returns full string definition for message of type 'TeammateInfo"
  (cl:format cl:nil "# teammate info~%bool is_connect~%uint8 id~%uint8[4] ip~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TeammateInfo>))
  (cl:+ 0
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ip) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TeammateInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TeammateInfo
    (cl:cons ':is_connect (is_connect msg))
    (cl:cons ':id (id msg))
    (cl:cons ':ip (ip msg))
))
