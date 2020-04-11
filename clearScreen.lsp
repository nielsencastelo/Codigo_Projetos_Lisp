(
defun clearScreen()
	(
	let((n 0))
		(loop
			
			(terpri)
			(setq n (1+ n))
			(when (> n 200)
				(return)
			)
		)
	)
)
