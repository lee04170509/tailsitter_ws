;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::ObserveTeammate)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'ObserveTeammate (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::OBSERVETEAMMATE")
  (make-package "SWARM_MSGS::OBSERVETEAMMATE"))

(in-package "ROS")
;;//! \htmlinclude ObserveTeammate.msg.html


(defclass swarm_msgs::ObserveTeammate
  :super ros::object
  :slots (_is_observe _teammate_id _observed_pos ))

(defmethod swarm_msgs::ObserveTeammate
  (:init
   (&key
    ((:is_observe __is_observe) nil)
    ((:teammate_id __teammate_id) 0)
    ((:observed_pos __observed_pos) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _is_observe __is_observe)
   (setq _teammate_id (round __teammate_id))
   (setq _observed_pos __observed_pos)
   self)
  (:is_observe
   (&optional __is_observe)
   (if __is_observe (setq _is_observe __is_observe)) _is_observe)
  (:teammate_id
   (&optional __teammate_id)
   (if __teammate_id (setq _teammate_id __teammate_id)) _teammate_id)
  (:observed_pos
   (&optional __observed_pos)
   (if __observed_pos (setq _observed_pos __observed_pos)) _observed_pos)
  (:serialization-length
   ()
   (+
    ;; bool _is_observe
    1
    ;; uint8 _teammate_id
    1
    ;; float64[3] _observed_pos
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_observe
       (if _is_observe (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _teammate_id
       (write-byte _teammate_id s)
     ;; float64[3] _observed_pos
     (dotimes (i 3)
       (sys::poke (elt _observed_pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_observe
     (setq _is_observe (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _teammate_id
     (setq _teammate_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[3] _observed_pos
   (dotimes (i (length _observed_pos))
     (setf (elt _observed_pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get swarm_msgs::ObserveTeammate :md5sum-) "ee10052e28e277b9de819f4024962672")
(setf (get swarm_msgs::ObserveTeammate :datatype-) "swarm_msgs/ObserveTeammate")
(setf (get swarm_msgs::ObserveTeammate :definition-)
      "# ObserveTeammate.msg
bool is_observe # Observe teammate?
uint8 teammate_id # The drone_id of observed teammate
float64[3] observed_pos  # The position of the observed teammate in my body frame

")



(provide :swarm_msgs/ObserveTeammate "ee10052e28e277b9de819f4024962672")


