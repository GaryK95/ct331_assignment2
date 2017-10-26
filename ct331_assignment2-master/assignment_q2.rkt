#lang racket

;A
(define (ins_beg el lst)
   (append  (list el) lst))
;  (ins_beg "a" '("b" "c" "d")) 
; (ins_beg '(a b) '(b c d))

;B
(define (ins_end el lst)
  (append  lst (list el)))
; (ins_end 'a '(b c d))
; (ins_end '(a b) '(b c d))

;C
(define (count_top_level lst)
      (length lst))
; (count_top_level '(1 2 3 4 5 6 7 8 9))





;D
(define (count_instances el lst)
  (cond
    [(null? lst) 0]
    [(equal? (car lst) el)(+ 1 (count_instances el (cdr lst))) ]
    [else (count_instances el (cdr lst))]
    ))

;E
(define (count_instances_tr el lst)
  (conut_instances_tr_func el lst 0))

 (define (conut_instances_tr_func el lst num) 
    (if (null? lst) num
        (conut_instances_tr_func el (cdr lst)(+ (if (equal? (car lst) el) 1 0) num))))
         
;F
;Could not figure it out 


