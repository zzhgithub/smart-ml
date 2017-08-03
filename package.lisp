(defpackage #:smart-ml
  (:use #:cl)
  (:export #:test
           ;; 公共方法
           #:read-data
           ;; 感知器方法
           #:perceptron-learn
           #:perceptron-forecast
           #:perceptron-analysis))
