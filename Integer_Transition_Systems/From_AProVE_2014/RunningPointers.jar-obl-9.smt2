(declare-sort Loc 0)
(declare-const f161_0_createList_Return Loc)
(declare-const f227_0_isCyclic_NONNULL Loc)
(declare-const f1_0_main_Load Loc)
(declare-const f331_0_isCyclic_NULL Loc)
(declare-const f201_0_createList_LE Loc)
(declare-const __init Loc)
(assert (distinct f161_0_createList_Return f227_0_isCyclic_NONNULL f1_0_main_Load f331_0_isCyclic_NULL f201_0_createList_LE __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int)
             ) Bool
  (or
    (cfg_trans2 pc f161_0_createList_Return pc1 f227_0_isCyclic_NONNULL (and (and (<= arg1P arg1) (> arg1 (- 1))) (> arg1P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f227_0_isCyclic_NONNULL (and (> arg1 0) (> arg1P (- 1))))
    (cfg_trans2 pc f227_0_isCyclic_NONNULL pc1 f331_0_isCyclic_NULL (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P (- 1))))
    (cfg_trans2 pc f331_0_isCyclic_NULL pc1 f331_0_isCyclic_NULL (and (and (and (and (and (>= arg1 (+ arg1P 1)) (>= arg2 (+ arg2P 3))) (> arg1 0)) (> arg2 2)) (> arg1P (- 1))) (> arg2P (- 1))))
    (cfg_trans2 pc f1_0_main_Load pc1 f201_0_createList_LE (and (and (> arg2 (- 1)) (> arg1P (- 1))) (> arg1 0)))
    (cfg_trans2 pc f201_0_createList_LE pc1 f201_0_createList_LE (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
