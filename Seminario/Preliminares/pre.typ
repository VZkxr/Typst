#set page(header: [
  Preliminares
  #h(1fr)
  Demo 3])

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 1] #h(2pt) (Espacio muestral). Consideremos un experimento aleatorio. El conjunto de posibles resultados de ese experimento se conoce como #text(fill: rgb("#B10040"))[espacio muestral.]

Ejemplo: El espacio muestral del lanzamiento de 2 tetraedros está definido por 
#set math.mat(delim: "{")
$ 
 Omega =
 mat(
    (1,1)\,(1,2)\,(1,3)\,(1,4);
    (2,1)\,(2,2)\,(2,3)\,(2,4);
    (3,1)\,(3,2)\,(3,3)\,(3,4);
    (4,1)\,(4,2)\,(4,3)\,(4,4);
    ) 
$
donde $(i,j)$ representa el registro de que haya caído $i$ en el primer tetraedro y $j$ en el segundo tetraedro, con $i,j = 1,2,3,4$.

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 2] #h(2pt) (Principio de conteo). Si $Omega$ es un espacio muestral finito y $A subset.eq Omega$, entonces
$ P(A) = frac(\# text("de casos favorables") (A), \# text("de casos totales") (Omega)) $ 

Ejemplo 1.1: Para obtener la probabilidad de obtener un 2 en un dado, primero obtenemos el espacio muestral $Omega$ y el evento de nuestros casos favorables $A$, entonces 
$ 
 Omega &= {1,2,3,4,5,6} \ 
 A &= {2} 
$
Así, 
$ 
 P(A) = frac(\# text("de casos favorables") (A), \# text("de casos totales") (Omega)) = frac(1, 6)
$
Por lo tanto, la probabilidad de obtener un 2 en un dado es de $1/6$.

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 3] #h(2pt) (Variable Aleatoria). Es una función cuyo dominio es el espacio muestral y su imágen son los $RR$, es decir, $X: Omega arrow.r.long RR$ y satisface
$ {w in Omega divides X(w) lt.eq x} in cal(F) #h(.5cm) forall x in RR $
donde $cal(F)$ es una familia de eventos $(A,B,C,...)$.

Ejemplo: En términos más simples, una variable aleatoria es una función que asigna un valor, usualmente numérico, al resultado de un experimento aleatorio, por decir, los posibles resultados de tirar dos tetraedros. 

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 4] #h(2pt) (Función de densidad). Sea $(Omega, cal(F), P)$ un espacio de probabilidad y $X: Omega arrow.r.long RR$ una variable aleatoria discreta. A la función 
$ f_X (x)=P[{cal(w) in Omega divides X(cal(w))=x}]=P(X=x) $
se le llama #text(fill: rgb("#B10040"))[función de densidad] de la variable aleatoria $X$.

Ejemplo: Consideremos el lanzamiento de una moneda en donde se quiere contar el número de soles. Tenemos que $Omega = {(a,a),(a,s),(s,a),(s,s)}$, si $cal(w_1)=(a,a), cal(w_2)=(a,s), cal(w_3)=(s,a), cal(w_4)=(s,s)$ entonces 
$
 X(cal(w)) = cases(
  0 #h(.2cm)\, "si" cal(w) = cal(w_1),
  1 #h(.2cm)\, "si" cal(w) = cal(w_2) #h(.2cm) "o" #h(.2cm) cal(w) = cal(w_3),
  2 #h(.2cm)\, "si" cal(w) = cal(w_4),
 )
$
Luego, 
$
 f_X (0) &= P[{cal(w) in Omega divides X(cal(w)) = 0}] = P[{(a,a)}] = 1/4
 \
 f_X (1) &= P[{cal(w) in Omega divides X(cal(w)) = 1}] = P[{(a,s)},{(s,a)}] = 1/2 \
 f_X (2) &= P[{cal(w) in Omega divides X(cal(w)) = 2}] = P[{(s,s)}] = 1/4
$
Por lo tanto,
$
 f_X (x) = cases(
  1/4 #h(.2cm)\, "si" x = 0,
  1/2 #h(.2cm)\, "si" x = 1,
  1/4 #h(.2cm)\, "si" x = 2,
  0 #h(.2cm)\, "en otro caso",
 )
$

#figure(
    image("plot_dens.png", width: 80%),
    caption: [
      Gráfica de $f_X (x)$.
    ],
  )

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 5] #h(2pt) (Función de distribución). La #text(fill: rgb("#B10040"))[función de distribución] o función de distribución acumulativa $F: RR arrow.r.long [0,1]$ de una variable aleatoria $X$ se define por
$ F_X (x) = P[X lt.eq x], #h(.5cm) text("para toda") x in RR. $

Ejemplo: En el lanzamiento de un dado se tiene que $Omega = {1,2,3,4,5,6}$, y sabemos por el #text(weight: "bold")[ejemplo 1.1] que la probabilidad de obtener alguno de los elementos de $Omega$ es de $1/6$. Entonces 
$ 
 F_X (x) = cases(
  0 #h(.2cm)\, "si" x < 1,
  1/6 #h(.2cm)\, "si" 1 <= x < 2,
  2/6 #h(.2cm)\, "si" 2 <= x < 3,
  3/6 #h(.2cm)\, "si" 3 <= x < 4,
  4/6 #h(.2cm)\, "si" 4 <= x < 5,
  5/6 #h(.2cm)\, "si" 5 <= x < 6,
  1 #h(.2cm)\, "si" x >= 6
 )
$
En la figura 2 se muestra la gráfica de la función de distribución de la variable aleatoria, donde es más sencillo notar la #text(weight: "bold")[acumulación de probabilidad] entre los diferentes valores que puede tomar tal función.
#figure(
    image("plot_dist.png", width: 80%),
    caption: [
      Gráfica de $F_X (x)$.
    ],
  )
