#set text(font: "Times New Roman", size: 12pt)
#align(center, text(font: "Times New Roman", size: 15pt)[
  *Tarea-Examen II*
])
1. Sea $X$ un conjunto, prueba que las siguientes funciones son métricas.
#enum(
  numbering: "a)",
  indent: .5cm,

  [En $X = {(x_1,x_2) in RR^2: x_2 > 0}$ definimos 
  $
    d((x_1,x_2),(y_1,y_2)) = cases( bar.v x_2 - y_2 bar.v "si" x_1 = x_2,
                                    bar.v x_2 bar.v + bar.v x_1 - y_1 bar.v + bar.v y_2 bar.v "si" x_1 eq.not x_2

    )
  $],

  [En $X= NN times NN$ si $(k,m) in NN times NN$, $d(k,m) = bar.v frac(1,k) - frac(1,m) bar.v $, es una métrica en $NN times NN$.],

  [Si $X = RR$, ¿$d(x,y) = bar.v s e n(x) - s e n(y) bar.v$ es métrica?.],

  [Sea $X$ un campo completo y ordenado para $0 < alpha lt.eq 1$, la función $d(x,y) = bar.v x - y bar.v^alpha$ para toda $x,y in X$.]
)
2. Muestra que $(RR^n, d_l ^2)$, donde 
$
  d_(l^2)(macron(x),macron(y)) &= d_(l^2)((x_1,x_2,x_3,...,x_n),(y_1,y_2,y_3,...,y_n)) \
  &= sqrt((x_1 - y_1)^2 + (x_2 - y_2)^2 +...+ (x_n - y_n)^2) \
  &= sqrt(sum_(i=1)^n (x_i - y_i)^2)
$
es un espacio métrico. \

_Demostración._ \
Sean $macron(x) = (x_1,x_2,x_3,...,x_n)$ y $macron(y) = (y_1,y_2,y_3,...,y_n) in RR^n$, notemos que
$
  d_(l^2)(macron(x),macron(y)) = sqrt(sum_(i=1)^n (x_i - y_i)^2) = 0 & arrow.l.r.double.long sum_(i=1)^n (x_i - y_i)^2 = 0 \
  & arrow.l.r.double.long x_i = y_i #h(.5cm) text("para toda") i =1,...,n\
  & arrow.l.r.double.long macron(x) = macron(y)
$
Luego,
$
  d_(l^2)(macron(x),macron(y)) = sqrt(sum_(i=1)^n (x_i - y_i)^2) = sqrt(sum_(i=1)^n (y_i - x_i)^2) = d_(l^2)(macron(y),macron(x))
$
Es decir que para todo $macron(x), macron(y) in RR^n$ se cumple que $d_(l^2)(macron(x),macron(y)) = d_(l^2)(macron(y),macron(x))$.

Ahora consideremos $macron(z) = (z_1,z_2,z_3,...,z_n) in RR^n$, entonces
$
  d_(l^2)(macron(x),macron(y))^2 &= (sqrt(sum_(i=1)^n (x_i - y_i)^2))^2 \
  &= sum_(i=1)^n (x_i - y_i)^2 \ 
  &= sum_(i=1)^n (x_i - z_i + z_i - y_i)^2 \
  &= sum_(i=1)^n [(x_i - z_i) + (z_i - y_i)]^2 \
  &= sum_(i=1)^n (x_i - z_i)^2 + 2 sum_(i=1)^n (x_i - z_i)(z_i - y_i) + sum_(i=1)^n (z_i - y_i)^2 \
  & lt.eq sum_(i=1)^n (x_i - z_i)^2 + 2 sqrt(sum_(i=1)^n (x_i - z_i)^2)sqrt(sum_(i=1)^n (z_i - y_i)) + sum_(i=1)^n (z_i - y_i)^2 \
  &= d_(l^2)(macron(x),macron(z))^2 + 2d_(l^2)(macron(x),macron(z))d_(l^2)(macron(z),macron(y)) + d_(l^2)(macron(z),macron(y))^2 \
  &= [d_(l^2)(macron(x),macron(z)) + d_(l^2)(macron(z),macron(y))]^2
