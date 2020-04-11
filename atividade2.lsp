;constantes
;(defconstant Num_PI 3.14159265358979323846264338327950288419716939937510582097494)

;Apenas vai retornar um numero.
(defun Pede_num()
	(princ "Num ->")
	(let (
			(a (read))
		)
		(if (numberp a)
			a
			(Pede_num)
		)
	)
)

;conversor de grau <-> rad
(defun Grau (x)
	(/ (* 180 x) pi)
)
(defun Rad (x)
	(/ (* pi x) 180)
)

;angular para eixo
(defun V_ang (v a)
	(setq x (* v (cos (Rad a)))) 
	(setq y (* v (sin (Rad a))))
	(list x y)
)

;eixo para angular
(defun V_eix (x y)
	(setq v (sqrt (+ (* x x) (* y y))))
	(if (= v 0)
		(setq a 0)
		(if (> y 0)
			(setq a (Grau (acos (/ x v))))
			(setq a (+ 180 (Grau (acos (/ x v)))))
		)
	)
	(list v a)
)

;Parte de menu --------------------------------------------------------
(defun Escolha1 ()
	(terpri) (terpri)(terpri) (terpri) (terpri) (terpri)(terpri) (terpri)
	(princ "Converter (v a) para (x y)") (terpri)(terpri)
	(princ "Digite o valor de v.") (terpri)
	(setf var1 (Pede_num))
	(princ "Digite o valor de a.") (terpri)
	(setf var2 (Pede_num))
	(terpri) (princ "Resultado final: ") (print (V_ang var1 var2)) (terpri)
	(main)
)

(defun Escolha2 ()
	(terpri) (terpri)(terpri)
	(princ "Converter (x y) para (v a)") (terpri)(terpri)
	(princ "Digite o valor de x.") (terpri)
	(setf var1 (Pede_num))
	(princ "Digite o valor de y.") (terpri)
	(setf var2 (Pede_num))
	(terpri) (princ "Resultado final: ") (print (V_eix var1 var2)) (terpri)
	(main)
)

;Função de menu:
(defun main()
	(terpri) (terpri)
	(princ "-----[Atividade 2 Não]-----") (terpri) (terpri)
	(princ "Decomposicao de vetores.") (terpri)
	(princ "(v a) velocidade e alfa") (terpri)
	(princ "(x y) velocidade do eixo x e velocidade do eixo y") (terpri) (terpri)
	(princ "Escolha a opcoes:") (terpri)
	(princ "1 - Converter (v a) para (x y)") (terpri)
	(princ "2 - Converter (x y) para (v a)") (terpri)
	(princ "3 - sair") (terpri) (terpri)
	(setf x (Pede_num))
	(cond
		((= x 1) (Escolha1))
		((= x 2) (Escolha2))
		((= x 3) (princ "Sair"))
		(t (main))
	)
)