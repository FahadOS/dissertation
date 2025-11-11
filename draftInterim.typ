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
   numbering: "1.1",
)

#outline()

// MAIN BODY

= Introduction
very quickly get out of the way the point and what will be achieved.

add a quick paragraph on exactly how optimisation is difficult. how something on many machines, optimisation needs to be perfect. how developing memory-safe easily can really help. 

== Context and Motivation
*copied over from proposal, but be careful to be clearer about the program*

Linux is an operating system that runs on billions of computers worldwide, with its underlying kernel worked on by thousands of individuals. Unlike its prominent market competitors, the ongoing development effort is open-source, allowing any individual to view and contribute to the source code. Adopters continue to further advantages such as hardware versatility, security and all-encompassing software utility @Siever2005. For example, the kernel modularises processor-specific code, allowing it to be compiled and ported to any processor. This allows Linux to be run across a great variety of network architectures and embedded systems, which take advantage of its powerful system capability @Abbott2018. Linux's growing capital and market share have increased interest and contribution from large corporations, such as Google and Intel, becoming dependants @West2001. Given the scale of development and sheer prevalence of Linux distributions worldwide, questions are naturally raised about the safety and maintainability of the kernel. 

As demonstrated by the July 2024 CrowdStrike incident, where a small update with a memory issue to kernel-level software caused global Windows outages, without safety guarantees a pivotal error may result in catastrophic propagation across an operating system. Therefore, it may be important to re-evaluate the foundation on which Linux is built. The Linux kernel is written almost entirely in C, a programming language pervasive in operating system programming due to providing developers with low-level memory control and minimal runtime overhead. Optimisation is difficult yet incredibly rewarding, with precise manipulation of memory addresses enabling efficient data structure operations @Andersen1994. However, C's lack of modern safety features risks developer errors in memory management such as buffer overflows or dangling pointers, compromising system security and stability. This creates incentive to explore safer alternatives for the kernel while maintaining efficiency. 

Rust now becomes the main contender for Linux development, a modern systems programming language designed to provide memory safety guarantees without sacrificing the low-level performance essential for kernel development @Mat2014. Due to the continuing frustration with memory and concurrency issues within Linux, the value of preventing the various harms endemic to C grew into the "Rust for Linux" movement, culminating in the official addition of Rust kernel modules to the codebase in 2022 @Li2024. This ongoing effort has raised significant contention over the second language's practical efficiency and the prospective maintenance burden, forming the central focus of the project.

To carefully address these concerns, this project will produce a software suite to assess Rust's practical advantages within the Linux kernel. An automated framework will benchmark performance by executing a comparative suite that tests Rust modules provided by the user against other languages and variables. 

== Related Work
Extensive related work has focused on quantitative performance benchmarks between Rust and C, with findings largely indicating that Rust introduces performance overhead and does not eliminate all bug classes @Chen2022 @Garber2025. 

=== Research Gap
There may be a research gap in these assessments of Rust's advantages, as purely quantifying overhead is insufficient to capture the full trade-off, and the project will address this by including evaluation of high-level abstractions and built-in safety guarantees.

== Aims and Objectives
can be the same, but more indepth for the project (individual aspects more clear)

#pagebreak()

= Technical Background
-> quick overview on memory addresses and registers then C, Rust, C++ here. garbage collectors and performance 

== Evaluating Languages for Kernel Programming
// -> what do we need to go over for each contender, rule out garbage collected languages here.
// -> need to address alternatives to speed, such as kernel panics, Common Vulnerabilities and Exposures. 'unsafe'.

Evaluating Rust's suitability as a language for the Linux kernel first requires establishing a clear set of criteria for what makes any language advantageous in this unique, high-stakes environment. Historically, the primary metrics have been raw performance and direct, low-level memory control, which C has long provided, as it was crucial for kernel development @Panter2024. This stringent performance requirement, specifically the need for deterministic latency, immediately rules out languages reliant on garbage collection. However, a purely performance-centric evaluation is no longer sufficient; the prevalence of kernel panics and Common Vulnerabilities and Exposures (CVEs) linked to C's memory model has shifted the focus. Therefore, a modern evaluation must also heavily weigh a language's ability to provide provable safety guarantees while still achieving seamless interoperability with the existing C codebase—a significant challenge that involves managing the boundary between safe and unsafe code. This section will establish these key benchmarks to evaluate the main contenders.

=== Non-Deterministic Latency Problem

=== Zero Cost Abstraction

=== Garbage Collection


== The C Language Family and Linux

=== Memory Management

=== Concurrency Issues

=== C as a Benchmark
C is the main base to compare Rust with, the best to benchmark speed, kernel panics etc with.


== Rust

=== Memory Management

=== Unsafe Block

=== Measuring Advantages


#pagebreak()

= Project Description

== Design

=== Benchmarking Approach

=== Optimisation Tools

== Methodology



#pagebreak()

= Progress

#pagebreak()

= Bibliography
// #bibliography("sources.bib", style: "apa", title: none)
#bibliography("references.bib", style: "ieee", title: none)
