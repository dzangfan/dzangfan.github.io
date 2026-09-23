#lang racket/base
;; Templates for the Publications and Talks sections.
(require racket/list scribble/base scribble/core scribble/html-properties)
(provide publication talk file-link)

(define me "Zhangfan Li")

;; A link to a file, optionally with a last-updated date.
(define (file-link label url #:updated [updated #f])
  (list (hyperlink url label)
        (if updated (format " (last updated on ~a)" updated) "")))

;; "A, B, C" with my own name in bold.
(define (author-list authors)
  (add-between (for/list ([a authors]) (if (equal? a me) (bold a) a)) ", "))

;; "Full Venue Name (SHORT)" with SHORT linking to the venue.
(define (venue-line venue short url)
  (list (italic venue) " (" (hyperlink url short) ")"))

;; One entry: each non-#f line separated by line breaks. The entry gets the
;; HTML id `id`, so a URL like /#APLAS2026 jumps to (and highlights) it.
(define (entry #:id id . lines)
  (item (paragraph (style #f (list (attributes `((id . ,id)))))
                   (add-between (filter values lines) (linebreak)))))

(define (publication #:title title #:authors authors
                     #:venue venue #:venue-short short #:venue-url url
                     #:links [links '()] #:id [id short])
  (entry #:id id
         title
         (author-list authors)
         (venue-line venue short url)
         (and (pair? links) (add-between links " "))))

(define (talk #:title title #:authors authors #:date date
              #:venue venue #:venue-short short #:venue-url url
              #:award [award #f] #:links [links '()] #:id [id short])
  (entry #:id id
         (if award (list (elem "(" award ")") " " title) title)
         (elem (author-list authors) "; " (format "Presented on ~a." date))
         (venue-line venue short url)
         (and (pair? links) (add-between links " "))))
