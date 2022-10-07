(make-array 3)
(defparameter x (make-array 3))
(aref x 1)
(defparameter x (make-array 3))
(setf (aref x 1) 'foo)
x
(aref x 1)
(setf foo '(a b c))
(second foo)
(first foo)
(third foo)
(fourth foo)
(setf (second foo) 'z)
foo
(setf foo (make-array 4))
(setf (aref foo 2) '(x y z))
foo

(setf (car (aref foo 2)) (make-hash-table))
(setf (gethash 'zoink (car (aref foo 2))) 5)
foo

(nth 1 '(foo bar baz))
(nth 1000 (loop for n from 0 to 1000 collect (* n 2)))
(defparameter y (loop for n from 0 to 1000000 collect (* n 2)))
(defparameter y-arr (make-array (list (loop for n from 0 to 1000000 collect (* n 2)))))
(nth 1000000 y)
(aref y 100000)

(make-hash-table)
(defparameter x (make-hash-table))
(gethash 'yup x)

(defparameter x (make-hash-table))
(setf (gethash 'yup x) '25)

(gethash 'yup x)

(defparameter *drink-order* (make-hash-table))
(setf (gethash 'bill *drink-order*) 'double-espresso)
(setf (gethash 'lisa *drink-order*) 'small-drip-coffee)
(setf (gethash 'john *drink-order*) 'medium-latte)
(gethash 'lisa *drink-order*)

(round 2.4)

(defun foo ()
  (values 3 7))
(foo)
(+ (foo) 5)
(multiple-value-bind (a b) (foo) (* a b))

(defstruct person
  name
  age
  waist-size
  favorite-color)
(defparameter *bob* (make-person :name "Bob"
                                 :age 35
                                 :waist-size 32
                                 :favorite-color "blue"))

(person-age *bob*)
(setf (person-age *bob*) 36)

(defparameter *that-guy* #S(person :name "Bob" :age 35 :waist-size 32 :favorite-color *blue*))
(person-age *that-guy*)

(defun make-person (name age waist-size favorite-color) (list name age waist-size favorite-color))
(defun person-age (person) (cadr person))
(defparameter *bob* (make-person "bob" 35 32 "blue"))