$
De aquí obtenemos que 
$
d_(l^2)(macron(x),macron(y))^2 lt.eq [d_(l^2)(macron(x),macron(z)) + d_(l^2)(macron(z),macron(y))]^2 arrow.r.double.long d_(l^2)(macron(x),macron(y)) lt.eq d_(l^2)(macron(x),macron(z)) + d_(l^2)(macron(z),macron(y))
$
$therefore (RR^n, d_l ^2)$ es un espacio métrico. 

#align(right)[$qed$]

3. Prueba las siguientes series de desigualdades en $RR^n$:

#enum(
  numbering: "a)",
  indent: .5cm,

  [$d_(l^2)(x,y) lt.eq d_(l^1)(x,y) lt.eq sqrt(n) d_(l^2)(x,y)$],

  [$frac(1,sqrt(n))d_(l^2)(x,y) lt.eq d_(l^(infinity))(x,y) lt.eq d_(l^2)(x,y)$]
)
Donde #h(.3cm) $d_(l^1)(x,y) = sum_(i=1)^n divides x_i - y_i divides$ #h(.3cm) y #h(.3cm) $d_(l^(infinity))(x,y) = sup{divides x_i - y_i divides : 1 lt.eq i lt.eq n}$. \

_Demostración._ \
a). Sea $macron(z)=(x_1-y_1, x_2 - y_2, ..., x_n - y_n)$. Notemos que 
$
  d_(l^1)(x,y) &= sum_(i=1)^n bar.v z_i bar.v \ 
  arrow.r.double.long d_(l^1)(x,y)^2 &= (sum_(i=1)^n bar.v z_i bar.v)^2 \
  & lt.eq sum_(i=1)^n (bar.v z_i bar.v ^2) sum_(i=1)^n ( 1^2) \
  &= sum_(i=1)^n (bar.v z_i bar.v ^2)n
$
Donde la desigualdad se da por la #text(fill: rgb("#300CA4"))[Desigualdad de Hölder,] entonces

$
  (sum_(i=1)^n bar.v z_i bar.v)^2 & lt.eq sum_(i=1)^n (bar.v z_i bar.v ^2)n \
  arrow.r.double.long sum_(i=1)^n bar.v z_i bar.v & lt.eq sqrt(sum_(i=1)^n (bar.v z_i bar.v ^2)n) \
  arrow.r.double.long d_(l^1)(x,y) & lt.eq sqrt(n)sqrt(sum_(i=1)^n (x_i - y_i)^2) \
  therefore d_(l^1)(x,y) & lt.eq sqrt(n) d_(l^2)(x,y)
$
Luego, notemos que 
$
  (sum_(i=1)^n bar.v z_i bar.v)^2 gt.eq sum_(i=1)^n bar.v z_i bar.v ^2
$
por ser $bar.v z_i bar.v$ no negativo. Entonces, sacando raíz de ambos lados,
$
  sum_(i=1)^n bar.v z_i bar.v & gt.eq sqrt(sum_(i=1)^n bar.v z_i bar.v ^2) \
  therefore d_(l^2)(x,y) & lt.eq d_(l^1)(x,y) \
  therefore d_(l^2)(x,y) lt.eq d_(l^1)(x,y) & lt.eq sqrt(n) d_(l^2)(x,y)
$
#align(right)[$square.stroked$]

b). Sea $macron(z)=(x_1-y_1, x_2 - y_2, ..., x_n - y_n)$. Notemos que 
$
  bar.v.double macron(z) bar.v.double_2 & = sqrt(sum_(i=1)^n bar.v z_i bar.v^2) \
  & lt.eq sqrt(sum_(i=1)^n limits(max)_(i=1,...,n) bar.v z_i bar.v^2) \
  & = sqrt(n dot limits(max)_(i=1,...,n) bar.v z_i bar.v^2) \
  & = sqrt(n) dot limits(max)_(i=1,...,n) bar.v z_i bar.v \
  & = sqrt(n) bar.v.double macron(z) bar.v.double_(infinity) \ \ \
  arrow.r.double.long bar.v.double macron(z) bar.v.double_2 & lt.eq sqrt(n) bar.v.double macron(z) bar.v.double_(infinity) #h(.7cm) #text(fill: rgb("#054CC8"))[...(1)]
