#let blanco = luma(95%)
#let negro = luma(14%)
#let escarlata = rgb("EA2F15")
#let naranja = rgb("FF9900")
#let amarillo = rgb("FFD000")
#let chartreuse = rgb("C9ED36")
#let verde = rgb("00C735")
#let cerceta = rgb("00BCA3")
#let cian = rgb("00BAD4")
#let ceruleo = rgb("0086DF")
#let indigo = rgb("1D20A3")
#let morado = rgb("440483")
#let violeta = rgb("D151C8")
#let magenta = rgb("FE0086")

#let title-text-font = "Source Code Pro"
#let title-text-size = 23.69pt

#let heading-text-font = "Source Code Pro"
#let heading-text-size = 17.77pt
#let subheading-text-size = 13.33pt

#let body-text-font = "Source Serif 4"
#let body-text-size = 10pt

#let caption-text-font = "Source Sans 3"
#let caption-text-size = 7.5pt

#let rect-st = rect(radius: 36pt, fill:negro.lighten(5%), width:100%, height: 100%, inset: 0pt)

#set page(paper:"presentation-16-9", fill:negro, margin: (top:24pt,bottom:48pt, left: 36pt, right:36pt), background:[
  #set align(bottom)
  #rect(width:100%, height: 33%, fill:blanco)
])

#v(1fr)

#align(center, text(size: title-text-size, font: title-text-font, weight: "black", fill: blanco)[
  La distribución binomial
])

#v(1fr)

#grid(columns:3, column-gutter: 1fr)[
  #set align(left)
  #image("UNAM-color.png", width: 33%)][
    #align(left, text(fill: negro, size: body-text-size, font: body-text-font)[
        Integrantes:
        #v(10pt)
        Name

        Name

        Name
      ]
    )
  ][
    #set align(right)
    #image("FC-color.png", width: 33%)
    ]

#pagebreak()
#set page(margin:(right:18pt, bottom:16.5pt), background:none)
#grid(columns:(36pt,1fr), rows:(1fr,15pt), column-gutter: -10pt, row-gutter: 6pt)[
  #align(horizon)[
  #box(inset: (x:-100pt))[
    #rotate(text(fill:blanco, size:subheading-text-size, font:heading-text-font, weight: "black")[La distribución binomial], -90deg))
  ]
]
][
  #set align(center + horizon)
  #set text(fill:blanco, size:body-text-size, font:body-text-font)
  #grid(columns:2, column-gutter: 20pt)[
    #rect(radius: 36pt,fill:negro.lighten(5%),width:100%,height: 100%)[
      #rect(radius: 36pt,fill:negro.lighten(5%),width:80%,height: 80%)[
      #align(left, text(font: title-text-font, weight: "black", fill: blanco, size: 20pt)[
       Problema
      ])
      #align(left, text(fill: blanco)[
       ¿Cómo podemos modelar el éxito de #text(weight: "bold")[un solo] tiro de un dado de $n$ lados con una función de probabilidad?
      ])
      ]
    ]][
    #show image: it => block(radius: 36pt, fill:negro.lighten(5%), width:100%, height: 100%, inset: 0pt, clip: true)[#it]
    #image("pexels_1.jpg", width: 100%, height: 100%)
    ]][][
  #align(bottom)[
    #set text(fill:blanco, size:caption-text-size, font:caption-text-font, weight: "semibold")
    #h(36pt)
    SEM I
    #h(24pt)
    PyE II, CCH
    #h(24pt)
    Ensayos de Bernoulli
]]