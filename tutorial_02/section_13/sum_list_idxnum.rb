# coding: utf-8

# ******** ******** 13.8.2 ******** ******** #
puts " **** sum list using each_with_index **** "

list = 1..5
list_array = list.collect{|i| i }

list_array.each_with_index do |element, i|
  puts "#{i+1}番目の要素:#{element}"
end

p list_array

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
