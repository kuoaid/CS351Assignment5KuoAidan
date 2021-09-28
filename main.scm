
(uses-modules (rnrs))

(define add3
(lambda (a b c)
  (+ (+ a b) c)))

;THINK: returns a function that has f and uses a
(define curry3
(lambda (f)
 (lambda (a)
  (lambda (b)
    (lambda (c)
    (f a b c))))))

(define uncurry3
  (lambda (f)
    (lambda (a b c);returns a function that takes in a b c as well as the passed in f. Therefore, f c b a can work.
      (((f a) b) c)
      )))

(define uncurry
  (lambda (f)
    (lambda argsList
      (if (null? argsList)
      f
      (apply (uncurry (f (car argsList))) (cdr argsList))
    )
  )
)
)
