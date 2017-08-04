(in-package :smart-ml)

;; 公共方法
(ql:quickload "cl-csv")


(defun dump-data-info (x)
  "打印出入参数据的信息，方便计算和统计。"
  ;;todo
  )


(defun check-data (x y)
  "计算两个数据的长度是不是一致的。和检查每一个数据的特征维数是否一致。"
  ;;todo
  )

(defun read-data (&key x (y nil y-p))
  "读取文件数据的方法，用于生成文件的原始数据的信息。必填字段X表示学习过程中的样本的特征空间数据，Y可选字段表示输出空间数据"
  (if y-p
      ;如果传来了两个值要对数据进行验证
      (let ((tmp-x (cl-csv:read-csv x))
            (tmp-y (cl-csv:read-csv y)))
        (if (check-data tmp-x tmp-y)
            'check-bad
            (progn
              (dump-data-info tmp-x)
              (dump-data-info tmp-x)
              nil)))
      (let ((tmp-x (cl-csv:read-csv x)))
        (dump-data-info tmp-x))))

