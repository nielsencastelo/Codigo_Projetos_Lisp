( defun balist(v a)
	(princ "Componente velocidade (X): ")
	(setq a ( / (* pi a) 180)) ; convertendo a entrada do angulo em radianos (entrada em graus, função cosseno recebe radianos)
	(setq x (* v (cos a))) ; obtendo a componente horizontal da velocidade 
	(princ x)
	(terpri)
	(princ "Componente velocidade (Y): ")
	(setq y (* v (sin a))) ; obtendo a componente vertical da velocidade
	(princ y)
	(terpri)
)