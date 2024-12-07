#let project(
  title: "",
  subtitle:"", 
  authors: (),
  logo_school: none,
  logo_company:none,
  abstract:"",
  body
) = {

  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "a4",
    margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm),
    number-align: center,
    numbering: "1"
  )
  set text(font: "New Computer Modern", lang: "fr")
  show math.equation: set text(weight: 400)
  set heading(numbering: "1.1.")
  set par(justify: true)

  show outline.entry.where(
    level: 1
  ): it => {
    v(12pt, weak: true)
    strong(it)
  }

  show heading: it => {
    if it.level > 5 {
      parbreak()
      text(11pt, style: "italic", weight: "regular", it.body + ".")
    } else {
      it
    }
  }

  show heading: it => {
    if it.level == 1 {
      pad(bottom: 0.5em,top:0em,left:0em,it)
    } else {
      pad(bottom: 0.5em,top:0em,left: 1em * it.level,it)
    }
  }


  // Logo
  grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (right + horizon, left + horizon ),
  logo_school,
  logo_company,
)


  // Title row
  align(center)[
    #block(text(weight: 700, 1.75em, title))
    #v(2em, weak: true)
    #align(center, strong(subtitle))
    #v(2em, weak: true)
  ]

  // Author information.
  pad(
    top: 1.5em,
    bottom: 1.5em,
    x: -0em,
    grid(
      columns: (2fr,) * calc.min(3, authors.len()),
      gutter: -1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.role \
        #author.poste \
        #author.email \
        #author.phone
      ]),
    ),
  )

    // Abstract.
  pad(
    x: 2em,
    top: 1em,
    bottom: 1.5em,
    align(center)[
      #abstract
    ],
  )

  // outline(indent: auto, title:auto)
  // Main body.

  body

  bibliography("bibliography.bib", title: "Bibliographie", style: "ieee")
  
}