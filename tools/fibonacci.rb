# coding: utf-8

# ======== ======== ======== ========
st = Time.now
str_st = st.strftime("%H:%M:%S")
puts "******** ******** START[#{str_st}] ******** ********\n\n"

# フィボナッチ数列を数えて落ち着くコード
# ======== ======== ======== ========

class Num
  def initialize(range)
    @rng = range
    @num = []
  end

  def to_fibonacci
    @rng.times do |i|
      if @num.length == 0
        @num.push(i += 1)
      elsif @num.length == 1
        @num.push(@num[0] * 2)
      else
        @num.push((@num[i - 1]) + (@num[i - 2]))
      end
    end

    @num
  end
end

num = Num.new(100)
p num.to_fibonacci

# ======== ======== ======== ========
et = Time.now
str_et = et.strftime("%H:%M:%S")
puts "\n******** ******** END[#{str_et}] ******** ********"

# ======== ======== ======== ========
