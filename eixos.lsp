( 	defun eixos()
	(princ "Indique o angulo para o solo (graus):")
	(setf a (read))
	(princ "Qual a velocidade do projetil:")
	(setf v (read))
	
	(princ "A componente x da velocidade e:")
	(setf x (* v (cos (/ (* a 3.1416) 180))))
	(princ x)
	(terpri)
	(princ "A componente y da velocidade e:")
	(setf y (* v (sin (/ (* a 3.1416) 180))))
	(princ y)
)