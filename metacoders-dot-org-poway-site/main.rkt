#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-poway-lib
         metacoders-dot-org-lib)

(define (index)
  (page index.html
        (city-page
         #:city-name "Poway, CA"
         #:banner-url "https://upload.wikimedia.org/wikipedia/commons/e/e6/LakePowayByPhilKonstantin.JPG"
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


