(define byeoru-on-key '("hangul"))
(define byeoru-on-key? (make-key-predicate '("hangul")))
(define byeoru-latin-key '("hangul"))
(define byeoru-latin-key? (make-key-predicate '("hangul")))
(define byeoru-conversion-key '("hangul-hanja"))
(define byeoru-conversion-key? (make-key-predicate '("hangul-hanja")))
(define byeoru-commit-key '(generic-commit-key))
(define byeoru-commit-key? (make-key-predicate '(generic-commit-key?)))
(define byeoru-cancel-key '(generic-cancel-key))
(define byeoru-cancel-key? (make-key-predicate '(generic-cancel-key?)))