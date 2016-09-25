# coding: utf-8

# ======== ======== ======== ========
puts "******** ******** ******** ********"

range = 1000
num = Array.new(range) { |i| i += 1 }
result = Array.new

def calc(el_i, el_a)
  divisor = Array.new
  flg = false

  el_a.each do |item|
    if (el_i % item == 0)
      divisor.push(item)
    end
  end

  divisor.each do |item|
    if(divisor.length == 1 || divisor.length == 2)
      flg = true
    end
  end

  return flg
end

num.each do |item|
  result.push({:num => item, :flg => calc(item, num)})
end

result.select! do |item|
  item[:flg] == true
end

result.map! do |item|
  item[:num]
end

p result

# ======== ======== ======== ========
