(defun PedeNome ()
	(format t "Escreva-me o seu nome, por favor. ")
	(let ((val (read-line)))
		(if (not (numberp val))
			val
			(PedeNome)
		)
	)
)