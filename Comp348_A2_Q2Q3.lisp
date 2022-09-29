(defun sub-list2(li from &optional (to (length li)))
  (setq size (length li))
  (if (> from to)
    (return-from sub-list2 nil))
  (if (> to size)
    (setq to size))
  (if (< from 1)
    (setq from 1))
  (setq output ())
  (setq index 0)
  (loop for x in li do
    (setq index(+ index 1))
    (if (and (>= index from)(<= index to))
    (setq output (cons x output))))
  (setq output (reverse output))
  (return-from sub-list2 output)
)

(defun sub-list3(li from &optional (to (length li)))
  (setq size (length li))
  (setq returnBackwards 0)
  (if (> from to)
    (progn
    (setq returnBackwards 1)
    (setq temp to)
    (setq to from)
    (setq from temp)
    ))
  (if (> to size)
    (setq to size))
  (if (< from 1)
    (setq from 1))
  (setq output ())
  (setq index 0)
  (loop for x in li do
    (setq index(+ index 1))
    (if (and (>= index from)(<= index to))
    (setq output (cons x output))))
  (if (= returnBackwards 0)
    (setq output (reverse output)))
  (return-from sub-list3 output)
)

(print "Results for sub-list2 function: ")
(print (sub-list2 '(1 4 10) 2 3))
(print (sub-list2 '(1 4 10) 2))
(print (sub-list2 '(1 7 12) 1 4))
(print (sub-list2 '(1 7 12) 0 1))
(print (sub-list2 '(1 6 12) 4 2))

(print "Results for sub-list3 function: ")
(print (sub-list3 '(1 4 10) 3 2))
(print (sub-list3 '(1 7 12) 4 0))
(print (sub-list3 '(1 4 10) 3))
