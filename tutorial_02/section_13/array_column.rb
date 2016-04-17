# coding: utf-8

# ******** ******** 13.5 ******** ******** #
puts " **** array column **** "

sample_array = Array.new(5, "hoge")

sample_array.shift()
sample_array.unshift("unshift")
sample_array.pop()
sample_array.push("push")

# これおもしろい/重複した要素を削除する
# sample_array.uniq!
test_uniq = sample_array.uniq

p sample_array
p test_uniq

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
