# coding: utf-8

# ******** ******** ******** ******** #
puts " **** METHODS **** "

# Create method
def sample_method(first_name = "(-_-;)", last_name = "(´o`;)") # =default
  "#{first_name}-#{last_name}"
end

puts sample_method("Andy", "Mckee")

# 可変長の引数 => *で全てを配列としてどーん
def sample_add(*nums)
  result = 0
  nums.each do |num|
    result += num
  end
  return result
end

puts sample_add(16, 32, 64, 72)

# イテレータ
def push_to_ary(*nums)
  sample_ary = []
  nums.each do |num|
    sample_ary.push(num)
  end
  return sample_ary
end

p push_to_ary("hoge", "sample", 8, 16)

# ******** ******** ******** ******** #
puts " **** CLASS **** "

# Create class
class SampleHuman
  @@human_count = 0

  def self.put_human_count
    if @@human_count == 1
      puts "Created human: #{@@human_count}人"
    else
      puts "Created humans: #{@@human_count}人"
    end
  end

  # アクセサメソッド =をつけるよ
  # set name
  def name=(name)
    @name = name
  end

  # インスタンス変数に格納されている値を返すよ
  def name
    return @name
  end

  # set sex, age
  attr_accessor :sex, :age

  # initialize
  def initialize(myname = "anonymous", mysex = "anonymous", myage = "anonymous")
    @name = myname
    @sex = mysex
    @age = myage
    @@human_count += 1
  end

  # インスタンスメソッド
  def put_humam_data
    puts "---- Human info ----"
    puts "Name: #{@name}"
    puts "Sex: #{@sex}"
    puts "Age: #{@age}"
    puts "---- ---------- ----"
  end
end

# Create and call objects
siri = SampleHuman.new
# メソッドの呼び出し
# 正確には siri.name=("Siri")
siri.name = "Ore"
siri.sex = "male"
siri.age = "25"
siri.put_humam_data

# 使い回しめんどいからメソッドつくるよ
# ここ、initializeメソッドにで解決した
def put_human(myname, mysex, myage)
  human = SampleHuman.new
  human.name = myname
  human.sex = mysex
  human.age = myage
  human.put_humam_data
end
put_human("Siri","female","??")

eliza = SampleHuman.new("Eliza", "Female", "知らん")
eliza.put_humam_data

anonymous = SampleHuman.new
anonymous.put_humam_data

anonymous_02 = SampleHuman.new
anonymous_03 = SampleHuman.new
anonymous_04 = SampleHuman.new

puts SampleHuman.put_human_count

# 試しに適当なクラスを作るよ
class SnowBoard
  attr_accessor :name, :maker, :type, :size

  def initialize(name, maker, type, size)
    @name = name
    @maker = maker
    @type = type
    size_big = size + 28
    size_range = "#{size}~#{size_big}"
    @size = size_range
  end

  def put_snowboard_data
    puts "**** board data ****"
    puts "Name: #{@name}"
    puts "Made by: #{@maker}"
    puts "Type: #{@type}"
    puts "Size: #{@size}"
    puts "**** ********** ****"
  end
end

skate_banana = SnowBoard.new("SKATE BANANA", "Libtech", "Rocker", 143)
skate_banana.put_snowboard_data



# ******** ******** ******** ******** #
# *$$$$$$* *$****$* *$$$$*** ******** #
# *$****** *$$***$* *$***$** ******** #
# *$$$$*** *$*$**$* *$****$* ******** #
# *$****** *$**$*$* *$****$* ******** #
# *$****** *$***$$* *$***$** ******** #
# *$$$$$$* *$****$* *$$$$*** *$****** #
# ******** ******** ******** ******** #
puts " **** END **** "
