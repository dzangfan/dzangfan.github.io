#lang racket/base
(require scribble/core scribble/html-properties)
(provide ruby title-aside)

;; (ruby base reading) -> <ruby>base<rp>(</rp><rt>reading</rt><rp>)</rp></ruby>
;; The reading parts are 'aux, so they are dropped from <title> and the TOC.
;; With #:width (a CSS length), the ruby is centered in a box of that width,
;; so consecutive rubies are evenly spaced regardless of reading length.
(define (aux tag . c) (element (style #f (list 'aux (alt-tag tag))) c))
(define (ruby base reading #:width [width #f])
  (define r
    (element (style #f (list (alt-tag "ruby")))
             (list base (aux "rp" "(") (aux "rt" reading) (aux "rp" ")"))))
  (if width
      (element (style #f (list (attributes
                                `((style . ,(format "display: inline-block; width: ~a; text-align: center" width))))))
               r)
      r))

;; Smaller text shown only in the heading itself; being 'aux, it is dropped
;; from <title> and the sidebar. #:gap is the space before it (a CSS length).
(define (title-aside #:size [size "60%"] #:gap [gap "0.6em"] . c)
  (element (style #f (list 'aux (attributes
                                 `((style . ,(format "font-size: ~a; margin-left: ~a" size gap))))))
           c))
