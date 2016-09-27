# coding: utf-8

# 素数を数えて落ち着くコード
# ======== ======== ======== ========
puts "******** ******** ******** ********"

class Num
  def initialize(range)
    @rng = range
    @num = Array.new(range) { |i| i += 1 }
  end

  def rm_even
    @num.select! do |item|
      item == 2 || (item != 1 && item % 2 != 0)
    end
  end

  # 総当り
  def to_primzahlen
  end
end

num = Num.new(10)
p num.to_primzahlen
# ======== ======== ======== ========
