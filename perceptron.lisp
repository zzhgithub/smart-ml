(in-package :smart-ml)

;;感知器(监督学习) 文件

;;这里使用默认学习的时候的位移值位1
(defparameter *move* 1)

;; 设置学习时的参数
(defun set-move (x)
  (if (integerp x) (setf *move* x) 'WrongType))

;; 定义学习结果数据结构
;; 其中w 是一个向量 b 是一个值
(defstruct p-l-r
  w
  b)

;;学习结果的值 保存的是 向量w 和 位移b
;;比如(:w (1 2 3 4) b:(3))
;; todo 这应该有设置和保存和清除的方法
(defparameter *perceptron-lr* nil)

;; 根据输入的x 来生成一会初始化的w 和b 返回的数据类型是 p-l-r
(defun init-p-l-r (x)
  (let* ((f-l (get-feature-length x))
         (vec (make-array f-l :initial-element 0)))
    (make-p-l-r :w vec :b 0)))

;; 检查 学习结果是不是为空
(defun check-perceptron-lr ()
  (if *perceptron-lr* t nil))

;; 感知器的学习方法
;; 其中X{x_i} i(1-N)是N维度(特征)的输入
;; Y 是与X中元素一一对应的值(-1,+1)
;; 注意这里循环的时候要
(defun perceptron-learn (X Y)
  (let ((lr (init-p-l-r X)))
    ;;开始循环
   ))

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
