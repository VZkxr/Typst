#set page(header: [
  Problemario 2 (parte 2)
  #h(1fr)
  Aarón Aldair García Miranda])
1. Se tiene un examen de 20 preguntas de verdadero y falso. Se requiere que una o un estudiante conteste al menos 17 preguntas de forma correcta. ¿Qué probabilidad hay de que esto ocurra?.
  _Solución._ \
  Primero, es importante identificar la "naturaleza" del problema, es decir, si se trata de una permutación, una variación o una combinación. Para esto, con conocimientos básicos de conteo se puede establecer un diagrama como el siguiente:
  #figure(
    image("diagram.png", width: 80%),
    caption: [
      Diagrama de conteo hecho en Excalidraw.
    ],
  )
  De este modo, podemos conjeturar que se requiere del uso de combinaciones, en efecto, si queremos los subconjuntos con 17 preguntas buenas que se pueden formar a partir de un conjunto de 20 preguntas, sin importar el orden y sin repetir, necesitamos las combinaciones de $20$ en $17$, es decir, $mat(20;17)$, sin embargo, tenemos como dato que se requiere que una o un estudiante conteste #text(weight: "bold", "al menos") $17$ preguntas de forma correcta, es decir, hay que considerar la posibilidad de obtener más aciertos, por lo que también nos piden las combinaciones de $20$ en $18$, de $20$ en $19$ y de $20$ en $20$. \ \
  Por otro lado, cada pregunta tiene $1/2$ de probabilidad de ser correcta y $1/2$ de ser incorrecta, por lo que el uso de estas probabilidades son imprescindibles para cada combinación, teniendo en cuenta la cantidad de preguntas que se pueden tener correctas y también las incorrectas. \
  En este punto, notemos que los contenidos matemáticos que se deben considerar para la resolución de este ejercicio son:
    / -: Principio básico de conteo
    / -: Aritmética factorial
    / -: Combinaciones en probabilidad
  Dada la argumentación anterior, tenemos que la probabilidad de contestar exactamente 17 preguntas de forma correcta está determinada por la expresión
  $ mat(20; 17) (1/2)^17 (1/2)^3 &= frac(20!, 17!(20-17)!) (1/131072) (1/8) \
   &= frac(20 dot 19 dot 18, 6) (1/131072) (1/8) \
   &= 1140/131072 (1/8) \
   &= 285/262144 \
   &= 0.00108 & "...(i)" $
  Análogamente, para 18 preguntas tenemos:
  $ mat(20; 18) (1/2)^18 (1/2)^2 &= frac(20!, 18!(20-18)!) (1/262144) (1/4) \
   &= 190/262144 (1/4) \
   &= 0.000181198 & "...(ii)" $
  Para 19 preguntas:
  $ mat(20; 19) (1/2)^19 (1/2)^1 &= frac(20!, 19!(20-19)!) (1/524288) (1/2) \
   &= 0.0000190735 & "...(iii)" $
  Y para 20 preguntas:
  $ mat(20; 20) (1/2)^20 (1/2)^0 &= frac(20!, 20!(20-20)!) (1/1048576) \
   &= 0.000000953674 & "...(iv)" $
  Finalmente, la probabilidad de que un estudiante conteste al menos 17 preguntas correctas es equivalente a pedir la probabilidad de que conteste exactamente 17 preguntas correctas, más la probabilidad de que conteste exactamente 18 preguntas correctas, más la probabilidad de que conteste exactamente 19 preguntas correctas, más la probabilidad de que conteste exactamente 20 preguntas correctas. Por lo tanto, la solución está determinada por la suma de (i), (ii), (iii) y (iv), es decir que
  $ PP(X gt.eq 17) &= 0.00108 + 0.000181198 + 0.0000190735 + 0.000000953674 \ 
   &= 0.00128839 $ 
  $ therefore PP(X gt.eq 17) = 0.12% $ 
  _Extensión._ \
  Una pregunta que puede surgir para este problema, es si se puede modelar mediante una función de distribución, y si es así ¿qué distribución de sigue?.
#pagebreak()
2. Demostrar que todo entero es par o impar, pero no ambos. \
  _Demostración._ \
  Haremos uso de un teorema de Álgebra superior 2: \ 
  \
  #highlight(fill: rgb("#FFCE16"), radius: 8pt, stroke: black, extent: 3pt)[Teorema 3.1.] #h(2pt) Si $a$ y $b$ son enteros, con $b eq.not 0$, entonces existen únicos enteros $q$ y $r$, con $0 lt.eq r < |b|$, tales que $a = b q + r$. \
  \
  Tomando $a=n$ y $b=2$, por el #text(fill: rgb("#FFCE16"))[Teorema 3.1] tenemos que 
  $ n = 2q+r $
  con $0 lt.eq r < 2$ para algunos enteros únicos $q$ y $r$. Así, 
  $ n = 2q+0 #h(7pt) #text(style: "normal", "o") #h(7pt) n = 2q + 1 $
  es decir, sólo ocurre una de estas posibilidades, ser par, de la forma $n = 2q$ o ser impar de la forma $n = 2q+1$. Por lo tanto, todo entero $n$ es par o impar, pero no ambos. \
  #h(1fr) $qed$