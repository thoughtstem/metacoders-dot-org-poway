#lang racket

(require 
  website/bootstrap
  "./metacoders-dot-org-poway-site/main.rkt")

(render (pages) #:to "out")
