#import "@preview/gantty:0.4.0": gantt
#import "@preview/wordometer:0.1.5": word-count, total-words
#show: word-count

#set text(
  font: "Times New Roman",
   size: 12pt,
   lang: "en",
 )

#set page(
   paper: "a4",
   margin: (x: 2.7cm, y: 2.7cm),
)

// Creates title, two adjacent columns with gutter gap.

#align(horizon + center, text(16pt)[
	#text(size: 29pt, [Interim Report])
	#grid(
    columns: (auto, 1fr),
    column-gutter: 1.2em,

    align(left)[
      Project Title: #v(0.01pt)
      Name: \
      Student Id: \
      Email Address: #v(0.01pt)
      Programme: \
      Module: \
    ],

    align(left)[
      An Analysis Suite for Rust's Advantages in Linux #v(0.01pt)
      Fahad Khan \
      20454859 \
      #link("mailto:efyfk3@nottingham.ac.uk") #v(0.01pt)
      BSc Computer Science \
      COMP3003 \
    ]
  )
])

#v(6em)
#pagebreak()

// Outline page + post-cover formatting

#set par(
  justify: true,
  first-line-indent: 0.5in,
  leading: 0.65em
)

#set page(
  numbering: "1",
)

#set heading(
   numbering: "1.1.",
)

#outline()

// MAIN BODY

= Introduction
very quickly get out of the way the point and what will be achieved.

== Background
probably can copy over from proposal, but be careful to be clearer about the prorgram

== Related Work
-> focus on this, need to consolodate research here 

=== Research Gap

== Aims and Objectives
can be the same, but more indepth for the project (individual aspects more clear)

#pagebreak()

= Project Description

== Technical Breakdown

== Optimisation Tools
