(declare-sort Loc 0)
(declare-const l0 Loc)
(declare-const l1 Loc)
(declare-const l2 Loc)
(declare-const l3 Loc)
(declare-const l4 Loc)
(declare-const l5 Loc)
(declare-const l6 Loc)
(assert (distinct l0 l1 l2 l3 l4 l5 l6))

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

(define-fun init_main ( (pc^0 Loc) (__const_19^0 Int) (oldX0^0 Int) (oldX1^0 Int) (x0^0 Int) ) Bool
  (cfg_init pc^0 l6 true))

(define-fun next_main (
                 (pc^0 Loc) (__const_19^0 Int) (oldX0^0 Int) (oldX1^0 Int) (x0^0 Int)
                 (pc^post Loc) (__const_19^post Int) (oldX0^post Int) (oldX1^post Int) (x0^post Int)
             ) Bool
  (or
    (cfg_trans2 pc^0 l0 pc^post l1 (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post oldX1^post)) (= x0^post (+ 0 oldX1^post))) (= __const_19^0 __const_19^post)))
    (cfg_trans2 pc^0 l2 pc^post l3 (and (and (and (= oldX0^post (+ 0 x0^0)) (= x0^post (+ 1 oldX0^post))) (= __const_19^0 __const_19^post)) (= oldX1^0 oldX1^post)))
    (cfg_trans2 pc^0 l3 pc^post l0 (and (and (and (and (= oldX0^post (+ 0 x0^0)) (<= (+ 1 __const_19^0) (+ 0 oldX0^post))) (= x0^post (+ 0 oldX0^post))) (= __const_19^0 __const_19^post)) (= oldX1^0 oldX1^post)))
    (cfg_trans2 pc^0 l3 pc^post l2 (and (and (and (and (= oldX0^post (+ 0 x0^0)) (<= (+ 0 oldX0^post) (+ 0 __const_19^0))) (= x0^post (+ 0 oldX0^post))) (= __const_19^0 __const_19^post)) (= oldX1^0 oldX1^post)))
    (cfg_trans2 pc^0 l4 pc^post l3 (and (and (and (= oldX0^post (+ 0 x0^0)) (= x0^post 0)) (= __const_19^0 __const_19^post)) (= oldX1^0 oldX1^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (= oldX0^post (+ 0 x0^0)) (= oldX1^post oldX1^post)) (= x0^post (+ 0 oldX1^post))) (= __const_19^0 __const_19^post)))
    (cfg_trans2 pc^0 l5 pc^post l1 (and (and (and (= __const_19^0 __const_19^post) (= oldX0^0 oldX0^post)) (= oldX1^0 oldX1^post)) (= x0^0 x0^post)))
    (cfg_trans2 pc^0 l5 pc^post l0 (and (and (and (= __const_19^0 __const_19^post) (= oldX0^0 oldX0^post)) (= oldX1^0 oldX1^post)) (= x0^0 x0^post)))
    (cfg_trans2 pc^0 l5 pc^post l2 (and (and (and (= __const_19^0 __const_19^post) (= oldX0^0 oldX0^post)) (= oldX1^0 oldX1^post)) (= x0^0 x0^post)))
    (cfg_trans2 pc^0 l5 pc^post l3 (and (and (and (= __const_19^0 __const_19^post) (= oldX0^0 oldX0^post)) (= oldX1^0 oldX1^post)) (= x0^0 x0^post)))
    (cfg_trans2 pc^0 l5 pc^post l4 (and (and (and (= __const_19^0 __const_19^post) (= oldX0^0 oldX0^post)) (= oldX1^0 oldX1^post)) (= x0^0 x0^post)))
    (cfg_trans2 pc^0 l6 pc^post l5 (and (and (and (= __const_19^0 __const_19^post) (= oldX0^0 oldX0^post)) (= oldX1^0 oldX1^post)) (= x0^0 x0^post)))
  )
)
