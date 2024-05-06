#import "codly-0.2.1/codly.typ": *

#show: codly-init.with()

#let icon(codepoint) = {
  box(
    height: 0.8em,
    baseline: 0.05em,
    image(codepoint)
  )
  h(0.1em)
}

#codly(languages: (
  rust: (name: "Rust", icon: icon("brand-rust.svg"), color: rgb("#CE412B")),
  python: (name: "Python", icon: icon("brand-python.svg"), color: rgb("#3572A5")),
))

#align(center, text(font: "Times New Roman", size: 15pt)[
  *El problema*
])
Durante la pandemia del 2019, se construyó un software para los hospitales que asignaba una habitación al azar a los pacientes para mantenerlos en cuarentena. En uno de esos hospitales con seis habitaciones, se presentó la situación de que a dos pacientes se les asignó la misma habitación. Se tuvo qué reiniciar el sorteo cuatro veces más para por fin asignarles una habitación distinta. ¿Qué tan común es que suceda esta cantidad de iguales asignaciones? ¿Cómo podría visualizarse qué tan común es?. \ \
_Solución propuesta._ \
Notemos que sólo se puede empatar o desempatar, entonces lo que estamos considerando son cuatro ensayos de Bernoulli independientes, así que se trata de un problema con distribución binomial, donde el espacio muestral denotado por $S$ son cuatro tiradas consecutivas de dos dados y la variable aleatoria $X$ es el número de tiradas dobles en cada $s in S$. \
Hay 36 formas posibles de asignar las dos habitaciones, de las cuales sólo hay 6 formas de asignar la misma, entonces hay una probabilidad $p = 6/36 = 1/6$ de quedar en una misma habitación y $1-p = 5/6$ de probabilidad de no quedar en la misma habitación. \ 
Así, la probabilidad que de 4 reinicios en el software, los 4 reinicios asignen la misma habitación es
$ P(X=4)= mat(4; 4)p^4 (1-p)^0 = (1/6)^4 = 1/1296 $
Para saber qué tan común es este suceso, usaremos la esperanza de la distribución normal y veremos que tan alejado está con la desviación estándar.
Se tiene que 
$ 
  EE[X]=n p = 4(1/6) = 2/3 \ 
  sigma = sqrt(n p (1-p)) = sqrt(4(1/6)(5/6))=sqrt(5)/3
$
Ahora, veamos a cuántas "sigmas" se encuentra el evento: 
$ 
  EE[X] + k sigma &= 4 \ 
  arrow.l.r.double.long k &= (4-EE[X])/sigma \
  arrow.l.r.double.long k &= frac(4-2/3, sqrt(5)/3) \
  arrow.l.r.double.long k &= 10/sqrt(5) \
  & approx 4.47
$
El evento se encuentra aproximadamente a $4.5 sigma$, es decir, es bastante raro.
Metiendo los datos a Python, podemos mostrar la siguiente gráfica:
#pagebreak()
#set page(header: [
  Problema de las habitaciones
  #h(1fr)
  Demo 2])

#figure(
    image("Recursos/gr_1.png", width: 80%),
    caption: [
      Visualización del problema.
    ],
    supplement: [Figura]
  )

Código:
```python
#Importar paqueterías
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import binom

# Parámetros
n = 4  # ensayos
p = 1/6  # éxito
mu = n * p  # media
sigma = np.sqrt(mu * (1 - p))  # varianza

# Valor objetivo
target = 4

# Calcular k
k = (target - mu) / sigma

# x (números de éxitos)
x = np.arange(0, 5)

# Probabilidad para cada valor x
probabilidades = binom.pmf(x, n, p)

# Graficar
plt.bar(x, probabilidades, align='center', alpha=0.5)
plt.title('Distribución Binomial')
plt.xlabel('Número de Éxitos')
plt.ylabel('Probabilidad')

# Graficar línea vertical en k*sigma desde la media
k_sigma_value = mu + k * sigma
plt.axvline(x=k_sigma_value, color='red', linestyle='--', label=f'μ + k*σ, (k={k:.2f})')
plt.legend()
plt.show()

# Imprimir valores
print(f"El valor de σ es: {sigma}")
print(f"El valor de k es: {k}")
print(f"El valor de kσ es: {k*sigma}")
print(f"El valor de μ + kσ es: {mu + k*sigma}")
```