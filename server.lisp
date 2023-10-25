(ql:quickload '(:ningle))
(defparameter *app* (make-instance 'ningle:<app>))
(setf (ningle:route *app* "/") "Hello API")

*app*
