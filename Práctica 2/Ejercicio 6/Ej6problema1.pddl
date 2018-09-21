(define (problem Ejercicio3-Problema1)

  (:domain P2)

  (:objects
    ZONA_00 ZONA_01 ZONA_02 ZONA_03 - zona
    ZONA_10 ZONA_11 ZONA_12 ZONA_13 - zona
    ZONA_20 ZONA_21 ZONA_22 ZONA_23 - zona
    ZONA_30 ZONA_31 ZONA_32 ZONA_33 - zona
   
    Agua Precipicio Bosque Arena Piedra - terreno
    Bikini Zapatillas - objeto

    NORTE - orientacion
    SUR - orientacion
    ESTE - orientacion
    OESTE - orientacion
    
    belkan  - robot
    belkan2 - robot
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
    ;Costes
    (= (distancia) 0)
    (= (totalPuntos) 0)

    (= (puntos Leonardo oscar) 10)
    (= (puntos Leonardo rosa) 1)
    (= (puntos Leonardo manzana) 3)
    (= (puntos Leonardo algoritmo) 4)
    (= (puntos Leonardo oro) 5)

    (= (puntos Princesa oscar) 5)
    (= (puntos Princesa rosa) 10)
    (= (puntos Princesa manzana) 1)
    (= (puntos Princesa algoritmo) 3)
    (= (puntos Princesa oro) 4)

    (= (puntos Bruja oscar) 4)
    (= (puntos Bruja rosa) 5)
    (= (puntos Bruja manzana) 10)
    (= (puntos Bruja algoritmo) 1)
    (= (puntos Bruja oro) 3)

    (= (puntos Profesor oscar) 3)
    (= (puntos Profesor rosa) 4)
    (= (puntos Profesor manzana) 5)
    (= (puntos Profesor algoritmo) 10)
    (= (puntos Profesor oro) 1)

    (= (puntos Principe oscar) 1)
    (= (puntos Principe rosa) 3)
    (= (puntos Principe manzana) 4)
    (= (puntos Principe algoritmo) 5)
    (= (puntos Principe oro) 10)

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
    (posicion belkan ZONA_30)
    (posicion belkan2 ZONA_03)
    (mirando belkan NORTE)
    (mirando belkan2 SUR)
    (manovacia belkan)
    (manovacia belkan2)
    ( = (mochila belkan) 3)
    ( = (mochila belkan2)1)
    
    ;Objetivo de entrega
    (quiere Principe oro)
    (quiere Princesa rosa)
    (quiere Profesor algoritmo)
    (quiere Leonardo oscar)
    (quiere Bruja manzana)
    
    ;Tipo de zona
    (tipoCamino ZONA_00 Bosque)
    (tipoCamino ZONA_01 Bosque)
    (tipoCamino ZONA_02 Arena)
    (tipoCamino ZONA_03 Arena)
    (tipoCamino ZONA_10 Bosque)
    (tipoCamino ZONA_11 Bosque)
    (tipoCamino ZONA_12 Arena)
    (tipoCamino ZONA_13 Arena)
    (tipoCamino ZONA_20 Precipicio)
    (tipoCamino ZONA_21 Arena)
    (tipoCamino ZONA_22 Arena)
    (tipoCamino ZONA_23 Agua)
    (tipoCamino ZONA_30 Arena)
    (tipoCamino ZONA_31 Arena)
    (tipoCamino ZONA_32 Agua)
    (tipoCamino ZONA_33 Agua)

    (prendaNecesitada Agua Bikini)
    (prendaNecesitada Bosque Zapatillas)
    (caminoNormal Arena)
    (caminoNormal Piedra)

    ;Localizacion de los personajes en este problema
    (posicion Principe ZONA_11)
    (posicion Bruja ZONA_00)
    (posicion Profesor ZONA_02)
    (posicion Princesa ZONA_23)
    (posicion Leonardo ZONA_31)
    

    ;Posicion objetos
    (posicion oro ZONA_10)
    (posicion manzana ZONA_01)
    (posicion oscar ZONA_32)
    (posicion algoritmo ZONA_22)
    (posicion rosa ZONA_03)
    (posicion Bikini ZONA_21)
    (posicion Zapatillas ZONA_33)

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
    (camino ZONA_31 OESTE ZONA_30)
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
    (camino ZONA_03 OESTE ZONA_02)
    (camino ZONA_03 SUR ZONA_13)
    (camino ZONA_13 NORTE ZONA_03)
    (camino ZONA_13 SUR ZONA_23)
    (camino ZONA_13 OESTE ZONA_12)
    (camino ZONA_23 NORTE ZONA_13)
    (camino ZONA_23 SUR ZONA_33)
    (camino ZONA_33 NORTE ZONA_23)
    (camino ZONA_33 OESTE ZONA_32)

    ;Coste caminos
    (= (coste ZONA_00 ZONA_10) 2)
    (= (coste ZONA_00 ZONA_01) 3)
    (= (coste ZONA_10 ZONA_00) 1)
    (= (coste ZONA_10 ZONA_20) 2)
    (= (coste ZONA_20 ZONA_10) 3)
    (= (coste ZONA_20 ZONA_30) 4)
    (= (coste ZONA_20 ZONA_21) 5)
    (= (coste ZONA_30 ZONA_20) 6)
    (= (coste ZONA_30 ZONA_31) 2)
    (= (coste ZONA_01 ZONA_00) 3)
    (= (coste ZONA_01 ZONA_11) 3) 
    (= (coste ZONA_11 ZONA_01) 3)
    (= (coste ZONA_11 ZONA_21) 7)
    (= (coste ZONA_11 ZONA_12) 4) 
    (= (coste ZONA_21 ZONA_11) 8)
    (= (coste ZONA_21 ZONA_31) 5)
    (= (coste ZONA_21 ZONA_22) 4)
    (= (coste ZONA_21 ZONA_20) 3)
    (= (coste ZONA_31 ZONA_21) 2)
    (= (coste ZONA_31 ZONA_30) 7)
    (= (coste ZONA_31 ZONA_30) 3)
    (= (coste ZONA_02 ZONA_03) 3)
    (= (coste ZONA_02 ZONA_12) 4)
    (= (coste ZONA_12 ZONA_02) 5)
    (= (coste ZONA_12 ZONA_22) 7)
    (= (coste ZONA_12 ZONA_13) 8)
    (= (coste ZONA_12 ZONA_11) 2)
    (= (coste ZONA_22 ZONA_12) 4)
    (= (coste ZONA_22 ZONA_32) 2)
    (= (coste ZONA_22 ZONA_21) 4)
    (= (coste ZONA_32 ZONA_22) 5)
    (= (coste ZONA_32 ZONA_33) 2)
    (= (coste ZONA_03 ZONA_02) 1)
    (= (coste ZONA_03 ZONA_13) 5)
    (= (coste ZONA_13 ZONA_03) 5)
    (= (coste ZONA_13 ZONA_23) 3)
    (= (coste ZONA_13 ZONA_12) 6)
    (= (coste ZONA_23 ZONA_13) 8)
    (= (coste ZONA_23 ZONA_33) 9)
    (= (coste ZONA_33 ZONA_23) 2)
    (= (coste ZONA_33 ZONA_32) 5)
)
  (:goal
  	(and
    	(= (totalPuntos) 30)
    )
  )

  (:metric minimize (distancia))
)