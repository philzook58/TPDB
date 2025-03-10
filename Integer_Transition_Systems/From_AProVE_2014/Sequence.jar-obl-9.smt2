(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f46_0_main_GE Loc)
(declare-const f74_0_main_GE Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f46_0_main_GE f74_0_main_GE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int)
                 (pc1 Loc) (arg1P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f46_0_main_GE (= 0 arg1P))
    (cfg_trans2 pc f46_0_main_GE pc1 f46_0_main_GE (and (< arg1 100) (= (+ arg1 1) arg1P)))
    (cfg_trans2 pc f46_0_main_GE pc1 f74_0_main_GE (and (> arg1 99) (= 5 arg1P)))
    (cfg_trans2 pc f74_0_main_GE pc1 f74_0_main_GE (and (< arg1 21) (= (+ arg1 3) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
