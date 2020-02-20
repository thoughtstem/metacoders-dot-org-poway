#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-poway-lib
	 metacoders-dot-org-lib)

(require website-js/components/remote)

(define (index)
  (page index.html
	(city-page-dynamic
	  #:city-name "Poway, CA"
	  #:banner-url (prefix/pathify poway-banner-path)
	  #:alt-tag "City of Poway, California with a view of Lake Poway and natural preserve"

	  (remote 
	    "https://mc-social-media.s3-us-west-1.amazonaws.com/static-points-of-sale/poway.html") )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


