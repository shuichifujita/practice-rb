# coding: utf-8

# ******** ******** 10.4 ******** ******** #
puts " **** copy (ensure) **** "

def copy(from, to)
  src = File.open(from)
  begin
    dist = File.open(to, "w")
    data = src.read
    dist.write(data)
    dist.close
  ensure
    src.close
  end
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