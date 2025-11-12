#import "@preview/gantty:0.4.0": gantt
#import "@preview/wordometer:0.1.5": word-count, total-words
#show: word-count

#set text(
  font: "Times New Roman",
   size: 11pt,
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
  first-line-indent: 0.4in,
  leading: 0.65em
)

#set page(
  numbering: "1",
)

#set heading(
   numbering: "1.1",
)
#show selector(<nonumber>): set heading(numbering: none)

#outline()
#pagebreak()

// MAIN BODY

= Introduction
very quickly get out of the way the point and what will be achieved. add a quick paragraph on exactly how optimisation is difficult. how something on many machines, optimisation needs to be perfect. how developing memory-safe easily can really help. 

== Context and Motivation
// copied over from proposal, but be careful to be clearer about the program

Linux is an operating system that runs on billions of computers worldwide, with its underlying kernel worked on by thousands of individuals. Unlike its prominent market competitors, the ongoing development effort is open-source, allowing any individual to view and contribute to the source code. Adopters continue to further advantages such as hardware versatility, security and all-encompassing software utility @Siever2005. For example, the kernel modularises processor-specific code, allowing it to be compiled and ported to any processor. This allows Linux to be run across a great variety of network architectures and embedded systems, which take advantage of its powerful system capability @Abbott2018. Linux's growing capital and market share have increased interest and contribution from large corporations, such as Google and Intel, becoming dependants @West2001. Given the scale of development and sheer prevalence of Linux distributions worldwide, questions are naturally raised about the safety and maintainability of the kernel. 

As demonstrated by the July 2024 CrowdStrike incident, where a small update with a memory issue to kernel-level software caused global Windows outages, without safety guarantees a pivotal error may result in catastrophic propagation across an operating system. Therefore, it may be important to re-evaluate the foundation on which Linux is built. The Linux kernel is written almost entirely in C, a programming language pervasive in operating system programming due to providing developers with low-level memory control and minimal runtime overhead. Optimisation is difficult yet incredibly rewarding, with precise manipulation of memory addresses enabling efficient data structure operations @Andersen1994. However, C's lack of modern safety features risks developer errors in memory management such as buffer overflows or dangling pointers, compromising system security and stability. This creates incentive to explore safer alternatives for the kernel while maintaining efficiency. 

Rust now becomes the main contender for Linux development, a modern systems programming language designed to provide memory safety guarantees without sacrificing the low-level performance essential for kernel development @Mat2014. Due to the continuing frustration with memory and concurrency issues within Linux, the value of preventing the various harms endemic to C grew into the "Rust for Linux" movement, culminating in the official addition of Rust kernel modules to the codebase in 2022 @Li2024. This ongoing effort has raised significant contention over the second language's practical efficiency and the prospective maintenance burden, forming the central focus of the project.

To carefully address these concerns, this project will produce a software suite to assess Rust's practical advantages within the Linux kernel. An automated framework will benchmark performance by executing a comparative suite that tests Rust modules provided by the user against other languages and variables. 

== Related Work
Extensive related work has focused on quantitative performance benchmarks between Rust and C, with findings largely indicating that Rust introduces performance overhead and does not eliminate all bug classes @Chen2022 @Garber2025. could even mention the United States' Biden Administration 2024 report on using memory safe languages, "Future Software should be Memory-Safe" 

=== Research Gap
There may be a research gap in these assessments of Rust's advantages, as purely quantifying overhead is insufficient to capture the full trade-off, and the project will address this by including evaluation of high-level abstractions and built-in safety guarantees.

== Aims and Objectives
can be the same, but more indepth for the project (individual aspects more clear)

#pagebreak()

= Technical Background
This section will establish the necessary technical background and definitions used for the software project, which will systemically measure Rust's advantages within Linux. To effectively quantify Rust's effectiveness as a language within Linux, it is essential to understand what properties of a programming language are advantageous for general kernel development, such as performance and stability. These evaluation metrics also must account for C being the incumbent language within the Kernel, which has significant practical consequences for Rust's adoption and continued integration within Linux. This includes such the challenges of interoperability, long-term maintainability and developing a deep understanding of its abilities with direct metric comparisons to C whenever possible.

== Evaluating Languages for Kernel Programming
// -> need to address alternatives to speed, such as kernel panics, Common Vulnerabilities and Exposures. 'unsafe'.

=== Challenges and Goals for Language Evaluation <nonumber>
// *There are several venues for software analysis such as from a cybersecurity standpoint, yet quickly limitations are set on how to measure such aspects because software is not rigid in a scientific sense, so comparison methods need to be chosen best for empirical anaysis.*

Evaluating a new programming language in a kernel context is an inherently difficult problem in software measurability. As highlighted in a NIST workshop, software is not a uniform physical product but more akin to a "form of human expression," which makes quality metrics "highly subjective and context-dependent" @WhiteHouse2024. This challenge is magnified in an operating system kernel, one of the most complex software artifacts. The kernel's intricate interactions with hardware and concurrent processes mean its behaviour is not "entirely deterministic," which, as the report notes, "hinders the capacity to reliably and consistently measure" its true performance and security characteristics @BidenAdminLanguageSafety.

This difficulty is compounded by the challenge of analysis. The NIST workshop concludes that traditional methods, such as "counting known vulnerabilities, are insufficient" and not "forward-looking" @WhiteHouse2024. This defines the central research gap: a simple tally of C-based CVEs that Rust might have prevented is not a complete evaluation. A proper assessment must empirically quantify the new, complex trade-offs introduced by the new language—such as the performance cost of its safety abstractions versus its gains in stability. Therefore, this project's "analysis suite" is designed to create a framework for this difficult but necessary empirical analysis, providing new, quantifiable metrics beyond just bug counts.

=== Non-Deterministic Latency Problem <nonumber>

=== Zero Cost Abstraction <nonumber>

=== Garbage Collection <nonumber>


== The C Language Family and Linux

=== Memory Management

=== Concurrency Issues

=== C as a Benchmark
C is the main base to compare Rust with, the best to benchmark speed, kernel panics etc with.


== Rust for Linux

=== Memory Management

=== Unsafe Blocks

=== Measuring Maintainability


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

#word-count(total => [
  The number of words in this is #total-words
])
