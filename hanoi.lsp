;;; -*- Mode: LISP; Syntax: Common-lisp; Package: USER; Base: 10 -*-
(in-package :User)

;;;=========================================================================
;;; Simple towers of Hanoi program. Note that Start-Peg and Goal-Peg are
;;; integers from 1 to 3 indicating the peg number. Ie to move 4 discs, 
;;; starting on the first peg and finishing on the last one, execute
;;; (Towers 4 1 3)
;;;
;;; 1992 Marty Hall. hall@aplcenmp.apl.jhu.edu

(defun Towers (Number-of-Discs Start-Peg Goal-Peg)
  (cond
    ((= 1 Number-of-Discs) (format t "~%Move Top Disc from peg ~D to peg ~D."
				   Start-Peg Goal-Peg))
    (t                     (Towers (1- Number-of-Discs)
				   Start-Peg
				   (Remaining-Peg Start-Peg Goal-Peg))
			   (Towers 1 Start-Peg Goal-Peg)
			   (Towers (1- Number-of-Discs)
				   (Remaining-Peg Start-Peg Goal-Peg)
				   Goal-Peg))))

;;;=========================================================================
;;; Given two peg numbers, what is the peg number of the third peg?

(defun Remaining-Peg (Peg1 Peg2)
  (- 6 Peg1 Peg2))

;;;=========================================================================
;;; Here is some sample output using the above code.

;Yes, Marty? (towers 1 1 2)
;Move Top Disc from peg 1 to peg 2.
;NIL
;Yes, Marty? (towers 2 1 2)
;Move Top Disc from peg 1 to peg 3.
;Move Top Disc from peg 1 to peg 2.
;Move Top Disc from peg 3 to peg 2.
;NIL
;Yes, Marty? (towers 3 1 2)
;Move Top Disc from peg 1 to peg 2.
;Move Top Disc from peg 1 to peg 3.
;Move Top Disc from peg 2 to peg 3.
;Move Top Disc from peg 1 to peg 2.
;Move Top Disc from peg 3 to peg 1.
;Move Top Disc from peg 3 to peg 2.
;Move Top Disc from peg 1 to peg 2.
;NIL
;Yes, Marty? (towers 4 1 2)
;Move Top Disc from peg 1 to peg 3.
;Move Top Disc from peg 1 to peg 2.
;Move Top Disc from peg 3 to peg 2.
;Move Top Disc from peg 1 to peg 3.
;Move Top Disc from peg 2 to peg 1.
;Move Top Disc from peg 2 to peg 3.
;Move Top Disc from peg 1 to peg 3.
;Move Top Disc from peg 1 to peg 2.
;Move Top Disc from peg 3 to peg 2.
;Move Top Disc from peg 3 to peg 1.
;Move Top Disc from peg 2 to peg 1.
;Move Top Disc from peg 3 to peg 2.
;Move Top Disc from peg 1 to peg 3.
;Move Top Disc from peg 1 to peg 2.
;Move Top Disc from peg 3 to peg 2.
;NIL
;						
