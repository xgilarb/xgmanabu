#lang racket

;; Define a class for a basic geometric shape
(define shape%
  (class object%
    (super-new)
    (init-field [x 0] [y 0])

    ;; Method to move the shape
    (define/public (move dx dy)-
      (set! x (+ x dx))
      (set! y (+ y dy)))

    ;; Method to get the position of the shape
    (define/public (position)
      (list x y))

    ;; Method to display the shape's info
    (define/public (display-info)
      (printf "Shape at position (~a, ~a)\n" x y))))

;; Define a class for a circle that inherits from shape
(define circle%
  (class shape%
    (super-new)
    (init-field [radius 1])

    ;; Method to set the radius
    (define/public (set-radius r)
      (set! radius r))

    ;; Method to get the radius
    (define/public (get-radius)
      radius)

    ;; Override the display-info method
    (define/override (display-info)
      (printf "Circle with radius ~a at position (~a, ~a)\n" radius (send this get-x) (send this get-y)))))

;; Define a class for a rectangle that inherits from shape
(define rectangle%
  (class shape%
    (super-new)
    (init-field [width 1] [height 1])

    ;; Method to set the dimensions
    (define/public (set-dimensions w h)
      (set! width w)
      (set! height h))

    ;; Method to get the dimensions
    (define/public (get-dimensions)
      (list width height))

    ;; Override the display-info method
    (define/override (display-info)
      (printf "Rectangle with width ~a and height ~a at position (~a, ~a)\n" width height (send this get-x) (send this get-y)))))

;; Create instances of the shapes
(define my-circle (new circle% [x 5] [y 5] [radius 10]))
(define my-rectangle (new rectangle% [x 0] [y 0] [width 3] [height 6]))

;; Move the shapes
(send my-circle move 2 3)
(send my-rectangle move -1 -1)

;; Display their information
(send my-circle display-info)
(send my-rectangle display-info)
