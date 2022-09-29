(defun is-tree (tree)
  (cond
   ((null tree) NIL)
   ((< (list-length tree) 3) NIL)
   (t)))


(defun left-subtree (tree)
  (cond
   ((null tree) NIL)
   ((not (listp tree)) NIL)
   (t (second tree))))


(defun right-subtree (tree)
  (cond
   ((null tree) NIL)
   ((not (listp tree)) NIL)
   (t (third tree))))


(defun preorder (tree)
  (if (not (is-tree tree))
      NIL
      (cons (car tree)
            (append (preorder (left-subtree tree))
                    (preorder (right-subtree tree))))))


(defun inorder (tree)
  (if (not (is-tree tree))
      NIL
      (append
       (inorder (left-subtree tree))
       (list (car tree))
       (inorder (right-subtree tree)))))



(print (preorder '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ())))))
(print (inorder '(+ (- (1 () ()) (* (4 () ())(7 () ()))) (/ (7 () ()) (6 () ())))))