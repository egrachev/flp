; Функции CAR, CDR, CONS
; 7. Дан список (A ((B) (C) ) (D) (K) L) получить
; 7.1 элемент A
; 7.2 элемент D
; 7.3 список (D)
; 7.4 список (A B C)
; 7.5 список ( A (D) (C))
; 7.6 список (D A B)

(defvar l '(A ((B) (C) ) (D) (K) L))

; 7.1 элемент A
(print "7.1 элемент A")
(print (car l))

; 7.2 элемент D
(print "7.2 элемент D")
(print (car(car(cdr(cdr l)))))

; 7.3 список (D)
(print "7.3 список (D)")
(print (car(cdr(cdr l))))

; 7.4 список (A B C)
(print "7.4 список (A B C)")
(let (
      (a (car l))
      (b (car(car(car(cdr l)))))
      (c (car(car(cdr(car(cdr l))))))
      )
  (print a)
  (print b)
  (print c)
  (print (cons a (cons b (cons c nil))))

  )

; 7.5 список ( A (D) (C))
(print "7.5 список ( A (D) (C))")
(let (
      (a (car l))
      (_d_ (car(cdr(cdr l))))
      (_c_ (car(cdr(car(cdr l)))))
      )
  (print a)
  (print _d_)
  (print _c_)
  (print (cons a (cons _d_ (cons _c_ nil))))
  )

; 7.6 список (D A B)
(print "7.6 список (D A B)")
(let (
      (d (car(car(cdr(cdr l)))))
      (a (car l))
      (b (car(car(car(cdr l)))))
      )
  (print d)
  (print a)
  (print b)
  (print (cons d (cons a (cons b nil))))
  )