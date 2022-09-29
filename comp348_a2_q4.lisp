; Q4
(defun flatten (lst)
  (cond ((null lst) nil)
        ((atom lst) (list lst))
        (t (loop for a in lst appending (flatten a)))))
        
(defun checknum (lst)
  (setf a ())
  (cond ((null lst) nil)
        ((loop for x in lst do
          (if (numberp x)
              (setf a (cons x a))))))
   (return-from checknum a))

(defun flatten-nums-nodup (lst)
   (setf a ())
   (setf b ())
   (cond ((null lst) nil)
         ((loop for x in lst do
            (setf a (cons x a)))))
   (setf a (checknum (remove-duplicates (flatten a))))
   (return-from flatten-nums-nodup a))

(write-line "Question 4 output:")
(print (flatten-nums-nodup '(1 2 (3 1) (a 2.5) (2 4.5) ((1 2))))) ; Returns (1 2 3 2.5 4.5) correctly
(print (flatten-nums-nodup '((6 1) (b 3) a ((z 2.5)) ((2 q))))) ; Returns (1 6 3 2.5 2), but should return (6 1 3 2.5 2)

   ;(setf a (flatten a)) ; Wrong order: (1 2 2 4.5 A 2.5 3 1 2 1)
   ;(setf a (flatten (checknum a))) ; doesn't work
   ;(setf a (checknum (flatten a))) ; Reverses order: (1 2 1 3 2.5 4.5 2 2 1)
   ;(setf a (remove-duplicates (flatten a)))
   ;(setf a (reverse (remove-duplicates (flatten a))))
   ;(setf a (reverse (remove-duplicates (checknum (flatten a)))))
   ;(setf a (checknum (remove-duplicates (flatten a)))) ; Works, except second example (issue with flatten)