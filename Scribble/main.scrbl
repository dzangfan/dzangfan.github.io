#lang scribble/manual
@(require "lib/ruby.rkt" "lib/entries.rkt")

@; Spacing knobs: #:gap is the space between the English and Chinese names;
@; #:width is the box each kanji is centered in (>= 1.5em, the width of a
@; three-kana reading, so all readings fit and the kanji are evenly spaced).
@(define (name-ruby k r) (ruby k r #:width "1.7em"))

@title[#:tag "top" #:version ""]{Zhangfan Li@title-aside[#:gap "0.6em" @name-ruby["李" "リー"]@name-ruby["張" "チャン"]@name-ruby["帆" "フェン"]]}

I am a first-year Ph.D. student at @hyperlink["https://www.logic.cs.tsukuba.ac.jp/index.html"]{Programming Logic Lab.}, @hyperlink["https://www.tsukuba.ac.jp/"]{Univ. of Tsukuba}, supervised by @hyperlink["https://www.cs.tsukuba.ac.jp/~kam"]{Yukiyoshi Kameyama}. My research interests are in the foundation and application of reliable metaprogramming.

@itemlist[
 @item{@bold{E-mail} (@"@"acm.org): zhangfan.li}
 @item{@bold{GitHub}: @hyperlink["https://github.com/dzangfan"]{dzangfan}}]


@section[#:tag "publications" #:style 'unnumbered]{Publications}

@itemlist[
 @publication[
   #:title "Reconciling Efficiency and Modularity in Metaprogramming via Shortcut Fusion"
   #:authors '("Zhangfan Li" "Yukiyoshi Kameyama")
   #:venue @elem{The 24@superscript{th} Asian Symposium on Programming Languages and Systems}
   #:venue-short "APLAS2026" #:venue-url "https://conf.researchr.org/track/aplas-atva-2026/aplas-2026"
   #:links (list (file-link "Paper" "https://dzangfan.github.io/APLAS2026.pdf" #:updated "2026-09-06"))]]

@section[#:tag "talks" #:style 'unnumbered]{Talks}

@itemlist[
 @talk[
 #:title "Monadic Metaprogramming with Bananas, Lenses and Envelopes: A Fusion Framework"
 #:authors '("Zhangfan Li" "Yukiyoshi Kameyama")
 #:date "2026-03-10"
 #:venue @elem{The 28@superscript{th} JSSST Workshop on Programming and Programming Languages}
 #:venue-short "PPL2026" #:venue-url "https://jssst-ppl.org/workshop/2026/index.html"
 #:links (list (file-link "Poster" "https://dzangfan.github.io/PPL2026.pdf"))
 ]
 @talk[
   #:award @elem{@bold{Excellent Presentation Award} and @bold{Student Encourage Award}}
   #:title "Fusion for Metaprogramming: Eliminating Intermediate Programs in Code Generation and Analysis"
   #:authors '("Zhangfan Li" "Yukiyoshi Kameyama")
   #:date "2025-09-05"
   #:venue @elem{The 42@superscript{nd} Japan Society for Software Science and Technology Annual Conference}
   #:venue-short "JSSST2025" #:venue-url "https://jssst-ppl.org/workshop/2025/"
   #:links (list (file-link "Résumé" "https://dzangfan.github.io/JSSST2025.pdf" #:updated "2026-05-27")
                 (file-link "Slides" "https://dzangfan.github.io/JSSST2025-S.pdf"))]
 @talk[
 #:title "Towards Context-Sensitive Parser Combinator with Regular Language Optimization"
 #:authors '("Zhangfan Li" "Yukiyoshi Kameyama")
 #:date "2025-03-06"
 #:venue @elem{The 27@superscript{th} JSSST Workshop on Programming and Programming Languages}
 #:venue-short "PPL2025" #:venue-url "https://jssst-ppl.org/workshop/2025"
 #:links (list (file-link "Poster" "https://dzangfan.github.io/PPL2025.pdf"))
 ]]

@section[#:style 'unnumbered #:tag "activities"]{Activities}

@itemlist[
 @item{
  @bold{Services}
  @itemlist[
 @item{Poster Session Chair, @hyperlink["https://functional-logic.org/events/flops/2026/"]{FLOPS2026}}]}
 @item{
  @bold{Teaching}
  @itemlist[
 @item{Teaching Assistant, @italic{Introduction to First-order Logic and Formalization}, Univ. of Tsukuba, April 2025 -- March 2026}
 @item{Teaching Assistant, @italic{Software Science Experiment}, Univ. of Tsukuba, October 2024 -- March 2025}]}
 @item{
  @bold{Fellowships}
  @itemlist[
 @item{@hyperlink["https://www.jst.go.jp/jisedai/spring/en/index.html"]{JST SPRING Fellowship}, 2026 -- 2029}]}]
