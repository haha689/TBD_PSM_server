; Auto-generated. Do not edit!


(cl:in-package server-srv)


;//! \htmlinclude AgentTrajectories-request.msg.html

(cl:defclass <AgentTrajectories-request> (roslisp-msg-protocol:ros-message)
  ((trajetories
    :reader trajetories
    :initarg :trajetories
    :type (cl:vector server-msg:AgentTrajectory)
   :initform (cl:make-array 0 :element-type 'server-msg:AgentTrajectory :initial-element (cl:make-instance 'server-msg:AgentTrajectory))))
)

(cl:defclass AgentTrajectories-request (<AgentTrajectories-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentTrajectories-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentTrajectories-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name server-srv:<AgentTrajectories-request> is deprecated: use server-srv:AgentTrajectories-request instead.")))

(cl:ensure-generic-function 'trajetories-val :lambda-list '(m))
(cl:defmethod trajetories-val ((m <AgentTrajectories-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-srv:trajetories-val is deprecated.  Use server-srv:trajetories instead.")
  (trajetories m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentTrajectories-request>) ostream)
  "Serializes a message object of type '<AgentTrajectories-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajetories))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajetories))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentTrajectories-request>) istream)
  "Deserializes a message object of type '<AgentTrajectories-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajetories) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajetories)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'server-msg:AgentTrajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentTrajectories-request>)))
  "Returns string type for a service object of type '<AgentTrajectories-request>"
  "server/AgentTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentTrajectories-request)))
  "Returns string type for a service object of type 'AgentTrajectories-request"
  "server/AgentTrajectoriesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentTrajectories-request>)))
  "Returns md5sum for a message object of type '<AgentTrajectories-request>"
  "85c557dfbba925aa1e8e38fb4786f127")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentTrajectories-request)))
  "Returns md5sum for a message object of type 'AgentTrajectories-request"
  "85c557dfbba925aa1e8e38fb4786f127")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentTrajectories-request>)))
  "Returns full string definition for message of type '<AgentTrajectories-request>"
  (cl:format cl:nil "AgentTrajectory[] trajetories~%~%================================================================================~%MSG: server/AgentTrajectory~%geometry_msgs/Vector3[] trajetory~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentTrajectories-request)))
  "Returns full string definition for message of type 'AgentTrajectories-request"
  (cl:format cl:nil "AgentTrajectory[] trajetories~%~%================================================================================~%MSG: server/AgentTrajectory~%geometry_msgs/Vector3[] trajetory~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentTrajectories-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajetories) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentTrajectories-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentTrajectories-request
    (cl:cons ':trajetories (trajetories msg))
))
;//! \htmlinclude AgentTrajectories-response.msg.html

(cl:defclass <AgentTrajectories-response> (roslisp-msg-protocol:ros-message)
  ((radii
    :reader radii
    :initarg :radii
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AgentTrajectories-response (<AgentTrajectories-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentTrajectories-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentTrajectories-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name server-srv:<AgentTrajectories-response> is deprecated: use server-srv:AgentTrajectories-response instead.")))

(cl:ensure-generic-function 'radii-val :lambda-list '(m))
(cl:defmethod radii-val ((m <AgentTrajectories-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-srv:radii-val is deprecated.  Use server-srv:radii instead.")
  (radii m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentTrajectories-response>) ostream)
  "Serializes a message object of type '<AgentTrajectories-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'radii))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'radii))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentTrajectories-response>) istream)
  "Deserializes a message object of type '<AgentTrajectories-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'radii) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'radii)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentTrajectories-response>)))
  "Returns string type for a service object of type '<AgentTrajectories-response>"
  "server/AgentTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentTrajectories-response)))
  "Returns string type for a service object of type 'AgentTrajectories-response"
  "server/AgentTrajectoriesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentTrajectories-response>)))
  "Returns md5sum for a message object of type '<AgentTrajectories-response>"
  "85c557dfbba925aa1e8e38fb4786f127")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentTrajectories-response)))
  "Returns md5sum for a message object of type 'AgentTrajectories-response"
  "85c557dfbba925aa1e8e38fb4786f127")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentTrajectories-response>)))
  "Returns full string definition for message of type '<AgentTrajectories-response>"
  (cl:format cl:nil "float64[] radii~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentTrajectories-response)))
  "Returns full string definition for message of type 'AgentTrajectories-response"
  (cl:format cl:nil "float64[] radii~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentTrajectories-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'radii) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentTrajectories-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentTrajectories-response
    (cl:cons ':radii (radii msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AgentTrajectories)))
  'AgentTrajectories-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AgentTrajectories)))
  'AgentTrajectories-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentTrajectories)))
  "Returns string type for a service object of type '<AgentTrajectories>"
  "server/AgentTrajectories")