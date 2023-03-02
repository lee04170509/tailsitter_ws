;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::TeamStatus)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'TeamStatus (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::TEAMSTATUS")
  (make-package "SWARM_MSGS::TEAMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TeamStatus.msg.html


(defclass swarm_msgs::TeamStatus
  :super ros::object
  :slots (_my_drone_id _teammate_info ))

(defmethod swarm_msgs::TeamStatus
  (:init
   (&key
    ((:my_drone_id __my_drone_id) 0)
    ((:teammate_info __teammate_info) (let (r) (dotimes (i 0) (push (instance swarm_msgs::TeammateInfo :init) r)) r))
    )
   (send-super :init)
   (setq _my_drone_id (round __my_drone_id))
   (setq _teammate_info __teammate_info)
   self)
  (:my_drone_id
   (&optional __my_drone_id)
   (if __my_drone_id (setq _my_drone_id __my_drone_id)) _my_drone_id)
  (:teammate_info
   (&rest __teammate_info)
   (if (keywordp (car __teammate_info))
       (send* _teammate_info __teammate_info)
     (progn
       (if __teammate_info (setq _teammate_info (car __teammate_info)))
       _teammate_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _my_drone_id
    1
    ;; swarm_msgs/TeammateInfo[] _teammate_info
    (apply #'+ (send-all _teammate_info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _my_drone_id
       (write-byte _my_drone_id s)
     ;; swarm_msgs/TeammateInfo[] _teammate_info
     (write-long (length _teammate_info) s)
     (dolist (elem _teammate_info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _my_drone_id
     (setq _my_drone_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; swarm_msgs/TeammateInfo[] _teammate_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _teammate_info (let (r) (dotimes (i n) (push (instance swarm_msgs::TeammateInfo :init) r)) r))
     (dolist (elem- _teammate_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarm_msgs::TeamStatus :md5sum-) "73da6a2eee2932c533bd709d771dd1f5")
(setf (get swarm_msgs::TeamStatus :datatype-) "swarm_msgs/TeamStatus")
(setf (get swarm_msgs::TeamStatus :definition-)
      "# Team
uint8 my_drone_id
TeammateInfo[] teammate_info

================================================================================
MSG: swarm_msgs/TeammateInfo
# teammate info
bool is_connect
uint8 id
uint8[4] ip


")



(provide :swarm_msgs/TeamStatus "73da6a2eee2932c533bd709d771dd1f5")


