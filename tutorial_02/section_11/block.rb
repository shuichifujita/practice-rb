# coding: utf-8

# ******** ******** 11.1 ******** ******** #
puts " **** block **** "

[1, 2, 3, 4, 5, 6].each do | i |
  puts i
end

ary = ["hoge", "huga", "foo", "bar"]

ary.each_with_index do | element, index |
  p [element, index]
end

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "