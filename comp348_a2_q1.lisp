; Q1
(defun sub-list (lst from &optional (to nil))
   (setf a ())
   (cond ((null lst) nil)
         ((null to) nil)
         ((or (< from 1) (> to (list-length lst)) (> from to)) nil)
         ((setf num 0)
          (loop for x in lst do
                 (incf num)
                  (if (and (>= num from) (<= num to))
                      (setf a (cons x a))))))
   (return-from sub-list (reverse a)))

(write-line "Question 1 output:")
(print (sub-list '(1 2 3 4 5) 4)) ; Returns (4 10)
;(print (sub-list '(1 4 10) 2 3)) ; Returns NIL
;(print (sub-list '(1 4 10) 2)) ; Returns NIL
;(print (sub-list '(1 7 12) 1 4)) ; Returns NIL
;(print (sub-list '(1 7 12) 0 1)) ; Returns NIL
;(print (sub-list '(1 6 12) 4 2)) ; Returns NIL
;(print (sub-list '(1 6 12))) ; Writes "ERROR *** - EVAL/APPLY: Too few arguments"
(terpri)
