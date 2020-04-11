(
	defun fatorial( x )
		(setf a 1)
		(setf fato 1)
			(loop
				(setf fato (* fato a ))
				(setf a (+ a 1))
				(when(> a x)
					(return 'fim)
				)
				
			)
		(princ "Fatorial: ")
		(princ fato)
)
(
	defun mdc (a b)
		(if (>= a b)
			(setq maior a)
			(setq maior b)
		)
		(setq i maior)
			(loop
					(when(and (=(rem a i)0) (=(rem b i)0))
						(princ i)
						(return 'fim)
					)
				(setq i (- i 1))
			)
)
(
	defun pares(&rest l)
	(setf a 0)
	(loop
		(if (= (rem (nth a l) 2) 0)
			(princ (nth a l))(princ " ")
		)
		(setf a (+ a 1))
			(when (= a (length l))
				(return 'fim)
			)		
	)	
)


(
	defun lista()
		(princ "Entre com a elementos: ")(terpri)
		(princ "Digite zero para terminar a lista")
		(setq a nil)
		(loop
			(setq b (read))
				
				(when(equal b 0)
					(return 'fim)
				)
			(push b a)
			
		)
)


(
	defun lista1()
		(princ "Digite zero para terminar a lista")(terpri)
		(princ "Entre com a elementos: ")(terpri)
		(setq a nil)
		(setq c (read))
		(setq a c)
		(setq b (read))
		(setq a (cons b(cons a nil)))
		(loop
			(setq b (read))
				(when(= b 0 )
					(return 'fim)
				)
			(setq a (cons b a))
		)
)

(
	defun enesimo(x)
		(setq l (list 9 8 7 6 5 4 3 2 1))
		(princ (nth x l ))
)

(
	defun enesimo1(x)
		(setq l (list 9 8 7 6 5 4 3 2 1))
		(setf i 0)
		(loop
			(setf a (car l))
			(setq l (cdr l))
				(when (= i x )
					(princ a)
					(return 'fim)
				)
			(setf i (+ i 1))
		)
)

(
	defun saida(x)
	(setq a (aref x 0))
	(setf (aref x 0) (aref x 2))
	(setf (aref x 2) a)
	
	(princ x)
	t
)
