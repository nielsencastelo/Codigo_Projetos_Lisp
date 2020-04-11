; Função retorna a diferença entre dois
; valores lido pelo usuário.

(defun diferenca()

	(setf x (read))
	(setf y (read))
	(print (- x y))
)