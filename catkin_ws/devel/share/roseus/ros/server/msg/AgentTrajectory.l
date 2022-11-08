;; Auto-generated. Do not edit!


(when (boundp 'server::AgentTrajectory)
  (if (not (find-package "SERVER"))
    (make-package "SERVER"))
  (shadow 'AgentTrajectory (find-package "SERVER")))
(unless (find-package "SERVER::AGENTTRAJECTORY")
  (make-package "SERVER::AGENTTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude AgentTrajectory.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass server::AgentTrajectory
  :super ros::object
  :slots (_trajetory ))

(defmethod server::AgentTrajectory
  (:init
   (&key
    ((:trajetory __trajetory) ())
    )
   (send-super :init)
   (setq _trajetory __trajetory)
   self)
  (:trajetory
   (&rest __trajetory)
   (if (keywordp (car __trajetory))
       (send* _trajetory __trajetory)
     (progn
       (if __trajetory (setq _trajetory (car __trajetory)))
       _trajetory)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[] _trajetory
    (apply #'+ (send-all _trajetory :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[] _trajetory
     (write-long (length _trajetory) s)
     (dolist (elem _trajetory)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[] _trajetory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajetory (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _trajetory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get server::AgentTrajectory :md5sum-) "03de543be07dd3938d8e0d46d2eeada0")
(setf (get server::AgentTrajectory :datatype-) "server/AgentTrajectory")
(setf (get server::AgentTrajectory :definition-)
      "geometry_msgs/Vector3[] trajetory
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :server/AgentTrajectory "03de543be07dd3938d8e0d46d2eeada0")


