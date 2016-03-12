# coding: utf-8

# ******** ******** 8.9 ******** ******** #
puts " **** Leaning object oriented **** "

time_now = Time.now
puts time_now.year

sample_obj = Object.new
sample_string = "sample text"
sample_number = Math::PI

puts sample_obj.to_s
puts sample_string.to_s
puts sample_number.to_s

puts " **** Duck typing **** "

def fetch_and_downcase(ary, idx)
  if str = ary[idx]
    return str.downcase
  end
end

# ary = ["hoge","huga", "foo","bar"]
# 上記が配列でなくともおｋ
# 要はary[idx]という形で取り出せ、downcaseメソッドを持っていれば良い
ary = {0 => "hoge", 1 => "huga", 2 => "foo", 3 => "bar"}
puts fetch_and_downcase(ary, 1)

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
