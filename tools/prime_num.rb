# coding: utf-8

# ======== ======== ======== ========
puts "******** ******** ******** ********"

range = 1000
num = Array.new(range) { |i| i += 1 }

# booleanで返すよ
def calc(el_i, el_a)
  divisor = Array.new
  flg = false

  el_a.each do |item|
    if (el_i < item)
      break
    end

    if (el_i % item == 0)
      divisor.push(item)
    end
  end

  divisor.each do |item|
    if(divisor.length == 2)
      flg = true
    end
  end

  if (flg == true)
    return el_i
  end
end

result = num.select do |item|
  if (calc(item, num) != nil)
    p item
  end

  calc(item, num) != nil
end

puts "Toral: #{result.to_s}"

# ======== ======== ======== ========
