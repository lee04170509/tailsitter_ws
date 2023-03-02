;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::GlobalExtrinsic)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'GlobalExtrinsic (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::GLOBALEXTRINSIC")
  (make-package "SWARM_MSGS::GLOBALEXTRINSIC"))

(in-package "ROS")
;;//! \htmlinclude GlobalExtrinsic.msg.html


(defclass swarm_msgs::GlobalExtrinsic
  :super ros::object
  :slots (_teammate_id _rot_deg _trans ))

(defmethod swarm_msgs::GlobalExtrinsic
  (:init
   (&key
    ((:teammate_id __teammate_id) 0)
    ((:rot_deg __rot_deg) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:trans __trans) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _teammate_id (round __teammate_id))
   (setq _rot_deg __rot_deg)
   (setq _trans __trans)
   self)
  (:teammate_id
   (&optional __teammate_id)
   (if __teammate_id (setq _teammate_id __teammate_id)) _teammate_id)
  (:rot_deg
   (&optional __rot_deg)
   (if __rot_deg (setq _rot_deg __rot_deg)) _rot_deg)
  (:trans
   (&optional __trans)
   (if __trans (setq _trans __trans)) _trans)
  (:serialization-length
   ()
   (+
    ;; uint8 _teammate_id
    1
    ;; float32[3] _rot_deg
    (* 4    3)
    ;; float32[3] _trans
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _teammate_id
       (write-byte _teammate_id s)
     ;; float32[3] _rot_deg
     (dotimes (i 3)
       (sys::poke (elt _rot_deg i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _trans
     (dotimes (i 3)
       (sys::poke (elt _trans i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _teammate_id
     (setq _teammate_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32[3] _rot_deg
   (dotimes (i (length _rot_deg))
     (setf (elt _rot_deg i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _trans
   (dotimes (i (length _trans))
     (setf (elt _trans i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get swarm_msgs::GlobalExtrinsic :md5sum-) "1a76ac5934d5f766451f12a662f47943")
(setf (get swarm_msgs::GlobalExtrinsic :datatype-) "swarm_msgs/GlobalExtrinsic")
(setf (get swarm_msgs::GlobalExtrinsic :definition-)
      "# GlobalExtrinsic.msg
uint8 teammate_id # The drone_id of teammates
float32[3] rot_deg
float32[3] trans
")



(provide :swarm_msgs/GlobalExtrinsic "1a76ac5934d5f766451f12a662f47943")


