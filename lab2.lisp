; Разработать функцию, находящую сумму элементов с нечетными номерами в заданном списке чисел.
;  Например:
;  Вход: (2 4 3 1 7 2 4). 
;  Выход: 16.

(defun sum_odd(numbers)
  (if numbers
      (+ (car numbers) (sum_odd (cdr (cdr numbers))))
      0)
  )

(print (sum_odd '(2 4 3 1 7 2 4)))