$
Por otro lado, tenemos que 
$
  bar.v.double macron(z) bar.v.double_(infinity) & = limits(max)_(i=1,...,n) bar.v z_i bar.v \
  & = sqrt(limits(max)_(i=1,...,n) bar.v z_i bar.v^2) \
  & lt.eq sqrt(sum_(i=1)^n  bar.v z_i bar.v^2) \
  & = bar.v.double macron(z) bar.v.double_2 \ \ \
  arrow.r.double.long bar.v.double macron(z) bar.v.double_(infinity) & lt.eq bar.v.double macron(z) bar.v.double_2 #h(.7cm) #text(fill: rgb("#054CC8"))[...(2)]
$
Y de este modo, juntando las desigualdades (1) y (2),
$
  bar.v.double macron(z) bar.v.double_2 lt.eq sqrt(n) bar.v.double macron(z) bar.v.double_(infinity) lt.eq sqrt(n) bar.v.double macron(z) bar.v.double_2 #h(.7cm)
  arrow.r.double.long #h(.7cm) frac(1, sqrt(n))bar.v.double macron(z) bar.v.double_2 lt.eq & bar.v.double macron(z) bar.v.double_(infinity) lt.eq bar.v.double macron(z) bar.v.double_2 \
  therefore frac(1,sqrt(n))d_(l^2)(x,y) lt.eq d_(l^(infinity))(x,y) lt.eq d_(l^2)(x,y)
$
#align(right)[$qed$]
4. Sea ${a_n}_(n=1) ^infinity$ y ${b_n}_(n=1) ^infinity$ dos sucesiones en un espacio métrico $(X,d)$. Supongamos que $op("lim", limits: #true)_(n -> infinity) a_n = a$ y $op("lim", limits: #true)_(n -> infinity) b_n = b$ con $a,b in X$. Muestra que $op("lim", limits: #true)_(n -> infinity) d(a_n,b_n) = d(a,b)$.
5. Sea $p gt.eq 1$,  $bar.v.double (x,y) bar.v.double := (bar.v x bar.v^p + bar.v y bar.v^p)^(1/p)$ y sea 
$
  d((x,y),(r,s)) = (bar.v x - r bar.v^p + bar.v y - s bar.v^p)^(1/p)
$
Demuestra que es una norma y por lo tanto $d((x,y),(r,s))$ es una métrica en $RR^2$.
6. Sea $(E, bar.v.double bar.v.double)$ un espacio normado y sea $B(x_0,1) := {x in E: bar.v.double x bar.v.double < 1 }$.
#enum(
  numbering: "a)",
  indent: .5cm,

  [Demuestra que $B(x_0,1)$ es un conjunto convexo; es decir que si $x,y in B(x_0, 1)$, entonces $t x + (1-t)y in B(x_0,1)$ para todo $0<t<1$.],

  [Demuestra que el conjunto de todas las métricas definidas en un conjunto $X$ es un conjunto convexo.]
)
_Demostración._ \
a). Sean $x, y in B(x_0,1)$, entonces, por definición, $bar.v.double x bar.v.double < 1$ y $bar.v.double y bar.v.double < 1$. \
Queremos demostrar que $bar.v.double t x + (1-t)y bar.v.double < 1$ para todo $0 < t < 1 $. Entonces notemos que
$
  bar.v.double t x + (1-t)y bar.v.double lt.eq bar.v.double t x bar.v.double + bar.v.double (1-t)y bar.v.double = t bar.v.double x bar.v.double + (1-t)bar.v.double y bar.v.double
$
Y dado que $bar.v.double x bar.v.double < 1$ y $bar.v.double y bar.v.double < 1$, podemos escribir $bar.v.double x bar.v.double lt.eq a$ y $bar.v.double y bar.v.double lt.eq b$ con $a,b < 1$. Entonces
$
  bar.v.double t x + (1-t)y bar.v.double lt.eq bar.v.double t a + (1-t)b bar.v.double < bar.v.double t 1 + (1-t)1 bar.v.double = bar.v.double 1 bar.v.double = 1 \
  arrow.double.long bar.v.double t x + (1-t)y bar.v.double < 1 \
  therefore t x + (1-t)y in B(x_0,1)
