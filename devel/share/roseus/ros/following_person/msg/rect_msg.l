;; Auto-generated. Do not edit!


(when (boundp 'following_person::rect_msg)
  (if (not (find-package "FOLLOWING_PERSON"))
    (make-package "FOLLOWING_PERSON"))
  (shadow 'rect_msg (find-package "FOLLOWING_PERSON")))
(unless (find-package "FOLLOWING_PERSON::RECT_MSG")
  (make-package "FOLLOWING_PERSON::RECT_MSG"))

(in-package "ROS")
;;//! \htmlinclude rect_msg.msg.html


(defclass following_person::rect_msg
  :super ros::object
  :slots (_cx _cy _label ))

(defmethod following_person::rect_msg
  (:init
   (&key
    ((:cx __cx) 0)
    ((:cy __cy) 0)
    ((:label __label) 0)
    )
   (send-super :init)
   (setq _cx (round __cx))
   (setq _cy (round __cy))
   (setq _label (round __label))
   self)
  (:cx
   (&optional __cx)
   (if __cx (setq _cx __cx)) _cx)
  (:cy
   (&optional __cy)
   (if __cy (setq _cy __cy)) _cy)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; int64 _cx
    8
    ;; int64 _cy
    8
    ;; int64 _label
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _cx
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cx (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cx) (= (length (_cx . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cx . bv) 0) 0) s)
              (write-long (ash (elt (_cx . bv) 1) -1) s))
             ((and (class _cx) (= (length (_cx . bv)) 1)) ;; big1
              (write-long (elt (_cx . bv) 0) s)
              (write-long (if (>= _cx 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cx s)(write-long (if (>= _cx 0) 0 #xffffffff) s)))
     ;; int64 _cy
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _cy (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _cy) (= (length (_cy . bv)) 2)) ;; bignum
              (write-long (ash (elt (_cy . bv) 0) 0) s)
              (write-long (ash (elt (_cy . bv) 1) -1) s))
             ((and (class _cy) (= (length (_cy . bv)) 1)) ;; big1
              (write-long (elt (_cy . bv) 0) s)
              (write-long (if (>= _cy 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _cy s)(write-long (if (>= _cy 0) 0 #xffffffff) s)))
     ;; int64 _label
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _label (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _label) (= (length (_label . bv)) 2)) ;; bignum
              (write-long (ash (elt (_label . bv) 0) 0) s)
              (write-long (ash (elt (_label . bv) 1) -1) s))
             ((and (class _label) (= (length (_label . bv)) 1)) ;; big1
              (write-long (elt (_label . bv) 0) s)
              (write-long (if (>= _label 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _label s)(write-long (if (>= _label 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _cx
#+(or :alpha :irix6 :x86_64)
      (setf _cx (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cx (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _cy
#+(or :alpha :irix6 :x86_64)
      (setf _cy (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _cy (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _label
#+(or :alpha :irix6 :x86_64)
      (setf _label (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _label (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get following_person::rect_msg :md5sum-) "048e16c767ef5ede95b8620142d8975c")
(setf (get following_person::rect_msg :datatype-) "following_person/rect_msg")
(setf (get following_person::rect_msg :definition-)
      "int64 cx
int64 cy
int64 label
")



(provide :following_person/rect_msg "048e16c767ef5ede95b8620142d8975c")


