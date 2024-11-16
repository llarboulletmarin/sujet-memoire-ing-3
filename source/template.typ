#let project(
  title: "",
  subtitle:"", 
  authors: (),
  logo_school: none,
  logo_company:none,
  body
) = {
  
  set document(author: authors.map(a => a.name), title: title)
  set page(
    paper: "a4",
    margin: (left: 20mm, right: 20mm, top: 20mm, bottom: 20mm),
    numbering: "1",
    number-align: center,
  )
  set text(font: "New Computer Modern", lang: "fr")
  show math.equation: set text(weight: 400)
  set heading(numbering: "1.1.")

  show heading: it => {
    if it.level > 5 {
      parbreak()
      text(11pt, style: "italic", weight: "regular", it.body + ".")
    } else {
      it
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
    x: 5em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center)[
        *#author.name* \
        #author.role \
        #author.poste \
        #author.email \
        #author.phone
      ]),
    ),
  )


  // Main body.
  set par(justify: true)

  body
  
}