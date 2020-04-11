; loop
(defun testeloop()
	(let ((n 0)))
	(loop
		(print n)
		(setq n (1+ n))
		(when (> n 100)
			(return 'fim)
		)
	)
	
)