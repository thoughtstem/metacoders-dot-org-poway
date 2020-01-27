#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-poway-lib
         metacoders-dot-org-lib)

(define (index)
  (page index.html
        (city-page
         #:city-name "Poway, CA"
         #:banner-url (prefix/pathify poway-banner-path)
         #:alt-tag "City of Poway, California with a view of Lake Poway and natural preserve"
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


