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
	#text(size: 29pt, [Project Proposal])
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

// #outline()

// MAIN BODY

= Background and Motivation
Linux is an operating system that runs on billions of computers worldwide, with its underlying kernel worked on by thousands of individuals. Unlike its prominent market competitors, the ongoing development effort is open-source, allowing any individual to view and contribute to the source code. Adopters continue to further advantages such as hardware versatility, security and all-encompassing software utility @Siever2005. For example, the kernel modularises processor-specific code, allowing it to be compiled and ported to any processor. This allows Linux to be run across a great variety of network architectures and embedded systems, which take advantage of its powerful system capability @Abbott2018. Linux's growing capital and market share have increased interest and contribution from large corporations, such as Google and Intel, becoming dependants @West2001. Given the scale of development and sheer prevalence of Linux distributions worldwide, questions are naturally raised about the safety and maintainability of the kernel. 

As demonstrated by the July 2024 CrowdStrike incident, where a small update with a memory issue to kernel-level software caused global Windows outages, without safety guarantees a pivotal error may result in catastrophic propagation across an operating system. Therefore, it may be important to re-evaluate the foundation on which Linux is built. The Linux kernel is written almost entirely in C, a programming language pervasive in operating system programming due to providing developers with low-level memory control and minimal runtime overhead. Optimisation is difficult yet incredibly rewarding, with precise manipulation of memory addresses enabling efficient data structure operations @Andersen1994. However, C's lack of modern safety features risks developer errors in memory management such as buffer overflows or dangling pointers, compromising system security and stability. This creates incentive to explore safer alternatives for the kernel while maintaining efficiency. 

Rust now becomes the main contender for Linux development, a modern systems programming language designed to provide memory safety guarantees without sacrificing the low-level performance essential for kernel development @Mat2014. Due to the continuing frustration with memory and concurrency issues within Linux, the value of preventing the various harms endemic to C grew into the "Rust for Linux" movement, culminating in the official addition of Rust kernel modules to the codebase in 2022 @Li2024. This ongoing effort has raised significant contention over the second language's practical efficiency and the prospective maintenance burden, forming the central focus of the project.

To carefully address these concerns, this project will produce a software suite to assess Rust's practical advantages within the Linux kernel. An automated framework will benchmark performance by executing a comparative suite that tests Rust modules provided by the user against other languages and variables. Extensive related work has focused on quantitative performance benchmarks between Rust and C, with findings largely indicating that Rust introduces performance overhead and does not eliminate all bug classes @Chen2022 @Garber2025. There may be a research gap in these assessments of Rust's advantages, as purely quantifying overhead is insufficient to capture the full trade-off, and the project will address this by including evaluation of high-level abstractions and built-in safety guarantees. 
#pagebreak()
= Aims and Objectives
The aim of this project is to develop an analysis software that assesses the performance of Rust against alternative languages in Linux kernel modules. Crucially, results evaluate and identify key maintainability critera, such as memory safety and abstraction.


- The key objectives for this project are to:
	+ Research and conduct a thorough evaluation of existing methods for performance benchmarking and code analysis in systems-level programming, across various language types.
	+ Develop a user-friendly software suite, such as a command-line interface, that automates the compilation and execution of modules written in Rust and alternatives.
	+ Implement a robust analysis engine within the suite that uses empirical data on kernel maintances indicators, in order to facilitate an evaluation of key maintainability criteria.
	+ Automatically process and present the collected data in a clear, comparative report in order to convey the performance and safety trade-offs between the languages.

#v(1em)

= Work Plan

The project will have clear phases for research, design, implementation and testing to ensure consistent progress. The timeline allocates sufficient time for each key task while accounting for other academic commitments. Regular meetings with the project supervisor will be held to ensure the project’s progress aligns with requirements and that any changes can be implemented early.

#v(2em)
#gantt(yaml("gantt.yaml"))

#pagebreak()
= Bibliography
// #bibliography("sources.bib",style: "harvard-cite-them-right", title: none)
#bibliography("bibProposal.bib", style: "ieee", title: none)

//#word-count(total => [
//  The number of words in this is #total-words
//])
