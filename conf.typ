#let conf(
lab-number: 0,
title: none,
name: none,
studentID: 0,
doc,
) = {
set page(
  margin: (top: 1in + 20pt + 12pt + 25pt, bottom: 1in + 20pt + 12pt + 25pt, left: 1in + 31pt, right: 1in + 31pt),
  numbering: "1",
  paper: "a4",
)

set par(leading: 0.6em, spacing: 0.6em, first-line-indent: 1.6em, justify: true)
set text(font: "New Computer Modern", size: 12pt)
show raw: set text(font: "New Computer Modern Mono")
show heading: set block(above: 1.4em, below: 1em)
set par(linebreaks: auto)
set heading(numbering: "1.1  ")
show math.equation: set block(above: 1em, below: 0.8em)
set math.equation(numbering: "(1)", block: true, supplement: [Eq.])
set figure(placement: auto)
set table(
align: center,
columns: 5,
inset: 6pt,
stroke: 0.5pt,
)
show figure: it => box(width:100%)[
  #v(1em)
	#align(center)[#it.body]
  #let size = measure(it.caption).width
  #let available-size = 8.3in - 2in - 62pt
	#v(if it.has("gap") {it.gap} else {0.5em})
	#set align(if (size>available-size) {left} else {center})
	#set par(justify: true)
	#it.caption
  #v(1em)
]

align(center + horizon)[ #line(
    length: 100%,
    stroke: 1pt,
  )
  #v(5mm)

  #text(smallcaps[UM-SJTU Joint Institute], size: 14.4pt)
  #par(text("", size: 14.4pt-1.2em))
  #text(smallcaps[Physics Laboratory], size: 14.4pt)

  #text("(PHYS1410J)")
  #v(5mm - 0.6em)
  #line(
    length: 100%,
    stroke: 1pt,
  )
  #v(4cm - 0.6em)
  #text(smallcaps[Laboratory Report], size: 14.4pt)
  #par(text("", size: 14.4pt-1.2em))
  #text(smallcaps("Excercise " + str(lab-number)), size: 14.4pt)
  #par(text("", size: 14.4pt-1.2em))
  #text(smallcaps(title), size: 14.4pt)]

v(9.5cm)
table(
  rows: (0.4em) * 3,
  columns: 2,
  stroke: none,
  align: left,
  ("Name: "+name), ("ID: "+str(studentID)),
  [Date: #datetime.today().display()], []
)
//align(right)[#text("[rev4.1]", size: 10pt)] // comment it out
pagebreak()
doc
}

