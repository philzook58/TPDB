(declare-sort Loc 0)
(declare-const f1_0_main_ConstantStackPush Loc)
(declare-const f452_0_main_GE Loc)
(declare-const f452_0_main_GE' Loc)
(declare-const f276_0_sin_GT Loc)
(declare-const f307_0_cos_GT Loc)
(declare-const f342_0_exp_GT Loc)
(declare-const f697_0_main_GE Loc)
(declare-const f345_0_power_GT Loc)
(declare-const f566_0_sin_InvokeMethod Loc)
(declare-const f453_0_fact_GT Loc)
(declare-const f566_0_sin_InvokeMethod' Loc)
(declare-const f552_0_cos_InvokeMethod Loc)
(declare-const f552_0_cos_InvokeMethod' Loc)
(declare-const f638_0_exp_InvokeMethod Loc)
(declare-const f342_0_exp_GT' Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_ConstantStackPush f452_0_main_GE f452_0_main_GE' f276_0_sin_GT f307_0_cos_GT f342_0_exp_GT f697_0_main_GE f345_0_power_GT f566_0_sin_InvokeMethod f453_0_fact_GT f566_0_sin_InvokeMethod' f552_0_cos_InvokeMethod f552_0_cos_InvokeMethod' f638_0_exp_InvokeMethod f342_0_exp_GT' __init ))

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

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_ConstantStackPush pc1 f452_0_main_GE (and (and (and (and (and (<= arg1P arg1) (> arg2 (- 1))) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)) (= arg2 arg3P)))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x91 Int)) (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x91)) 0)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f276_0_sin_GT (exists ((x95 Int)) (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x95)) 0)) (> arg1 0)) (< (- arg2 (* 2 x95)) 2)) (>= (- arg2 (* 2 x95)) 0)) (= arg3 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x99 Int) (x100 Int)) (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x99)) 1)) (= (- arg2 (* 3 x100)) 0)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f307_0_cos_GT (exists ((x104 Int) (x105 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x104)) 1)) (= (- arg2 (* 3 x105)) 0)) (> arg1 0)) (>= (- arg2 (* 2 x104)) 0)) (< (- arg2 (* 2 x104)) 2)) (< (- arg2 (* 3 x105)) 3)) (>= (- arg2 (* 3 x105)) 0)) (= arg3 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x109 Int) (x110 Int) (x111 Int)) (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x109)) 1)) (> (- arg2 (* 3 x110)) 0)) (= (- arg2 (* 5 x111)) 0)) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f342_0_exp_GT (exists ((x115 Int) (x116 Int) (x117 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> (- arg2 (* 3 x115)) 0) (> arg3 arg2)) (> arg3 0)) (= (- arg2 (* 2 x116)) 1)) (= (- arg2 (* 5 x117)) 0)) (> arg1 0)) (>= (- arg2 (* 2 x116)) 0)) (< (- arg2 (* 2 x116)) 2)) (< (- arg2 (* 3 x115)) 3)) (< (- arg2 (* 5 x117)) 5)) (>= (- arg2 (* 5 x117)) 0)) (= arg3 arg1P)) (= arg2 arg2P))))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x121 Int) (x122 Int) (x123 Int) (x124 Int)) (and (and (and (and (and (and (and (and (and (= (- arg2 (* 2 x121)) 1) (> arg3 arg2)) (> (- arg2 (* 5 x122)) 0)) (> (- arg2 (* 3 x123)) 0)) (<= x124 arg1)) (> arg1 0)) (> x124 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f697_0_main_GE (exists ((x129 Int) (x130 Int) (x131 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (> (- arg2 (* 5 x129)) 0) (> (- arg2 (* 3 x130)) 0)) (= (- arg2 (* 2 x131)) 1)) (> arg3 arg2)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (>= (- arg2 (* 2 x131)) 0)) (< (- arg2 (* 2 x131)) 2)) (< (- arg2 (* 3 x130)) 3)) (< (- arg2 (* 5 x129)) 5)) (= arg2 arg2P)) (= 0 arg3P)) (= arg3 arg4P))))
    (cfg_trans2 pc f697_0_main_GE pc1 f697_0_main_GE (and (and (and (and (and (and (<= arg1P arg1) (< arg3 100)) (> arg1 0)) (> arg1P 0)) (= arg2 arg2P)) (= (+ arg3 1) arg3P)) (= arg4 arg4P)))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE (and (and (and (and (and (and (<= arg1P arg1) (> arg3 0)) (> arg1 0)) (> arg1P 0)) (= 0 arg2)) (= 1 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f697_0_main_GE pc1 f452_0_main_GE (and (and (and (and (and (and (> arg4 (- 1)) (> arg3 99)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (= (+ arg2 1) arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x135 Int) (x136 Int) (x137 Int) (x138 Int)) (and (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x135)) 1)) (> (- arg2 (* 3 x136)) 0)) (= (- arg2 (* 5 x137)) 0)) (<= x138 arg1)) (> arg1 0)) (> x138 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f452_0_main_GE (exists ((x143 Int) (x144 Int) (x145 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (> (- arg2 (* 3 x143)) 0) (> arg3 arg2)) (> arg3 0)) (= (- arg2 (* 2 x144)) 1)) (= (- arg2 (* 5 x145)) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (>= (- arg2 (* 2 x144)) 0)) (< (- arg2 (* 2 x144)) 2)) (< (- arg2 (* 3 x143)) 3)) (< (- arg2 (* 5 x145)) 5)) (>= (- arg2 (* 5 x145)) 0)) (= (+ arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x149 Int) (x150 Int) (x151 Int)) (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x149)) 1)) (= (- arg2 (* 3 x150)) 0)) (<= x151 arg1)) (> arg1 0)) (> x151 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f452_0_main_GE (exists ((x156 Int) (x157 Int)) (and (and (and (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x156)) 1)) (= (- arg2 (* 3 x157)) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (>= (- arg2 (* 2 x156)) 0)) (< (- arg2 (* 2 x156)) 2)) (< (- arg2 (* 3 x157)) 3)) (>= (- arg2 (* 3 x157)) 0)) (= (+ arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE pc1 f452_0_main_GE' (exists ((x161 Int) (x162 Int)) (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x161)) 0)) (<= x162 arg1)) (> arg1 0)) (> x162 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f452_0_main_GE' pc1 f452_0_main_GE (exists ((x167 Int)) (and (and (and (and (and (and (and (and (and (> arg3 arg2) (> arg3 0)) (= (- arg2 (* 2 x167)) 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)) (< (- arg2 (* 2 x167)) 2)) (>= (- arg2 (* 2 x167)) 0)) (= (+ arg2 1) arg2P)) (= arg3 arg3P))))
    (cfg_trans2 pc f276_0_sin_GT pc1 f345_0_power_GT (and (and (> arg2 0) (> arg1 0)) (= arg2 arg1P)))
    (cfg_trans2 pc f276_0_sin_GT pc1 f566_0_sin_InvokeMethod (and (and (and (and (and (> arg1 0) (> (* 2 arg2) 0)) (> arg2 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= (+ (* 2 arg2) 1) arg3P)))
    (cfg_trans2 pc f566_0_sin_InvokeMethod pc1 f345_0_power_GT (and (and (and (> arg2 0) (> arg3 1)) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f566_0_sin_InvokeMethod pc1 f453_0_fact_GT (and (and (and (and (> arg2 0) (> arg1 0)) (> (* 2 arg1) 0)) (> arg3 1)) (= (+ (* 2 arg1) 1) arg1P)))
    (cfg_trans2 pc f566_0_sin_InvokeMethod pc1 f566_0_sin_InvokeMethod' (and (and (and (and (and (and (and (> arg2 0) (> arg1 0)) (> arg3 1)) (< (- arg1 1) arg1)) (> (* 2 arg1) 0)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f566_0_sin_InvokeMethod' pc1 f276_0_sin_GT (exists ((x171 Int) (x172 Int) (x173 Int)) (and (and (and (and (and (and (and (and (> arg2 0) (> arg1 0)) (> arg3 1)) (> (* 2 arg1) 0)) (< (- arg1 1) arg1)) (> x171 (- x172 (* x171 x173)))) (>= (- x172 (* x171 x173)) 0)) (= arg2 arg1P)) (= (- arg1 1) arg2P))))
    (cfg_trans2 pc f307_0_cos_GT pc1 f345_0_power_GT (and (and (> arg2 0) (> arg1 0)) (= arg2 arg1P)))
    (cfg_trans2 pc f307_0_cos_GT pc1 f552_0_cos_InvokeMethod (and (and (and (and (> arg2 0) (> arg1 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= (* 2 arg2) arg3P)))
    (cfg_trans2 pc f552_0_cos_InvokeMethod pc1 f345_0_power_GT (and (and (and (> arg3 1) (> arg2 0)) (> arg1 0)) (= arg3 arg1P)))
    (cfg_trans2 pc f552_0_cos_InvokeMethod pc1 f453_0_fact_GT (and (and (and (and (> arg2 0) (> arg1 0)) (> (* 2 arg1) 1)) (> arg3 1)) (= (* 2 arg1) arg1P)))
    (cfg_trans2 pc f552_0_cos_InvokeMethod pc1 f552_0_cos_InvokeMethod' (and (and (and (and (and (and (and (> arg2 0) (> arg1 0)) (> arg3 1)) (< (- arg1 1) arg1)) (> (* 2 arg1) 1)) (= arg1 arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f552_0_cos_InvokeMethod' pc1 f307_0_cos_GT (exists ((x177 Int) (x178 Int) (x179 Int)) (and (and (and (and (and (and (and (and (> arg2 0) (> arg1 0)) (> arg3 1)) (> (* 2 arg1) 1)) (< (- arg1 1) arg1)) (> x177 (- x178 (* x177 x179)))) (>= (- x178 (* x177 x179)) 0)) (= arg2 arg1P)) (= (- arg1 1) arg2P))))
    (cfg_trans2 pc f342_0_exp_GT pc1 f345_0_power_GT (and (and (> arg2 0) (> arg1 0)) (= arg2 arg1P)))
    (cfg_trans2 pc f638_0_exp_InvokeMethod pc1 f342_0_exp_GT (and (and (and (and (< arg3 arg1) (> arg2 0)) (> arg1 0)) (= arg2 arg1P)) (= arg3 arg2P)))
    (cfg_trans2 pc f345_0_power_GT pc1 f345_0_power_GT (and (> arg1 0) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f453_0_fact_GT pc1 f453_0_fact_GT (and (and (> arg1 0) (< (- arg1 1) arg1)) (= (- arg1 1) arg1P)))
    (cfg_trans2 pc f342_0_exp_GT pc1 f453_0_fact_GT (and (and (> arg2 0) (> arg1 0)) (= arg2 arg1P)))
    (cfg_trans2 pc f342_0_exp_GT pc1 f342_0_exp_GT' (and (and (and (> arg2 0) (> arg1 0)) (= arg1 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f342_0_exp_GT' pc1 f638_0_exp_InvokeMethod (exists ((x182 Int) (x183 Int) (x184 Int)) (and (and (and (and (and (and (> arg1 0) (> arg2 0)) (> x182 (- x183 (* x182 x184)))) (>= (- x183 (* x182 x184)) 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= (- arg2 1) arg3P))))
    (cfg_trans2 pc f342_0_exp_GT pc1 f342_0_exp_GT' (and (and (and (> arg1 0) (> arg2 0)) (= arg1 arg1P)) (= arg2 arg2P)))
    (cfg_trans2 pc f342_0_exp_GT' pc1 f638_0_exp_InvokeMethod (exists ((x187 Int) (x188 Int) (x189 Int)) (and (and (and (and (and (and (> arg2 0) (> arg1 0)) (> x187 (- x188 (* x187 x189)))) (>= (- x188 (* x187 x189)) 0)) (= arg2 arg1P)) (= arg1 arg2P)) (= (- arg2 1) arg3P))))
    (cfg_trans2 pc __init pc1 f1_0_main_ConstantStackPush true)
  )
)
