; fun��o que retorna se o sinal � + ou -
; usando cond
( defun sinal(n)
	(cond ((< n 0) '-)
	      ((= n 0) 0)
              ((> n 0) '+)
	)
)