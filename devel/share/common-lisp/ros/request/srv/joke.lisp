; Auto-generated. Do not edit!


(cl:in-package request-srv)


;//! \htmlinclude joke-request.msg.html

(cl:defclass <joke-request> (roslisp-msg-protocol:ros-message)
  ((joke_type
    :reader joke_type
    :initarg :joke_type
    :type cl:string
    :initform ""))
)

(cl:defclass joke-request (<joke-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joke-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joke-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name request-srv:<joke-request> is deprecated: use request-srv:joke-request instead.")))

(cl:ensure-generic-function 'joke_type-val :lambda-list '(m))
(cl:defmethod joke_type-val ((m <joke-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader request-srv:joke_type-val is deprecated.  Use request-srv:joke_type instead.")
  (joke_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joke-request>) ostream)
  "Serializes a message object of type '<joke-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joke_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joke_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joke-request>) istream)
  "Deserializes a message object of type '<joke-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joke_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joke_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joke-request>)))
  "Returns string type for a service object of type '<joke-request>"
  "request/jokeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joke-request)))
  "Returns string type for a service object of type 'joke-request"
  "request/jokeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joke-request>)))
  "Returns md5sum for a message object of type '<joke-request>"
  "5fc16477632f4b449d909f518ab669aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joke-request)))
  "Returns md5sum for a message object of type 'joke-request"
  "5fc16477632f4b449d909f518ab669aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joke-request>)))
  "Returns full string definition for message of type '<joke-request>"
  (cl:format cl:nil "string joke_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joke-request)))
  "Returns full string definition for message of type 'joke-request"
  (cl:format cl:nil "string joke_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joke-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joke_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joke-request>))
  "Converts a ROS message object to a list"
  (cl:list 'joke-request
    (cl:cons ':joke_type (joke_type msg))
))
;//! \htmlinclude joke-response.msg.html

(cl:defclass <joke-response> (roslisp-msg-protocol:ros-message)
  ((joke_return
    :reader joke_return
    :initarg :joke_return
    :type cl:string
    :initform ""))
)

(cl:defclass joke-response (<joke-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <joke-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'joke-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name request-srv:<joke-response> is deprecated: use request-srv:joke-response instead.")))

(cl:ensure-generic-function 'joke_return-val :lambda-list '(m))
(cl:defmethod joke_return-val ((m <joke-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader request-srv:joke_return-val is deprecated.  Use request-srv:joke_return instead.")
  (joke_return m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <joke-response>) ostream)
  "Serializes a message object of type '<joke-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joke_return))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joke_return))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <joke-response>) istream)
  "Deserializes a message object of type '<joke-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joke_return) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joke_return) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<joke-response>)))
  "Returns string type for a service object of type '<joke-response>"
  "request/jokeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joke-response)))
  "Returns string type for a service object of type 'joke-response"
  "request/jokeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<joke-response>)))
  "Returns md5sum for a message object of type '<joke-response>"
  "5fc16477632f4b449d909f518ab669aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'joke-response)))
  "Returns md5sum for a message object of type 'joke-response"
  "5fc16477632f4b449d909f518ab669aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<joke-response>)))
  "Returns full string definition for message of type '<joke-response>"
  (cl:format cl:nil "string joke_return~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'joke-response)))
  "Returns full string definition for message of type 'joke-response"
  (cl:format cl:nil "string joke_return~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <joke-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joke_return))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <joke-response>))
  "Converts a ROS message object to a list"
  (cl:list 'joke-response
    (cl:cons ':joke_return (joke_return msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'joke)))
  'joke-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'joke)))
  'joke-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'joke)))
  "Returns string type for a service object of type '<joke>"
  "request/joke")