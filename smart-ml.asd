(asdf:defsystem smart-ml
  :version "0.0.1"
  :author "ZiHao Zhou <1042181618@qq.com>"
  :description "Common Lisp实现的机器学习算法库。使用中文进行注释"
  :licence "BSD-style"
;  :depends-on (:cl)
  :components ((:file "package")
               (:file "test")
               (:file "public")
               (:file "perceptron")))