$
#align(right)[$square.stroked$] 
b). Sea $cal(M)$ el conjunto de todas las métricas definidas en un conjunto $X$. Debemos demostrar que si $d_1$ y $d_2$ son métricas en $X$, entonces $d_t = t d_1 + (1-t)d_2$ para $0 < t < 1$ es también una métrica en X. Así, observemos que 
$
  d_t (x,y) = t d_1 (x,y) + (1-t)d_2 (x,y) gt.eq 0  
$
ya que $d_1 (x,y) gt.eq 0$ y $d_2 (x,y) gt.eq 0$. \
Luego, 
$
  d_t (x,y) = 0 & arrow.l.r.double.long t d_1 (x,y) + (1-t)d_2 (x,y) = 0 \
  & arrow.long.double d_1(x,y) = 0 #h(.3cm) #text(font: "Times New Roman")[y] #h(.3cm) d_2(x,y) = 0
$
Lo cual es cierto siempre que $x = y$, pues $d_1$ y $d_2$ son métricas. \
Ahora, 
$
  d_t (x,y) = t d_1 (x,y) + (1-t)d_2 (x,y) = t d_1 (y,x) + (1-t)d_2 (y,x) = d_t (y,x) \
  arrow.long.double d_t (x,y) = d_t (y,x)
$
Y finalmente, 
$
  d_t (x,z) &= t d_1 (x,z) + (1-t)d_2 (x,z) \
  & lt.eq t (d_1 (x,y) + d_1 (y,z)) + (1-t)(d_2 (x,y) + d_2 (y,z)) \
  & = t d_1 (x,y) + t d_1 (y,z) + (1-t)d_2 (x,y) + (1-t)d_2 (y,z) \
  & = (t d_1 (x,y) + (1-t)d_2 (x,y)) + (t d_1 (y,z) + (1-t)d_2 (y,z)) \
  & = d_t (x,y) + d_t (y,z) \
  & arrow.long.double d_t (x,z) lt.eq d_t (x,y) + d_t (y,z)
$
Así, $d_t$ cumple las tres propiedades para ser métrica en $X$, por lo tanto, hemos demostrado que el conjunto $cal(M)$ es un conjunto convexo.
#align(right)[$qed$]
7. Demuestra el siguiente resultado. Sea ${x_n} subset RR$, con $x_(2n) lt.eq x_(2n+2) lt.eq x_(2n+1) lt.eq x_(2n-1)$ para toda $n in NN$ y $op("lim", limits: #true)_(n -> infinity) (x_(2n-1) - x_(2n)) = 0$. Entonces ${x_n}$ converge a alguna $x in RR$ y $x_(2n) lt.eq x lt.eq x_(2n-1)$ para toda $n in NN$. Después usa ese resultado para probar que la siguiente sucesión:
$
  {a_n} = cases(
    a_1 = 1, 
    a_(n+1) = frac(1,1+a_n)
  )
$
Converge a $frac(1,2)(sqrt(5)-1)$.
8. Para toda $n in NN$, sean $a_n = (1 + frac(1,n))^n$ y $b_n = (1 + frac(1,n))^(n+1)$, verifica que 
#enum(
  numbering: "a)",
  indent: .5cm,

  [${a_n}$ es estrictamente creciente.],

  [${b_n}$ es estrictamente decreciente.],

  [$op("lim", limits: #true)_(n -> infinity) a_n$ $=$ $op("lim", limits: #true)_(n -> infinity) b_n$ el límite de estas dos sucesiones es denotado por $e$. Tenemos que $2 < e < 4$.]
) 
_Solución._ \
a). Consideremos $frac(a_(n+1), a_n) = frac((1+frac(1,n+1))^(n+1), (1 + frac(1,n))^n)$ y notemos que 
$ 
ln(frac(a_(n+1), a_n)) &= ln((1+frac(1,n+1))^(n+1)) - ln((1 + frac(1,n))^n) \
&= (n+1)ln(1 + frac(1,n+1)) - n ln(1+frac(1,n))
$
Y por la expansión de Taylor respecto al logaritmo natural $ln(1+x) approx x  - frac(x^2,2) + O(x^3)$ nos queda que
$
  ln(1 + frac(1,n+1)) & approx frac(1,n+1) - frac(1, 2(n+1)^2) \
  ln(1 + frac(1,n)) & approx frac(1,n) - frac(1, 2n^2)
$
Entonces
$
  (n+1)ln(1 + frac(1,n+1)) - n ln(1+frac(1,n)) &= (n+1)(frac(1,n+1) - frac(1, 2(n+1)^2)) - n (frac(1,n) - frac(1, 2n^2)) \
  &= 1 - frac(1,2(n+1)^2) -1 + frac(1,2n) \
  &= frac(1,2n) - frac(1,2(n+1))
$
Finalmente, 
$
frac(1,2n) - frac(1,2(n+1)) > 0 arrow.r.double.long ln(frac(a_(n+1), a_n)) > 0 arrow.r.double.long frac(a_(n+1), a_n) > 0 \
$ 
$therefore {a_n}$ es estrictamente creciente.
#align(right)[$square.stroked$]
b). Consideremos $frac(b_n, b_(n+1)) = frac((1+frac(1,n))^(n+1), (1 + frac(1,n+1))^(n+2))$ y notemos que 
$
ln(frac(b_n, b_(n+1))) &= (n+1)ln(1+frac(1,n)) - (n+2) ln(1+frac(1,n+1))
$
Y por la expansión de Taylor mencionada previamente,
$
  ln(1 + frac(1,n)) & approx frac(1,n) - frac(1, 2n^2) \
  ln(1 + frac(1,n+1)) & approx frac(1,n+1) - frac(1, 2(n+1)^2)
