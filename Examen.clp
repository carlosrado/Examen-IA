(deffacts inicial
    (limite 4)
    (robot pos 0 naranjas 0 manzanas 0 caquis 0 uvas 0 cajas 0 pedido naranjas 2 manzanas 3 caquis 0 uvas 1)
)
(defrule mover_derecha
    ?f <- (robot pos ?p $?resto)
    (limite ?l)
    (test (< ?p ?l))
    =>
    (assert (robot pos (+ ?p 1) $?resto))
    (retract ?f)
)
(defrule comprobar_pedido
    (robot $? naranjas ?n1 manzanas ?m1 caquis ?c1 uvas ?u1 $? pedido naranjas ?n2 manzanas ?m2 caquis ?c2 uvas ?u2)
    (test (< ?n1 ?n2))
    (test (< ?m1 ?m2))
    (test (< ?c1 ?c2))
    (test (< ?u1 ?u2))
    =>
    (printout t El numero de cajas es insuficiente para completar el pedido)
    halt
)