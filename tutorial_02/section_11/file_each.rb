# coding: utf-8

# ******** ******** 11.1 ******** ******** #
puts " **** block **** "

file = File.open("files_sample/yamanashi_02.txt")
file.each_line do | line |
  puts line
end

file.close

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
