(defun velocidade ()
(format t "Digite a velocidade: ")
(setf veloc (read))
(format t "Digite a inclinacao: ")
(setf angulo (read))
(format t "A velocidade na componente x eh: ~D~%" (* veloc (cos (/ (* angulo 3.1415) 180))))
(format t "A velocidade na componente y eh: ~D~%" (* veloc (sin (/ (* angulo 3.1415) 180))))
)