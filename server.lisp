(ql:quickload '(:ningle :jonathan) :silent t)
(defparameter *app* (make-instance 'ningle:<app>))
(defparameter *db* '((:id 1 :title "Book of the Boba Fett" :date "2023-10-25" :body "Star Wars spinoff drama.")))
(defun to-list(record) (list :id(getf record :id) :title(getf record :title) :date (getf record :date) :body(getf record :body)))

(setf (ningle:route *app* "/") "Hello API")
(setf (ningle:route *app* "/post/list") (jonathan:to-json (mapcar #'to-list *db*)))

*app*
