(defun check-left (tree left)
  (if (null left)
      T
      (and (>= (first tree) (first left)) (check-left tree (second left)) (check-left tree (third left)))))

(defun check-right (tree right)
  (if (null right)
      T
      (and (< (first tree) (first right)) (check-right tree (second right)) (check-right tree (third right)))))

(defun check-bst (tree)
  (if (null tree)
      T
      (and (check-bst (second tree))
           (check-bst (third tree))
           (check-left tree (second tree))
           (check-right tree (third tree)))))

(print (check-bst '(8 (3 (1 () ()) (6 (4 () ()) (7 () ()))) (10 () (14 (13 () ()) ())))))