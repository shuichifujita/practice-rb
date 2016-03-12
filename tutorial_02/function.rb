# coding: utf-8

# ******** ******** ******** ******** #
puts " **** Function **** "

# 立方体体積
def volume(x, y, z)
  cube =  x * y * z
  puts "Volume of the cube is #{cube}㎥"
end

# 与えられたブロックを使うメソッド
def myloop
  while true
    yield
  end
end

num = 0
myloop do
  # puts "num is #{num}"
  num += 16
  break if num > 256
end

# 引数をキーで渡す(ハッシュでも渡してみるよ)
def area(x: 0, y: 0, z: 0)
  xy = x * y
  yz = y * z
  zx = z * x
  cube =  xy + yz + zx
  puts "Area of the cube is #{cube}㎡"
end

arg_01 = {x: 8, y: 16, z: 32}
area(arg_01)

arg_02 = {x: 2, y: 4}
area(arg_02)




# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "