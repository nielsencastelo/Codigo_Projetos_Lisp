; Exercício 1

(
	defun montante (c i n)
	(* c (expt (+ 1 i) n))
)



; Exercício 2

(defun capital (m i n)
	(/ m (expt (+ 1 i) n))
)



; Exercício 3

(defun leicoulomb (q1 q2 d)
	(/ (* q1 q2 8.98 (expt 10 9)) (* d d))
)


; Exercício 4

( defun capacitancia (rf tf v)
	(/ tf (* rf (log (/ v (* 0.993 v)))))
)

(defun resistor ( tc c v)
	(/ tc (* c (log (/ v (- v (* 0.993 v))))))
)

(defun corrente_inicial (v r rf)
	(print "A corrente inicial de carga e")
	(setf f (float(/ v r)))
	(print f)
	(print "A corrente inicial de descarga e")
	(/ (* 0.993 v) rf)  
)


