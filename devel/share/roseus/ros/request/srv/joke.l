;; Auto-generated. Do not edit!


(when (boundp 'request::joke)
  (if (not (find-package "REQUEST"))
    (make-package "REQUEST"))
  (shadow 'joke (find-package "REQUEST")))
(unless (find-package "REQUEST::JOKE")
  (make-package "REQUEST::JOKE"))
(unless (find-package "REQUEST::JOKEREQUEST")
  (make-package "REQUEST::JOKEREQUEST"))
(unless (find-package "REQUEST::JOKERESPONSE")
  (make-package "REQUEST::JOKERESPONSE"))

(in-package "ROS")





(defclass request::jokeRequest
  :super ros::object
  :slots (_joke_type ))

(defmethod request::jokeRequest
  (:init
   (&key
    ((:joke_type __joke_type) "")
    )
   (send-super :init)
   (setq _joke_type (string __joke_type))
   self)
  (:joke_type
   (&optional __joke_type)
   (if __joke_type (setq _joke_type __joke_type)) _joke_type)
  (:serialization-length
   ()
   (+
    ;; string _joke_type
    4 (length _joke_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joke_type
       (write-long (length _joke_type) s) (princ _joke_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joke_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joke_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass request::jokeResponse
  :super ros::object
  :slots (_joke_return ))

(defmethod request::jokeResponse
  (:init
   (&key
    ((:joke_return __joke_return) "")
    )
   (send-super :init)
   (setq _joke_return (string __joke_return))
   self)
  (:joke_return
   (&optional __joke_return)
   (if __joke_return (setq _joke_return __joke_return)) _joke_return)
  (:serialization-length
   ()
   (+
    ;; string _joke_return
    4 (length _joke_return)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joke_return
       (write-long (length _joke_return) s) (princ _joke_return s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joke_return
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joke_return (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass request::joke
  :super ros::object
  :slots ())

(setf (get request::joke :md5sum-) "5fc16477632f4b449d909f518ab669aa")
(setf (get request::joke :datatype-) "request/joke")
(setf (get request::joke :request) request::jokeRequest)
(setf (get request::joke :response) request::jokeResponse)

(defmethod request::jokeRequest
  (:response () (instance request::jokeResponse :init)))

(setf (get request::jokeRequest :md5sum-) "5fc16477632f4b449d909f518ab669aa")
(setf (get request::jokeRequest :datatype-) "request/jokeRequest")
(setf (get request::jokeRequest :definition-)
      "string joke_type
---
string joke_return

")

(setf (get request::jokeResponse :md5sum-) "5fc16477632f4b449d909f518ab669aa")
(setf (get request::jokeResponse :datatype-) "request/jokeResponse")
(setf (get request::jokeResponse :definition-)
      "string joke_type
---
string joke_return

")



(provide :request/joke "5fc16477632f4b449d909f518ab669aa")


