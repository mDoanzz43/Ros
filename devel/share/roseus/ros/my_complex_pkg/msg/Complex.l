;; Auto-generated. Do not edit!


(when (boundp 'my_complex_pkg::Complex)
  (if (not (find-package "MY_COMPLEX_PKG"))
    (make-package "MY_COMPLEX_PKG"))
  (shadow 'Complex (find-package "MY_COMPLEX_PKG")))
(unless (find-package "MY_COMPLEX_PKG::COMPLEX")
  (make-package "MY_COMPLEX_PKG::COMPLEX"))

(in-package "ROS")
;;//! \htmlinclude Complex.msg.html


(defclass my_complex_pkg::Complex
  :super ros::object
  :slots (_re _im ))

(defmethod my_complex_pkg::Complex
  (:init
   (&key
    ((:re __re) 0.0)
    ((:im __im) 0.0)
    )
   (send-super :init)
   (setq _re (float __re))
   (setq _im (float __im))
   self)
  (:re
   (&optional __re)
   (if __re (setq _re __re)) _re)
  (:im
   (&optional __im)
   (if __im (setq _im __im)) _im)
  (:serialization-length
   ()
   (+
    ;; float32 _re
    4
    ;; float32 _im
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _re
       (sys::poke _re (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _im
       (sys::poke _im (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _re
     (setq _re (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _im
     (setq _im (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_complex_pkg::Complex :md5sum-) "912f775e9b7f1ccab5a7496314643393")
(setf (get my_complex_pkg::Complex :datatype-) "my_complex_pkg/Complex")
(setf (get my_complex_pkg::Complex :definition-)
      "float32 re
float32 im

")



(provide :my_complex_pkg/Complex "912f775e9b7f1ccab5a7496314643393")


