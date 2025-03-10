(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(declare-const l7 Loc)
(declare-const l8 Loc)
(declare-const l9 Loc)
(declare-const l10 Loc)
(declare-const l11 Loc)
(declare-const l12 Loc)
(declare-const l13 Loc)
(declare-const l14 Loc)
(declare-const l15 Loc)
(declare-const l16 Loc)
(declare-const l17 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc^0 Loc) (c^0 Int) (d^0 Int) (f^0 Int) (n^0 Int) (r^0 Int) (s^0 Int) ) Bool
  (cfg_init pc^0 l17 true))

(define-fun next_main (
                 (pc^0 Loc) (c^0 Int) (d^0 Int) (f^0 Int) (n^0 Int) (r^0 Int) (s^0 Int)
                 (pc^post Loc) (c^post Int) (d^post Int) (f^post Int) (n^post Int) (r^post Int) (s^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (and (and (and (<= (+ 0 n^0) (+ 0 r^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l0 pc^post l2 (and (and (and (and (and (and (<= (+ 1 r^0) (+ 0 n^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (and (= c^post (+ -1 c^0)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l4 pc^post l0 (and (and (and (and (and (and (and (<= (+ 0 f^0) 0) (<= 0 (+ 0 f^0))) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (<= 1 (+ 0 f^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (and (and (and (<= (+ 1 f^0) 0) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (<= 2 (+ 0 c^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (and (and (and (<= (+ 1 c^0) 1) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l5 pc^post l6 (and (and (and (and (and (and (and (<= (+ 0 c^0) 1) (<= 1 (+ 0 c^0))) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l6 pc^post l7 (and (and (and (and (and (= c^0 c^post) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l8 pc^post l9 (and (and (and (and (and (and (<= 0 (+ 0 s^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l8 pc^post l6 (and (and (and (and (and (and (<= (+ 1 s^0) 0) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l10 pc^post l8 (and (and (and (and (and (= d^post 1) (= s^post (+ (+ 0 (* -1 c^0)) s^0))) (= c^0 c^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (<= 1 (+ 0 f^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (<= (+ 1 f^0) 0) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l11 pc^post l10 (and (and (and (and (and (and (and (<= (+ 0 f^0) 0) (<= 0 (+ 0 f^0))) (= f^post 1)) (= c^post (+ -1 c^0))) (= d^0 d^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l9 pc^post l5 (and (and (and (and (and (= n^post n^post) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l12 pc^post l10 (and (and (and (and (and (and (<= 3 (+ 0 d^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l12 pc^post l10 (and (and (and (and (and (and (<= (+ 1 d^0) 2) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l12 pc^post l11 (and (and (and (and (and (and (and (<= (+ 0 d^0) 2) (<= 2 (+ 0 d^0))) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l1 pc^post l6 (and (and (and (and (and (and (<= (+ 0 r^0) (+ 0 n^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l1 pc^post l12 (and (and (and (and (and (and (<= (+ 1 n^0) (+ 0 r^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l13 pc^post l9 (and (and (and (and (and (and (<= (+ 0 s^0) 255) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l13 pc^post l6 (and (and (and (and (and (and (<= 256 (+ 0 s^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l14 pc^post l13 (and (and (and (and (and (= d^post 2) (= s^post (+ (+ 0 c^0) s^0))) (= c^0 c^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)))
    (cfg_trans2 pc^0 l15 pc^post l14 (and (and (and (and (and (and (<= 1 (+ 0 f^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l15 pc^post l14 (and (and (and (and (and (and (<= (+ 1 f^0) 0) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l15 pc^post l14 (and (and (and (and (and (and (and (<= (+ 0 f^0) 0) (<= 0 (+ 0 f^0))) (= f^post 1)) (= c^post (+ -1 c^0))) (= d^0 d^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l2 pc^post l14 (and (and (and (and (and (and (<= 2 (+ 0 d^0)) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l2 pc^post l14 (and (and (and (and (and (and (<= (+ 1 d^0) 1) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l2 pc^post l15 (and (and (and (and (and (and (and (<= (+ 0 d^0) 1) (<= 1 (+ 0 d^0))) (= c^0 c^post)) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l16 pc^post l9 (and (and (and (and (and (= c^post 4) (= f^post 0)) (= d^post 0)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
    (cfg_trans2 pc^0 l17 pc^post l16 (and (and (and (and (and (= c^0 c^post) (= d^0 d^post)) (= f^0 f^post)) (= n^0 n^post)) (= r^0 r^post)) (= s^0 s^post)))
  )
)
