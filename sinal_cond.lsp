; função que retorna se o sinal é + ou -
; usando cond
( defun sinal(n)
	(cond ((< n 0) '-)
	      ((= n 0) 0)
              ((> n 0) '+)
	)
)