# coding: utf-8

# ======== ======== ======== ========
st = Time.now
str_st = st.strftime("%H:%M:%S")
puts "******** ******** START[#{str_st}] ******** ********\n\n"

# 貴金属比を計算して落ち着くコード
# ======== ======== ======== ========

class Num
  def initialize(*nums)
    @nums = nums.flatten
    @nums.map! { |e| e.to_f }
  end

  # 黄金比
  def to_gold
    @nums.map { |e| e * ((1 + Math.sqrt(5)) / 2) }
  end

  # 白銀比
  def to_silver
    @nums.map { |e| e * (1 + Math.sqrt(2)) }
  end

  # 第二白銀比
  def to_silver_2nd
    @nums.map { |e| e * (1 + Math.sqrt(2)) }
  end

  # 青銅比
  def to_bronze
    @nums.map { |e| e * ((3 + Math.sqrt(13)) / 2) }
  end

  # 白金比
  def to_platinum
    @nums.map { |e| e * (1 + Math.sqrt(3)) }
  end
end

sample = Array.new(10) { |i| i += 1 }

num = Num.new(sample)

p "黄金比 #{num.to_gold}"
p "白銀比 #{num.to_silver}"
p "第二白銀比#{num.to_silver_2nd}"
p "青銅比 #{num.to_bronze}"
p "白金比 #{num.to_platinum}"

# ======== ======== ======== ========
et = Time.now
str_et = et.strftime("%H:%M:%S")
puts "\n******** ******** END[#{str_et}] ******** ********"

# ======== ======== ======== ========
