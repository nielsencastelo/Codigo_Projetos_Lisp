
(defun velocidade ()

 (print "velocidade em x eh: ")
 (print "Digite o valor do angulo ")

 (setf angulo ( / (* 20 pi) 180))

 (print (* 10 (cos angulo)))

 (print "velocidade em y eh :")

 (* 10 (sin angulo))

)