$
Entonces
$
  (n+1)ln(1+frac(1,n)) - (n+2) ln(1+frac(1,n+1)) &= (n+1)(frac(1,n) - frac(1, 2n^2)) - (n+2) (frac(1,n+1) - frac(1, 2(n+1)^2)) \
  &= (1 + frac(1,n) - frac(n+1,2n^2)) - (1 + frac(1,n+1) - frac(n+2,2(n+1)^2)) \
  &= frac(1,n) - frac(1,n+1) - frac(n+1, 2n^2) + frac(n+2,2(n+1)^2) \
  &= frac(1,n) - frac(1,n+1) - (frac(n+1, 2n^2) - frac(n+2,2(n+1)^2))
$
Luego, 
$
frac(1,n) - frac(1,n+1) > 0
$ 
Y $(frac(n+1, 2n^2) - frac(n+2,2(n+1)^2))$ es siempre negativa, en particular decreciente, afectada por la diferencia con $(frac(1,n) - frac(1,n+1))$, por lo que $ln(frac(b_n, b_(n+1))) > 0$, entonces $frac(b_n, b_(n+1)) > 0$ y por lo tanto, ${b_n}$ es estrictamente decreciente. \
#align(right)[$square.stroked$]
c). Consideremos a la sucesión $b_n = (1+ frac(1,n))^(n+1)$. Podemos reescribir a $b_n$ en términos de la sucesión $a_n$ como:
$
  b_n = (1+ frac(1,n))^(n+1) = (1+ frac(1,n))^(n) (1+ frac(1,n))
