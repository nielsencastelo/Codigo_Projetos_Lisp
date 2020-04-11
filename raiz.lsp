(defun raize (a b c)
(let* ( (disc (discr a b c))
(r1 (/ (+ (- b) (sqrt disc)) (* 2 a)))
(r2 (/ (- (- b) (sqrt disc)) (* 2 a)))
)
(list r1 r2)
)
)