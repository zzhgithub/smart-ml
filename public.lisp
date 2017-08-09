(in-package :smart-ml)

;; 公共方法

(defun get-feature-length (x)
  "获取样本的特征空间的大小"
  (let ((feature 0))
    (dolist (tmp x 'done)
      (setf feature (list-length tmp)))
    feature))

(defun dump-data-info (x)
  "打印出入参数据的信息，方便计算和统计。元素个数，维度特征数"
  (let ((feature 0)
        (n (list-length x)))
    ;; 输出结果
    (dolist (tmp x 'done)
      (setf feature (list-length tmp)))
    (format t "特征空间大小为~S~%样本空间大小为~S~%" feature n)))

(defmacro check-len (x y)
  `(not (eql (list-length ,x) (list-length ,y))))

(defun read-data (&key x (y nil y-p))
  "读取文件数据的方法，用于生成文件的原始数据的信息。必填字段X表示学习过程中的样本的特征空间数据，Y可选字段表示输出空间数据"
  (if y-p
      ;如果传来了两个值要对数据进行验证
      (let ((tmp-x (cl-csv:read-csv x))
            (tmp-y (cl-csv:read-csv y)))
        (if (check-len tmp-x tmp-y)
            'check-bad
            (progn
              (dump-data-info tmp-x)
              (dump-data-info tmp-x))))
      (let ((tmp-x (cl-csv:read-csv x)))
        (dump-data-info tmp-x))))

