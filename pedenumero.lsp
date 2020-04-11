(defun PedeNumero ()
	(format t "Um número, por favor. ")
	(let ((val (read)))
		(if (numberp val)
			val
			(PedeNumero)
		)
	)
)