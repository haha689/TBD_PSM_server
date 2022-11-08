; Auto-generated. Do not edit!


(cl:in-package server-msg)


;//! \htmlinclude AgentTrajectory.msg.html

(cl:defclass <AgentTrajectory> (roslisp-msg-protocol:ros-message)
  ((trajetory
    :reader trajetory
    :initarg :trajetory
    :type (cl:vector geometry_msgs-msg:Vector3)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Vector3 :initial-element (cl:make-instance 'geometry_msgs-msg:Vector3))))
)

(cl:defclass AgentTrajectory (<AgentTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name server-msg:<AgentTrajectory> is deprecated: use server-msg:AgentTrajectory instead.")))

(cl:ensure-generic-function 'trajetory-val :lambda-list '(m))
(cl:defmethod trajetory-val ((m <AgentTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader server-msg:trajetory-val is deprecated.  Use server-msg:trajetory instead.")
  (trajetory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentTrajectory>) ostream)
  "Serializes a message object of type '<AgentTrajectory>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajetory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajetory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentTrajectory>) istream)
  "Deserializes a message object of type '<AgentTrajectory>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajetory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajetory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Vector3))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentTrajectory>)))
  "Returns string type for a message object of type '<AgentTrajectory>"
  "server/AgentTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentTrajectory)))
  "Returns string type for a message object of type 'AgentTrajectory"
  "server/AgentTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentTrajectory>)))
  "Returns md5sum for a message object of type '<AgentTrajectory>"
  "03de543be07dd3938d8e0d46d2eeada0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentTrajectory)))
  "Returns md5sum for a message object of type 'AgentTrajectory"
  "03de543be07dd3938d8e0d46d2eeada0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentTrajectory>)))
  "Returns full string definition for message of type '<AgentTrajectory>"
  (cl:format cl:nil "geometry_msgs/Vector3[] trajetory~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentTrajectory)))
  "Returns full string definition for message of type 'AgentTrajectory"
  (cl:format cl:nil "geometry_msgs/Vector3[] trajetory~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentTrajectory>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajetory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentTrajectory
    (cl:cons ':trajetory (trajetory msg))
))
