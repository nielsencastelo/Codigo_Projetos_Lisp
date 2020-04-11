; função que retorna se o sinal é + ou -
( defun sinal(n)
	(if (< n 0)
	   '-
	   (if (= n 0) 0 '+)
	)
)