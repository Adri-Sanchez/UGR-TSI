(define (problem Ejercicio1-Problema1)

  (:domain P2)

  (:objects
    ZONA_00 ZONA_01 ZONA_02 ZONA_03 ZONA_04 - zona
    ZONA_10 ZONA_11 ZONA_12 ZONA_13 ZONA_14 - zona
    ZONA_20 ZONA_21 ZONA_22 ZONA_23 ZONA_24 - zona
    ZONA_30 ZONA_31 ZONA_32 ZONA_33 ZONA_34 - zona
    ZONA_40 ZONA_41 ZONA_42 ZONA_43 ZONA_44 - zona
   
    
    NORTE - orientacion
    SUR - orientacion
    ESTE - orientacion
    OESTE - orientacion
    
    belkan - robot
    Princesa - personaje
    Principe - personaje
    Bruja - personaje
    Profesor - personaje
    Leonardo - personaje
    
    oro - objeto
    manzana - objeto
    algoritmo - objeto
    oscar - objeto
    rosa - objeto
    
  )
  
  
  (:init
  
    ;Posicionamiento
    (miraDerecha NORTE ESTE)
    (miraDerecha ESTE SUR)
    (miraDerecha SUR OESTE)
    (miraDerecha OESTE NORTE)
    
    (miraIzquierda NORTE OESTE)
    (miraIzquierda OESTE SUR)
    (miraIzquierda SUR ESTE)
    (miraIzquierda ESTE NORTE)
    
    ;Declaraciones iniciales Belkan
    (posicion belkan ZONA_00)
    (mirando belkan ESTE)
    (manovacia)
    
    ;Objetivo de entrega
    (quiere Principe oro)
    (quiere Princesa rosa)
    (quiere Profesor algoritmo)
    (quiere Leonardo oscar)
    (quiere Bruja manzana)
    
    ;Localizacion de los personajes en este problema
    (posicion Principe ZONA_02)
    (posicion Bruja ZONA_40)
    (posicion Profesor ZONA_11)
    (posicion Princesa ZONA_03)
    (posicion Leonardo ZONA_32)
    

    ;Posicion objetos
    (posicion oro ZONA_44)
    (posicion manzana ZONA_13)
    (posicion oscar ZONA_24)
    (posicion algoritmo ZONA_22)
    (posicion rosa ZONA_30)
    
    ;Caminos
    (camino ZONA_00 SUR ZONA_10)
    (camino ZONA_00 ESTE ZONA_01)
    (camino ZONA_10 NORTE ZONA_00)
    (camino ZONA_10 SUR ZONA_20)
    (camino ZONA_20 NORTE ZONA_10)
    (camino ZONA_20 SUR ZONA_30)
    (camino ZONA_20 ESTE ZONA_21)
    (camino ZONA_30 NORTE ZONA_20)
    (camino ZONA_30 ESTE ZONA_31)
    (camino ZONA_01 OESTE ZONA_00)
    (camino ZONA_01 SUR ZONA_11)
    (camino ZONA_11 NORTE ZONA_01)
    (camino ZONA_11 SUR ZONA_21)
    (camino ZONA_11 ESTE ZONA_12)
    (camino ZONA_21 NORTE ZONA_11)
    (camino ZONA_21 SUR ZONA_31)
    (camino ZONA_21 ESTE ZONA_22)
    (camino ZONA_21 OESTE ZONA_20)
    (camino ZONA_31 NORTE ZONA_21)
    (camino ZONA_31 OESTE ZONA_30)
    (camino ZONA_31 SUR ZONA_41)
    (camino ZONA_41 NORTE ZONA_31)
    (camino ZONA_41 OESTE ZONA_40)
    (camino ZONA_40 ESTE ZONA_41)
    (camino ZONA_02 ESTE ZONA_03)
    (camino ZONA_02 SUR ZONA_12)
    (camino ZONA_12 NORTE ZONA_02)
    (camino ZONA_12 SUR ZONA_22)
    (camino ZONA_12 ESTE ZONA_13)
    (camino ZONA_12 OESTE ZONA_11)
    (camino ZONA_22 NORTE ZONA_12)
    (camino ZONA_22 SUR ZONA_32)
    (camino ZONA_22 OESTE ZONA_21)
    (camino ZONA_32 NORTE ZONA_22)
    (camino ZONA_32 ESTE ZONA_33)
    (camino ZONA_32 SUR ZONA_42)
    (camino ZONA_42 NORTE ZONA_32)
    (camino ZONA_42 ESTE ZONA_43)
    (camino ZONA_43 OESTE ZONA_42)
    (camino ZONA_43 NORTE ZONA_33)
    (camino ZONA_03 OESTE ZONA_02)
    (camino ZONA_03 SUR ZONA_13)
    (camino ZONA_13 NORTE ZONA_03)
    (camino ZONA_13 SUR ZONA_23)
    (camino ZONA_13 OESTE ZONA_12)
    (camino ZONA_13 ESTE ZONA_14)
    (camino ZONA_23 NORTE ZONA_13)
    (camino ZONA_23 SUR ZONA_33)
    (camino ZONA_23 ESTE ZONA_24)
    (camino ZONA_24 OESTE ZONA_23)
    (camino ZONA_24 NORTE ZONA_14)
    (camino ZONA_14 SUR ZONA_24)
    (camino ZONA_14 NORTE ZONA_04)
    (camino ZONA_14 OESTE ZONA_13)
    (camino ZONA_04 SUR ZONA_14)
    (camino ZONA_33 NORTE ZONA_23)
    (camino ZONA_33 OESTE ZONA_32)
    (camino ZONA_33 SUR ZONA_43)
    (camino ZONA_33 ESTE ZONA_34)
    (camino ZONA_34 OESTE ZONA_33)
    (camino ZONA_34 SUR ZONA_44)
    (camino ZONA_44 NORTE ZONA_34)

)
  (:goal
  	(and
    	(tiene Bruja manzana)
    	(tiene Principe oro)
    	(tiene princesa rosa)
    	(tiene Profesor Algoritmo)
    	(tiene Leonardo oscar)
    )
  )
)