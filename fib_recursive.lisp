; Q5 B
(defun trib (n &optional (res (list 1 0 0)))
  (if (= 0 n)
      (reverse res)
   (trib (- n 1) (cons(+ (car res) (car(cdr res)) (car(cdr(cdr res)))) res))))

(defun tribonacci (n)
  (cond
    ((= n 0) nil)
    ((= n 1) '(0))
    ((= n 2)'(0 1))
    ((= n 3) '(0 0 1))
    (t(trib(- n 3)))))

;test
(print (tribonacci 20))



