; Auto-generated. Do not edit!


(cl:in-package following_person-msg)


;//! \htmlinclude rect_msg.msg.html

(cl:defclass <rect_msg> (roslisp-msg-protocol:ros-message)
  ((cx
    :reader cx
    :initarg :cx
    :type cl:integer
    :initform 0)
   (cy
    :reader cy
    :initarg :cy
    :type cl:integer
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:integer
    :initform 0))
)

(cl:defclass rect_msg (<rect_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rect_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rect_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name following_person-msg:<rect_msg> is deprecated: use following_person-msg:rect_msg instead.")))

(cl:ensure-generic-function 'cx-val :lambda-list '(m))
(cl:defmethod cx-val ((m <rect_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader following_person-msg:cx-val is deprecated.  Use following_person-msg:cx instead.")
  (cx m))

(cl:ensure-generic-function 'cy-val :lambda-list '(m))
(cl:defmethod cy-val ((m <rect_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader following_person-msg:cy-val is deprecated.  Use following_person-msg:cy instead.")
  (cy m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <rect_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader following_person-msg:label-val is deprecated.  Use following_person-msg:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rect_msg>) ostream)
  "Serializes a message object of type '<rect_msg>"
  (cl:let* ((signed (cl:slot-value msg 'cx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'label)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rect_msg>) istream)
  "Deserializes a message object of type '<rect_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cx) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cy) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rect_msg>)))
  "Returns string type for a message object of type '<rect_msg>"
  "following_person/rect_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rect_msg)))
  "Returns string type for a message object of type 'rect_msg"
  "following_person/rect_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rect_msg>)))
  "Returns md5sum for a message object of type '<rect_msg>"
  "048e16c767ef5ede95b8620142d8975c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rect_msg)))
  "Returns md5sum for a message object of type 'rect_msg"
  "048e16c767ef5ede95b8620142d8975c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rect_msg>)))
  "Returns full string definition for message of type '<rect_msg>"
  (cl:format cl:nil "int64 cx~%int64 cy~%int64 label~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rect_msg)))
  "Returns full string definition for message of type 'rect_msg"
  (cl:format cl:nil "int64 cx~%int64 cy~%int64 label~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rect_msg>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rect_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'rect_msg
    (cl:cons ':cx (cx msg))
    (cl:cons ':cy (cy msg))
    (cl:cons ':label (label msg))
))
