(define (domain P2)

     (:requirements :typing :fluents :strips)
     

     (:types localizable zona orientacion - object
          persona objeto - localizable
          robot personaje - persona
     )
  

     (:predicates
          ;Posicionamiento de un objeto tipo localizable
          (posicion ?t - localizable ?z - zona)

          ;Orientacion
          (mirando ?p - persona ?o - orientacion)
          (miraDerecha ?o1 - orientacion ?o2 - orientacion)
          (miraIzquierda ?o1 - orientacion ?o2 - orientacion)

          ;Grafo
          (camino ?z1 - zona ?x - orientacion ?z2 - zona)

          ;Poseo objeto
          (tengo ?r - robot ?o - objeto)

          ;Otro personaje posee/quiere objeto
          (tiene ?p - personaje ?o - objeto)
          (quiere ?p - personaje ?o - objeto) 

          ;Indica si la mano está vacía
          (manovacia)        
     )

     ;Acciones

     (:action GIRA_DERECHA
          :parameters (?r - robot ?o1 ?o2 - orientacion)
          :precondition (and (mirando ?r ?o1) (miraDerecha ?o1 ?o2))
          :effect (and (not (mirando ?r ?o1)) (mirando ?r ?o2))
     )

     (:action GIRA_IZQUIERDA
          :parameters (?r - robot ?o1 ?o2 - orientacion)
          :precondition (and (mirando ?r ?o1) (miraIzquierda ?o1 ?o2))
          :effect (and (not (mirando ?r ?o1)) (mirando ?r ?o2))
     )

     (:action IR
          :parameters (?r - robot ?o - orientacion ?z1 ?z2 - zona)
          :precondition (and (posicion ?r ?z1) (mirando ?r ?o) (camino ?z1 ?o ?z2))
          :effect (and (not (posicion ?r ?z1)) (posicion ?r ?z2))
     )

     (:action COGER
          :parameters (?r - robot ?i - objeto ?z - zona)
          :precondition (and (posicion ?r ?z) (posicion ?i ?z) (manovacia))
          :effect (and (not (posicion ?i ?z)) (not (manovacia)) (tengo ?r ?i) )
     )

     (:action SOLTAR
          :parameters (?r - robot ?o - objeto ?z - zona)
          :precondition (and (posicion ?r ?z) (tengo ?r ?o))
          :effect (and (not (tengo ?r ?o)) (posicion ?o ?z) (manovacia) )
     )
     
     (:action ENTREGAR
          :parameters (?r - robot ?o - objeto ?z - zona ?p - personaje)
          :precondition (and (posicion ?r ?z) (posicion ?p ?z) (tengo ?r ?o) (quiere ?p ?o))
          :effect (and (not (tengo ?r ?o)) (tiene ?p ?o) (manovacia))
     )
     
)


