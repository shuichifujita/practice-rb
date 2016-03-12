# coding: utf-8

# ******** ******** ******** ******** #
puts " **** VARIABLES AND CONSTANT **** "

sample_text = "Hello, Ruby!"
my_name = "Shuichi"
say_hello = "Hello, #{my_name}!"
sample_number = 10
sample_calc = 16 * 32
CONST_SAMPLE = 16

puts "#{sample_text}"
puts say_hello
# なんでも入るよ optional型
puts sample_number
# 式展開
puts "16 * 32 = #{sample_calc}"

# ******** ******** ******** ******** #
puts " **** ARRAY **** "

sample_ary = [1, 2, 3]
# Array.new(size=0, val=nil) でもおｋ
sample_ary2 = Array.new(4)
sample_ary2[0] = "A"
sample_ary2[1] = nil
sample_ary2[2] = "C"
sample_ary2[3] = nil

# %w, %W, %i, %I とかでもおｋ
sample_ary3 = %w(例えば こんな文字列も 配列になっちゃうよ すごい！ 楽！)
sample_ary4 = %W(#{say_hello} こいつは変数展開が 利用できちゃうよ)

# %i, %I はシンボル配列
p %i(left right top bottom)
samplePrefix = "direction"
p %I(#{samplePrefix}_left #{samplePrefix}_top)

p sample_ary
p sample_ary2
p sample_ary3
p sample_ary4

# 要素へのアクセス(サイズを超えているとnilが返るよ)
p sample_ary[6]
p "sample_aryの2番目は: #{sample_ary.at(1)}"
p sample_ary2[1..3]
p sample_ary2[1, 3]

# 要素の挿入とか置換えとか
sample_ary5 = Array.new(4, nil)
sample_ary5[1, 2] = ["hoge", "hoge"]
sample_ary5.insert(3, "") # 3番目に""を挿入
sample_ary5.unshift("僕が１番！") # 先頭に挿入
sample_ary5.push("Push!!!!") # 末尾に挿入
sample_ary5 << 255 # 末尾に挿入

p sample_ary5
p sample_ary5.size
p sample_ary5.length

# 要素の削除とか
sample_ary5.delete("hoge") # "hoge"を除去
sample_ary5.delete_at(5) # 5番目を除去
sample_ary5.shift # 先頭を除去
sample_ary5.pop # 末尾を除去

p sample_ary5

# ******** ******** ******** ******** #
puts " **** IF **** "

flag = rand(9)
puts "flag: #{flag}"

if flag < 3
	puts "Number is Small!"
elsif flag >= 3 && flag < 6
	puts "Number is Middle!"
else
	puts "Number is Big!"
end

# 否定分はunlessもしくは!
# unlessにはelsifはないよ
unless flag == 0
	puts "0ではないよ	"
end

# case
case flag
when 1
	puts "Number: 1"
when 2
	puts "Number: 2"
when 3
	puts "Number: 3"
when 4, 5, 6
	puts "Number: 4 or 5 or 6"
else
	puts "Number: "
end

input_by = "代入されたよ！" if flag < 5
puts input_by

# 簡略表記(これなんでできないんかな)
# if flag < 5 ? puts "Small"

# ******** ******** ******** ******** #
puts " **** LOOP **** "

sample_counter = 0
counter_ary = []

# loop (doは省略できないで！)
# あとbreakは必ず書くんやで
loop do
	sample_counter += 1
	if sample_counter == 1
		counter_ary.push("#{sample_counter}")
	else
		counter_ary.push("-#{sample_counter}")
	end
	break if sample_counter == 10
end

# while (doは省略可能)
# whileも修飾子で使えるやで
while sample_counter > 0
	sample_counter -= 1
	counter_ary.push("-#{sample_counter}")
end

# until (否定)
until sample_counter >= 10
	sample_counter += 1
	counter_ary.push("-#{sample_counter}")
end

p counter_ary.join

# for in
counter_ary2 = []
for num in counter_ary
	counter_ary2.push num
end

p counter_ary2.join.split("-")

# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "