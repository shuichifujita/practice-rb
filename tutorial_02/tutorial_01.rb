# coding: utf-8

# ******** ******** ******** ******** #
puts " **** 基礎知識 データ構造 **** "

# sequence
seq = "sample text"
puts seq
puts seq.length
puts seq[0..5]
seq[0] = "S"
puts seq
seq[0..5] = "Text"
puts seq

# hashing
hash = {"first" => 10, "second" => 20}
puts hash["second"]
hash["third"] = 30
puts hash.to_a
puts hash.keys
puts hash.values

# ******** ******** ******** ******** #
puts " **** memo **** "

class String
  def palindrome?
    self == self.reverse
  end
end

puts 'deified'.palindrome?




# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "