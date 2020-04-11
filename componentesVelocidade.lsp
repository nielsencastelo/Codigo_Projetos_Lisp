;@Author
;José Victor
;Calcular componentes da velocidade

(prin1 "Digite a velocidade do projetil (em m/s)")
(terpri)
(setf velocidade (read))
(prin1 "Digite o angulo do projetil com a horizontal (em graus)")
(terpri)
(setf angulo (read))

(
	defun getComponentesVelocidade( )
		(princ "Velocidade x: ")
		(princ (format nil "~,2f" (* velocidade (cos (/ (* pi angulo) 180)))))	
		(princ " m/s")		
		(terpri)
		
		(princ "Velocidade y: ")
		(princ (format nil "~,2f" (* velocidade (sin (/ (* pi angulo) 180)))))	
		(princ " m/s")
		T
)