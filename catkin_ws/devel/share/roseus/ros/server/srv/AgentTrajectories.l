;; Auto-generated. Do not edit!


(when (boundp 'server::AgentTrajectories)
  (if (not (find-package "SERVER"))
    (make-package "SERVER"))
  (shadow 'AgentTrajectories (find-package "SERVER")))
(unless (find-package "SERVER::AGENTTRAJECTORIES")
  (make-package "SERVER::AGENTTRAJECTORIES"))
(unless (find-package "SERVER::AGENTTRAJECTORIESREQUEST")
  (make-package "SERVER::AGENTTRAJECTORIESREQUEST"))
(unless (find-package "SERVER::AGENTTRAJECTORIESRESPONSE")
  (make-package "SERVER::AGENTTRAJECTORIESRESPONSE"))

(in-package "ROS")





(defclass server::AgentTrajectoriesRequest
  :super ros::object
  :slots (_trajetories ))

(defmethod server::AgentTrajectoriesRequest
  (:init
   (&key
    ((:trajetories __trajetories) ())
    )
   (send-super :init)
   (setq _trajetories __trajetories)
   self)
  (:trajetories
   (&rest __trajetories)
   (if (keywordp (car __trajetories))
       (send* _trajetories __trajetories)
     (progn
       (if __trajetories (setq _trajetories (car __trajetories)))
       _trajetories)))
  (:serialization-length
   ()
   (+
    ;; server/AgentTrajectory[] _trajetories
    (apply #'+ (send-all _trajetories :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; server/AgentTrajectory[] _trajetories
     (write-long (length _trajetories) s)
     (dolist (elem _trajetories)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; server/AgentTrajectory[] _trajetories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajetories (let (r) (dotimes (i n) (push (instance server::AgentTrajectory :init) r)) r))
     (dolist (elem- _trajetories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass server::AgentTrajectoriesResponse
  :super ros::object
  :slots (_radii ))

(defmethod server::AgentTrajectoriesResponse
  (:init
   (&key
    ((:radii __radii) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _radii __radii)
   self)
  (:radii
   (&optional __radii)
   (if __radii (setq _radii __radii)) _radii)
  (:serialization-length
   ()
   (+
    ;; float64[] _radii
    (* 8    (length _radii)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _radii
     (write-long (length _radii) s)
     (dotimes (i (length _radii))
       (sys::poke (elt _radii i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _radii
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _radii (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _radii i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass server::AgentTrajectories
  :super ros::object
  :slots ())

(setf (get server::AgentTrajectories :md5sum-) "85c557dfbba925aa1e8e38fb4786f127")
(setf (get server::AgentTrajectories :datatype-) "server/AgentTrajectories")
(setf (get server::AgentTrajectories :request) server::AgentTrajectoriesRequest)
(setf (get server::AgentTrajectories :response) server::AgentTrajectoriesResponse)

(defmethod server::AgentTrajectoriesRequest
  (:response () (instance server::AgentTrajectoriesResponse :init)))

(setf (get server::AgentTrajectoriesRequest :md5sum-) "85c557dfbba925aa1e8e38fb4786f127")
(setf (get server::AgentTrajectoriesRequest :datatype-) "server/AgentTrajectoriesRequest")
(setf (get server::AgentTrajectoriesRequest :definition-)
      "AgentTrajectory[] trajetories

================================================================================
MSG: server/AgentTrajectory
geometry_msgs/Vector3[] trajetory
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
---
float64[] radii
")

(setf (get server::AgentTrajectoriesResponse :md5sum-) "85c557dfbba925aa1e8e38fb4786f127")
(setf (get server::AgentTrajectoriesResponse :datatype-) "server/AgentTrajectoriesResponse")
(setf (get server::AgentTrajectoriesResponse :definition-)
      "AgentTrajectory[] trajetories

================================================================================
MSG: server/AgentTrajectory
geometry_msgs/Vector3[] trajetory
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
---
float64[] radii
")



(provide :server/AgentTrajectories "85c557dfbba925aa1e8e38fb4786f127")


