( defun testeProgn()
	(if(> 3 2) 
		(progn 
			(print 'estou-no-consequente) 
			(+ 2 3)
		) 
		(progn 
			(print 'estou na alternativa) 
			(* 4 5)
		)
	)
) 