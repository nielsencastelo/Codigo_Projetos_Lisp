(defun dma()
	(princ "Digite a data na forma dd mm aaaa")
	(setf dia (read))
	(setf mes (read))
	(setf ano (read))
	(setf dsemana (- (+ (* 3 ( - mes 1)) ano dia) 1))
	
	(if (< mes 3) 
		(setf ano (- ano 1)) 
		(setf dsemana (- dsemana (truncate( + (* 0.4 mes) 2.3)) ) )
	)
	
	(setf dsemana (rem dsemana 7))
	(cond ((= dsemana 0) (print "Domingo"))
		  ((= dsemana 1) (print "Segunda"))
		  ((= dsemana 2) (print "Terça"))
		  ((= dsemana 3) (print "Quarta"))
		  ((= dsemana 4) (print "Quinta"))
		  ((= dsemana 5) (print "Sexta"))
		  ((= dsemana 6) (print "Sábado"))
	)
)