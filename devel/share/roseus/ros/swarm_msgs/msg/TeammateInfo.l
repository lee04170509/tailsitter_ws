;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::TeammateInfo)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'TeammateInfo (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::TEAMMATEINFO")
  (make-package "SWARM_MSGS::TEAMMATEINFO"))

(in-package "ROS")
;;//! \htmlinclude TeammateInfo.msg.html


(defclass swarm_msgs::TeammateInfo
  :super ros::object
  :slots (_is_connect _id _ip ))

(defmethod swarm_msgs::TeammateInfo
  (:init
   (&key
    ((:is_connect __is_connect) nil)
    ((:id __id) 0)
    ((:ip __ip) (make-array 4 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _is_connect __is_connect)
   (setq _id (round __id))
   (setq _ip __ip)
   self)
  (:is_connect
   (&optional __is_connect)
   (if __is_connect (setq _is_connect __is_connect)) _is_connect)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:ip
   (&optional __ip)
   (if __ip (setq _ip __ip)) _ip)
  (:serialization-length
   ()
   (+
    ;; bool _is_connect
    1
    ;; uint8 _id
    1
    ;; uint8[4] _ip
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_connect
       (if _is_connect (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8[4] _ip
     (princ _ip s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_connect
     (setq _is_connect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[4] _ip
   (setq _ip (make-array 4 :element-type :char))
   (replace _ip buf :start2 ptr-) (incf ptr- 4)
   ;;
   self)
  )

(setf (get swarm_msgs::TeammateInfo :md5sum-) "56988bb506b9d5644a48ab398ffc0930")
(setf (get swarm_msgs::TeammateInfo :datatype-) "swarm_msgs/TeammateInfo")
(setf (get swarm_msgs::TeammateInfo :definition-)
      "# teammate info
bool is_connect
uint8 id
uint8[4] ip


")



(provide :swarm_msgs/TeammateInfo "56988bb506b9d5644a48ab398ffc0930")


