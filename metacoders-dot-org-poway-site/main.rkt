#lang at-exp racket

(provide pages index)

(require metacoders-dot-org-poway-lib
         metacoders-dot-org-lib)

; If you are creating a brand new course,
; run (generate-random-sku) to generate a unique sku id

; ========== EXAMPLE COURSE ==========
#;(define/provide-course weekly-class-k-2nd-winter
  (course
      ;#:topic         "Awesome Animals!"
      ;#:sku           "sku_GKwkIwx91IPMXI"
      ;#:video-path    healer-animal-mp4-path
      ;#:description   "MetaCoders’ novel approach to computer science education is backed by the latest scientific research that shows learning how to code is more like learning a foreign language than learning math. Therefore, we leverage the entire field of language acquisition so that our students are ready for a future where they’ll need to speak the languages of computers fluently. We also keep the emphasis on FUN, so throughout the course students will earn badges and prizes as they expand their knowledge of computer science. During this session of Coding Club, students will be designing video games featuring animals - they'll learn how to customize the colors of & heal their animal game characters, and also avoid enemies!"
      ;#:grade-range   "K - 2nd"
      ;#:location      "University of Dallas"
      ;#:address       "1845 E Northgate Dr, Irving, TX 75062"
      ;#:address-link  "https://goo.gl/maps/TBgDvXgp5esLrKLw7"
      ;#:price         210
      ;#:start-time    "10:00am"
      ;#:end-time      "11:30am"
      ;#:meeting-dates (list "2/8/2020" "2/15/2020" "2/22/2020" "2/29/2020" "3/7/2020" "3/14/2020" "3/21/2020")
      ;#:status        'open
   ))
   
(define/provide-course weekly-class-k-2nd-spring
  (course
      #:topic         "Pokemon Clicker Games"
      #:sku           "sku_d9smiHH2SPm4KLGC7nUug"
      #:video-path    clicker-pokemon-mp4-path
      #:description   "In our Spring program, students at Painted Rock Elementary will code their own Pokemon-themed whack-a-mole games! K-2nd students will learn how to customize their games however they want: Are they a Pokemon trainer collecting all the Pikachus? Are they a Bulbasaur collecting Pokemon friends, but avoiding the poison Pokemon? Students don't need to be Pokemon fans to enjoy this course. This course will not only strengthen students’ coding skills, but also their keyboard and mouse skills. Throughout the course, students will earn physical badges that demonstrate their mastery and inspire them to keep coding!"
      #:grade-range   "K - 2nd"
      #:location      "Painted Rock Elementary"
      #:address       "16711 Martincoit Rd, Poway, CA 92064"
      #:address-link  "https://goo.gl/maps/FY2qgbESiahhhjE36"
      #:price         215
      #:discount      22
      #:start-time    "1:30pm"
      #:end-time      "2:30pm"
      #:meeting-dates (list "03/18/2020" "3/25/2020" "4/1/2020" "4/8/2020" "4/15/2020" "4/22/2020" "4/29/2020" "5/6/2020" "5/13/2020")
      #:status        'open
   ))
   
(define/provide-course weekly-class-3rd-5th-spring
  (course
      #:topic         "Coding That's Out of This World!"
      #:sku           "sku_Aggm7EjzQnKHNPhlBVqFw"
      #:video-path    3d-orbit-mp4-path
      #:description   "Space... the final frontier. We're preparing 3rd-5th grade students at Painted Rock Elementary for space exploration by teaching them how to code their own solar systems and galaxies! In our Spring program, students will learn how to build 3D galaxies that include orbiting planets and stars, which they can customize and texture. Students will build our actual solar system, and imagine other solar systems not yet discovered. Beginner coders will enjoy learning how a few lines of code can create a whole digital world at their fingertips; advanced students will take their knowledge to infinite and beyond! In this session, students will continue to earn badges as they become more and more fluent in coding."
      #:grade-range   "3rd - 5th"
      #:location      "Painted Rock Elementary"
      #:address       "16711 Martincoit Rd, Poway, CA 92064"
      #:address-link  "https://goo.gl/maps/FY2qgbESiahhhjE36"
      #:price         215
      #:discount      22
      #:start-time    "1:30pm"
      #:end-time      "2:30pm"
      #:meeting-dates (list "03/18/2020" "3/25/2020" "4/1/2020" "4/8/2020" "4/15/2020" "4/22/2020" "4/29/2020" "5/6/2020" "5/13/2020")
      #:status        'open
   ))

; ========== EXAMPLE CAMP ===========
#;(define clicker-cartoon-description
    (~a "In this camp, we'll explore coding & creativity through a newly developed programming language that combines the ease of visual programming with the benefits of typed programming. Students will enjoy learning how to code video games that they can share with friends & family after camp. Students will be able to choose from a unique array of cartoon characters, items, and scenes so that they can exercise their creativity while designing their games!"))

#;(define/provide-course summer-camp-clicker-k-2nd-7/15
  (camp ;#:topic         "Cartoon Clicker Games!"
        ;#:sku           "sku_GG43XFZEQxqgmG"
        ;#:video-path    cartoon-clicker-mp4-path
        ;#:description   clicker-cartoon-description
        ;#:grade-range   "Entering K - 2nd"
        ;#:location      "Gallaudet University"
        ;#:address       "800 Florida Ave NE, Washington, DC 20002"
        ;#:address-link  "https://goo.gl/maps/Yypsi9LRZB7sFTjc9"
        ;#:price         300
        ;#:check-in-time "8:45am - 9:00am"
        ;#:camp-time     "9:00am - 12:00pm"
        ;#:lunch-time    "12:00pm - 1:00pm"
        ;#:pickup-time   "1:00pm - 1:15pm"
        ;#:meeting-dates (list "7/15/2020" "7/16/2020" "7/17/2020" "7/18/2020" "7/19/2020")
        ;#:status         'open
        ))

(define (index)
  (page index.html
        (city-page
         #:city-name "Poway, CA"
         #:banner-url (prefix/pathify poway-banner-path)
         #:alt-tag "City of Poway, California with a view of Lake Poway and natural preserve"
         #:school-year-courses (list weekly-class-k-2nd-spring
                                     weekly-class-3rd-5th-spring)
         )))

(define (pages)
  (list
    (bootstrap-files)
    (index)))


