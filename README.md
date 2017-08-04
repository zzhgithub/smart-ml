# SMART_ML

  使用common Lisp 写的机器学习库。使用全部的中文注释。

# Public(公共方法)

## read-data(阅读数据)

  介绍测试读取数据源的格式是否正确，不产生学习结果和副作用。可以用来输出数据的基本信息。包括数据个数和特征维度。(暂时不对复杂的数据结构进行支持)
  
  示例：
  ```common-lisp
  ;; 非监督学习 时的一个数据源
  (smart-ml:read-data #P"test.csv")
  ;; 监督学习 时的两个源 输入和输出分开
  (smart-ml:read-data #P"test.csv" #P"test2.csv")
  ;; 其中要求两个数据的样本数是一致的不然会报错
  ;; check-bad
  ```

# Perceptron(感知器)

## todo
