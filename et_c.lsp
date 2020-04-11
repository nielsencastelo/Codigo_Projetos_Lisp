; exemplo do uso do let
( 
	defun uso_let()
	(
		let ((x 10))
		( + ( let ((x 11) (y (+ x 4)))
					(+ y x)
			) 
			(+ x 2)
		)
		
	)
	
) 