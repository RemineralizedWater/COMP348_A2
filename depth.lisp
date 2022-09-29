;Q6
(defun depth (element)
           (if (atom element) 0 
               (1+ (apply #'max (mapcar #'depth element)))))
                    
(print (depth NIL))
(print (depth 1))
(print (depth '(1)))
(print(depth '((2))))
(print(depth '((2)(3 (6))(4))))