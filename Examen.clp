(deffacts inicial
    (limite 4)
    (robot pos 0 naranjas 0 manzanas 0 caquis 0 uvas 0 pedido naranjas 2 manzanas 3 caquis 0 uvas 1)
)
(defrule mover_derecha
    ?f <- (robot pos ?p $?resto)
    (test (< ?p ))
    =>
    (assert (robot pos (+ ?p 1) $?resto))
)