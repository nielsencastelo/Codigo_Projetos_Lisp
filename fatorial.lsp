; implementa o fatorial de n
(defun fatorial(n)
    ( if (= n 0)
	 1
	 (* n (fatorial(- n 1)) )
    )
)





