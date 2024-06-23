#set page(
  paper: "us-letter",
  numbering: "1"
)
#set text(
  font: "Times New Roman"
)

#grid(
  align: center + horizon,
  columns: (1fr, auto, 1fr),
  image("img\f_c_unam.png", width: 55%),
  [*"Universidad Nacional Autónoma de México"* \
  Facultad de Ciencias \
  #text(style: "italic")[Matemáticas desde 0] \
  #text(size: 9pt)[17/Junio/2024]],
  image("img\unam_c.u.png", width: 55%)
)
#line(length: 100%)

#align(center)[
  #text(
    font: "Times New Roman",
    size: 15pt)[Temario de Aritmética]
]
*Objetivo general:* #v(.3cm)
- Que el alumno domine las operaciones de la aritmética básica como suma, resta, multiplicación y división entre distintas variantes como potencias, raíces y fracciones. 
#v(.5cm)
*Objetivos específicos:* #v(.3cm)
- Tener una noción de la necesidad de los diferentes conjuntos de números para resolver operaciones básicas. #v(.3cm)
- Conocer y aplicar métodos específicos para resolver cada tipo de operación aritmética. #v(.3cm)
- Comprender y resolver problemas reales de porcentajes. #v(.3cm)

#table(
  columns: (auto, 1fr, auto, auto),
  table.header(
    table.cell(colspan:4, align: center, [*Índice temático*]),
  ),
  table.cell(rowspan: 2,[]),
  table.cell(rowspan: 2, align: center + horizon, [*Tema*]),
  table.cell(colspan: 2, align: center, [*Horas de curso*]), [*Teorías*], [*Prácticas*], 
  [*1*], [*Conjuntos de números*], [*1*], [],  
  [*2*], [*La recta real*], [*1*], [*1*],
  [*3*], [*Potencias*], [*1*], [*1*],
  [*4*], [*Raíces*], [*1*], [*1*], 
  [*5*], [*Porcentajes*], [*1*], [*1*],
  table.cell(colspan: 2, align: right, [*Subtotal*]), [*5*], [*4*],
  table.cell(colspan: 2, align: right, [*Total*]), 
  table.cell(colspan: 2, align: center, [*9 hrs*])
)

#pagebreak()
#set page(
  header: text(
    font: "Times New Roman", 
    style: "italic", 
    weight: "light",
    baseline: 8pt,
    size: 10pt)[
  Matemáticas desde 0 #h(1fr) Temario de Aritmética #line(stroke: .5pt, length: 100%)]
)

#table(
  columns: (auto, 1fr),
  table.header(
    table.cell(colspan:2, align: center, [*Contenido temático*]),
  ),
  table.cell(rowspan: 2,[]),
  table.cell(rowspan: 2, align: center + horizon, [*Temas y subtemas*]), 
  [*1*], [*Conjuntos de números* \ #v(.07cm) 
        1.1 #h(.4cm)Números naturales \ #v(.07cm)
        1.2 #h(.4cm)Números enteros \ #v(.07cm)
        1.3 #h(.4cm)Números racionales \ #v(.07cm)
        1.4 #h(.4cm)Números irracionales \ #v(.15cm)],  
  [*2*], [*La recta real* \ #v(.07cm)
        2.1 #h(.4cm)Propiedades de los signos \ #v(.07cm)
        2.2 #h(.4cm)Suma y resta \ #v(.07cm)
        2.3 #h(.4cm)Multiplicación y división \ #v(.07cm)
        2.4 #h(.4cm)Jerarquía de operaciones \ #v(.07cm)
        2.5 #h(.4cm)Operaciones con fracciones \ #v(.15cm)],
  [*3*], [*Potencias* \ #v(.07cm)
        3.1 #h(.4cm)Noción intuitiva de la potencia \ #v(.07cm)
        3.2 #h(.4cm)Operaciones con potencias \ #v(.15cm)],
  [*4*], [*Raíces* \ #v(.07cm)
        4.1 #h(.4cm)Raíces exactas \ #v(.07cm)
        4.2 #h(.4cm)Raíces no exactas \ #v(.15cm)], 
  [*5*], [*Porcentajes* \ #v(.07cm)
        5.1 #h(.4cm)Representaciones \ #v(.07cm)
        5.2 #h(.4cm)Conversiones \ #v(.07cm)
        5.3 #h(.4cm)Problemas de aplicación \ #v(.15cm)]
)

#pagebreak()

#table(
  columns: (1fr, 1fr),
  table.header(align(center)[*Estrategias didácticas*], 
                align(center)[*Evaluación de aprendizaje*]),
  [Exposición #h(1fr) (X)], [Exámenes parciales #h(1fr) (X)],  
  [Trabajo en equipo #h(1fr) (#h(.2cm))], [Examen final #h(1fr) (X)],
  [Lecturas #h(1fr) (#h(.2cm))], [Trabajos y tareas #h(1fr) (#h(.2cm))],
  [Trabajo de investigación #h(1fr) (#h(.2cm))], [Presentación del tema #h(1fr) (#h(.2cm))], 
  [Prácticas (taller o laboratorio) #h(1fr) (#h(.2cm))], [Participación en clase #h(1fr) (#h(.2cm))],
  [Prácticas de campo #h(1fr) (#h(.2cm))],[Asistencia #h(1fr) (#h(.2cm))],
  [Aprendizaje por proyectos #h(1fr) (#h(.2cm))],[Rúbricas #h(1fr) (#h(.2cm))],
  [Aprendizaje basado en problemas #h(1fr) (#h(.2cm))],[Portafolios #h(1fr) (#h(.2cm))],
  [Casos de enseñanza #h(1fr) (#h(.2cm))],[Listas de cotejo #h(1fr) (#h(.2cm))],
  [Otras (especificar) #h(1fr) (#h(.2cm))],[Otras (especificar) #h(1fr) (#h(.2cm))]
)