(in-package :smart-ml)

;;感知器(监督学习) 文件

;;学习结果的值 保存的是 向量w 和 位移b
;;比如(:w (1 2 3 4) b:(3))
;; todo 这应该有设置和保存和清除的方法
(defparameter *perceptron-lr* nil)

;; 感知器的学习方法
;; 其中X{x_i} i(1-N)是N维度(特征)的输入
;; Y 是与X中元素一一对应的值(-1,+1)
(defun perceptron-learn (X Y)
  )

;;感知器预测方法
;;需要判断学习结果的值
;;使用学习结果进行预测
(defun perceptron-forecast (X)
  )

;; 感知器分析方法
;; 自动对数据进行 交叉验证
;; 然后输出学习结果的准确率 和参数的值的列表
(defun perceptron-analysis (X Y)
  )