$
Y se sabe que 
$
  op("lim", limits: #true)_(n -> infinity) (1 + frac(1,n))^n = e
$
Por otro lado, 
$
  op("lim", limits: #true)_(n -> infinity) (1 + frac(1,n)) = 1
$
Entonces,
$
  b_n = (1+ frac(1,n))^(n) (1+ frac(1,n)) = e dot 1 = e \ \ \
  therefore op("lim", limits: #true)_(n -> infinity) a_n = op("lim", limits: #true)_(n -> infinity) b_n
$
#align(right)[$qed$]
9. Sea $a,z in CC$. Entonces la serie $sum_(n=0) ^infinity a dot z^n$ converge y su suma es $frac(a,1-z)$ si $bar.v.double z bar.v.double < 1$. Si $a eq.not 0$ y $ bar.v.double z bar.v.double gt.eq 1$, entonces esta serie diverge.
10. Sea $b > 1$ y $b in NN$ y sea ${x_j}_(j=1) ^infinity$ una sucesión de naturales con $0 lt.eq x_j < b$ para toda $j$. Entonces la serie $sum_(j=1) ^infinity x_j b^(-j)$ converge y su suma $x$ satisface que $0 lt.eq x lt.eq 1$.
11. Sea $p in NN$, $a in [0, infinity)$ y ${a_n}_(n=1) ^infinity subset [0,infinity)$. Entonces $op("lim", limits: #true)_(n -> infinity) root(p,a_n) = root(p,a)$ si y sólo si $op("lim", limits: #true)_(n -> infinity) a_n = a$.
12. Evalúa
#enum(
  numbering: "a)",
  indent: .5cm,

  [$op("lim", limits: #true)_(n -> infinity) sqrt(n^2 + 2n) -n$ #v(.3cm)],

  [$op("lim", limits: #true)_(n -> infinity) frac(2^n + n, 3^n - n)$ #v(.3cm)],

  [$op("lim", limits: #true)_(n -> infinity) frac(2^n^2 + 1, sqrt(n^4 + n^3))$]
)
13. Sea $0 < a < b < infinity$. Define $x_1 = a, x_2 = b, x_(n+2) = frac(1,2) (x_n + x_(n+1))$. Determine si ${x_n}$ converge y de ser así, calcule su límite.
_Solución._ \
Definimos #h(.2cm) $y_(n) &= x_(2n-1)$ #h(.1cm) y #h(.1cm) $z_(n) = x_(2n)$.#h(.1cm) Entonces tenemos que
$
  y_(n+1) &= x_(2(n+1)-1) \
  &= x_(2n+1) \
  &= frac(1,2)(x_(2n-1) + x_(2n)) \
  &= frac(1,2)(y_(n) + z_n) 
$
Y por otro lado, 
$
  z_(n+1) &= x_(2(n+1)) \ 
  &= x_(2n + 2) \
  &= frac(1,2)(x_(2n) + x_(2n+1)) \
  &= frac(1,2)(z_(n) + frac(1,2)(y_n + z_n)) \
  &= frac(1,2)(z_(n) + frac(1,2)y_n + frac(1,2)z_n) \
  &= frac(1,2)z_(n) + frac(1,4)y_n + frac(1,4)z_n \
  &= frac(3,4)z_(n) + frac(1,4)y_n
$
Entonces 
$
  y_(n+1) &= frac(1,2)(y_(n) + z_n) \
  z_(n+1) &= frac(1,2)(frac(3,2)z_(n) + frac(1,2)y_n)
$
De modo que tanto $y_n$ como $z_n$ son medias ponderadas de los términos anteriores, lo que sugiere que las diferencias entre términos consecutivos disminuye en $n$ y la relación entre $y_(n+1)$ y $z_(n+1)$ asegura que la sucesión promedie valores.

Para el límite, supongamos que $y_n$ y $z_n$ tienden a $L$ cuando $n$ tiende a infinito, entonces 
$
  L = frac(1,2)(L + L) = L
$
Y 
$
  L = frac(3,4)L + frac(1,4)L = L
$
Como ambas expresiones son válidas y consistentes, la sucesión ${x_n}$ debe converger a un único valor $L$, y notemos que las ${y_n}$ y las ${z_n}$ deben promediar los valores iniciales en cada paso, a saber, los valores $a$ y $b$, entonces 
$
  L = frac(a+b,2) \
  therefore {x_n} arrow frac(a+b,2)
$
#align(right)[$qed$]
14. Sea $0 < a < b < infinity$. Define $x_1 = a, x_2 = b, x_(2n+1) = sqrt(x_(2n) dot x_(2n-1))$. Entonces la sucesión ${x_n}_(n=1)^infinity$ converge. 
Sugerencia: Para $0 < alpha < beta$, tenemos que $alpha < sqrt(alpha beta) < frac(1,2)(alpha + beta) < beta$ (Usa las desigualdades de media geométrica y media aritmética) y $(sqrt(beta) - sqrt(alpha))^2 < beta - alpha$.
15. Si ${a_n}_(n=1)^infinity subset RR$ y ${b_n}_(n=1)^infinity subset (0, infinity)$ y ${frac(a_n,b_n)}_(n=1) ^infinity$ es monótona, entonces la sucesión ${c_n}_(n=1)^infinity$ definida como $c_n = frac((a_1 + ... + a_n),b_1 + ... + b_n)$, es también monótona. 
Sugerencia: Si $frac(a,b) lt.eq frac(c,d)$, entonces $frac(a,b) lt.eq frac(a+c,b+d) lt.eq frac(c,d)$.