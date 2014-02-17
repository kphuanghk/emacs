;; lisp code collection from Internet
;; Src: http://stackoverflow.com/questions/11847547/emacs-regexp-count-occurrences

(defun count-occurences (regex string)
  (recursive-count regex string 0))

(defun recursive-count (regex string start)
  (if (string-match regex string start)
      (+ 1 (recursive-count regex string (match-end 0)))
    0))


;;; http://www.power-quant.com/?q=node/46
;;;
;;; euclidean-algorithm.el --- A super simple implementation of the
;;; Eudlidean Algorithm illustrating three different algorithms for
;;; its computation.
;;;
 
(defun gcd-division (a b)
  "Division based version of the Euclidean algorithm."
    (while (not (eq b 0))
       (setq c b)
       (setq b (mod a b))
       (setq a c))
    c)
 
(defun gcd-subtraction (a b)
  "Subtraction based version of Euclidean algorithm."
    (if (eq a 0) b)
    (while (not (eq b 0))
      (if (> a b)
      (setq a (- a b))
          (setq b (- b a))
      ))
    a)
 
(defun gcd-recursive (a b)
  "Recursive version of the Euclidean Algorithm"
    (if (eq b 0) a
        (gcd-recursive b (mod a b))))
 
;; now use the three defuns above to calculate the gcd of 54 and 24
;; and send the results to the standard output:
(print (format "gcd(54, 24) from division: %d" (gcd-division 54 24)) t)
(print (format "gcd(54, 24) from subtraction: %d" (gcd-subtraction 54 24)) t) 
(print (format "gcd(54, 24) from recursion: %d" (gcd-recursive 54 24)) t)
