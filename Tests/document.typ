Sea $\{X_n\}_{n in NN}$ una cadena de Markov con espacio de estados $EE=\{0,1,2,3,4\}$, distribución inicial $pi^0 = (1,0,0,0,0)$ y matriz de probabilidades de transición
  $ PP= 
  mat(
    0 , 1 , 0 , 0 , 0;
    frac(1, 4), 0, frac(3, 4), 0, 0;
    0, frac(1, 2), 0, frac(1, 2), 0;
    0, 0, frac(3, 4), 0, frac(1, 4);
    0, 0, 0, 1, 0;
  ) $
Calcula la distribución estacionaria de $X_n_{n in NN}$ para $n$ par, es decir, utilizando $PP$.

#let ofi = [Office]
#let rem = [_Remote_]
#let lea = [*On leave*]

#table(
  columns: 6 * (1fr,),
  table.header(
    [Team member],
    [Monday],
    [Tuesday],
    [Wednesday],
    [Thursday],
    [Friday]
  ),
  [Evelyn Archer],
    table.cell(colspan: 2, ofi),
    table.cell(colspan: 2, rem),
    ofi,
  [Lila Montgomery],
    table.cell(colspan: 5, lea),
  [Nolan Pearce],
    rem,
    table.cell(colspan: 2, ofi),
    rem,
    ofi,
)

#table(
  columns: 5 * (1fr,),
  table.header(
    [], table.cell(colspan:2, [Blue chip]),
    [Fresh IPO], [Penny st'k],
  ),
  table.cell(
    rowspan: 4,
    align: horizon,
    [
      USD/day
    ],
  ),
    [0.20], [104], [5], [3.17], 
    [108], [4], [1.59], [84],  
    [1], [0.26], [98], [15],
    [0.01], [195], [4], [7],
  [
    USD/hr
  ], 
    [57], [2], [3], [6.7]
)

#table(
  columns: (auto, 1fr, auto, auto),
  table.header(
    table.cell(colspan:4, align: center, [Índice temático]),
  ),
  table.cell(rowspan: 2,[]),
  table.cell(rowspan: 2, align: center + horizon, [Tema]),
  table.cell(colspan: 2, align: center, [Horas de curso]), [Teorías], [Prácticas], 
  [1], [Conjuntos de números], [1], [],  
  [2], [La recta real], [1], [1],
  [3], [Potencias], [1], [1],
  [4], [Raíces], [1], [1], 
  [5], [Porcentajes], [1], [1],
  table.cell(colspan: 2, align: right, [Subtotal]), [5], [4],
  table.cell(colspan: 2, align: right, [Total]), 
  table.cell(colspan: 2, align: center, [9 hrs])
)