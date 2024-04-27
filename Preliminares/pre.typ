#set page(header: [
  Preliminares
  #h(1fr)
  Demo])
#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 1] #h(2pt) (Espacio muestral). Consideremos un experimento aleatorio. El conjunto de posibles resultados de ese experimento se conoce como #text(fill: rgb("#FF75B5"))[espacio muestral.]

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 2] #h(2pt) (Principio de conteo). Si $Omega$ es un espacio muestral finito y $A subset.eq Omega$, entonces
$ P(A) = frac(\# text("de casos favorables") (A), \# text("de casos totales") (Omega)) $ 

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 3] #h(2pt) (Variable Aleatoria). Es una función cuyo dominio es el espacio muestral y su imágen son los $RR$, es decir, $X: Omega arrow.r.long RR$ y satisface
$ {w in Omega divides X(w) lt.eq x} in cal(F) #h(.5cm) forall x in RR $
donde $cal(F)$ es una familia de eventos $(A,B,C,...)$.

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 4] #h(2pt) (Función de densidad). Una variable aleatoria es llamada absolutamente continua si para cada $x in RR$ existe una función $f: RR arrow.r.long RR_+$ tal que, para toda $x in RR union {-infinity, infinity}$
$ P[X lt.eq x] = integral_(-infinity)^(x) f(x) #text(font: "Sans Serif Collection", style: "italic")[dx]. $
A la función $f$ se le llamará #text(fill: rgb("#FF75B5"))[función de densidad] de la varaible aleatoria $X$.

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 5] #h(2pt) (Función de distribución). La #text(fill: rgb("#FF75B5"))[función de distribución] o función de distribución acumulativa $F: RR arrow.r.long [0,1]$ de una variable aleatoria $X$ se define por
$ F(x) = P[X lt.eq x], #h(.5cm) text("para toda") x in RR. $

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 6] #h(2pt) (Ensayo Bernoulli). Es un experimento aleatorio en el cual se admiten dos posibles resultados. A estos resultados usualmente se les denomina éxito y fracaso. Una variable aleatoria #text(fill: rgb("#FF75B5"))[Bernoulli] es de la forma 
$ X(w) = cases(
  1 \, #h(.5cm) "si" w= "exito",
  0 \, #h(.5cm) "si" w= "fracaso",
  ) $
Haciendo $P(X = 1) = P("exito") = p$ y $P(X = 0) = P("fracaso") = 1 - p$. Decimos que $X tilde.op "Bernoulli"(p)$ si su función de densidad es 
$ f_X (k) = P(X = k) = p^k (1-p)^(1-k); #h(.5cm) k = 0,1 $
Ejemplo: El lanzamiento de una moneda, asociando el resultado de una de las caras como éxito y a la otra como fracaso.

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 7] #h(2pt) (Distribución Binomial). Consideremos $n$ ensayos Bernoulli independientes; definimos $X$ como el número de éxitos en los $n$ ensayos. Decimos que $X tilde.op "Binomial"(n,p)$ si su función de densidad es 
$ f_X (k) = P(X = k) = mat(n;k) p^k (1-p)^(n-k) $
donde $p$ es la probabilidad de éxito en cada ensayo.

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 8] #h(2pt) (Esperanza). Sea $X$ una variable aleatoria discreta con función de probabilidad $f(x) = P(X=x)$. La #text(fill: rgb("#FF75B5"))[esperanza] o valor esperado de $X$ se define como 
$ EE(X) = sum_(x) x PP(X=x) $ 

#highlight(fill: rgb("#FF75B5"), radius: 8pt, stroke: black, extent: 3pt)[Definición 9] #h(2pt) (Varianza). La #text(fill: rgb("#FF75B5"))[varianza] de una variable aleatoria $X$, denotada por $"Var"(X)$, se define como
$ "Var"(X) = EE([X - E(X)]^2) $
cuando esta esperanza existe. 