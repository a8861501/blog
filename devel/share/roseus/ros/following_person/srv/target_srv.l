;; Auto-generated. Do not edit!


(when (boundp 'following_person::target_srv)
  (if (not (find-package "FOLLOWING_PERSON"))
    (make-package "FOLLOWING_PERSON"))
  (shadow 'target_srv (find-package "FOLLOWING_PERSON")))
(unless (find-package "FOLLOWING_PERSON::TARGET_SRV")
  (make-package "FOLLOWING_PERSON::TARGET_SRV"))
(unless (find-package "FOLLOWING_PERSON::TARGET_SRVREQUEST")
  (make-package "FOLLOWING_PERSON::TARGET_SRVREQUEST"))
(unless (find-package "FOLLOWING_PERSON::TARGET_SRVRESPONSE")
  (make-package "FOLLOWING_PERSON::TARGET_SRVRESPONSE"))

(in-package "ROS")





(defclass following_person::target_srvRequest
  :super ros::object
  :slots (_id ))

(defmethod following_person::target_srvRequest
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int64 _id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass following_person::target_srvResponse
  :super ros::object
  :slots (_new_id ))

(defmethod following_person::target_srvResponse
  (:init
   (&key
    ((:new_id __new_id) 0)
    )
   (send-super :init)
   (setq _new_id (round __new_id))
   self)
  (:new_id
   (&optional __new_id)
   (if __new_id (setq _new_id __new_id)) _new_id)
  (:serialization-length
   ()
   (+
    ;; int64 _new_id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _new_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _new_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _new_id) (= (length (_new_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_new_id . bv) 0) 0) s)
              (write-long (ash (elt (_new_id . bv) 1) -1) s))
             ((and (class _new_id) (= (length (_new_id . bv)) 1)) ;; big1
              (write-long (elt (_new_id . bv) 0) s)
              (write-long (if (>= _new_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _new_id s)(write-long (if (>= _new_id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _new_id
#+(or :alpha :irix6 :x86_64)
      (setf _new_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _new_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass following_person::target_srv
  :super ros::object
  :slots ())

(setf (get following_person::target_srv :md5sum-) "a98d4a4909f050d0050807f31b37be61")
(setf (get following_person::target_srv :datatype-) "following_person/target_srv")
(setf (get following_person::target_srv :request) following_person::target_srvRequest)
(setf (get following_person::target_srv :response) following_person::target_srvResponse)

(defmethod following_person::target_srvRequest
  (:response () (instance following_person::target_srvResponse :init)))

(setf (get following_person::target_srvRequest :md5sum-) "a98d4a4909f050d0050807f31b37be61")
(setf (get following_person::target_srvRequest :datatype-) "following_person/target_srvRequest")
(setf (get following_person::target_srvRequest :definition-)
      "int64 id
---
int64 new_id
")

(setf (get following_person::target_srvResponse :md5sum-) "a98d4a4909f050d0050807f31b37be61")
(setf (get following_person::target_srvResponse :datatype-) "following_person/target_srvResponse")
(setf (get following_person::target_srvResponse :definition-)
      "int64 id
---
int64 new_id
")



(provide :following_person/target_srv "a98d4a4909f050d0050807f31b37be61")


