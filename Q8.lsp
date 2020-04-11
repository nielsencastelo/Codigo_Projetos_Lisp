;Q8 Sort Selection

(defun SortSelection( size)
		
	
	(setq Vetor (make-array size))
	(let((cont 0)) 
	
	
	
	
		(loop 
			
			(setf (aref Vetor cont) (read))
			(setq cont (+ cont 1))
			
			(when( = cont size)
				
				(return T)
			)
		)
	)
	
	(loop for cont0 from 0 to (- size 1) do
		
		(loop  for cont1 from (+ cont0 1) to (- size 1) do
	
			(cond 
				(( > (aref Vetor cont0) (aref Vetor cont1))
				(setq aux (aref Vetor cont0))
				(setf (aref Vetor cont0) (aref Vetor cont1))
				(setf (aref Vetor cont1) aux))
			)			
		)
	
	)
		
	(princ Vetor)
	T		
		
)

			
	