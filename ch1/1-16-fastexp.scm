(define (fast-expt base power)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (fast-expt-iter base power transition)
    (cond ((<= power 1) transition)
	  ((even? power) (fast-expt-iter base (/ power 2) (* (* base base) transition)))
	  (else (fast-expt-iter base (- power 1) (* base transition)))))
  (fast-expt-iter base power 1))