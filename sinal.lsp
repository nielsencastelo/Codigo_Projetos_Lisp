; fun��o que retorna se o sinal � + ou -
( defun sinal(n)
	(if (< n 0)
	   '-
	   (if (= n 0) 0 '+)
	)
)