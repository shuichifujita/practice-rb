# coding: utf-8

# ******** ******** 11.6 ******** ******** #
puts " **** sort **** "

ary = %w(
  The little Love-god lying once asleep
  Laid by his side his heart-inflaming brand,
  Whilst many nymphs that vow'd chaste life to keep
  Came tripping by; but in her maiden hand
)

call_num = 0
sorted = ary.sort do | a, b |
  call_num += 1
  a.length <=> b.length
end

puts "Result: #{sorted}"
puts "Num of ary: #{ary.length}"
puts "Count call: #{call_num}"

puts " **** method: sort_by **** "

call_num_02 = 0
sorted_02 = ary.sort_by do | item | item.length
  call_num_02 += 1
end

puts "Result: #{sorted_02}"
puts "Num of ary: #{ary.length}"
puts "Count call: #{call_num_02}"

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
