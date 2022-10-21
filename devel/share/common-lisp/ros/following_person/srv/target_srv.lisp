; Auto-generated. Do not edit!


(cl:in-package following_person-srv)


;//! \htmlinclude target_srv-request.msg.html

(cl:defclass <target_srv-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass target_srv-request (<target_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name following_person-srv:<target_srv-request> is deprecated: use following_person-srv:target_srv-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <target_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader following_person-srv:id-val is deprecated.  Use following_person-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_srv-request>) ostream)
  "Serializes a message object of type '<target_srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_srv-request>) istream)
  "Deserializes a message object of type '<target_srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target_srv-request>)))
  "Returns string type for a service object of type '<target_srv-request>"
  "following_person/target_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_srv-request)))
  "Returns string type for a service object of type 'target_srv-request"
  "following_person/target_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target_srv-request>)))
  "Returns md5sum for a message object of type '<target_srv-request>"
  "a98d4a4909f050d0050807f31b37be61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_srv-request)))
  "Returns md5sum for a message object of type 'target_srv-request"
  "a98d4a4909f050d0050807f31b37be61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_srv-request>)))
  "Returns full string definition for message of type '<target_srv-request>"
  (cl:format cl:nil "int64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_srv-request)))
  "Returns full string definition for message of type 'target_srv-request"
  (cl:format cl:nil "int64 id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_srv-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'target_srv-request
    (cl:cons ':id (id msg))
))
;//! \htmlinclude target_srv-response.msg.html

(cl:defclass <target_srv-response> (roslisp-msg-protocol:ros-message)
  ((new_id
    :reader new_id
    :initarg :new_id
    :type cl:integer
    :initform 0))
)

(cl:defclass target_srv-response (<target_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <target_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'target_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name following_person-srv:<target_srv-response> is deprecated: use following_person-srv:target_srv-response instead.")))

(cl:ensure-generic-function 'new_id-val :lambda-list '(m))
(cl:defmethod new_id-val ((m <target_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader following_person-srv:new_id-val is deprecated.  Use following_person-srv:new_id instead.")
  (new_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <target_srv-response>) ostream)
  "Serializes a message object of type '<target_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'new_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <target_srv-response>) istream)
  "Deserializes a message object of type '<target_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'new_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<target_srv-response>)))
  "Returns string type for a service object of type '<target_srv-response>"
  "following_person/target_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_srv-response)))
  "Returns string type for a service object of type 'target_srv-response"
  "following_person/target_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<target_srv-response>)))
  "Returns md5sum for a message object of type '<target_srv-response>"
  "a98d4a4909f050d0050807f31b37be61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'target_srv-response)))
  "Returns md5sum for a message object of type 'target_srv-response"
  "a98d4a4909f050d0050807f31b37be61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<target_srv-response>)))
  "Returns full string definition for message of type '<target_srv-response>"
  (cl:format cl:nil "int64 new_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'target_srv-response)))
  "Returns full string definition for message of type 'target_srv-response"
  (cl:format cl:nil "int64 new_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <target_srv-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <target_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'target_srv-response
    (cl:cons ':new_id (new_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'target_srv)))
  'target_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'target_srv)))
  'target_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'target_srv)))
  "Returns string type for a service object of type '<target_srv>"
  "following_person/target_srv")