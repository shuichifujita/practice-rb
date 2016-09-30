# coding: utf-8

# ======== ======== ======== ========
st = Time.now
str_st = st.strftime("%H:%M:%S")
puts "******** ******** START[#{str_st}] ******** ********\n\n"

# 素数を数えて落ち着くコード
# ======== ======== ======== ========

class Num
  def initialize(range)
    @rng = range
    @num = (2..range).map { |i| i }
  end

  def to_primzahlen
    prm = []
    num = @num[0]

    while num <= @rng do
      # 配列内から最小の素数を抽出
      prm.push(num)

      # 上記で抽出した素数とその倍数を除去
      @num.select! { |e| e % num != 0 }

      # 配列の要素がなくなったら抜ける
      if @num.length == 0
        break
      end

      # 次の素数をnumに代入
      num = @num[0]
    end

    @num = prm
  end
end

num = Num.new(100000)
p num.to_primzahlen

# ======== ======== ======== ========
et = Time.now
str_et = et.strftime("%H:%M:%S")
puts "\n******** ******** END[#{str_et}] ******** ********"

# ======== ======== ======== ========
